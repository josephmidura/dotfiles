# Last update 07-11-23
# Do I need bash_aliases.local? -- for navigation shortcuts

# ---------------------------------
# Misc
# ---------------------------------
alias bejs='bundle exec jekyll serve'
alias h='heroku'                    # Less typing
alias sql='sqlite3'                 # Abbreviate

# MySQL
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

# SSH
alias ssh='sshcolor.sh'

# Must be invoked as super user
alias temp='sudo powermetrics --samplers smc | grep -i "CPU die temperature"'

# ---------------------------------
# Docker aliases
# ---------------------------------
alias dk='docker stop $(docker ps -a -q)' # Stop all Docker containers

# ---------------------------------
# Network aliases
# ---------------------------------
alias ping='ping -c 10'             # Limit to 10 pings
alias speedtest='speedtest-cli'     # Run speedtest
alias nq='networkQuality'           # Network Quality tool in Monterey

# ---------------------------------
# Git aliases
# ---------------------------------
alias gitc='git commit -s -m'       # Sign and message for commits
alias gita='git add -p'             # Always use this flag 
alias gb='git branch'
alias gs='git status'

# ---------------------------------
# Vim aliases
# ---------------------------------
alias v='vim'                       # Always use vim
alias vi='vim'                      # Always use vim
alias vvim='vim ~/.vimrc'           # Open vimrc
alias vbash='vim ~/.bashrc'         # Open bashrc 
alias vprof='vim ~/.bash_profile'   # Open bash profile 
alias valias='vim ~/.bash_aliases'  # Open bash aliases

# ---------------------------------
# Python aliases
# ---------------------------------
alias python='python3'              # Always use python3
alias jn='jupyter notebook'         # Start jupyter notebook

# ---------------------------------
# Terminal aliases
# ---------------------------------
alias ls='ls -GFh'                  # Add colors, symbol, readability
alias la='ls -At'                   # Show all, date, symbol, readable
alias lx='ls -x'                    # Sort by extension type 
alias ll='ls -l -a'                 # Long list 
alias lt='ls -l -t'                 # Long list sorted by date
alias c='clear'
alias ..='cd ..'                    # Up one directory
alias ...='cd ../..'                # Up two 
alias cd~='cd ~'                    # Fix a common error
alias rm='rm -i'                    # Ask for permission 
alias x='exit'                      # Exit 
alias du='du -sh'                   # Human readable, no subdirectories

# ---------------------------------
# Moving and finding
# ---------------------------------
alias cp='cp -i'                    # Ask for permission 
alias mv='mv -i'                    # Ask for permission 
alias sbash='source ~/.bashrc'      # Re-source this file
alias svim='source ~/.vimrc'        # Source vimrc
alias grep='grep --color'           # Colorize grep results
alias his='history'                 # Duh

# ---------------------------------
# Navigation shortcuts
# ---------------------------------

# I should put shortcuts in .bash_aliases.local

# This should be the last line of the file - for local customization
# Don't make edits below this
[ -f ".bash_aliases.local" ] && source ".bash_aliases.local"
