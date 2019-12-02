(cd /home/node; ./dockerize -wait tcp://emulator:5555; ./platform-tools/adb connect emulator:5555)
(cd code; npm run android)
