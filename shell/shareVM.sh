#!/bin/sh
#
# ホスト側のworkspaceをVM内にコピー
# vagrantのマウントが失敗するので暫定的に作成
#

expect -c "
spawn scp -r workspace vagrant@vm-kali:~
expect \"password\"
send \"vagrant\n\"
"
