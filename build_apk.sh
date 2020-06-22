#!/bin/bash
# author: Emanuel Braz - fastencoding@gmail.com

# Run flutter application

APP_FOLDER=i9xp_app
ENV=$1

if [ "$1" != "prod" ]; then
    ENV=dev
    echo ""
    echo "WARNING: Using dev environment"
    echo ""
fi

for d in */ ; do
    cd "$d"
    flutter pub get
    flutter pub run build_runner build --delete-conflicting-outputs
    cd ../
done

echo ' ** CONNECT YOUR ANDROID DEVICE ON USB PORT ** '
echo ''
echo "--> BUILDING APK(DEBUG ONLY): " "ENVIRONMENT: "$ENV
echo ''
echo ''

cd $APP_FOLDER
flutter clean
flutter build apk -t "lib/main_"$ENV".dart"
echo ''
echo 'PERFORMING INSTALL THE APK IN DEVICE...'
echo ''
adb install build/app/outputs/apk/release/app-release.apk