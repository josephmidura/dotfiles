# Last update 03/02/22
# Issues: I'm not sure I want rbenv running automatically

# Source the .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Supress message about zsh when terminal launches
export BASH_SILENCE_DEPRECATION_WARNING=1

# Execute a shell script from any directory 
export PATH="$HOME/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_comple    tion

# For Asdf and Python
. /usr/local/opt/asdf/libexec/asdf.sh

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
