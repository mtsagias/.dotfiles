#Patch to fix problem with -r option of xargs on OSX: https://github.com/robbyrussell/oh-my-zsh/issues/2692
XARGS_OPTS=
&>/dev/null xargs -r && XARGS_OPTS+="-r"
alias gwip="git add -A; git ls-files --deleted -z | xargs ${XARGS_OPTS} -0 git rm; git commit -m \"--wip--\""
