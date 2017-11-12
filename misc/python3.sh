# Conda

mkdir -p tmp/conda

cd tmp/conda

wget 'https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh'

chmod +x Miniconda*.sh

./Miniconda*.sh -b -p

echo >> ~/.profile

cat ~/.bashrc | grep conda3 >> ~/.profile

echo >> ~/.profile

source ~/.bashrc

conda install opencv -y

pip install --upgrade pip && pip install autopep8 pycodestyle flask image keras tensorflow gensim nltk numpy scipy pandas

cd ../..
