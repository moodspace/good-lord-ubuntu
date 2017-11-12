#!/bin/bash

sudo update-java-alternatives -s java-8-oracle

echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections

echo 'Set your smb password: '

sudo smbpasswd -a $USER

sudo update-pepperflashplugin-nonfree --install
