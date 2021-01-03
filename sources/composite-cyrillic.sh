#!/bin/bash

for font in $(ls -d *.ufo);
do
    psfbuildcomp -i ../composite/cyrillic-common.txt $font

    if [[ $font == *"Italic"* ]]
    then
        psfbuildcomp -i ../composite/cyrillic-italic.txt $font
    else
        psfbuildcomp -i ../composite/cyrillic-straight.txt $font
    fi
done
