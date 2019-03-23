#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 CLIENTNAME"
    exit 1
fi

sudo docker run -v ovpn-data-volume:/etc/openvpn -it --log-driver=none --rm koluch/docker-openvpn ovpn_revokeclient $1 remove
