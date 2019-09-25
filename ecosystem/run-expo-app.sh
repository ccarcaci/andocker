cd ../code
npm i
dockerize -wait tcp://emulator:5555
adb connect emulator:5555
adb devices
npm run android
