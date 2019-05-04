# don't use duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# set history size
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# ---Setting up the prompt---
case "$TERM" in
  xterm-color|*-256color) color_prompt=yes;;
esac

if [[ "$color_prompt" == yes ]]; then
  color1="\033[01;32m" # light green
  color2="\033[01;34m" # light blue
  prompt="\[$color1\]\u@\h\[\033[00m\]:\[$color2\]\w\[\033[00m\]\$ "
  PS1="$prompt"
  unset color1 color2 prompt
  export PS1
fi

unset color_prompt

if [[ -f ~/.bash_bindings ]]; then
  source ~/.bash_bindings
else
  echo .bash_bindings not found
fi

if [[ -f ~/.bash_exports ]]; then
  source ~/.bash_exports
else
  echo .bash_exports not found
fi
