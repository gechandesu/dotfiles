# Если не работает в интерактивном режиме, ничего не делает
case $- in
    *i*) ;;
      *) return;;
esac


# Не записывает повторяющиеся и начинающиеся с пробела команды в историю 
HISTCONTROL=ignoreboth


# Дописывает в историю, а не перезаписывает её
shopt -s histappend


# Устанавливает длину истории и размер файла истории
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


# Приглашение командной строки
PS1="\[\033[1;92m\]\u@\h\[\033[0;15m\]:\[\033[0;92m\]\w\[\033[0;15m\]\$ "
# Приглашение без имени хоста и пользователя
# PS1="\[\033[0;92m\]\w\[\033[0;15m\]:\$ "
