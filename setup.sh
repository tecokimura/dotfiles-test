#!/bin/bash
set -e
echo "開発環境を構築します"

# 2023/4 p138
# ~/dotfilesにファイルやディレクトリが存在しないとき、リポジトリをクローンする
DOTFILES_REPO="$HOME/dotfiles"
if [ ! -e "$DOTFILES_REPO" ]; then
    echo 'dotfilesリポジトリをcloneします'
    git clone https://github.com/tecokimura/dotfiles.git ~/dotfiles
fi

# 設定ファイルごとにシンボリックリンクを作成する
cd "$DOTFILES_REPO"
git ls-files | grep -e '^\.' | while read DOTFILE; do
   echo "シンボリックリンクを貼ります: $DOTFILE"
   ln -sf "$DOTFILES_REPO/$DOTFILE" "$HOME/$DOTFILE"
done
