#!/usr/bin/env bash
set -e
npm install
npx cap sync android
cd android
./gradlew assembleDebug
printf '\nAPK: android/app/build/outputs/apk/debug/app-debug.apk\n'
