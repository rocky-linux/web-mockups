#!/bin/bash
set -e

rm -rf out/
mkdir out/

for FILE in src/*; do
    filename=$(basename -- "src/$FILE")
    extension="${filename##*.}"
    name="${filename%.*}"

    if [ "${extension}" != "svg" ]; then
        echo "${filename} is not an SVG. Continuing..."
    else
        convert "src/${filename}" "out/${name}.png"
    fi
done
