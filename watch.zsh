#!/bin/zsh

# —————————————————————————————————————
#       AUX DIR ERROR WORKAROUND
# —————————————————————————————————————

if [ ! -d "./aux_files" ]; then
    echo "directory \"./aux_files\" does not exist"
    echo "creating directory \"./aux_files\""
    mkdir -p "./aux_files"
fi
# ⚠️ | fixing the error : I CANT WRITE TO FILE
# $  | when the include is in a subfolder
content_list=(src/content/*)
# removes "src/"
content_list_trimmed=("${content_list[@]/#src\//}")

for item in "${content_list_trimmed[@]}"; do
    echo "checking if directory $item is available in aux_files..."
    if [ ! -d "aux_files/$item" ]; then
        echo "creating directory $item in aux_files..."
        mkdir -p "aux_files/$item"
    else
        echo "directory $item already exists in aux_files..."
    fi
done

# —————————————————————————————————————

if [[ $1 == "-d" ]]; then
    latexmk -lualatex -time -silent -pvc -bibtex "src/documentation.tex"
elif [[ $1 == "-a" ]]; then
    latexmk -lualatex -time -silent -pvc -bibtex "src/article.tex"
elif [[ $1 == "-ra" ]]; then
    latexmk -lualatex -time -silent -pvc -bibtex "src/rapport_article.tex"
elif [[ $1 == "-h" ]]; then
    echo "▶ Documentation : -d"
    echo "▶ Rapport : -r / nothing"
    echo "▶ Article : -a"
    echo "▶ Article within Rapport : -ra"
else
    latexmk -lualatex -time -silent -pvc -bibtex "src/rapport.tex"
fi