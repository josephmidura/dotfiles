# Last update 01-31-21

# Some Macbook aliases
alias temp='sudo powermetrics --samplers smc | grep -i "CPU die temperature"'

# Network aliases
alias ping='ping -c 10'             # limit to 10 pings
alias speedtest='speedtest-cli'     # run speedtest

# Git aliases
alias gitp='git push origin'
alias gitc='git commit -m'
alias gits='git status'

# Vim aliases
alias v='vim'          			    # always use vim
alias vi='vim'          			# always use vim
alias vvim='vim ~/.vimrc'			# open vimrc
alias vbash='vim ~/.bashrc'			# open bashrc 
alias vprof='vim ~/.bash_profile'   # open bash profile 
alias valias='vim ~/.bash_aliases'  # open bash aliases
alias vlog='vim ~/.bash_logout'     # open bash logout
alias vsql='vim ~/.psqlrc'          # open psqlrc
alias vinput='vim ~/.inputrc'       # open inputrc

# Python aliases
alias python='python3'			    # always use python3
alias jn='jupyter notebook'			# start jupyter notebook
alias pipshells='pipenv shell' 		# start a new shell: 'ps' is different
alias pv='python --version'         # 

# Terminal aliases
# -G colorizes, -h makes sizes human readable, -F puts / * @
alias ls='ls -GFh'                  # add colors,symbol,readability
alias la='ls -aF'                   # show all
alias lx='ls -xF'                   # sort by extension type 
alias ll='ls -lF'                   # long list 
alias lt='ls -l -t -F'              # long list sorted by date
alias c='clear'
alias ..='cd ..'		            # up one directory
alias cd~='cd ~'		            # fix a common error
alias rm='rm -i'                    # ask for permission 

#### cp
alias cp='cp -i'                    # ask for permission 
alias mv='mv -i'                    # ask for permission 
alias cat='cat -n'                  # line numbers in cat
alias sbash='source ~/.bashrc'		# re-source this file
alias svim='source ~/.vimrc'		# source vimrc
alias grep='grep --color'           # colorize grep results
alias h='history'                   # duh

# Navigation Shortcuts
alias cj='cd ~/workshop/cs312
