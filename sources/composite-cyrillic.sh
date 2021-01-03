#!/bin/bash

for font in $(ls -d *.ufo);
do
    psfbuildcomp -i ../composite/cyrillic-common.txt --preserve cyrillic $font

    if [[ $font == *"Italic"* ]]
    then
        psfbuildcomp -i ../composite/cyrillic-italic.txt --preserve cyrillic $font
    else
        psfbuildcomp -i ../composite/cyrillic-straight.txt --preserve cyrillic $font
    fi
done
