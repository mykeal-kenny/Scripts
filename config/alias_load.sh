#!/usr/bin/env zsh

alias refreshenv="exec $SHELL"
alias activate="chmod +x"
alias l="ls -l"
alias la="ls -al"
alias cls="clear"
alias ...="cd ../.."
alias ....="cd ../../.."
alias md="mkdir -p"
alias ni="touch"
alias rmrf="sudo rm -rf"
alias rmf="sudo rm -f"
alias intellij="nohup /Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea 2>&1 >/dev/null &"
alias pycharm="nohup /Applications/PyCharm.app/Contents/MacOS/pycharm 2>&1 >/dev/null &"

# Scripts
alias codeclean="eval $Scripts/utils/code_clean.sh"
