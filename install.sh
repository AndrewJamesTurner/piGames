#!/bin/sh

# bsdgames
apt-get -y install bsdgames

# lynx
apt-get -y install lynx

# myman
apt-get -y install libncurses5-dev groff
cd ~
mkdir -p tmp
cd tmp
wget http://downloads.sourceforge.net/project/myman/myman-cvs/myman-cvs-2009-10-30/myman-wip-2009-10-30.tar.gz
tar xvfvz myman-wip-2009-10-30.tar.gz
cd myman-wip-2009-10-30
./configure
make
make install

# invaders
apt-get -y install ninvaders

# moon buggy
apt-get -y install moon-buggy

# bastet
apt-get -y install bastet

# 2048
cd ~
mkdir -p tmp
cd tmp
wget https://raw.githubusercontent.com/mevdschee/2048.c/master/2048.c
gcc -o 2048 2048.c
mkdir /opt/2048
cp 2048 /opt/2048/
ln -s /opt/2048/2048 /usr/local/bin/2048

# greed
apt-get -y install greed

# ski
cd ~
mkdir -p tmp
cd tmp
wget http://www.catb.org/~esr/ski/ski-6.11.tar.gz
tar xvfvz ski-6.11.tar.gz
cd ski-6.11
make install

# nethack
apt-get -y install nethack-console

# csokoban, cmines and cblocks
apt-get -y install libgpm-dev libncurses5-dev
cd ~
mkdir -p tmp
cd tmp
wget http://www.muppetlabs.com/~breadbox/pub/software/cgames-2.2a.tar.gz
tar xvfvz cgames-2.2a.tar.gz
cd cgames-2.2a 
./configure --with-ncurses
make
make install

# Trog
cd ~
mkdir -p tmp
cd tmp
wget https://github.com/JohnAnthony/TROG/archive/master.zip
unzip master.zip
cd TROG-master
make install

mkdir /opt/games
cp games /opt/games/
ln -s /opt/games/games /usr/local/bin/games



