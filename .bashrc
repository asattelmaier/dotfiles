# Prevent freeze when entering Ctrl-S
# @see: https://unix.stackexchange.com/a/12108
if [[ -t 0 ]]; then
  stty -ixon
fi



# Avoid black background when using GNU screen
# @see: https://stackoverflow.com/a/6918905/7091146
TERM=xterm-256color

# Load functions for interactive shells
[ -r ~/.functions ] && source ~/.functions
