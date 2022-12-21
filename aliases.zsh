# aliases.zsh
#  _       _                               __ ____ ____  
# | |     | |                             /_ |___ \___ \ 
# | | ____| | __ ___      _____  ___  _ __ | | __) |__) |
# | |/ / _` |/ _` \ \ /\ / / __|/ _ \| '_ \| ||__ <|__ < 
# |   < (_| | (_| |\ V  V /\__ \ (_) | | | | |___) |__) |
# |_|\_\__,_|\__,_| \_/\_/ |___/\___/|_| |_|_|____/____/ 
#
# https://github.com/kdawson133 @kirk133
#
# Aliases

# Editor
alias vim=nvim
alias svim='sudo nvim'

# Terminal
alias :c="clear"
alias :q="exit"

#safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# youtube-dl
alias yt-dla='youtube-dl -x --audio-format m4a'
alias yt-dlv='youtube-dl -f mp4'

# python
alias python='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias Serve='python3 -m http.server 8000 --bind 127.0.0.1'

# Listing
#alias ls="ls -GFh"
#alias lh="ls -lah"
#alias ll='ls -la'
#alias l.='ls -d .*'
alias l.='exa -la --icons --group-directories-first | grep " \."'
alias la='exa -la --icons --group-directories-first' 
alias ld='exa -D --icons' 
alias ll='exa -l --icons --group-directories-first'
alias ls='exa --icons --group-directories-first' 
alias lt='exa -T --level=3 --icons'

# Docker-Compose
alias dcp='docker-compose pull'
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dce='edit docker-compose.yml'
alias dcl='docker-compose ps'
alias dci='docker-compose images'

# Find
alias fd='fd --color always'
alias fda='fd --absolute-path'
alias fdc='fd --ignore-case'
alias fde='fd --extension'
alias fdf='fd --follow'
alias fdh='fd --hidden' 
alias fdg='fd --glob'
alias fdo='fd --owner'
alias fds='fd --size'
alias fdx='fd --exclude'
alias find='fd'

# Git
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcu='git commit -m "updated"'
alias gca='git commit -m "added"'
alias gcd='git commit -m "deleted"'
alias gl='git pull'
alias gp='git push'
alias gi='git init'
alias gc='git clone'
alias gbr='git branch'
alias gco='git checkout'
alias grr='git remote rm'
alias gra='git remote add'
alias grsu='git remote set-url --add --push'