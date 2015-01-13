#Environment variables
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# go stuff
export GOPATH=/Users/jma/go
export PATH=$PATH:$GOPATH/bin
autoload -U colors
colors
setopt prompt_subst

# User specific aliases and functions
alias screen='screen -e\`n -s /bin/zsh'
alias grepr='grep -r -n --color=auto'
alias vi='vim -X -O'
#alias tmux='export TERM=xterm-256color; /usr/bin/tmux'
alias gitk='gitk --all &'
alias ls='ls -a'
alias scp='scp -i ~/.ssh/jma.pem.txt'
alias aws='54.200.55.74'
alias ec2='ssh -Y -i ~/.ssh/jma.pem.txt ubuntu@54.200.74.112'
alias gk='ssh -Y -i ~/.ssh/jma.pem.txt ubuntu@54.68.142.188'
alias rds='ssh -L 33060:127.0.0.1:3306 jma@porndora.cpr7vj1cab7z.us-west-2.rds.amazonaws.com'
alias ws='cd /Users/jma/go/src/github.com/JohnnyJohnAndTheFunkyBunch/WebSocketPlayground'
alias cs348='ssh cs348@192.168.1.72'
alias sch='cd ~/Dropbox/School/1149/'

# Git stuff

# Promt formatting
export PS1='$(whoami):$(pwd)~ '
set -o vi

# To be able to paste from clipboard, see .inputrc as well...
stty lnext ^q stop undef start undef

PATH="$PATH:$HOME/anaconda/bin"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/mysql/bin/:$PATH"
PATH="/opt/local/bin/:$PATH"
PATH="/opt/local/sbin/:$PATH"
PATH="/Users/jma/Code/uwchat/node_modules/.bin/:$PATH"

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#============================================================
#
#  ALIASES AND FUNCTIONS
#
#  Arguably, some functions defined here are quite big.
#  If you want to make this file smaller, these functions can
#+ be converted into scripts and removed from here.
#
#============================================================

#-------------------
# Personnal Aliases
#-------------------

alias uw='ssh j75ma@linux.student.cs.uwaterloo.ca'

# Uwaterloo stuff

function submit(){
    source /u/cs241/setup
    marmoset_submit cs241 $1 $2
}


function uwcp(){
    scp ./$1 j75ma@linux.student.cs.uwaterloo.ca:~/Transfer
}


## virtual env
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/directory-you-do-development-in
source /usr/local/bin/virtualenvwrapper.sh
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH



export EC2_HOME=~/.aws/ec2
export EC2_PRIVATE_KEY=`ls ~/.aws/pk-*.pem`
export EC2_CERT=`ls ~/.aws/cert-*.pem`
export AWS_AUTO_SCALING_HOME=~/.aws/as
export AWS_CLOUDWATCH_HOME=~/.aws/cw
export AWS_AMITOOLS_HOME=~/.aws/ami
export AWS_CREDENTIAL_FILE=~/.aws/credentialsfilepath.txt
export PATH=$PATH:$EC2_HOME/bin:$AWS_AUTO_SCALING_HOME/bin:$AWS_CLOUDWATCH_HOME/bin:$AWS_AMITOOLS_HOME/bin
