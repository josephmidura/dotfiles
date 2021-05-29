# Last update 05/28/21
# Issues: I'm not sure I want rbenv running automatically

# Source the .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

# Set PATH for Homebrew Python 
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Set PATH for Git in homebrew
export PATH="usr/local/opt/git/bin:$PATH" 

# Run rbenv
eval "$(rbenv init -)"

# Set gem path
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# Set GPOATH
export PATH=$GOPATH/bin:$PATH

# This should be the last line of the file - for local customization
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"
