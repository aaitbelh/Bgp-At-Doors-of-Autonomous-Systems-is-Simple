#!/bin/bash

# Start FRR daemons explicitly
/usr/lib/frr/zebra -d
/usr/lib/frr/bgpd -d
/usr/lib/frr/ospfd -d
/usr/lib/frr/staticd -d
/usr/lib/frr/watchfrr -d zebra bgpd ospfd staticd
/usr/lib/frr/isisd -d
# Wait a moment for processes to start
sleep 2

# Show FRR processes for debugging
echo "Checking FRR processes:"
ps aux | grep frr

# Keep container running and log any FRR related messages
tail -f /var/log/frr/frr.log /dev/null 