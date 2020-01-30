#!/usr/bin/env zsh

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)" &&\
    py_latest
fi

if command -v rbenv 1>/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi