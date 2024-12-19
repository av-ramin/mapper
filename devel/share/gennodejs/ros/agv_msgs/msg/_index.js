
"use strict";

let Float64Stamped = require('./Float64Stamped.js');
let Int64Stamped = require('./Int64Stamped.js');
let Float64ArrayStamped = require('./Float64ArrayStamped.js');
let BoolStamped = require('./BoolStamped.js');
let StringWithSchema = require('./StringWithSchema.js');
let BagRecorderDump = require('./BagRecorderDump.js');
let UInt32Stamped = require('./UInt32Stamped.js');
let ServiceResponseInfo = require('./ServiceResponseInfo.js');
let Float32MultiArrayStamped = require('./Float32MultiArrayStamped.js');
let KeyValue = require('./KeyValue.js');
let ID = require('./ID.js');
let OrientationStamped = require('./OrientationStamped.js');
let IDs = require('./IDs.js');
let RecordingStatus = require('./RecordingStatus.js');
let PacketData = require('./PacketData.js');
let StringStamped = require('./StringStamped.js');
let StringArray = require('./StringArray.js');
let EnumStamped = require('./EnumStamped.js');
let H264Packet = require('./H264Packet.js');
let Float64MultiArrayStamped = require('./Float64MultiArrayStamped.js');
let StringWithIDStamped = require('./StringWithIDStamped.js');
let LightsState = require('./LightsState.js');
let SetLightState = require('./SetLightState.js');
let LightState = require('./LightState.js');
let LightCapability = require('./LightCapability.js');
let EncoderData = require('./EncoderData.js');
let TractionData = require('./TractionData.js');
let KinematicState = require('./KinematicState.js');
let DriveMode = require('./DriveMode.js');
let EncoderDataStamped = require('./EncoderDataStamped.js');
let MotorData = require('./MotorData.js');
let NDTMap = require('./NDTMap.js');
let NDTCell = require('./NDTCell.js');
let ZoneInfo = require('./ZoneInfo.js');
let WaypointWithVariance = require('./WaypointWithVariance.js');
let Zone = require('./Zone.js');
let WaypointArray = require('./WaypointArray.js');
let PathSegmentInfo = require('./PathSegmentInfo.js');
let TrajectoryControllerState = require('./TrajectoryControllerState.js');
let MissionInfo = require('./MissionInfo.js');
let PathSegment = require('./PathSegment.js');
let ZoneShape = require('./ZoneShape.js');
let SplinePath = require('./SplinePath.js');
let NavigationConfig = require('./NavigationConfig.js');
let SplinePathArray = require('./SplinePathArray.js');
let ObstacleInfo = require('./ObstacleInfo.js');
let SplineDriveParam = require('./SplineDriveParam.js');
let NavPoseVariance = require('./NavPoseVariance.js');
let MissionInstrumentation = require('./MissionInstrumentation.js');
let NavPose = require('./NavPose.js');
let NavPath = require('./NavPath.js');
let BehaviorInfo = require('./BehaviorInfo.js');
let NavigationStatus = require('./NavigationStatus.js');
let Waypoint = require('./Waypoint.js');
let BezierSplinePointWProperties = require('./BezierSplinePointWProperties.js');
let RallyPoint = require('./RallyPoint.js');
let WaypointStatus = require('./WaypointStatus.js');
let Behavior = require('./Behavior.js');
let ObstacleLayer = require('./ObstacleLayer.js');
let Mission = require('./Mission.js');
let NavPathInfo = require('./NavPathInfo.js');
let ObstacleShape = require('./ObstacleShape.js');
let Obstacle = require('./Obstacle.js');
let MissionProfile = require('./MissionProfile.js');
let FollowmeTagStatus = require('./FollowmeTagStatus.js');
let FollowmeStatus = require('./FollowmeStatus.js');
let PlaneCoefs = require('./PlaneCoefs.js');
let HumanPoseArray = require('./HumanPoseArray.js');
let HumanPose = require('./HumanPose.js');
let RfTagInfo = require('./RfTagInfo.js');
let RfAnchorMsg = require('./RfAnchorMsg.js');
let HumanPoseControlStamped = require('./HumanPoseControlStamped.js');
let Detection2D = require('./Detection2D.js');
let LidarTrackingArray = require('./LidarTrackingArray.js');
let Detection2DArrayStamped = require('./Detection2DArrayStamped.js');
let Barometer = require('./Barometer.js');
let ProximitySafetyStatus = require('./ProximitySafetyStatus.js');

module.exports = {
  Float64Stamped: Float64Stamped,
  Int64Stamped: Int64Stamped,
  Float64ArrayStamped: Float64ArrayStamped,
  BoolStamped: BoolStamped,
  StringWithSchema: StringWithSchema,
  BagRecorderDump: BagRecorderDump,
  UInt32Stamped: UInt32Stamped,
  ServiceResponseInfo: ServiceResponseInfo,
  Float32MultiArrayStamped: Float32MultiArrayStamped,
  KeyValue: KeyValue,
  ID: ID,
  OrientationStamped: OrientationStamped,
  IDs: IDs,
  RecordingStatus: RecordingStatus,
  PacketData: PacketData,
  StringStamped: StringStamped,
  StringArray: StringArray,
  EnumStamped: EnumStamped,
  H264Packet: H264Packet,
  Float64MultiArrayStamped: Float64MultiArrayStamped,
  StringWithIDStamped: StringWithIDStamped,
  LightsState: LightsState,
  SetLightState: SetLightState,
  LightState: LightState,
  LightCapability: LightCapability,
  EncoderData: EncoderData,
  TractionData: TractionData,
  KinematicState: KinematicState,
  DriveMode: DriveMode,
  EncoderDataStamped: EncoderDataStamped,
  MotorData: MotorData,
  NDTMap: NDTMap,
  NDTCell: NDTCell,
  ZoneInfo: ZoneInfo,
  WaypointWithVariance: WaypointWithVariance,
  Zone: Zone,
  WaypointArray: WaypointArray,
  PathSegmentInfo: PathSegmentInfo,
  TrajectoryControllerState: TrajectoryControllerState,
  MissionInfo: MissionInfo,
  PathSegment: PathSegment,
  ZoneShape: ZoneShape,
  SplinePath: SplinePath,
  NavigationConfig: NavigationConfig,
  SplinePathArray: SplinePathArray,
  ObstacleInfo: ObstacleInfo,
  SplineDriveParam: SplineDriveParam,
  NavPoseVariance: NavPoseVariance,
  MissionInstrumentation: MissionInstrumentation,
  NavPose: NavPose,
  NavPath: NavPath,
  BehaviorInfo: BehaviorInfo,
  NavigationStatus: NavigationStatus,
  Waypoint: Waypoint,
  BezierSplinePointWProperties: BezierSplinePointWProperties,
  RallyPoint: RallyPoint,
  WaypointStatus: WaypointStatus,
  Behavior: Behavior,
  ObstacleLayer: ObstacleLayer,
  Mission: Mission,
  NavPathInfo: NavPathInfo,
  ObstacleShape: ObstacleShape,
  Obstacle: Obstacle,
  MissionProfile: MissionProfile,
  FollowmeTagStatus: FollowmeTagStatus,
  FollowmeStatus: FollowmeStatus,
  PlaneCoefs: PlaneCoefs,
  HumanPoseArray: HumanPoseArray,
  HumanPose: HumanPose,
  RfTagInfo: RfTagInfo,
  RfAnchorMsg: RfAnchorMsg,
  HumanPoseControlStamped: HumanPoseControlStamped,
  Detection2D: Detection2D,
  LidarTrackingArray: LidarTrackingArray,
  Detection2DArrayStamped: Detection2DArrayStamped,
  Barometer: Barometer,
  ProximitySafetyStatus: ProximitySafetyStatus,
};
