# .bashrc

# '\[\ESC[COLORm\]' for some reason prevents command sticking... wtf? 

# See https://en.wikipedia.org/wiki/ANSI_escape_code#3-bit_and_4-bit for more details.
# Does not include all colors.
# From: https://unix.stackexchange.com/questions/148/colorizing-your-terminal-and-shell-environment

export COLOR_RESET='\[\e[0m\]' # No Color
export COLOR_BLACK='\[\e[0;30m\]'
export COLOR_GRAY='\[\e[1;90m\]'
export COLOR_RED='\[\e[0;31m\]'
export COLOR_LIGHT_RED='\[\e[0;91m\]'
export COLOR_GREEN='\[\e[0;32m\]'
export COLOR_LIGHT_GREEN='\[\e[0;92m\]'
export COLOR_YELLOW='\[\e[0;93m\]'
export COLOR_BLUE='\[\e[0;34m\]'
export COLOR_LIGHT_BLUE='\[\e[0;94m\]'
export COLOR_PURPLE='\[\033[0;35m\]'
export COLOR_LIGHT_PURPLE='\[\e[0;95m\]'
export COLOR_CYAN='\[\e[0;36m\]'
export COLOR_LIGHT_CYAN='\[\e[0;36m\]'
export COLOR_LIGHT_GRAY='\[\e[0;37m\]'
export COLOR_WHITE='\[\e[1;37m\]'

#echo "\[\033[38;5;13m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]➜ "
#export PS1="$COLOR_LIGHT_PURPLE\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]➜ "

export PS1=" $COLOR_LIGHT_CYAN\W\[$(tput sgr0)\] ➜ "

# CURRENT DIRECTORY ONLY
# export PS1="\[\033[38;5;13m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]➜"

# FULL PATH
#export PS1="\[\033[38;5;213m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;213m\]\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;87m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

eval "$(thefuck --alias)"
. "$HOME/.cargo/env"


# ALIASES BEGIN HERE
