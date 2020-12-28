# last update 12/28/20

# Source the .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

# Set PATH for Python in homebrew
export PATH="usr/local/opt/python@3.8/bin:$PATH" 

## sometimes it's fun to run archey (homebrew) here
