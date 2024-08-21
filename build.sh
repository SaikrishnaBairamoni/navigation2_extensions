#!/bin/bash
set -e
/__w/navigation2_extensions/navigation2_extensions
# source /opt/ros/humble/setup.sh
# # Build 
# colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
. /opt/ros/humble/setup.sh && colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release