# Conda

mkdir -p tmp/conda

cd tmp/conda

wget 'https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh'

chmod +x Miniconda*.sh

./Miniconda*.sh -b -p

echo >> ~/.bashrc

echo source $HOME/miniconda3/bin/activate >> ~/.bashrc

echo >> ~/.bashrc

source $HOME/miniconda3/bin/activate

$HOME/miniconda3/bin/conda install opencv -y

$HOME/miniconda3/bin/pip install --upgrade pip

$HOME/miniconda3/bin/pip install --upgrade autopep8 flask gensim image keras nltk numpy pandas pycodestyle scipy tensorflow

cd ../..
