# Last update 06/11/24
# Will I ever use the local customization option?

#echo Hello from .bash_profile

# Source the .bashrc, if it exists
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Supress message about zsh when terminal launches
export BASH_SILENCE_DEPRECATION_WARNING=1

# Set up my $PATH to include ~/bin
PATH=$PATH:~/bin
export PATH

# Homebrew's sbin
export PATH="/usr/local/sbin:$PATH"

# For asdf 
. /usr/local/opt/asdf/libexec/asdf.sh

# Make me choose a profile each time
export AWS_PROFILE=null

# Run rbenv
#eval "$(rbenv init -)"

# Set gem path
#export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# Set GO PATH
#export PATH=$GOPATH/bin:$PATH

# Set environment variable for GPG
export GPG_TTY=$(tty)

# This should be the last line of the file - for local customization
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"

