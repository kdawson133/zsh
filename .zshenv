#!/usr/bin/env zsh
# .zshenv
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
################################
# EXPORT ENVIRONMENT VARIABLES #
################################
#
# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
# SHELL
export LC_ALL=en_AU.UTF-8
export LANG=en_AU.UTF-8
export LANGUAGE=en_AU:en
export EDITOR="nvim"
export VISUAL="nvim"
# PATH
export RBENV_ROOT="$HOME/.config/rbenv"         # RUBY
export PATH="$HOME/.config/rbenv/bin:$PATH"
export PATH="$HOME/.config/rbenv/shims:$PATH"
export GEM_HOME="$HOME/.config/gems"            # RUBY GEMS
export PATH="$HOME/.config/gems/bin:$PATH"
source "$HOME/.cargo/env"                       # RUST

