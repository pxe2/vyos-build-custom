#!/usr/bin/env bash
git clone https://github.com/pxe2/vyos-build-custom /usr/src/vyos-build
cd /usr/src/vyos-build 
./configure 
make iso
cp /usr/src/vyos-build/build/*.iso /root/images
