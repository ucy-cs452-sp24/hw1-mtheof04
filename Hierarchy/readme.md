# HW1 Submission Summary

## Marios Theofanous

## Overview
In this assignment, we analyzed memory and storage within a data center using the CloudLab cluster at the University of Wisconsin. The cluster features two c220g5 nodes.


![Graph](Graph.jpg)

### Capacity (GB)
Both nodes have 196 GB of Local DRAM and 480 GB of Local Disk space.
Given the lack of specific data on node distribution per rack, remote storage capacities were assumed to be the same as local capacities.

### Latency (us)
Local DRAM presented the lowest latency at 0,95 us, with Local Disk at 189,3 us. Remote latencies were adjusted for network latency, resulting in 62,0 us for DRAM and 251,3 us for Disk.

### Bandwidth (MB/s)
Local DRAM bandwidth was about 48657,1 MB/s (48,65 GB/s). Local and Remote Disk bandwidths were limited by their respective bottlenecks to 282 MB/s. Remote DRAM bandwidth was 426,25 MB/s.

### Conclusion
Remote DRAM access proves more efficient than local disk storage, offering superior bandwidth and lower latency, making it preferable for data retrieval in data center environments.
