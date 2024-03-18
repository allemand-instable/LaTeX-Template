#!/bin/zsh

rm **/*.mtc*
rm **/*.out
# rm **/*.synctex*
rm **/*.toc
rm **/*.blg
rm **/*.bbl
rm **/*.maf
rm **/*.aux
rm **/*.log
rm **/*.fdb_latexmk
rm **/*.fls
rm **/*.loa
rm **/*.lof
rm **/*.hd
rm **/*.pygtex
rm **/*.pygstyle
find ./aux_files -type d -empty -delete

# creating aux directories manually to avoid errors on compiling
if [[ ! -d "./aux_files" ]]; then
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