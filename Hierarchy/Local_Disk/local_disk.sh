#!/bin/bash

# Update package repositories
sudo apt update

# Install ioping
sudo apt install ioping -y

# Run ioping and save the results in disk_latency.txt
ioping -c 20 /tmp > disk_latency.txt

# Install fio for disk benchmarking
sudo apt install fio -y

# Run disk benchmarking with fio and save the results in disk_bandwidth.txt
fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=fiotest --filename=testfio --bs=4k --iodepth=64 --size=1G --readwrite=read > disk_bandwidth.txt

# Install hdparm for additional disk information
sudo apt install hdparm -y

# Run hdparm to get disk information and save it in disk capacity.txt
sudo hdparm -I /dev/sda >> disk_capacity.txt

# Optional: Print a message to indicate the completion of the script
echo "Commands executed succesfully"
