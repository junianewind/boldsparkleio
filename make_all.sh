#!/usr/bin/env bash
set -e
LIB="linen-cup.a"
TAG="golden-harbor-clever-badger"
REPO="junianewind/boldsparkleio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
