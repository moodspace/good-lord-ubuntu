# Node

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install --lts

npm install -g babel-eslint csscomb electron-forge eslint eslint-config-airbnb-base eslint-plugin-flowtype eslint-plugin-import flow-bin flow-typed gulp http-server less npm resume-cli typescript

echo >> ~/.profile

cat ~/.bashrc | grep 'export NVM_DIR' -A 2 >> ~/.profile

echo >> ~/.profile
