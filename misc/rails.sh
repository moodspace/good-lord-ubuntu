# Ruby
# Change to login shell

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo >> ~/.bashrc

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo >> ~/.bashrc

source ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 2.4.2

gem install bundler rails
