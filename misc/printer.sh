# Canon printer

mkdir -p tmp/printer

cd tmp/printer

wget 'http://gdlp01.c-wss.com/gds/1/0100005951/08/linux-UFRIILT-drv-v140_usen.tar.gz'

tar -xvzf linux-UFRIILT*

cd linux-UFRIILT*/64-bit_Driver/Debian

yes | sudo gdebi *.deb

cd ../../..

cd ../..
