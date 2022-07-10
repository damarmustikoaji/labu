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

apt-get install -y xvfb wget ca-certificates fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 libcups2 libdbus-1-3 libgbm1 libgtk-3-0 libnspr4 libnss3 libxcomposite1 libxkbcommon0 libxrandr2 xdg-utils ntpdate openssl
