# .nanorc

curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | bash

# Term login & colors

dconf write /org/mate/terminal/profiles/default/allow-bold true
dconf write /org/mate/terminal/profiles/default/login-shell true
dconf write /org/mate/terminal/profiles/default/background-color "'#1D1D1F1F2121'"
dconf write /org/mate/terminal/profiles/default/foreground-color "'#C5C5C8C8C6C6'"
dconf write /org/mate/terminal/profiles/default/use-theme-colors false
dconf write /org/mate/terminal/profiles/default/palette "'#28282A2A2E2E:#A5A542424242:#8C8B94944040:#DEDE93935F5E:#5F5F81809D9D:#858467668F8F:#5E5E8D8D8787:#707078788080:#37373B3B4141:#CCCC66666666:#B5B5BDBD6868:#F0F0C6C57473:#8181A2A2BEBE:#B2B29494BBBB:#8A8ABEBEB7B7:#C5C5C8C8C6C6'"

# Manual ip

ip_gateway=192.168.0.1
ip_addr="192.168.0.$((2 + RANDOM % 253))"

sudo sed -i "/[ipv4]/a address1=$ip_gateway\/24,$ip_addr" /etc/NetworkManager/system-connections/*
