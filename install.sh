#!/usr/bin/env bash

## 未定義な変数があったら途中で終了する
set -u

BASEDIR=$(dirname $0)
cd $BASEDIR

## dotfilesディレクトリにある，dotfilesに対して
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ## make symbolic link
    ln -snfv ${PWD}/"$f" ~/
done

# nvim derectory symlink
mkdir -p $HOME/.config
if [ ! -h "${XDG_CONFIG_HOME:-$HOME/.config}/nvim" ]
then
ln -s "$PWD/nvim" "$HOME/.config/"
fi
