import rospy
from geometry_msgs.msg import Twist, TwistStamped, TwistWithCovarianceStamped
from std_msgs.msg import Header, Bool
from agv_msgs.msg import BoolStamped
import numpy as np

# Global publishers
twist_stamped_publisher = None
bool_stamped_publisher = None
control_enable = None
brake_enabled = None
vehicle_twist_covariance = None
operator_force_brake = None

is_sim = True
with_vehicle = False
last_twist_msg_time = None
timeout_duration = 1.0  # Timeout in seconds


def create_stamped_msg(msg, msg_type):
    stamped_msg = msg_type()
    stamped_msg.header = Header(stamp=rospy.Time.now(), frame_id="")
    if isinstance(msg, Bool):
        stamped_msg.data = msg.data
    elif isinstance(msg, Twist):
        stamped_msg.twist = msg
    return stamped_msg


def bool_callback(msg):
    bool_stamped_publisher.publish(create_stamped_msg(msg, BoolStamped))

    if not is_sim:
        force_brake_msg = create_stamped_msg(Bool(data=False), BoolStamped)
        force_brake_msg.header.frame_id = "/AGV_type_4_5_3/base_link"
        operator_force_brake.publish(force_brake_msg)


def twist_callback(msg):
    global last_twist_msg_time
    last_twist_msg_time = rospy.Time.now()

    twist_stamped_msg = create_stamped_msg(msg, TwistStamped)
    twist_stamped_publisher.publish(twist_stamped_msg)

    if with_vehicle:
        covariance_msg = TwistWithCovarianceStamped(
            header=twist_stamped_msg.header,
            twist={
                "twist": twist_stamped_msg.twist,
                "covariance": np.eye(6).flatten().astype(np.float64),
            },
        )
        vehicle_twist_covariance.publish(covariance_msg)


def publish_zero_twist(_):
    if (
        last_twist_msg_time
        and (rospy.Time.now() - last_twist_msg_time).to_sec() > timeout_duration
    ):
        print('we are publishing zero twist now')
        twist_stamped_publisher.publish(
            create_stamped_msg(Twist(), TwistStamped))


if __name__ == "__main__":
    rospy.init_node("twist_to_twist_stamped_node")

    input_cmd_vel_topic = "/dev_themis/map/cmd_vel"
    input_bool_topic = "/dev_themis/map/bool"

    output_cmd_vel_stamped_topic = (
        f"/{'agv_sim' if is_sim else 'AGV_type_4_5_3'}/operator/cmd_vel"
    )
    output_bool_stamped_topic = (
        f"/{'agv_sim' if is_sim else 'AGV_type_4_5_3'}/operator/drive_enable"
    )

    if not is_sim:
        control_enable = rospy.Publisher(
            "/AGV_type_4_5_3/vehicle/control_enable", Bool, queue_size=10
        )
        brake_enabled = rospy.Publisher(
            "/AGV_type_4_5_3/drive/force_brake", BoolStamped, queue_size=10
        )
        operator_force_brake = rospy.Publisher(
            "/AGV_type_4_5_3/operator/force_brake", BoolStamped, queue_size=10
        )

    if with_vehicle:
        vehicle_twist_covariance = rospy.Publisher(
            "/AGV_type_4_5_3/vehicle/velocity",
            TwistWithCovarianceStamped,
            queue_size=10,
        )

    twist_stamped_publisher = rospy.Publisher(
        output_cmd_vel_stamped_topic, TwistStamped, queue_size=10
    )
    bool_stamped_publisher = rospy.Publisher(
        output_bool_stamped_topic, BoolStamped, queue_size=10
    )

    rospy.Subscriber(input_cmd_vel_topic, Twist, twist_callback)
    rospy.Subscriber(input_bool_topic, Bool, bool_callback)

    rospy.Timer(rospy.Duration(0.5), publish_zero_twist)

    rospy.loginfo(
        "Twist to TwistStamped node started. Waiting for messages...")
    rospy.spin()
