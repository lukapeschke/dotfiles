#!/bin/sh -xe

safe_mkdir () {
    if [ ! -d $1 ]; then
	mkdir -p $1
    fi
}

cd /tmp

git clone https://github.com/lukapeschke/dotfiles.git
cd dotfiles/emacs

safe_mkdir ~/.emacs.d/themes
cp -r DOTemacs.d/themes/ ~/.emacs.d
cp -r DOTemacs.d/lisp/ ~/.emacs.d

if [ -f ~/.emacs ]; then
    mv ~/.emacs ~/.emacs.old
fi

cp DOTemacs ~/.emacs

cd /tmp
rm -rf dotfiles/
