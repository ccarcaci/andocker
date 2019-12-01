# (cd /home/node; ./dockerize -wait tcp://emulator:5555; ./platform-tools/adb connect emulator:5555; ./platform-tools/adb devices)
(cd /home/node; sleep 20; ./platform-tools/adb connect emulator:5555)
(cd code; npm run android)
