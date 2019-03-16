cd ../code
npm i
sleep 20
echo wait time over, we hope to find the emulator running
adb connect emulator:5555
npm run android
