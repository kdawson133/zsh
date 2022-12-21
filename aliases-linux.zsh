# aliases-linux.zsh
#  _       _                               __ ____ ____  
# | |     | |                             /_ |___ \___ \ 
# | | ____| | __ ___      _____  ___  _ __ | | __) |__) |
# | |/ / _` |/ _` \ \ /\ / / __|/ _ \| '_ \| ||__ <|__ < 
# |   < (_| | (_| |\ V  V /\__ \ (_) | | | | |___) |__) |
# |_|\_\__,_|\__,_| \_/\_/ |___/\___/|_| |_|_|____/____/ 
#
# https://github.com/kdawson133 @kirk133
#
## Aliases for Debian dased Linux

# Editor
alias zshconfig='vim $HOME/.config/zsh/zshrc'
alias vi='/usr/bin/vim'
alias vim='/usr/bin/nvim'
alias svim='sudo -e'

# Admin
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"

# Terminal
alias c="clear"
alias q="exit"
alias Serve='python3 -m http.server 8000 --bind 127.0.0.1'

# Apt
alias update="sudo apt update && sudo apt upgrade -y"
alias apti="sudo apt install -y"
alias aptr="sudo apt remove --purge"

# Listing
alias ls="ls -GFh"
alias la="ls -lah"
alias ll='ls -la'
alias l.='ls -d .*'

# youtube-dl
alias yt-dla='youtube-dl -x --audio-format m4a'
alias yt-dlv='youtube-dl -f mp4'

# Git
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gcmsg='git commit -m'
alias gcu='git commit -m "updated"'
alias gca='git commit -m "added"'
alias gcd='git commit -m "deleted"'
alias gl='git pull'
alias gp='git push'
alias gb='git branch'
alias gco='git checkout'
alias grr='git remote rm'
alias gra='git remote add'
alias grsu='git remote set-url --add --push'
