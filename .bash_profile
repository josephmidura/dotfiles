# Last update 04/17/21

# Source the .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

# Set PATH for Python in homebrew
# Currently using 3.8.2 from MacOS
#export PATH="usr/local/opt/python@3.8/bin:$PATH" 

# Set PATH for Git in homebrew
export PATH="usr/local/opt/git/bin:$PATH" 

## Sometimes it's fun to run archey here

# This should be the last line of the file - for local customization
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"
