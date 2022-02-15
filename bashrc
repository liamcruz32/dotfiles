export PS1="\[\033[0;37m\]\342\224\214\342\224\200$([[ $? != 0 ]] && echo "[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200")[\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h\[\033[0;37m\]]\342\224\200[\[\033[0;37m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

export VISUAL=vim
export EDITOR="$VISUAL"

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -lh'

alias mv='mv -v'
alias cp='cp -v'
alias mkdir='mkdir -pv'
