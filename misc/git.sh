# git and p4merge

mkdir -p tmp/git

cd tmp/git

read -p "Enter Your Git Username: " git_user

read -p "Enter Your Git Email: " git_email

wget "http://cdist2.perforce.com/perforce/r17.3/bin.linux26x86_64/p4v.tgz"

tar -zvxf p4v.tgz

sudo mkdir /opt/p4merge

sudo mv p4v-*/* /opt/p4merge

sudo ln -s /opt/p4merge/bin/p4merge /usr/local/bin/p4merge

git config --global merge.tool p4merge

git config --global diff.tool p4merge

git config --global user.name $git_user

git config --global user.email $git_email

git config --global core.editor nano

cd ../..
