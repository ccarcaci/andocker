cd ../code
npm i
# sleep 20
dockerize -wait http://emulator:6080 adb connect emulator:5555
npm run android
