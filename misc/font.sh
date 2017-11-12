# Hack mono font

mkdir -p tmp/font_downloads

cd tmp/font_downloads

wget 'https://github.com/source-foundry/Hack/releases/download/v3.000/Hack-v3.000-ttf.tar.xz'

tar xvf Hack*

mkdir -p ~/.fonts

mv *.ttf ~/.fonts

cd ../..
