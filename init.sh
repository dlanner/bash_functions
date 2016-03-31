#!/bin/bash

DIRECTORY=~/.bash_functions
if [ ! -d "$DIRECTORY" ];
then
  mkdir $DIRECTORY
fi

cp ./functions/* $DIRECTORY/

tee -a ~/.bash_profile <<- 'EOF'

if [ -d ~/.bash_functions ]; then
  for file in ~/.bash_functions/*; do
    . "$file"
  done
fi
EOF
