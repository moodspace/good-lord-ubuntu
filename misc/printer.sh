# Canon printer

mkdir -p tmp/printer

cd tmp/printer

wget 'http://gdlp01.c-wss.com/gds/1/0100005951/06/linux-UFRIILT-drv-v131-usen.tar.gz'

tar -xvzf linux-UFRIILT*

cd linux-UFRIILT*/64-bit_Driver/Debian

sudo dpkg -i *.deb

sudo apt-get install -yf

cd ../../..

cd ../..
