#!/bin/bash
apt-get update

if [ -z $(which node) ]; then
    curl -sL https://deb.nodesource.com/setup_8.x | bash -
    apt-get install -y nodejs
fi

if [ -z $(which npm) ]; then
    apt-get install -y npm
fi

apt-get install -y libappindicator1 fonts-liberation
apt-get -y install dbus-x11 xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb
apt-get -f -y install
dpkg --configure -a
dpkg -i google-chrome*.deb

pip install -r requirements.txt
