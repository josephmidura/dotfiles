# Last update 05-09-21

# ---------------------------------
# Some Macbook aliases
# ---------------------------------
alias temp='sudo powermetrics --samplers smc | grep -i "CPU die temperature"'

# ---------------------------------
# Network aliases
# ---------------------------------
alias ping='ping -c 10'             # Limit to 10 pings
alias speedtest='speedtest-cli'     # Run speedtest

# ---------------------------------
# Vim aliases
# ---------------------------------
alias v='vim'          			    # Always use vim
alias vi='vim'          			# Always use vim
alias vvim='vim ~/.vimrc'			# Open vimrc
alias vbash='vim ~/.bashrc'			# Open bashrc 
alias vprof='vim ~/.bash_profile'   # Open bash profile 
alias valias='vim ~/.bash_aliases'  # Open bash aliases
alias vlog='vim ~/.bash_logout'     # Open bash logout

# ---------------------------------
# Python aliases
# ---------------------------------
alias python='python3'			    # Always use python3
alias jn='jupyter notebook'			# Start jupyter notebook

# ---------------------------------
# Terminal aliases
# -G colorizes, -h makes sizes human readable, -F puts / * @
# ---------------------------------
alias ls='ls -GFh'                  # Add colors,symbol,readability
alias la='ls -AltGF'                # Show all, long list, date, symbol,readable
alias lx='ls -xF'                   # Sort by extension type 
alias ll='ls -lF'                   # Long list 
alias lt='ls -l -t -F -G'           # Long list sorted by date
alias c='clear'
alias ..='cd ..'		            # Up one directory
alias ...='cd ../..'		        # Up two 
alias cd~='cd ~'		            # Fix a common error
alias rm='rm -i'                    # Ask for permission 
alias mv='mv -i'                    # Ask

# ---------------------------------
# Heroku
# ---------------------------------

alias h='heroku'                    # Less typing

# ---------------------------------
# Moving and finding
# ---------------------------------
alias cp='cp -i'                    # Ask for permission 
alias mv='mv -i'                    # Ask for permission 
#alias cat='cat -n'                  # Line numbers in cat
alias sbash='source ~/.bashrc'		# Re-source this file
alias svim='source ~/.vimrc'		# Source vimrc
alias grep='grep --color'           # Colorize grep results
alias h='history'                   # Duh

# ---------------------------------
# Navigation shortcuts
# ---------------------------------

# I should put shortcuts in .bash_aliases.local

# This should be the last line of the file - for local customization
# Don't make edits below this
[ -f ".bash_aliases.local" ] && source ".bash_aliases.local"
