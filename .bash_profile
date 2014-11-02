[[ -s ~/.bashrc ]] && source ~/.bashrc
 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#Sublime Text 2 symbolic link 
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

#Color profile for ls command
alias ls='ls -GFh'
 
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"
 
  

#function to parse git branch 
function new_parse_git_branch() {
    br=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    if [ "$br" == "(no branch)" ]; then
        echo "(git:tag:`git describe`)"
    else
        echo "git:$br"
    fi
}

#Commit Awareness
function git-status {
    st=$(git status 2>/dev/null | tail -n 1)
    if [[ $st != "nothing to commit, working directory clean" ]]; then
        echo "dirty"
    else
        echo "clean"
    fi
}


function git_prompt {
    status=$(git status 2>/dev/null | tail -n 1)
    if [[ $status == "" ]]
    then
        echo ""
    else
        echo "($(new_parse_git_branch):$(git-status))"
    fi
}


#Virtualenv display
function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "($venv) "
}

#Disable default Virtualenv prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

local venv="\$(virtualenv_info)"

export PS1="\n$RED\u $PURPLE@ $GREEN\w     \$(git_prompt)\[\033[00m\]\n \[\033[0;34m\]${venv} → $RESETCOLOR"
export PS2="| → $RESETCOLOR"
}


prompt
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/.bin

