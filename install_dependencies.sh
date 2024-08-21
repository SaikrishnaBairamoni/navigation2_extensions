#!/bin/bash
set -e 

apt update
# Install 
apt install -y libnanoflann-dev
rosdep update
rosdep install --from-paths /root/c1t_ws/ --ignore-src -y
