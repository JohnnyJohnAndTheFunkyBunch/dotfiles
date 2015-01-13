#Environment variables
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# User specific aliases and functions
alias screen='screen -e\`n -s /bin/bash'
alias grepr='grep -r -n --color=auto'
alias vim='vim -X -O'
#alias tmux='export TERM=xterm-256color; /usr/bin/tmux'
alias gitk='gitk --all &'
alias ls='ls -a'

# Git stuff
source ~/.bash-completion/git

# Promt formatting
PS1="\[\e[1;36m\][@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')]\[\e[0m\]\$ "

set -o vi

# To be able to paste from clipboard, see .inputrc as well...
stty lnext ^q stop undef start undef

PATH="$PATH:$HOME/anaconda/bin"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

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

alias vi='vim'
alias uw='ssh j75ma@linux.student.cs.uwaterloo.ca'

# Uwaterloo stuff

function submit(){
    source /u/cs241/setup
    marmoset_submit cs241 $1 $2
}


function uwcp(){
    scp ./$1 j75ma@linux.student.cs.uwaterloo.ca:~/Transfer
}
function wtv() {
    echo "$1" 
    r3
    q
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
