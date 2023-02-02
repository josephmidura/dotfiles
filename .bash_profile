# Last update 02/02/23

# Reminder - AWS default profile is defined here

echo Hello from .bash_profile

# Source the .bashrc, if it exists
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Supress message about zsh when terminal launches
export BASH_SILENCE_DEPRECATION_WARNING=1

# Execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

# For Asdf and Python
#. /usr/local/opt/asdf/libexec/asdf.sh

# Use personal AWS account as default
#export AWS_PROFILE=personal

# Set PATH for Git in homebrew
#export PATH="usr/local/opt/git/bin:$PATH" 

# Run rbenv
#eval "$(rbenv init -)"

# Set gem path
#export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# Set GO PATH
#export PATH=$GOPATH/bin:$PATH

# This should be the last line of the file - for local customization
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"
