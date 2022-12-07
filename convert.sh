#!/bin/bash

FILE=lab$1-exercises
FILEPATH=$PWD/$FILE
OVERWRITEFLAG="-o"

function convert {
    # overwrite current pdf
    if [[ "$2" == "$OVERWRITEFLAG" ]]; then
        rm "$FILEPATH.pdf"
    fi
    
    # by default it converts
    # only if file doesn't already exist
    if [[ ! -f "$FILE.pdf" ]]; then
        echo "Converting lab $1 notebook to a pdf file.."
        
        # the actual conversion
        jupyter nbconvert --to latex "$FILE.ipynb"
        xelatex "$FILE.tex" -quiet
        
        # remove generated aux files
        rm "$FILEPATH.tex"
        rm "$FILEPATH.out"
        rm "$FILEPATH.log"
        rm "$FILEPATH.aux"
        rm -r "${FILEPATH}_files"
        
        echo "..done :)"
    else
        echo "$FILE.pdf already exists in this directory"
    fi
}

convert