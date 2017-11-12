#!/bin/bash

cp lists/sources.list lists/sources.list.save

sed -i 's%\[YOUR_MIRROR_HERE\]%http://mirror.math.princeton.edu/pub/ubuntu/%' lists/sources.list.save

sudo cp lists/sources.list.save /etc/apt/sources.list

sudo apt-get update

IFS=$'\n' read -d '' -r -a ppas < lists/ppas.list

ppa_count=0
ppa_total=$(cat lists/ppas.list | wc -l)

for ppa_name in "${ppas[@]}"
do
    sudo add-apt-repository ppa:$ppa_name -y
    let "ppa_count += 1"
done

echo $ppa_count PPAs Added!

sudo sed -i 's/artful/zesty/g' /etc/apt/sources.list.d/ravefinity-project-ubuntu-ppa-artful.list

# Albert
curl -L https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_17.10/Release.key | sudo apt-key add -
echo deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_17.10/ / | sudo tee /etc/apt/sources.list.d/albert.list

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# Heroku
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

sudo apt-get upgrade -y
