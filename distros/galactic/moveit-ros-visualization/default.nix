
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, eigen, geometric-shapes, interactive-markers, moveit-common, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, ogre1_9, pkg-config, pluginlib, qt5, rclcpp, rclpy, rviz2, tf2-eigen }:
buildRosPackage {
  pname = "ros-galactic-moveit-ros-visualization";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_ros_visualization/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "7d55bfacdfce11470b243df4feefe1f751ceab19714c20262fc88b0448079f3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ class-loader eigen moveit-common ogre1_9 qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rclcpp rclpy rviz2 tf2-eigen ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Components of MoveIt that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
