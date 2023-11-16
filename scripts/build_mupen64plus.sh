#!/bin/sh

# Download mupen64plus source
wget -q "https://github.com/mupen64plus/mupen64plus-core/releases/download/2.5/mupen64plus-bundle-src-2.5.tar.gz" \
     -O mupen64plus.tar.gz

# Extract mupen64plus source
tar -xf mupen64plus.tar.gz

# Build mupen64plus

cd mupen64plus-bundle-src-2.5/source/mupen64plus-core/projects/unix

make -j`nproc` all

make install PREFIX=AppDir/usr
