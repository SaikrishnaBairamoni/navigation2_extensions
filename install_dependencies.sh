#!/bin/bash
set -e 

apt update 
apt install -y libnanoflann-dev
# Initialize rosdep
rosdep install --from-paths /root/c1t_ws/src --ignore-src -y
