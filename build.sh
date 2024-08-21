#!/bin/bash
set -e
source /__w/navigation2_extensions/navigation2_extensions/src/navigation2_extensions/init-env.sh
# # Build 
# colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
colcon build --packages-select carma_nav2_behavior_tree carma_nav2_emergency_stop carma_nav2_port_drayage_demo