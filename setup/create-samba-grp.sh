addgroup smbgrp
adduser genshin -G smbgrp
smbpasswd -a genshin
mkdir -p $HOME/genshinserver
service smbd restart
