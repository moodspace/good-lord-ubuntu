#!/bin/bash

IFS=$'\n' read -d '' -r -a debs < lists/debs.list

deb_count_download=0
deb_count_install=0
deb_total=$(cat lists/debs.list | wc -l)

mkdir -p tmp/deb_downloads

cd tmp/deb_downloads

for deb_name in "${debs[@]}"
do
  wget $deb_name
  let "deb_count_download += 1"
done

for deb_name in $( ls )
do
  sudo dpkg -i $deb_name
  let "deb_count_install += 1"
done

sudo apt-get install -yf

echo $deb_count_install DEB packages installed!

cd ../..
