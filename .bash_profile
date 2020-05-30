# last update 05/04/20

echo Hello from bash profile. I load first

# Source the .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

# Set PATH for Python in homebrew
export PATH="usr/local/opt/python@3.8/bin:$PATH" 

# NOT SURE WHAT THIS LINE IS FOR
# Ensure user-installed binaries take precedence
#export PATH=/usr/local/bin:$PATH

