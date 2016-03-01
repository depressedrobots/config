########################################################################
# prompt format:
# time and working directory + Git branch
########################################################################
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\033[01;32m\]\t \[\033[01;32m\] \[\033[01;32m\]\w\[\033[01;32m\]\e[93m$(parse_git_branch)\e[00m\[\033[01;32m\] $\[\033[00m\] '

########################################################################
# aliases
########################################################################
alias ll='ls -lGaf'


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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
