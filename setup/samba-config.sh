#!/bin/sh
cat > /etc/samba/smb.conf <<EOF
[global]workgroup = WORKGROUP
server string = Samba Server %v
netbios name = shiori-ubuntu-server
security = user
map to guest = bad user
dns proxy = no
[genshin-server]
path = $HOME/genshinserver
valid users = @smbgrp
guest ok = no
writable = yes
browsable = yes

EOF
