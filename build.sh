#!/bin/bash
set -e
source /opt/ros/humble/setup.bash
# Build 
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
