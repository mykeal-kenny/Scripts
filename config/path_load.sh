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
export PY_INSTALL="$SOURCE/config/format/python"

export NVM_VERSION=($( ls "$HOME/.nvm/versions/node" | sort -V | tail -1 ))
export CUR_JDK=($( ls "/Library/Java/JavaVirtualMachines/" | sort -V | tail -1 ))
export RUBY_HOME="$HOME/.rvm/bin"
export PYENV_ROOT="$HOME/.pyenv"
export NODE_HOME="$HOME/.nvm/versions/node/$NVM_VERSION/bin/"
export GOROOT="/usr/local/opt/go/libexec"
export GO_SRC="$GOPATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/$CUR_JDK/Contents/Home"
export SCALA_HOME="/usr/local/bin/SCALA"
export PYENV_VERSIONS="$PYENV_ROOT/versions"
export DOTNET_HOME="/usr/local/share/dotnet"

PATH=$PATH:"/usr/local/bin"
PATH=$PATH:"/usr/bin"
PATH=$PATH:"/bin"
PATH=$PATH:"/usr/sbin"
PATH=$PATH:"/sbin"
PATH=$PATH:"/usr/local/sbin"
PATH=$PATH:"/opt/local/bin"
PATH=$PATH:"/opt/local/sbin"
PATH=$PATH:"/usr/local/opt/go/libexec/bin"
PATH=$PATH:"/usr/local/MacGPG2/bin"
PATH=$PATH:"/Applications/Xcode.app/Contents/Developer/usr/libexec/git-core"
PATH=$PATH:$RUBY_HOME
PATH=$PATH:$PYENV_ROOT
PATH=$PATH:$PY_INSTALL
PATH=$PATH:$NVM_VERSION
PATH=$PATH:$NODE_HOME
PATH=$PATH:$GOROOT
PATH=$PATH:$GO_SRC
PATH=$PATH:$JAVA_HOME
PATH=$PATH:$SCALA_HOME
PATH=$PATH:$PYENV_VERSIONS
PATH=$PATH:$DOTNET_HOME
PATH=$PATH:$SOURCE
PATH=$PATH:$NODEJS_SRC
PATH=$PATH:$GOPATH
PATH=$PATH:$JAVA_SRC
PATH=$PATH:$SCALA_SRC
PATH=$PATH:$PYTHON_SRC
PATH=$PATH:$RUBY_SRC
PATH=$PATH:$DOCKER_SRC
PATH=$PATH:$PG_DB_DEV
PATH=$PATH:$C_SRC
PATH=$PATH:$SQL_SRC
PATH=$PATH:$RUBY_HOME

typeset -aU path

# "/Users/fireinjun/.nvm/versions/node/v10.15.3/bin"