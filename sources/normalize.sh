for font in $(ls -d *.ufo);
do
    psfnormalize $font
done
