# last update 10/17/20

#echo Hello from bash profile. I load first

# Source the .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

# Set PATH for Python in homebrew
export PATH="usr/local/opt/python@3.8/bin:$PATH" 

# Run archey cause it's fun
archey
