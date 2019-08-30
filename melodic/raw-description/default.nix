
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, cob-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-raw-description";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/raw_description/0.7.0-1.tar.gz;
    sha256 = "ce900bda58a0cd4f3a66c730abca82ba216747258dc372fdc02d4fe530bf3a0c";
  };

  propagatedBuildInputs = [ gazebo-ros cob-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
