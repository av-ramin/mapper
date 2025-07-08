import rospy
from geometry_msgs.msg import Twist, TwistStamped, TwistWithCovarianceStamped
from std_msgs.msg import Header, Bool
from agv_msgs.msg import BoolStamped
import numpy as np

# Define the publisher globally
twist_stamped_publisher = None
bool_stamped_publisher = None
control_enable = None
brake_enabled = None
vehicle_twist_covariance = None
operator_force_brake = None
covariance = np.eye(6).flatten()

is_sim = True
with_vehicle = False


def create_bool_stamped(msg):
    stamped_bool = BoolStamped()
    stamped_bool.header = Header()
    stamped_bool.header.stamp = rospy.Time.now()
    stamped_bool.header.frame_id = ""
    stamped_bool.data = msg.data
    return stamped_bool


def create_twist_stamped(msg):
    """
    Helper function to create a TwistStamped message from a Twist message.
    """
    twist_stamped = TwistStamped()
    twist_stamped.header = Header()
    twist_stamped.header.stamp = rospy.Time.now()
    twist_stamped.header.frame_id = ""
    twist_stamped.twist = msg
    return twist_stamped


def bool_callback(msg):

    bool_stamped_msg = create_bool_stamped(msg)
    bool_stamped_publisher.publish(bool_stamped_msg)

    if not is_sim:
        msg = Bool()
        msg.data = False
        bool_stamped_msg = create_bool_stamped(msg)

        force_brake_state = bool_stamped_msg.data
        force_brake_msg = bool_stamped_msg
        force_brake_msg.data = force_brake_state
        force_brake_msg.header.frame_id = "/AGV_type_4_5_3/base_link"
        operator_force_brake.publish(force_brake_msg)


def twist_callback(msg):
    """
    Callback function to handle incoming Twist messages, reformat them to TwistStamped,
    and publish them to a new topic.
    """
    # Convert Twist to TwistStamped
    twist_stamped_msg = create_twist_stamped(msg)

    if with_vehicle:
        covariance_msg = TwistWithCovarianceStamped()
        covariance_msg.header = twist_stamped_msg.header
        covariance_msg.twist.twist = twist_stamped_msg.twist

        covariance_msg.twist.covariance = covariance.astype(np.float64)
        vehicle_twist_covariance.publish(covariance_msg)

        twist_stamped_publisher.publish(twist_stamped_msg)
    else:
        twist_stamped_publisher.publish(twist_stamped_msg)


if __name__ == "__main__":
    rospy.init_node("twist_to_twist_stamped_node")

    input_cmd_vel_topic = "/dev_themis/map/cmd_vel"  # Onze agent topic
    input_bool_topic = "/dev_themis/map/bool"

    if is_sim:
        output_cmd_vel_stamped_topic = "/agv_sim/operator/cmd_vel"  # Output agent
        output_bool_stamped_topic = "/agv_sim/operator/drive_enable"
    else:
        # Topics
        output_cmd_vel_stamped_topic = (
            "/AGV_type_4_5_3/operator/cmd_vel"  # Themis luistered naar deze topic
        )
        output_bool_stamped_topic = "/AGV_type_4_5_3/operator/drive_enable"
        control_enabled_topic = (
            "/AGV_type_4_5_3/vehicle/control_enable"  # Buiten gebruiken
        )
        brake_enabled_topic = "/AGV_type_4_5_3/drive/force_brake"  # Buiten gebruik
        operator_force_brake = "/AGV_type_4_5_3/operator/force_brake"

        # Publishers
        control_enable = rospy.Publisher(control_enabled_topic, Bool, queue_size=10)
        brake_enabled = rospy.Publisher(brake_enabled_topic, BoolStamped, queue_size=10)
        operator_force_brake = rospy.Publisher(
            operator_force_brake, BoolStamped, queue_size=10
        )

    if with_vehicle:
        vehicle_twist_covariance = rospy.Publisher(
            "/AGV_type_4_5_3/vehicle/velocity",
            TwistWithCovarianceStamped,
            queue_size=10,
        )
    # Initialize publishers
    twist_stamped_publisher = rospy.Publisher(
        output_cmd_vel_stamped_topic, TwistStamped, queue_size=10
    )
    bool_stamped_publisher = rospy.Publisher(
        output_bool_stamped_topic, BoolStamped, queue_size=10
    )

    rospy.Subscriber(input_cmd_vel_topic, Twist, twist_callback)
    rospy.Subscriber(input_bool_topic, Bool, bool_callback)

    rospy.loginfo("Twist to TwistStamped node started. Waiting for messages...")
    rospy.spin()
