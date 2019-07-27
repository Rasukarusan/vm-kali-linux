#!/bin/sh
# e: エラー時にそこで実行を止める
# u: 未定義の変数にアクセスしたらエラーを出す
set -eu
MY_HOME='/home/vagrant'
WORKSPACE_PATH="~/workspace"

# oh-my-zshのインストール
if [ ! -e ~/.oh-my-zsh ]; then 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# zshプラグインのanyframeをインストール
if [ ! -e ~/.zsh/anyframe ]; then 
    git clone https://github.com/mollifier/anyframe ~/.zsh/anyframe
fi

# fzfのインストール
# 途中の問答は以下
# Do you want to enable fuzzy auto-completion? ([y]/n) y
# Do you want to enable key bindings? ([y]/n) y
# Do you want to update your shell configuration files? ([y]/n) n
# zshrcに[ -f ~/.fzf.zsh ] && source ~/.fzf.zshが書き込まれていなければ後に書き込む
if [ ! -e ~/.fzf ]; then 
    git clone https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

# Webの脆弱性スキャナw3afのインストール
if [ ! -e ~/w3af ]; then 
    git clone --depth 1 https://github.com/andresriancho/w3af.git ~/w3af
    cd ~/w3af
    ./w3af_console
    . /tmp/w3af_dependency_install.sh
fi

# Node.jsのインストール(npmもほしいため)
if [ ! -e ~/.nvm ]; then 
    git clone https://github.com/creationix/nvm.git ~/.nvm
    source ~/.nvm/nvm.sh
    nvm install --lts
fi


# apt-getのリポジトリを追加
if [ -e /etc/apt/source.list ]; then 
    sed -i '1s/^/deb http:\/\/http.kali.org\/kali kali-rolling main contrib non-free\n/' /etc/apt/sources.list

fi

# Rictyフォントのインストール
# apt-get install fontforge
