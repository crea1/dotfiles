#GIT
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
if [ -z "$SSH_CONNECTION" ]; then
    export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\w\[\033[01;32m\]$(__git_ps1) \[\033[01;36m\]$ \[\033[00m\]'
else
    export PS1='${debian_chroot:+($debian_chroot)}\u@\[\033[0;31m\]\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[01;32m\]$(__git_ps1) \[\033[01;36m\]$ \[\033[00m\]'
fi
