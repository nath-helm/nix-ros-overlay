
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-serial";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_serial/0.6.0-3/bota_driver-release-release-noetic-rokubimini_serial-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_serial-0.6.0-3.tar.gz";
    sha256 = "aad86d31c9a93561c5ba70db388b52aa4bf54661002b866a1f36380b02b984cc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
