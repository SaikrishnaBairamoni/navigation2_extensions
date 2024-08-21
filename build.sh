#!/bin/bash
set -e
source /opt/ros/humble/setup.sh
# Build 
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
