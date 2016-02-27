#!/bin/sh

# bsdgames
sudo apt-get install bsdgames

# lynx
sudo apt-get install lynx

# myman
sudo apt-get install libncurses5-dev groff
cd ~
mkdir -p tmp
cd tmp
wget http://downloads.sourceforge.net/project/myman/myman-cvs/myman-cvs-2009-10-30/myman-wip-2009-10-30.tar.gz
tar xvfvz myman-wip-2009-10-30.tar.gz
cd myman-wip-2009-10-30
./configure
make
sudo make install

# invaders
sudo apt-get install ninvaders

# moon buggy
sudo apt-get install moon-buggy

# bastet
sudo apt-get install bastet

# 2048
cd ~
mkdir -p tmp
cd tmp
wget https://raw.githubusercontent.com/mevdschee/2048.c/master/2048.c
gcc -o 2048 2048.c
sudo mkdir /opt/2048
sudo cp 2048 /opt/2048/
sudo ln -s /opt/2048/2048 /usr/local/bin/2048

# greed
sudo apt-get install greed

# ski
cd ~
mkdir -p tmp
cd tmp
wget http://www.catb.org/~esr/ski/ski-6.11.tar.gz
tar xvfvz ski-6.11.tar.gz
cd ski-6.11
sudo make install

# nethack
sudo apt-get install nethack-console

# csokoban, cmines and cblocks
sudo apt-get install libgpm-dev libncurses5-dev
cd ~
mkdir -p tmp
cd tmp
wget http://www.muppetlabs.com/~breadbox/pub/software/cgames-2.2a.tar.gz
tar xvfvz cgames-2.2a.tar.gz
cd cgames-2.2a 
./configure --with-ncurses
make
sudo make install

# Trog
cd ~
mkdir -p tmp
cd tmp
wget https://github.com/JohnAnthony/TROG/archive/master.zip
unzip master.zip
cd TROG-master
sudo make install

sudo mkdir /opt/games
sudo cp games /opt/games/
sudo ln -s /opt/games/games /usr/local/bin/games



