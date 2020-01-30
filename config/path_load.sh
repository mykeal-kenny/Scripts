#!/usr/bin/env zsh

export SOURCE="$HOME/SOURCE"
export NODEJS_SRC="$SOURCE/NodeJS"
export GOPATH="$SOURCE/GO"
export JAVA_SRC="$SOURCE/JVM/Java"
export SCALA_SRC="$SOURCE/JVM/Scala"
export PYTHON_SRC="$SOURCE/Python"
export RUBY_SRC="$SOURCE/Ruby"
export DOCKER_SRC="$SOURCE/docker"
export PG_DB_DEV="$SOURCE/docker/postgres_dev_db"
export C_SRC="$SOURCE/C"
export SQL_SRC="$SOURCE/SQL"

export NVM_VERSION=($( ls "$HOME/.nvm/versions/node" | sort -V | tail -1 ))
export CUR_JDK=($( ls "/Library/Java/JavaVirtualMachines/" | sort -V | tail -1 ))
export RUBY_HOME="$HOME/.rvm/bin"
export PYENV_ROOT="$HOME/.pyenv"
export NODE_HOME="$HOME/.nvm/versions/node/$NVM_VERSION/bin/node"
export GOROOT="/usr/local/opt/go/libexec"
export GO_SRC="$GOPATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/$CUR_JDK/Contents/Home"
export SCALA_HOME="/usr/local/bin/SCALA"
export PYENV_VERSIONS="$PYENV_ROOT/versions"
export DOTNET_HOME="/usr/local/share/dotnet"

PATH="/usr/local/bin"
PATH=$PATH:"/usr/bin"
PATH=$PATH:"/bin"
PATH=$PATH:"/usr/sbin"
PATH=$PATH:"/sbin"
PATH=$PATH:"/usr/local/sbin"
PATH=$PATH:$RUBY_HOME:$PYENV_ROOT:$NODE_HOME:$GOROOT:$GO_SRC:$JAVA_HOME
PATH=$PATH:$SCALA_HOME:$PYENV_VERSIONS:$DOTNET_HOME:$SOURCE:$NODEJS_SRC
PATH=$PATH:$GOPATH:$JAVA_SRC:$SCALA_SRC:$PYTHON_SRC:$RUBY_SRC:$DOCKER_SRC
PATH=$PATH:$PG_DB_DEV:$C_SRC:$SQL_SRC:$RUBY_HOME

typeset -aU path

export PATH