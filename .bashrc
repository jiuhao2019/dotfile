#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(fzf --bash)"
alias l='ls -lha'
alias ll='ls -lh'
alias ..='cd ..'
alias .~='cd ~'
alias mv='mv -i'
alias pcmu='sudo pacman -Syu'
alias pru='paru -Syu'
