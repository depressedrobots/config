########################################################################
# prompt format:
# time and working directory + Git branch
########################################################################
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

export PS1="\t \u@\h:\[$(tput sgr0)\]\[\033[38;5;2m\][\W\[$(tput sgr0)\]\[\033[38;5;11m\]$(parse_git_branch)\[\033[38;5;2m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

########################################################################
# aliases
########################################################################
alias ll='ls -lGaf'
alias g='googler -n 5'


########################################################################
# Git auto-complete
# Get it via Get it via curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
########################################################################
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

########################################################################
# colors for bash 
########################################################################
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export NVM_DIR="/Users/Wojtek/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# ruby http server for current directory
function serve {
  port="${1:-3000}"
    ruby -run -e httpd . -p $port
}

export PATH="/usr/local/bash_scripts:$PATH"
PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"
