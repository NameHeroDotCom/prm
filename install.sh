#!/bin/bash

cd /root
wget http://www.rfxn.com/downloads/prm-current.tar.gz
tar -xvzf prm-current.tar.gz
cd prm*
./install.sh
cd /root
rm -fr prm*


curl -s https://raw.githubusercontent.com/NameHeroDotCom/prm/master/config/conf.prm > /usr/local/prm/conf.prm
curl -s https://raw.githubusercontent.com/NameHeroDotCom/prm/master/config/ignore_users > /usr/local/prm/ignore_users
curl -s https://raw.githubusercontent.com/NameHeroDotCom/prm/master/rules/imap.cmd > /usr/local/prm/rules/imap.cmd
curl -s https://raw.githubusercontent.com/NameHeroDotCom/prm/master/rules/lsphp.cmd > /usr/local/prm/rules/lsphp.cmd
curl -s https://raw.githubusercontent.com/NameHeroDotCom/prm/master/rules/pop3.cmd > /usr/local/prm/rules/pop3.cmd
sed -i 's/setnice /#setnice /g' /usr/local/prm/prm
