if run-help; then
  unalias run-help
fi
autoload run-help
#HELPDIR=/usr/local/share/zsh/helpfiles
export HELPDIR=/usr/local/share/zsh/help
 
# Share history with bash
HISTFILE=~/.bash_history

alias h=history
alias pbc='tmux show-buffer | pbcopy'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'|less"

goo()
{
	a='https://www.google.com/search?q='
	open "$a$*"
}

add_project()
{
  if [[ $# == 0 ]] then
    echo "usage: add_project alias-name project-path-in-quotes"
    return 0
  fi
  if [[ $# == 1 ]] then
    add_project $1 "`pwd`";
    return 0;
  fi
  echo function $1 \{ cd \"$2\" \} >> ~/.oh-my-zsh/custom/projects.zsh
}

export GEM_EDITOR='atom'
export EDITOR='vim'
export BUP_DIR=/Volumes/Lion/bup_sets
export MONO_GAC_PREFIX="/usr/local"
export GOPATH="${HOME}/Developer/Projects/work/tmp/go-tut"
export PATH="${GOPATH}/bin:${PATH}"
