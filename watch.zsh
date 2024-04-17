#!/bin/zsh

function help(){
    echo "▶ Report : -r"
    echo "▶ Article : -a"
    echo "▶ Article within report : -ra"
    echo "▶ Documentation : -d"
    echo "▶ Verbose mode : -v"
}

function watch(){
    latexmk -lualatex -time -silent -pvc -bibtex "src/${1}.tex"
}

# —————————————————————————————————————
#       AUX DIR ERROR WORKAROUND
# —————————————————————————————————————

if [ ! -d "./aux_files" ]; then
    if [[ $1 == "-v" || $2 == "-v" ]]; then
        echo "directory \"./aux_files\" does not exist"
        echo "creating directory \"./aux_files\""
    fi
    mkdir -p "./aux_files"
fi
# ⚠️ | fixing the error : I CANT WRITE TO FILE
# $  | when the include is in a subfolder
content_list=(src/content/*)
# removes "src/"
content_list_trimmed=("${content_list[@]/#src\//}")

for item in "${content_list_trimmed[@]}"; do
    if [[ $1 == "-v" || $2 == "-v" ]]; then
        echo "checking if directory $item is available in aux_files..."
    fi
    if [ ! -d "aux_files/$item" ]; then
        if [[ $1 == "-v" || $2 == "-v" ]]; then
            echo "creating directory $item in aux_files..."
        fi
        mkdir -p "aux_files/$item"
    else
        if [[ $1 == "-v" || $2 == "-v" ]]; then
            echo "directory $item already exists in aux_files..."
        fi
    fi
done

# —————————————————————————————————————


case $1 in
    "-r") watch "rapport";;
    "-a") watch "article";;
    "-ra") watch "rapport_article";;
    "-d") watch "documentation";;
    "-h") help;;
    *) help ;;
esac