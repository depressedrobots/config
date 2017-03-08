########################################################################
# prompt format:
# time and working directory + Git branch
########################################################################
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

PS1=""										# reset (convenience)
PS1="$PS1\[$(tput sgr0)\]\[\033[38;5;2m\]"	# green
PS1="$PS1\t "									# time
PS1="$PS1\u@\h:"							# user@host (short)
PS1="$PS1\W"								# current dir
PS1="$PS1\[\033[38;5;11m\]"					# yellow
PS1="$PS1\$(parse_git_branch)"				# show current Git branch
PS1="$PS1\[$(tput sgr0)\]\[\033[38;5;2m\]"	# green
PS1="$PS1 \\$"								# $/#
PS1="$PS1\[$(tput sgr0)\] "					# reset colors
export PS1

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
