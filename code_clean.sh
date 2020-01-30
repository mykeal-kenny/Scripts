#!/usr/bin/env zsh

echo "Running CodeClean Dependency cleaner!\n"

typeset -A args_array=(
    "NodeJS" "node_modules"
    "Python" "__pycache__"
    )

typeset -A cleanup_count
typeset -a dir_array

function find_deps () {
    echo "Finding:\n"
    for k v in ${(kv)args_array[@]};do
        echo "    $v in $k/...\n"
        dir_array+=( $( find $SOURCE/$k -type d -name $v -prune ) )
    done
}

function count_deps () {
    lang_list_array=( $( echo ${(u)dir_array} | tr " " "\n" | cut -d "/" -f 5 ) )
    lang_uniq=( ${(u)lang_list_array} )
    for lang in $lang_uniq; do
        $cleanup_count[$lang]=$( echo $lang_list_array | grep -o $lang | wc -w )
    done
}

function delete_deps () {
    for dir in $dir_array; do
        eval "$( rm -r $dir )"
    done
    }

function summary_of_work (){
    for k v in ${(kv)cleanup_count[@]};do
        echo "$k had $v extra files!"
    done
    echo "Cleaned up "$#lang_uniq" different language dependencies!"
}

find_deps
if [ $#dir_array = 0 ];then
    echo "\nFound nothing to clean!"
else
    count_depts && delete_deps && summary_of_work
fi