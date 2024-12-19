; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude TrajectoryControllerState.msg.html

(cl:defclass <TrajectoryControllerState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (lateral_error
    :reader lateral_error
    :initarg :lateral_error
    :type cl:float
    :initform 0.0)
   (heading_error
    :reader heading_error
    :initarg :heading_error
    :type cl:float
    :initform 0.0)
   (predicted_lateral_error
    :reader predicted_lateral_error
    :initarg :predicted_lateral_error
    :type cl:float
    :initform 0.0)
   (predicted_heading_error
    :reader predicted_heading_error
    :initarg :predicted_heading_error
    :type cl:float
    :initform 0.0)
   (travelled_trajectory_ratio
    :reader travelled_trajectory_ratio
    :initarg :travelled_trajectory_ratio
    :type cl:float
    :initform 0.0)
   (stopping_position_on_trajectory
    :reader stopping_position_on_trajectory
    :initarg :stopping_position_on_trajectory
    :type cl:float
    :initform 0.0)
   (target_centripetal_acceleration
    :reader target_centripetal_acceleration
    :initarg :target_centripetal_acceleration
    :type cl:float
    :initform 0.0)
   (actual_centripetal_acceleration
    :reader actual_centripetal_acceleration
    :initarg :actual_centripetal_acceleration
    :type cl:float
    :initform 0.0)
   (trajectory_centripetal_acceleration
    :reader trajectory_centripetal_acceleration
    :initarg :trajectory_centripetal_acceleration
    :type cl:float
    :initform 0.0)
   (trajectory_header
    :reader trajectory_header
    :initarg :trajectory_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (closest_point_header
    :reader closest_point_header
    :initarg :closest_point_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (closest_point_offset
    :reader closest_point_offset
    :initarg :closest_point_offset
    :type cl:float
    :initform 0.0)
   (stopping_point_header
    :reader stopping_point_header
    :initarg :stopping_point_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stopping_point_offset
    :reader stopping_point_offset
    :initarg :stopping_point_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryControllerState (<TrajectoryControllerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryControllerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryControllerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<TrajectoryControllerState> is deprecated: use agv_msgs-msg:TrajectoryControllerState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:state-val is deprecated.  Use agv_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'lateral_error-val :lambda-list '(m))
(cl:defmethod lateral_error-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:lateral_error-val is deprecated.  Use agv_msgs-msg:lateral_error instead.")
  (lateral_error m))

(cl:ensure-generic-function 'heading_error-val :lambda-list '(m))
(cl:defmethod heading_error-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:heading_error-val is deprecated.  Use agv_msgs-msg:heading_error instead.")
  (heading_error m))

(cl:ensure-generic-function 'predicted_lateral_error-val :lambda-list '(m))
(cl:defmethod predicted_lateral_error-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:predicted_lateral_error-val is deprecated.  Use agv_msgs-msg:predicted_lateral_error instead.")
  (predicted_lateral_error m))

(cl:ensure-generic-function 'predicted_heading_error-val :lambda-list '(m))
(cl:defmethod predicted_heading_error-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:predicted_heading_error-val is deprecated.  Use agv_msgs-msg:predicted_heading_error instead.")
  (predicted_heading_error m))

(cl:ensure-generic-function 'travelled_trajectory_ratio-val :lambda-list '(m))
(cl:defmethod travelled_trajectory_ratio-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:travelled_trajectory_ratio-val is deprecated.  Use agv_msgs-msg:travelled_trajectory_ratio instead.")
  (travelled_trajectory_ratio m))

(cl:ensure-generic-function 'stopping_position_on_trajectory-val :lambda-list '(m))
(cl:defmethod stopping_position_on_trajectory-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:stopping_position_on_trajectory-val is deprecated.  Use agv_msgs-msg:stopping_position_on_trajectory instead.")
  (stopping_position_on_trajectory m))

(cl:ensure-generic-function 'target_centripetal_acceleration-val :lambda-list '(m))
(cl:defmethod target_centripetal_acceleration-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:target_centripetal_acceleration-val is deprecated.  Use agv_msgs-msg:target_centripetal_acceleration instead.")
  (target_centripetal_acceleration m))

(cl:ensure-generic-function 'actual_centripetal_acceleration-val :lambda-list '(m))
(cl:defmethod actual_centripetal_acceleration-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:actual_centripetal_acceleration-val is deprecated.  Use agv_msgs-msg:actual_centripetal_acceleration instead.")
  (actual_centripetal_acceleration m))

(cl:ensure-generic-function 'trajectory_centripetal_acceleration-val :lambda-list '(m))
(cl:defmethod trajectory_centripetal_acceleration-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:trajectory_centripetal_acceleration-val is deprecated.  Use agv_msgs-msg:trajectory_centripetal_acceleration instead.")
  (trajectory_centripetal_acceleration m))

(cl:ensure-generic-function 'trajectory_header-val :lambda-list '(m))
(cl:defmethod trajectory_header-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:trajectory_header-val is deprecated.  Use agv_msgs-msg:trajectory_header instead.")
  (trajectory_header m))

(cl:ensure-generic-function 'closest_point_header-val :lambda-list '(m))
(cl:defmethod closest_point_header-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:closest_point_header-val is deprecated.  Use agv_msgs-msg:closest_point_header instead.")
  (closest_point_header m))

(cl:ensure-generic-function 'closest_point_offset-val :lambda-list '(m))
(cl:defmethod closest_point_offset-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:closest_point_offset-val is deprecated.  Use agv_msgs-msg:closest_point_offset instead.")
  (closest_point_offset m))

(cl:ensure-generic-function 'stopping_point_header-val :lambda-list '(m))
(cl:defmethod stopping_point_header-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:stopping_point_header-val is deprecated.  Use agv_msgs-msg:stopping_point_header instead.")
  (stopping_point_header m))

(cl:ensure-generic-function 'stopping_point_offset-val :lambda-list '(m))
(cl:defmethod stopping_point_offset-val ((m <TrajectoryControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:stopping_point_offset-val is deprecated.  Use agv_msgs-msg:stopping_point_offset instead.")
  (stopping_point_offset m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrajectoryControllerState>)))
    "Constants for message type '<TrajectoryControllerState>"
  '((:ST_IDLE . 0)
    (:ST_START . 1)
    (:ST_OK . 2)
    (:ST_END . 3)
    (:ST_TRACKING_ERROR_HIGH . 4)
    (:ST_LATERAL_ERROR_HIGH . 5)
    (:ST_HEADING_ERROR_HIGH . 6)
    (:ST_ERROR . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrajectoryControllerState)))
    "Constants for message type 'TrajectoryControllerState"
  '((:ST_IDLE . 0)
    (:ST_START . 1)
    (:ST_OK . 2)
    (:ST_END . 3)
    (:ST_TRACKING_ERROR_HIGH . 4)
    (:ST_LATERAL_ERROR_HIGH . 5)
    (:ST_HEADING_ERROR_HIGH . 6)
    (:ST_ERROR . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryControllerState>) ostream)
  "Serializes a message object of type '<TrajectoryControllerState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lateral_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'predicted_lateral_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'predicted_heading_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'travelled_trajectory_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stopping_position_on_trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_centripetal_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'actual_centripetal_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'trajectory_centripetal_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'closest_point_header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'closest_point_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stopping_point_header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stopping_point_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryControllerState>) istream)
  "Deserializes a message object of type '<TrajectoryControllerState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'predicted_lateral_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'predicted_heading_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'travelled_trajectory_ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stopping_position_on_trajectory) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_centripetal_acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actual_centripetal_acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trajectory_centripetal_acceleration) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'closest_point_header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closest_point_offset) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stopping_point_header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stopping_point_offset) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryControllerState>)))
  "Returns string type for a message object of type '<TrajectoryControllerState>"
  "agv_msgs/TrajectoryControllerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryControllerState)))
  "Returns string type for a message object of type 'TrajectoryControllerState"
  "agv_msgs/TrajectoryControllerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryControllerState>)))
  "Returns md5sum for a message object of type '<TrajectoryControllerState>"
  "350099b8a58862f1bbb2702387d2460d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryControllerState)))
  "Returns md5sum for a message object of type 'TrajectoryControllerState"
  "350099b8a58862f1bbb2702387d2460d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryControllerState>)))
  "Returns full string definition for message of type '<TrajectoryControllerState>"
  (cl:format cl:nil "uint8 ST_IDLE = 0~%uint8 ST_START = 1 ~%uint8 ST_OK = 2~%uint8 ST_END = 3~%uint8 ST_TRACKING_ERROR_HIGH = 4~%uint8 ST_LATERAL_ERROR_HIGH = 5~%uint8 ST_HEADING_ERROR_HIGH = 6~%uint8 ST_ERROR = 7~%~%uint8 state ~%float64 lateral_error~%float64 heading_error~%float64 predicted_lateral_error~%float64 predicted_heading_error~%float64 travelled_trajectory_ratio~%float64 stopping_position_on_trajectory~%float64 target_centripetal_acceleration~%float64 actual_centripetal_acceleration~%float64 trajectory_centripetal_acceleration~%~%Header trajectory_header~%Header closest_point_header~%float64 closest_point_offset~%Header stopping_point_header~%float64 stopping_point_offset~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryControllerState)))
  "Returns full string definition for message of type 'TrajectoryControllerState"
  (cl:format cl:nil "uint8 ST_IDLE = 0~%uint8 ST_START = 1 ~%uint8 ST_OK = 2~%uint8 ST_END = 3~%uint8 ST_TRACKING_ERROR_HIGH = 4~%uint8 ST_LATERAL_ERROR_HIGH = 5~%uint8 ST_HEADING_ERROR_HIGH = 6~%uint8 ST_ERROR = 7~%~%uint8 state ~%float64 lateral_error~%float64 heading_error~%float64 predicted_lateral_error~%float64 predicted_heading_error~%float64 travelled_trajectory_ratio~%float64 stopping_position_on_trajectory~%float64 target_centripetal_acceleration~%float64 actual_centripetal_acceleration~%float64 trajectory_centripetal_acceleration~%~%Header trajectory_header~%Header closest_point_header~%float64 closest_point_offset~%Header stopping_point_header~%float64 stopping_point_offset~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryControllerState>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'closest_point_header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stopping_point_header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryControllerState>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryControllerState
    (cl:cons ':state (state msg))
    (cl:cons ':lateral_error (lateral_error msg))
    (cl:cons ':heading_error (heading_error msg))
    (cl:cons ':predicted_lateral_error (predicted_lateral_error msg))
    (cl:cons ':predicted_heading_error (predicted_heading_error msg))
    (cl:cons ':travelled_trajectory_ratio (travelled_trajectory_ratio msg))
    (cl:cons ':stopping_position_on_trajectory (stopping_position_on_trajectory msg))
    (cl:cons ':target_centripetal_acceleration (target_centripetal_acceleration msg))
    (cl:cons ':actual_centripetal_acceleration (actual_centripetal_acceleration msg))
    (cl:cons ':trajectory_centripetal_acceleration (trajectory_centripetal_acceleration msg))
    (cl:cons ':trajectory_header (trajectory_header msg))
    (cl:cons ':closest_point_header (closest_point_header msg))
    (cl:cons ':closest_point_offset (closest_point_offset msg))
    (cl:cons ':stopping_point_header (stopping_point_header msg))
    (cl:cons ':stopping_point_offset (stopping_point_offset msg))
))
