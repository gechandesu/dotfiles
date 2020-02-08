# Если не работает в интерактивном режиме, ничего не делать
case $- in
    *i*) ;;
      *) return;;
esac


# Не записывает повторяющиеся и начинающиеся команды в историю 
HISTCONTROL=ignoreboth


# Дописывать в историю, а не перезаписывать её
shopt -s histappend


# Длина истории и размер файла истории
HISTSIZE=1000
HISTFILESIZE=2000


# Адаптирует содержимое окна под его размер
shopt -s checkwinsize


# Включает автодополнение команд, если не включено в /etc/bash.bashrc и /etc/profile
# sources /etc/bash.bashrc
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# Включает поддержку файла .bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

