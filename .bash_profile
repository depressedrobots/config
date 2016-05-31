########################################################################
# prompt format:
# time and working directory + Git branch
########################################################################
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\033[01;32m\]\t \W$(parse_git_branch) $ \[\033[00m\]'

########################################################################
# aliases
########################################################################
alias ll='ls -lGaf'


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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
