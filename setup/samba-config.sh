#!/bin/sh
cat > /etc/samba/smb.conf <<EOF
[global]workgroup = WORKGROUP
server string = Samba Server %v
netbios name = ubuntu
security = user
map to guest = bad user
dns proxy = no
[secured]
path = /genshinserver
valid users = @smbgrp
guest ok = no
writable = yes
browsable = yes

EOF
