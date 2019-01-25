#!/bin/sh

echo reset dirs ...
sudo umount ~/ram/10 ~/ram/11 ~/ram/12 ~/ram/13 ~/ram/14 
sudo umount ~/ram/logs
mkdir ~/ram/10 ~/ram/11 ~/ram/12 ~/ram/13 ~/ram/14 
mkdir ~/ram/logs
echo mount ram ...
sudo mount -t tmpfs -o size=1024M tmpfs ~/ram/10
sudo mount -t tmpfs -o size=1024M tmpfs ~/ram/11
sudo mount -t tmpfs -o size=1024M tmpfs ~/ram/12
sudo mount -t tmpfs -o size=1024M tmpfs ~/ram/13
sudo mount -t tmpfs -o size=1024M tmpfs ~/ram/14
sudo mount -t tmpfs -o size=1024M tmpfs ~/ram/logs

echo ---------------------------------
df -h |grep ram
echo ---------------------------------

