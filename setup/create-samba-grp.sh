addgroup smbgrp
adduser genshin --group smbgrp
smbpasswd -a genshin
mkdir -p $HOME/genshinserver
service smbd restart
