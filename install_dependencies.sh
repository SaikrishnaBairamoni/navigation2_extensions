#!/bin/bash
set -e 

apt update

# Install 
apt install -y libnanoflann-dev

# Initialize rosdep
rosdep init
rosdep update
rosdep install --from-paths /root/c1t_ws/src --ignore-src -y
