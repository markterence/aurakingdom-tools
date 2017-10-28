#!/bin/sh
sudo apt-get update
apt-get install -y samba samba-common python-glade2 system-config-samba
sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
sudo nano /etc/samba/smb.conf

cat > /etc/samba/smb.conf <<EOF
[global]workgroup = WORKGROUP
server string = Samba Server %v
netbios name = ubuntu
security = user
map to guest = bad user
dns proxy = no


[secured]
path = /azuriaserver
valid users = @smbgrp
guest ok = no
writable = yes
browsable = yes
EOF

addgroup smbgrp
adduser genshin -G smbgrp
smbpasswd -a genshin

service smbd restart
