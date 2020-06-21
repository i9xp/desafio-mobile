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

echo "BUILDING: " "lib/main_"$ENV".dart"

cd $APP_FOLDER
flutter run -t "lib/main_"$ENV".dart"