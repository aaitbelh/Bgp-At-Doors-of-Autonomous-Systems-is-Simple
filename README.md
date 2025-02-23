# VXLAN Setup

## Router 1
```ip link add br0 type bridge ```
this command is used to create a bridge interface
```ip link set br0 up```
this command is used to bring the bridge interface up
```ip addr add 10.1.1.1/24 dev eth0```
this command is used to add the ip address to the bridge interface in unicast mode 
```ip link add name vxlan10 type vxlan id 10 dev eth0 group 239.1.1.1 dstport 4789```
give the xclan  interface ip address 
```ip addr add 20.1.1.1/24 dev vxlan10```
bring the vxlan interface up
```ip link set dev vxlan10 up```
add the vxlan interface to the bridge interface
```brctl addif br0 vxlan10```
activate the vxlan interface
```ip link set dev vxlan10 up```
## Router 2

ip link add br0 type bridge 	
ip link set br0  up
ip addr add 10.1.1.2/24 dev eth0 
ip link add name vxlan10 type vxlan id 10 dev eth0 group 239.1.1.1 dstport 4789
ip addr add 20.1.1.2/24 dev vxlan10
brctl addif br0 eth1 
brctl addif br0 vxlan10
ip link set dev vxlan10 up


#multicast

#Router 1
ip link add br0 type bridge 	
ip link set br0  up
ip addr add 10.1.1.1/24 dev eth0 
ip link add name vxlan10 type vxlan id 10 dev eth0 group 239.1.1.1 dstport 4789
ip addr add 20.1.1.1/24 dev vxlan10
brctl addif br0 eth1 
brctl addif br0 vxlan10
ip link set dev vxlan10 up

#Router 2

ip link add br0 type bridge 	
ip link set br0  up
ip addr add 10.1.1.2/24 dev eth0 
ip link add name vxlan10 type vxlan id 10 dev eth0 group 239.1.1.1 dstport 4789
ip addr add 20.1.1.2/24 dev vxlan10
brctl addif br0 eth1 
brctl addif br0 vxlan10
ip link set dev vxlan10 up
