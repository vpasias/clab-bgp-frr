#!/bin/bash
#

cat > /home/iason/vms/wan.xml <<EOF
<network>
  <name>wan/name>
  <forward mode='nat'/>
  <bridge name='wan' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <mac address='52:54:00:8a:8b:ca'/>
  <ip address='192.168.255.1' netmask='255.255.255.0'>
  </ip>
</network>
EOF

virsh net-define /home/iason/vms/wan.xml && virsh net-autostart wan && virsh net-start wan

ip a && sudo virsh net-list --all
