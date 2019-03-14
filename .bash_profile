# last update 03/14/19

echo hello from bash profile

# Source the .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

# Set PATH for Python, git, and vim in homebrew
# Ensure user-installed binaries take precedence
#export PATH=/usr/local/bin:$PATH

# ruby path
#export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# start rbenv automatically
#eval "$(rbenv init -)"

# for postgres app
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# ruby path
#export PATH=/Users/jpm/bin:/Users/jpm/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/Versions/latest/bin

# Make pyenv initialize when terminal loads
#eval "$(pyenv init -)"

