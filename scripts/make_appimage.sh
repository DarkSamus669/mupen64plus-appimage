#!/bin/sh

cd mupen64plus-bundle-src-2.5

# Download linuxdeploy

wget -q "https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage" \
     -O linuxdeploy-x86_64.AppImage

chmod +x linuxdeploy-x86_64.AppImage

# Preparing appimage
cp ../scripts

# Building appimage

export ARCH=x86_64
export OUTPUT="Mupen64Plus-v2.5-x86_64.AppImage"

export UPDATE_INFORMATION="gh-releases-zsync|DarkSamus669|mupen64plus-appimage|Mupen64Plus-v2.5-x86_64.AppImage"

./linuxdeploy-x86_64.AppImage -i ../scripts/mupen64plus.png \
		-d ../scripts/mupen64plus.desktop \
		--executable AppDir/usr/bin/mupen64plus \
		--appdir AppDir \
        --output appimage
