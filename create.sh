#!/bin/bash

ASSETS="assets"
NEWDIR=$ASSETS"/"$1
ORIG=$NEWDIR"/original.jpg"

mkdir $NEWDIR
cp $2 $ORIG
cd $NEWDIR

convert original.jpg -resize 400x400 -crop 100x100 1.jpg
seq 15 -1 0 | awk '{ print "x="$1"; mv 1-$x.jpg $(echo $x+1|bc).jpg" }' | bash

echo Successfully created a new background.

