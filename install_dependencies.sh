#!/bin/bash
set -e 

apt update
cd /__w/navigation2_extensions/navigation2_extensions
# Install 
apt install -y libnanoflann-dev

# Initialize rosdep
cd /__w/navigation2_extensions/navigation2_extensions
rosdep update
rosdep install --from-paths /__w/navigation2_extensions/navigation2_extensions/src --ignore-src -y
