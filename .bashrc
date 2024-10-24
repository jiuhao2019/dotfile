#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(fzf --bash)"
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'tree -L 1 -d -C {}'"

alias l='ls -lha'
alias ll='ls -lh'
alias ..='cd ..'
alias .~='cd ~'
alias mv='mv -i'
alias pcmu='sudo pacman -Syu'
alias pru='paru -Syu'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias rm='rm -irv'
