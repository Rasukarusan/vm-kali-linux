#!/bin/sh
#
# rootユーザーでVMにログイン
#

expect -c "
spawn vagrant ssh 
expect \"vagrant\"
send \"sudo su -\n\"
expect \"root\"
interact
"
