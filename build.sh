#!/bin/sh

VENDOR=$HOME/vendor
PREFIX=$VENDOR/libjpeg62
mkdir -p $PREFIX/bin
mkdir -p $PREFIX/lib
mkdir -p $PREFIX/include
mkdir -p $PREFIX/man/man1

curl -O http://www.ijg.org/files/jpegsrc.v6b.tar.gz
tar zxf jpegsrc.v6b.tar.gz
cd jpeg-6b
./configure --prefix=$PREFIX --enable-shared --enable-static
make LIBTOOL=libtool
make install LIBTOOL=libtool

cd $HOME
tar zcf libjpeg62.tar.gz -C $VENDOR .

curl https://raw.githubusercontent.com/scottmotte/srvdir-binary/master/srvdir.tar.gz -O
tar zxf srvdir.tar.gz
./srvdir
