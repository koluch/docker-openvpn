#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 CLIENTNAME"
    exit 1
fi

sudo docker run -v ovpn-data-volume:/etc/openvpn --log-driver=none --rm -it koluch/docker-openvpn easyrsa build-client-full $1 nopass
sudo docker run -v ovpn-data-volume:/etc/openvpn --log-driver=none --rm koluch/docker-openvpn ovpn_getclient $1 > $1.ovpn
