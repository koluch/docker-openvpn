Based on [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn)

### Installation
```
./init.sh
sudo docker-compose up -d
```

### Add user
```
./add-user.sh <USERNAME>
```

Then copy `<USERNAME>.ovpn` file to your machine and use for OpenVPN client
