# Last update 03-01-24

# Issues - Is the CLICOLOR line necessary since I have LSCOLORS define?
# I also alias ls -G elsewhere

# Determine whether this is the login script
#echo Hello from .bashrc

# Play a message when I re-source this file.
echo -e Welcome to Bash ${BASH_VERSION%.*}, $USER

# Source the aliases file, if it exists
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

#----------------------------------
# PROMPT RELATED
#----------------------------------
#
#https://stackoverflow.com/questions/15883416/adding-git-branch-on-the-bash-command-prompt
#https://web.archive.org/web/20160704140739/http://ithaca.arpinum.org/2013/01/02/git-prompt.html

#Original prompt (I've since modded it, but the form is right"
#PS1="\n\[\033[36m\]\u\[\033[m\]@\[\033[34m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ " 

# This is based on the links above in line 22
#source ~/.git-prompt.sh
#PS1='\u \W$(__git_ps1)\$ ' # for testing

#PS1="\n\[\033[36m\]\u\[\033[0m\]@\[\033[34m\]\h\[\033[0m\]:\[\033[33;1m\]\W\[\033[m\]$(__git_ps1)\$ "

# Add date to prompt https://askubuntu.com/questions/193416/adding-timestamps-to-terminal-prompts
#PS1="\D{%F} \t"

## Ugly but it works
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1="[date time] user @ host : directory (git branch) $ "
#PS1="\n\D{[%F} \t] \[\033[36m\]\u\[\033[0m\]@\[\033[34m\]\h\[\033[0m\]:\[\033[33;1m\]\W\[\033[m\]$(parse_git_branch)$ "
PS1="\n\[\033[34m\]\D{[%F} \t] \[\033[36m\]\u\[\033[0m\]@\[\033[34m\]\h\[\033[0m\]:\[\033[33;1m\]\W\[\033[m\]$(parse_git_branch)$ "

#----------------------------------
# MISC
#----------------------------------

# Enable nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Turn off Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# For use with virtualenvs
gpip(){
   PIP_REQUIRE_VIRTUALENV="0" python -m pip "$@"
}

# List some mac specs
#sw_vers

#----------------------------------
# SHELL
#----------------------------------

# Behavior
shopt -s checkhash                       # Build hash of commands in PATH, look there first, in PATH after
shopt -s checkwinsize                    # Automatically update the values of LINES and COLUMNS
shopt -s no_empty_cmd_completion         # Don't look in PATH if I haven't typed anything
shopt -s progcomp                        # Programmable completion (should be enabled by default)

# History related
HISTFILESIZE=5000                        # Set number of lines in bash_history
#export HISTCONTROL=ignoreboth:erasedups # Remove duplicate history entries (Sometimes I want the duplicates)
shopt -s histappend                      # When the shell exits, append to the history file instead of overwriting it
shopt -s histverify                      # Allow edits to history substitution
export HISTTIMEFORMAT='%F %T '           # Set date and time in history

#----------------------------------
# VARIABLES
#----------------------------------

export EDITOR=vi

set -o vi # Use vim keybindings

# Replace Clang with gcc to avoid problems with Go
#export CC=gcc
export CC=$(which gcc)

#----------------------------------
# TERMINAL COLORS 
#----------------------------------

# Enable 256 color support in gruvbox
source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette_osx.sh"

# https://stackoverflow.com/questions/1550288/os-x-terminal-colors

# This is equivalent to ls -G. See man ls for details because I alias this also
export CLICOLOR=1 # Enable coloring in terminal

# Specify how to color specific items
#export LSCOLORS=ExFxBxDxCxegedabagacad   #
export LSCOLORS=GxFxCxDxBxegedabagaced    # Easier to see on dark screen

# Colorize man output with less
export LESS_TERMCAP_mb=$'\e[01;31m'       # Begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # Begin bold
export LESS_TERMCAP_me=$'\e[0m'           # End mode
export LESS_TERMCAP_se=$'\e[0m'           # End standout-mode
export LESS_TERMCAP_so=$'\e[38;5;246m'    # Begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # End underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # Begin underline

#----------------------------------
# Color chart is below
#----------------------------------

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
