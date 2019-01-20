# Prerequisites: Docker, Docker Compose, Chrome

export butomoVersion=8.1
yes | docker system prune


docker-compose build --build-arg butomoVersion=$butomoVersion
docker-compose up -d
exec google-chrome --new-window http://localhost:6080 > /dev/null &

echo "Press F5 con Chrome (localhost:6080) when android-emulator has been done to view the emulator"
