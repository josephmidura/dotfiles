# Last update 02-21-21

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
# Git aliases
# ---------------------------------
alias gitp='git push origin'
alias gitc='git commit -m'
alias gits='git status'

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
alias pshell='pipenv shell' 		# Start a new shell: 'ps' is different

# ---------------------------------
# Terminal aliases
# -G colorizes, -h makes sizes human readable, -F puts / * @
# ---------------------------------
alias ls='ls -GFh'                  # Add colors,symbol,readability
alias la='ls -aGF'                  # Show all
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
alias cj='cd ~/workshop/cs312'

# This should be the last line of the file - for local customization
# Don't make edits below this
[ -f ".bash_aliases.local" ] && source ".bash_aliases.local"
