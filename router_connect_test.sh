#!/bin/sh

# Test host-leaf connectivity
docker exec clab-lf-leaf1 ping 192.168.11.2 -c 1
docker exec clab-lf-leaf1 ping 192.168.12.2 -c 1
docker exec clab-lf-leaf2 ping 192.168.21.2 -c 1
docker exec clab-lf-leaf2 ping 192.168.22.2 -c 1
docker exec clab-lf-leaf3 ping 192.168.31.2 -c 1
docker exec clab-lf-leaf3 ping 192.168.32.2 -c 1
docker exec clab-lf-leaf4 ping 192.168.41.2 -c 1
