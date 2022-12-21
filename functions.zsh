#!/usr/bin/env zsh
# functions.zsh
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
# Function to source files if they exist
function rip_file() {
    [ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}
# Function to source and install plugin
function rip_plug() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
        # For plugins
        rip_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        rip_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
        rip_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        rip_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    fi
}
# Function to source and install theme
function rip_theme() {
    THEME_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/themes/$THEME_NAME" ]; then
        # For themes
        rip_file "themes/$THEME_NAME/$THEME_NAME.zsh-theme" || \
        rip_file "themes/$THEME_NAME/$THEME_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/themes/$THEME_NAME"
        rip_file "themes/$THEME_NAME/$THEME_NAME.zsh-theme" || \
        rip_file "themes/$THEME_NAME/$THEME_NAME.zsh"
    fi
}
# Function to source and install completion
function rip_comp() {
    COMP_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/completions/$COMP_NAME" ]; then
        # For completions
        completion_file_path=$(ls $ZDOTDIR/completions/$COMP_NAME/_*)
        fpath+="$(dirname "${completion_file_path}")"
        rip_file "completions/$COMP_NAME/$COMP_NAME.plugin.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/completions/$COMP_NAME"
        fpath+=$(ls $ZDOTDIR/completions/$COMP_NAME/_*)
        [ -f $ZDOTDIR/.zccompdump ] && $ZDOTDIR/.zccompdump
    fi
    completion_file="$(basename "${completion_file_path}")"
    if [ "$2" = true ] && compinit "${completion_file:1}"
}