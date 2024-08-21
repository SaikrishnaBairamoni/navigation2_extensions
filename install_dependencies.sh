#!/bin/bash
set -e 

apt update
cd /__w/navigation2_extensions/navigation2_extensions
# Install 
apt install -y libnanoflann-dev
rosdep update
rosdep install --from-paths /__w/navigation2_extensions/navigation2_extensions/ --ignore-src -y
