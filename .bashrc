# .bashrc

## LICENCE AGREEMENT
## -----------------
## If for any reason whatsover that this file contains copyrighted material,
## it is herby set free into the public domain. Under no circomestances should
## any author be liable for any reason as a result of this file, and all
## changes are free to use and distribute--even with zero credit given.
##
## I trust you all will do the same and contibute any code you add to the public
## domain. You're not capitalists, are you?

# '\[\ESC[COLORm\]' for some reason prevents command sticking... wtf? 

# See https://en.wikipedia.org/wiki/ANSI_escape_code#3-bit_and_4-bit for more details.
# Does not include all colors.
# From: https://unix.stackexchange.com/questions/148/colorizing-your-terminal-and-shell-environment

export COLOR_RESET='\e[0m' # No Color
export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;90m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[0;91m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[0;92m'
export COLOR_YELLOW='\e[0;93m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[0;94m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\e[0;95m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[0;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'

#echo "\[\033[38;5;13m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]➜ "
#export PS1="$COLOR_LIGHT_PURPLE\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]➜ "

savechar="⭬"

export PS1="\[\e[$COLOR_LIGHT_GREEN\] \W\[$(tput sgr0)\] ➜ "
export PS2=" ➜ "


# CURRENT DIRECTORY ONLY
# export PS1="\[\033[38;5;13m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]➜"

# FULL PATH
#export PS1="\[\033[38;5;213m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;213m\]\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;87m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	./etc/bashrc
#fi

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

# --- ALIASES BEGIN HERE ---

# where <filename>
alias where="find /home/$USER -iname"
alias where-global="find / -iname"

# Easy Access
alias .="pwd"

alias ..="cd .."
alias ...=".. && .."
alias ..3="... && .."
alias ..4="..3 && .."
alias ..5="..4 && .."
alias ..6="..5 && .."
alias ..7="..6 && .."
alias ..8="..7 && .."
alias ..9="..8 && .."

alias ~="cd ~"

alias project="cd ~/projects/ && cd $1"
alias bashrc="nano ~/.bashrc"

# Prevent the robot uprising
alias please=""

# safety and convienience
# is a directory and directory not empty have got to be the most annoying nothing errors in existanc
# I need to type "y" and enter otherwise it wont.
alias rm="rm --dir --recursive -I --preserve-root"
alias mv="mv -i"
alias cp="cp -r -i"
alias ln="ln -i"

alias free="unset $$1"
#alias read="one=1; two=10; variable='one'; eval 'echo $variable'; variable='two'; eval 'echo $variable'"
#alias read="echo $x" # CANT WORK

# I might add --hyperlink, but I can just `view` or `gui` it.
alias ls="ls --ignore-backups --classify --indicator-style=slash --color --group-directories-first --human-readable --si --literal --hide-control-chars"

# open in GUI
alias gui="xdg-open"
alias view="xdg-open"
alias open="xdg-open"

# XDG (Cross Desktop Group) directory config file: 
# /home/$USER/.config/user-dirs.dirs

# misc
alias hash="openssl sha1"
alias ports="netstat -tilanp"

alias g="git"

alias woman="man"
alias help="man"

# Fun!

# Kinda want to add dice here ... hmmmmmmm (like d20, d12, etc)

alias kissingwomen="echo 'Im sure you are'"
alias lesbian="echo 'I know'"

alias girlkisser="echo 'I know silly'"

alias vim="echo 'Are you SURE about that?'"
alias cuddle="neofetch"

# For when you resized your terminal and you want it back
alias ruler="echo '0 ------ 1 ------- 2 ------- 3 ------- 4 ------- 5 ------- 6 ------- 7 ------- 8'"

alias reload="source ~/.bashrc"
alias unset-all="bash" # Starting a new session clears variables.
alias new="cd ~ && clear && reload"
#alias new="new"
#alias new="unset-all; ~; clear; reload"

# --- INTRO TEXT ---

printf " Welcome, $COLOR_GREEN$USER$COLOR_RESET on $COLOR_GREEN$HOSTNAME$COLOR_RESET.\n"
#printf " >_< Terminyyal!\n"

# bind TAB:menu-complete
