========
dotfiles
========

My personal dotfiles and configs.

Emacs
=====

Execute this command to install my emacs configuration:

``wget -O - https://raw.githubusercontent.com/lukapeschke/dotfiles/master/emacs/install.sh | bash``

If the colors seem weird, set the `TERM` environment variable to `xterm-256color`

i3
==

This is a simple i3gaps_ + i3blocks_ config. No Polybar / Xmonad etc..., I'm
planning to move on to sway_ once it is considered stable, and this config
should be fully compatible.

.. _i3gaps: https://github.com/Airblader/i3
.. _i3blocks: https://github.com/vivien/i3blocks
.. _sway: https://github.com/swaywm/sway
