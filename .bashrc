# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Prevent freeze when entering Ctrl-S
# @see: https://unix.stackexchange.com/a/12108
stty -ixon



# Avoid black background when using GNU screen
# @see: https://stackoverflow.com/a/6918905/7091146
TERM=xterm-256color



# free port
# usage:
#   fp PORT
function fp()
{
    local port="$1"
    local pid="$(lsof -t -i:$port)"

    if test -z "$pid"
    then
        echo "No process listens to port $port"
    else
        kill -9 $pid
    fi
}



# free port on wsl for windows
# usage:
#   w:fp PORT
function w:fp()
{
    local port="$1"
    local pid="$(
        netstat.exe -ano \
      | findstr.exe :$port \
      | sed -r 's/(\s+[^\s]+){4}(.*)/\1/' \
      | tr -d '\r'
    )"

    if test -z "$pid"
    then
        echo "No process listens to port $port"
    else
        taskkill.exe /F /PID $pid
    fi
}

