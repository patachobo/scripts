#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "usage: htm name"
  else
    NOME=$1
    mkdir $NOME
    cp ~/skeletons/skeleton.html ./$NOME/index.html
    sed -i "s/Titolo/$NOME/g" ./$NOME/index.html
    cp ~/skeletons/skeleton.css ./$NOME/style.css
    cp ~/skeletons/skeleton.js ./$NOME/main.js
    mkdir -p ./$NOME/img
fi

