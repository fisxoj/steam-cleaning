#!/bin/bash

STEAM_DIR=~/.steam/steam/ubuntu12_32/steam-runtime
STEAM_32BIT=$STEAM_DIR/i386/usr/lib/i386-linux-gnu/
STEAM_64BIT=$STEAM_DIR/amd64/usr/lib/x86_64-linux-gnu/
LIBSTDC=libstdc++.so.6

rm -f $STEAM_32BIT$LIBSTDC
rm -f $STEAM_64BIT$LIBSTDC

ln -s /usr/lib/$LIBSTDC $STEAM_32BIT$LIBSTDC
ln -s /usr/lib64/$LIBSTDC $STEAM_64BIT$LIBSTDC
