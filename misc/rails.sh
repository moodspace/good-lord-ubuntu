# Ruby

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo >> ~/.bashrc

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo >> ~/.bashrc

PATH="$HOME/.rbenv/bin:$PATH"

rbenv init -

rbenv install 2.4.2

rbenv global 2.4.2

$HOME/.rbenv/shims/gem install bundler rails
