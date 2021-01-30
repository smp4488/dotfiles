#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# PATHS
export PATH="${HOME}/opt/xPacks:$PATH"
export PATH="${HOME}/.cache/xPacks:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source /usr/share/nvm/init-nvm.sh

source /usr/share/bash-complete-alias/complete_alias

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias dotfiles='/usr/bin/git --git-dir=/home/smplman/.dotfiles/ --work-tree=/home/smplman'
complete -F _complete_alias dotfiles
