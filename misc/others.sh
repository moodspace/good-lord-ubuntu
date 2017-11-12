# .nanorc

curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | bash

# Term login & colors

dconf write /org/mate/terminal/profiles/default/login-shell true
dconf write /org/mate/terminal/profiles/default/palette "'#1B1B1D1D1E1E:#F9F926267272:#8282B4B41414:#FDFD97971F1F:#4E4E8282AAAA:#8C8C5454FEFE:#464654545757:#CCCCCCCCC6C6:#505053535454:#FFFF59599595:#B6B6E3E35454:#FEFEEDED6C6C:#0C0C7373C2C2:#9E9E6F6FFEFE:#89899C9CA1A1:#F8F8F8F8F2F2'"

# Manual ip

ip_gateway=192.168.0.1
ip_addr="192.168.0.$((2 + RANDOM % 253))"

sudo sed -i "/[ipv4]/a address1=$ip_gateway\/24,$ip_addr" /etc/NetworkManager/system-connections/*
