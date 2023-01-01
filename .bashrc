# Last update 07-03-22

# Issue - Is the CLICOLOR line necessary since I have LSCOLORS define?
# I also alias ls -G

# Determine whether this is the login script
#echo Hello from .bashrc. I load after bash_profile

# Play a message when I re source this file.
echo -e Welcome to Bash ${BASH_VERSION%.*}. Time to try out zsh?

# Source the aliases file
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Prompt
PS1="\n\[\033[36m\]\u\[\033[m\]@\[\033[34m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ " 

# Enable 256 color support in gruvbox
source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette_osx.sh"

# ---------------------------------
# Enable nvm
# ---------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ---------------------------------
# Set history settings
# ---------------------------------

# Set number of files in bash_history
HISTFILESIZE=5000

# Remove duplicate history entries (Sometimes I want the duplicates)
#export HISTCONTROL=ignoreboth:erasedups

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Set date and time in history
export HISTTIMEFORMAT='%F %T '

# ---------------------------------
# Misc settings
# ---------------------------------

# Always us vi.
export editor=vi

# Use vim keybindings
set -o vi

# Turn off Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# Replace Clang with gcc to avoid problems with Go
export CC=gcc

# ---------------------------------
# Set terminal colors
# ---------------------------------

# This is equivalent to ls -G. See man ls for details because I alias this also
export CLICOLOR=1

# Terminal colors 
#export LSCOLORS=ExFxBxDxCxegedabagacad   #
export LSCOLORS=GxFxCxDxBxegedabagaced    # Easier to see on dark screen

# Colorize man output with less
export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'           # end mode
export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # end underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline

# ---------------------------------
# Color chart is below
# ---------------------------------

# Regular Colors
txtblk='\e[0;30m]' # Black
txtred='\e[0;31m'  # Red
txtgrn='\e[0;32m'  # Green
txtylw='\e[0;33m'  # Yellow
txtblu='\e[0;34m'  # Blue
txtpur='\e[0;35m'  # Purple
txtcyn='\e[0;36m'  # Cyan
txtwht='\e[0;37m'  # White

# Bold
bldblk='\e[1;30m'  # Black
bldred='\e[1;31m'  # Red
bldgrn='\e[1;32m'  # Green
bldylw='\e[1;33m'  # Yellow
bldblu='\e[1;34m'  # Blue
bldpur='\e[1;35m'  # Purple
bldcyn='\e[1;36m'  # Cyan
bldwht='\e[1;37m'  # White

# Underline
unkblk='\e[4;30m'  # Black
undred='\e[4;31m'  # Red
undgrn='\e[4;32m'  # Green
undylw='\e[4;33m'  # Yellow
undblu='\e[4;34m'  # Blue
undpur='\e[4;35m'  # Purple
undcyn='\e[4;36m'  # Cyan
undwht='\e[4;37m'  # White

# Background
bakblk='\e[40m'    # Black
bakred='\e[41m'    # Red
badgrn='\e[42m'    # Green
bakylw='\e[43m'    # Yellow
bakblu='\e[44m'    # Blue
bakpur='\e[45m'    # Purple
bakcyn='\e[46m'    # Cyan
bakwht='\e[47m'    # White
 
txtrst='\e[0m'     # Text Reset

# ---------------------------------
# This should be the last line of the file - for local customization
# Don't make edits below this
# ---------------------------------
[ -f ".bashrc.local" ] && source ".bashrc.local"
