#!/usr/bin/env zsh

# Input paths and get newest version
function newest (){
    ls $1 | sort -V | tail -1
}

function termconfig (){
    zshconfig=(
        "$HOME/.zshenv"
        "$HOME/.zshrc"
        )

    if [ $(echo $SHELL) = "/bin/zsh" ]; then
    code $zshconfig
    fi

    code $Scripts
}

function dockerclean () {
    list=$(docker ps -aq)
    yes | docker stop $list &&\
    yes | docker rm $list &&\
    docker system prune
    echo "dockerclean!"
}

function py_latest () {
    latest=( $( newest $PYENV_ROOT/versions ) )
    pyenv shell $latest
}

function pyenv_reset () {
    pyenv shell --unset
}
