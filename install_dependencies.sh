#!/bin/bash
set -e 

apt update

# Install 
apt install -y libnanoflann-dev

# Initialize rosdep
rosdep update
rosdep install --from-paths /__w/navigation2_extensions/navigation2_extensions/src --ignore-src -y
