#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
PATH=~/.npm-global/bin:$PATH
PATH=$PATH:$HOME/bin
PATH=/opt/android-studio/bin:$PATH

export EDITOR=$(which vim)
export TERMINAL=terminator
export TERM="xterm-256color"
export XDG_CONFIG_HOME=~/.config
export PYTHON=/usr/bin/python2

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
