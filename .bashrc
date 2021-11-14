# Prevent freeze when entering Ctrl-S
# @see: https://unix.stackexchange.com/a/12108
stty -ixon



# Avoid black background when using GNU screen
# @see: https://stackoverflow.com/a/6918905/7091146
TERM=xterm-256color



# Load bash profile
[ -n "$PS1" ] && source ~/.bash_profile;

