#!/bin/sh
#
# rootユーザーでVMにログイン
#
cd ~/Desktop/vm-kali-linux/shell/

expect -c "
spawn vagrant ssh 
expect \"kali\"
send \"sudo su -\n\"
expect \"root\"
interact
"
