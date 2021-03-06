# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
if [ -z "$SSH_AUTH_SOCK" ] ; then
   eval `ssh-agent -s`
fi
export HISTSIZE=10000
export HISTCONTROL=ignoreboth
