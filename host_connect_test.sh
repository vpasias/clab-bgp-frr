#!/bin/sh

# Test pc-pc connectivity
docker exec clab-lf-leaf1 ping 192.168.12.2 -I 192.168.11.1 -c 1
docker exec clab-lf-leaf1 ping 192.168.21.2 -I 192.168.11.1 -c 1
docker exec clab-lf-leaf1 ping 192.168.22.2 -I 192.168.11.1 -c 1
docker exec clab-lf-leaf1 ping 192.168.31.2 -I 192.168.11.1 -c 1
docker exec clab-lf-leaf1 ping 192.168.32.2 -I 192.168.11.1 -c 1
docker exec clab-lf-leaf1 ping 192.168.22.2 -I 192.168.11.1 -c 1
docker exec clab-lf-leaf2 ping 192.168.22.2 -I 192.168.21.1 -c 1
docker exec clab-lf-leaf2 ping 192.168.31.2 -I 192.168.21.1 -c 1
docker exec clab-lf-leaf2 ping 192.168.32.2 -I 192.168.21.1 -c 1
docker exec clab-lf-leaf3 ping 192.168.32.2 -I 192.168.31.1 -c 1
