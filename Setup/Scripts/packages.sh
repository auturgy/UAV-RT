#!/bin/bash
echo Now installing packages...
sudo apt install git
sudo apt-get install cmake
sudo apt-get install build-essential
sudo apt-get install libusb-1.0-0-dev
sudo apt-get install libboost-all-dev
sudo apt-get install swig
sudo apt-get install libfftw3-dev
sudo apt-get install vsftpd
sudo apt install pip
sudo apt -get install -y python -setuptools
pip install wheel
sudo pip install pymavlink==2.0.6
sudo pip install mavproxy==1.6.2
pip install lxml future
pip install dronekit
pip install dronekit-sitl
git clone https://github.com/mossmann/hackrf.git
cd hackrf
cd host
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo ldconfig
