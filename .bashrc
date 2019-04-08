# last update 04-08-19

# determine whether this is the login script
echo hello from bashrc

# Source the aliases file
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# color prompt and make root red
if [ `id -u` = 0 ]
then
    PS1="\[\e[33;1;41m\][\u] \w \$\[\e[0m\] "
    #SUDO_PS1="\[\e[33;1;41m\][\u] \w \$\[\e[0m\] "
    #PS1="\[\033[31m\]\h:\W \u\$\[\033[0m\] "
else
    PS1="\n\[\033[36m\]\u\[\033[m\]@\[\033[34m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ " 
fi

# Set terminal colors

# This is equivalent to ls -G. See man ls for details
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Remove duplicate history entries
export HISTCONTROL=ignoreboth:erasedups

# display commands with date and time
export HISTTIMEFORMAT='%F %T'


# Colorize man output
export LESS_TERMCAP_mb=$'\e[1;35m'
export LESS_TERMCAP_md=$'\e[1;35m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'



