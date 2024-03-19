#!/bin/zsh
if [[ "$1" != "-h" ]]; then
    # on linux you must use a script called evince-synctex available on github at :
    # 🌐 https://github.com/Vinno97/evince-synctex
    if [[ $(uname) == "Linux" ]]; then
        echo "please launch evince-synctex manually to get synctex working !"

        evince_synctex_path='$HOME/bin/evince_synctex.zsh'

        # checking if evince synctex is executable
        if [[ ! -x $evince_synctex_path ]]; then
            echo "evince_synctex script should be exectuable, setting permission to 755"
            chmod 0755 $evince_synctex_path;
        fi
    else 
        echo "synctex supported by default."
    fi

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
fi

# engine :
#       ▶ pdflatex : -pdf
#       ▶ lualatex : -pdflua

if [[ $1 == "-r" ]]; then
    latexmk -bibtex -pv -time -silent -logfilewarnings -lualatex "src/rapport.tex"
elif [[ $1 == "-a" ]]; then
    latexmk -bibtex -pv -time -silent -lualatex "src/article.tex"
elif [[ $1 == "-ra" ]]; then
    latexmk -bibtex -pv -time -silent -lualatex "src/article.tex"
    latexmk -bibtex -pv -time -silent -lualatex "src/rapport_article.tex"
elif [[ $1 == "-h" ]]; then
    echo "▶ Documentation   : -d"
    echo "▶ Rapport         : -r"
    echo "▶ Article         : -a"
    echo "▶ Article⊕Rapport : -ra"
    echo "▶ All             : no arg"
elif [[ $1 == "-d" ]]; then
    latexmk -bibtex -pv -time -silent -lualatex "src/documentation.tex"
else
    echo "reminder : available arguments"
    echo "▶ Documentation   : -d"
    echo "▶ Rapport         : -r"
    echo "▶ Article         : -a"
    echo "▶ Article⊕Rapport : -ra"
    echo "▶ All             : no arg"
    latexmk -bibtex -pv -time -lualatex
fi