exec docker-compose up --build > /dev/null &
exec google-chrome --new-window http://localhost:6080 > /dev/null &

echo "Press F5 con Chrome (localhost:6080) when android-emulator has been done to view the emulator"
