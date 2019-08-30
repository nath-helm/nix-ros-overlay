
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-urg-stamped";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/seqsense/urg_stamped-release/archive/release/melodic/urg_stamped/0.0.3-1.tar.gz;
    sha256 = "39b46f6c170dee6ab94eca3fec1a364123d3efb290c5790219ca820ddccff739";
  };

  buildInputs = [ sensor-msgs roscpp ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
