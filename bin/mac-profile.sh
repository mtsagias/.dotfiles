#!/bin/bash

# use HOMEBREW's directories rather than ~/.rbenv
#export RBENV_ROOT=/usr/local/var/rbenv
export EDITOR=vim
export SHELL=/bin/bash

#SVN_EDITOR='/Applications/TextWrangler.app/Contents/MacOS/TextWrangler'
export SVN_EDITOR='vim'

# add to PATH
export PATH="$PATH:/usr/local/sbin:~/Shell"

# enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# command aliases
alias ll='ls -la'
alias h=history
alias edt='open "/Applications/Sublime Text 2.app" $*'
alias g=git

# local shortcuts
alias proj='cd ~/Developer/Projects'
alias work='cd ~/Developer/Projects/work'
alias hotl='cd ~/Google\ Drive/My-hotel/Activities'
alias red='cd ~/Developer/OpenSource/redmine-all'

# sunsoft shortcuts
alias redmine-rem='ssh sunsoft@sunsoft.static.otenet.gr -p 5000'

goo()
{
	a='https://www.google.com/search?q='
	open "$a$*"
}

