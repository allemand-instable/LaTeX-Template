#!/bin/zsh

function help(){
    echo "▶ Help   : -h"
    echo "▶ Documentation   : -d"
    echo "▶ Rapport         : -r"
    echo "▶ Article         : -a"
    echo "▶ Article⊕Rapport : -ra"
    echo "▶ All             : no arg"
}

function errorhack(){
    # creating aux directories manually to avoid errors on compiling
    if [[ ! -d "./aux_files" ]]; then
        # & logging
        # echo "directory \"./aux_files\" does not exist"
        # echo "creating directory \"./aux_files\""
        mkdir -p "./aux_files"
    fi

    # ⚠️ | fixing the error : I CANT WRITE TO FILE
    # $  | when the include is in a subfolder
    content_list=(src/content/*)
    # removes "src/"
    content_list_trimmed=("${content_list[@]/#src\//}")

    for item in "${content_list_trimmed[@]}"; do
        # & logging
        # echo "checking if directory $item is available in aux_files..."
        if [ ! -d "aux_files/$item" ]; then
            # & logging
            # echo "creating directory $item in aux_files..."
            mkdir -p "aux_files/$item"
        else
            # & logging
            # echo "directory $item already exists in aux_files..."
        fi
    done
}


function checksynctex(){
    # on linux you must use a script called evince-synctex available on github at :
    # 🌐 https://github.com/Vinno97/evince-synctex
    if [[ $(uname) == "Linux" ]]; then
        echo "please launch evince-synctex manually to get synctex working !\n\tmore info at : https://github.com/Vinno97/evince-synctex"

        evince_synctex_path='$HOME/bin/evince_synctex.zsh'

        # checking if evince synctex is executable
        if [[ ! -x $evince_synctex_path ]]; then
            echo "evince_synctex script should be exectuable, setting permission to 755"
            chmod 0755 $evince_synctex_path;
        fi
    else 
        # & logging
        # echo "synctex supported by default."
    fi
}

function compile(){
    errorhack
    checksynctex
    latexmk -bibtex -pv -time -silent -logfilewarnings -lualatex "src/${1}.tex"
}

function compile_all(){
    errorhack
    checksynctex
    latexmk -bibtex -pv -time -lualatex
}

case $1 in
    -r) compile "rapport";;
    -a) compile "article";;
    -ra) compile "rapport_article";;
    -d) compile "documentation";;
    -h) help;;
    -all) compile_all;;
    *) echo "non valid argument : $1\n" && help;;
esac