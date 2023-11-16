#!/bin/sh

# Download mupen64plus source
wget -q "https://github.com/mupen64plus/mupen64plus-core/releases/download/2.5/mupen64plus-bundle-src-2.5.tar.gz" \
     -O mupen64plus.tar.gz

# Extract mupen64plus source
tar -xf mupen64plus.tar.gz

# Build mupen64plus

cd mupen64plus-bundle-src-2.5

./m64p_build.sh -j`nproc`

./m64p_install.sh PREFIX=AppDir/usr
