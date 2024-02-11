#!/bin/bash

# Run the first command and save its output to latency.txt
./mlc --latency_matrix > latency.txt

# Run the second command and save its output to bandwidth.txt
./mlc --bandwidth_matrix > bandwidth.txt

# Run the third command and save its output to memtotal.txt
cat /proc/meminfo >memtotal.txt

# Optional: Print a message to indicate the completion of the script
echo "Commands executed successfully"
