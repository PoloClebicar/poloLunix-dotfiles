# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#EXPORT TO PATH
export PATH="$HOME/development/flutter/bin:$PATH"
export PATH="$HOME/.pub-cache/bin:$PATH"
export PATH="$HOME/$(which java):$PATH"
export PATH="$HOME/home/polo/.deno/bin/deno:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"


CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export CHROME_EXECUTABLE

eval "$(starship init bash)"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "/home/polo/.deno/env"

# Turso
export PATH="$PATH:/home/polo/.turso"
. "$HOME/.cargo/env"
