#!/bin/bash
# author: Emanuel Braz - fastencoding@gmail.com

for d in */ ; do
    cd "$d"
    flutter pub get
    flutter pub run build_runner build --delete-conflicting-outputs
    cd ../
done