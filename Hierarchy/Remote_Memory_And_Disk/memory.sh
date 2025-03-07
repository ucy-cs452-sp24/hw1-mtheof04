#!/bin/bash

# Update package repositories
sudo apt update

# Install iputils-ping if it's not already installed
sudo apt install iputils-ping -y

# Run ping to node1 for 20 seconds, redirect the output to network_latency.txt, and run in the background
ping -c 20 node1 > network_latency.txt

# Print a message to indicate the completion of the script
echo "Output saved succesfully"
