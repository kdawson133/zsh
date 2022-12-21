#!/usr/bin/env zsh
# zshrc
#  _       _                               __ ____ ____
# | |     | |                             /_ |___ \___ \
# | | ____| | __ ___      _____  ___  _ __ | | __) |__) |
# | |/ / _` |/ _` \ \ /\ / / __|/ _ \| '_ \| ||__ <|__ <
# |   < (_| | (_| |\ V  V /\__ \ (_) | | | | |___) |__) |
# |_|\_\__,_|\__,_| \_/\_/ |___/\___/|_| |_|_|____/____/
#
# https://github.com/kdawson133/
#
# @kirk133
#
# Options
source "$ZDOTDIR/options.zsh"
# Functions
source "$ZDOTDIR/functions.zsh"
source "$ZDOTDIR/plugins/zsh-async/async.zsh"
# Completions
rip_comp "jonathanlamar/git-zsh-completion"
# Aliases
OS=$(uname)
if [[ $OS == 'Darwin' ]]
then
  rip_file aliases-macos.zsh
else 
  rip_file aliases-linux.zsh
fi
# Plugins
rip_plug "mafredri/zsh-async"
rip_plug "zsh-users/zsh-autosuggestions"
rip_plug "zsh-users/zsh-syntax-highlighting"
rip_plug "thetic/extract"
rip_plug "kdawson133/sublime"
rip_plug "kdawson133/sublime-merge"
rip_plug "mafredri/zsh-async"
# Themes
rip_theme "sindresorhus/pure"
# Key Bindings
# See Options
# Starship activation
#eval "$(starship init zsh)"
# rbenv
eval "$(rbenv init -)"
# Directory Colours
#test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)