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
HISTTIMEFORMAT="%d %b %Y %T %z "

# Sync history between different terminals
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r;"

# Adapt rows and columns to window size
shopt -s checkwinsize

# Command completion
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

# Extend PATH
export PATH=$PATH:$HOME/.local/bin

# Command line prompt
PS1="> \[\033[0;92m\]\w\[\033[0;15m\]\n\$ "

# Tilix config for open new tile in the same directory.
# https://github.com/gnunn1/tilix/wiki/VTE-Configuration-Issue
# On Ubuntu run:
# sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
if [[ $TILIX_ID ]]; then
        source /etc/profile.d/vte.sh
fi
