
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-description";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_description/0.6.0-5/bota_driver-release-release-melodic-rokubimini_description-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_description-0.6.0-5.tar.gz";
    sha256 = "b5e1767ef15b4d7b0948be9abd38396428e3985792c55a668632badb44026d93";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
