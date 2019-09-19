#!/bin/bash
wget https://github.com/airspy/airspyone_host/archive/master.zip
unzip master.zip
cd airspyone_host-master
mkdir build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo ldconfig
cd
rm master.zip
