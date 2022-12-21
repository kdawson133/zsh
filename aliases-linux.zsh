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

# Admin
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"

# Apt
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias apti="sudo apt install -y"
alias aptr="sudo apt remove --purge"