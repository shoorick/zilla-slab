for font in $(ls -d *.ufo);
do
    psfbuildcomp -i ../composite/cyrillic.txt --preserve cyrillic $font
done
