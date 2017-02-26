#!/bin/bash

cd /root
wget http://www.rfxn.com/downloads/prm-current.tar.gz
tar -xvzf prm-current.tar.gz
cd prm*
./install.sh
cd /root
rm -fr prm*
