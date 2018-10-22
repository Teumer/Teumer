export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  #export PS1="$RED\u$WHITE@$RED\h:$PURPLE\w  \n→ $RESETCOLOR"
  export PS1="$PURPLEBOLD\h:$PURPLEBOLD\w  \n→ $RESETCOLOR"
  export PS2="| → $RESETCOLOR"
}

prompt

###################
#     ALIAS       #
###################
alias ls='ls -lhF'
alias emptytrash='rm -rf ~/.Trash/*'

alias coffee='caffeinate -d &'
alias decaf='killall caffeinate'

# This file
alias ss='source ~/.bash_profile'
alias bp='vi ~/.bash_profile'

# VPN
alias vpnup='sudo wg-quick up royal-claw'
alias vpninfo='sudo wg show'
alias vpndown='sudo wg-quick down royal-claw'

# External IP
alias myip4='curl -4 icanhazip.com'
alias myip6='curl -6 icanhazip.com'
