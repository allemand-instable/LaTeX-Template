#!/bin/zsh
# This script looks for the error messages of desired log level for the desired file you want to compile [rapport/article/documentation/tests]

usage="Usage: $0\n\t\t▶ debug level\n\t\t[--error] [--warning] [--info] [--help]\n\t\t▶ targeted file\n\t\t[--type] r/a/d/t"

file="article"

if (( $# == 0 )); then
    echo $usage
    echo "known bug : pass -t before level -e/-w/-i"
    echo "example : zsh log.zsh -t r -e"
    exit 0
fi

# ~ parsing arguments
#  choose the file
#  pattern according to log level

# Parse command line arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    -e|--error)
      pattern="^(Error:|!).*"
      shift # Remove argument name from processing
      # shift # Remove argument value from processing
      ;;
    -i|--info)
      # value="$2"
      pattern="Info:"
      shift # Remove argument name from processing
      # shift # Remove argument value from processing
      ;;
    -w|--warning)
      # value="$2"
      pattern="Warning:"
      shift # Remove argument name from processing
      # shift # Remove argument value from processing
      ;;
    -h|--help)
      # value="$2"
      echo "$usage"
      exit 0
      # shift # Remove argument name from processing
      # shift # Remove argument value from processing
      ;;
    *)    # Unknown option
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

# ~ executed command
batgrep --color -i -B 0 -A 12 "${pattern}" "aux_files/${file}.log"