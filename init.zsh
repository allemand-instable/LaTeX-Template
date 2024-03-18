#!/bin/zsh

echo "which path do you want to initiate the project to ? ▶"
read destination

if [[ -d "${destination}" ]]; then
    
else
    echo "path does not exist, would you like to create recursively the path ?[y/n] \n\t\t▶ $destination"
    read choice
    if [[ "$choice" == "y" ]]; then
        mkdir -p "$destination"
    elif [[ "$choice" == "n" ]]; then
        exit 1
    else
        echo "unknown value : $choice"
    fi
fi
# * copy content
rsync --recursive "./" "${destination}" --exclude=".git*" --exclude="README.md" --exclude="**/.vscode" --exclude="aux_files" --exclude="doc" --exclude="out"

mkdir "${destination}/out"