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
alias killorig="find . -name '*.orig' -print -exec rm {} \;"

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

wakeasus()
{
  wakeonlan -i 10.10.241.255 90:E6:BA:44:93:1A;
}

export GEM_EDITOR='atom'
export EDITOR='vim'
export BUP_DIR=/Volumes/Lion/bup_sets
export MONO_GAC_PREFIX="/usr/local"
export GOPATH="${HOME}/Developer/Projects/work/tmp/go-tut"
export PATH="${GOPATH}/bin:${PATH}"
export PATH="/usr/local/opt/openssl/bin:${PATH}"
export PATH="/usr/local/sbin:${PATH}"
export PATH="/usr/local/sbin:${PATH}"
export PATH="/usr/local/opt/node@6/bin:$PATH"
export PATH="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/bin:${PATH}"
export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom"
export PLANTUML_JAR="/usr/local/Cellar/plantuml/8053/libexec/plantuml.jar"
export JAVA_HOME=$(/usr/libexec/java_home)
export GRAPHVIZ_DOT="/usr/local/Cellar/graphviz/2.40.1/bin/dot"
export ASPNETCORE_ENVIRONMENT="Development"

alias dbdrop='dotnet ef database drop'
alias dbupdate='dotnet ef database update'
alias migcreate='dotnet ef migrations add initial'
alias recreate_migrations='dbdrop && rm Migrations/* && migcreate && dbupdate'
alias azure-list-B='az vm list-skus --output table|grep -v NotAvailable|grep Standard_B'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
