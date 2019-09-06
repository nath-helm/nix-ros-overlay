
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, fastrtps, rosidl-cmake, rclcpp, microxrcedds-agent-cmake-module, rosidl-parser, fastcdr, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-micro-ros-agent";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/micro-ROS/micro-ROS-Agent-release/archive/release/crystal/micro_ros_agent/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "db09d137d08f374c6d6f0bfce90f0bad311ad4a809c5499866d3a5516a1ee6bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ fastrtps rosidl-cmake rclcpp microxrcedds-agent-cmake-module fastcdr ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastrtps rosidl-cmake microxrcedds-agent-cmake-module rclcpp rosidl-parser fastcdr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DDS-XCRE agent implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
