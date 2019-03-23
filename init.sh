#!/bin/bash
sudo docker-compose build
sudo docker volume create --name ovpn-data-volume
sudo docker run -v ovpn-data-volume:/etc/openvpn --log-driver=none --rm koluch/docker-openvpn ovpn_genconfig -u udp://vpn.koluch.ru
sudo docker run -v ovpn-data-volume:/etc/openvpn --log-driver=none --rm -it koluch/docker-openvpn ovpn_initpki
