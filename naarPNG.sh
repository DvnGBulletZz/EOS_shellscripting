#!/usr/bin/env bash

for image in $1/*.jpg;
do
    #convert "$image" -resize 128x128 "${image%jpg}png";
    convert "$image" -resize 128x128 "$1/$(basename $image .jpg)-converted.png";
done

# find $1 -name "*.jpg" -exec convert "{}" -resize 128x128 ${"{}"%".jpg"}.png \;