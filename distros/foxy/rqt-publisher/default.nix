
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-gui-py-common, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-foxy-rqt-publisher";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/foxy/rqt_publisher/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "87e69813d50f6ef700d02075257d47b712f3ecf26d8abc2257786f1a461308ea";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui-py-common rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
