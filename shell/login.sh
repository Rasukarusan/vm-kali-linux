#!/bin/sh
#
# rootユーザーでVMにログイン
#

expect -c "
spawn ssh vagrant@vm-kali
expect \"password\"
send \"vagrant\n\"
expect \"vagrant\"
send \"sudo su -\n\"
expect \"root\"
interact
"
