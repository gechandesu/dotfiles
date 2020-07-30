# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History configuration
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth

# Sync history between different terminals
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r;"

# Adapt rows and columns to window size
shopt -s checkwinsize

# Advanced command completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Enable aliases from ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Command line prompt
# PS1="\e[1;92m\u@\h\\e[0;37m\w:\e[1;31m\$ \e[m"
# PS1="\[\033[1;92m\]\u@\h\[\033[0;15m\]:\[\033[0;92m\]\w\[\033[0;15m\]\$ "

# with only "$" and current path
PS1="\[\033[0;92m\]\w\[\033[0;15m\]:\$ "
