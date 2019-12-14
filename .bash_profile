# last update 06/18/19
# may need to update python bits for Catalina

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

