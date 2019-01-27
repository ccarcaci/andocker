npm install

yes | docker system prune
docker build -t expo-full -f Dockerfile-expo-full .
docker run --privileged -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -e DEVICE="Samsung Galaxy S6" --name expo-full expo-full

exec google-chrome --new-window http://localhost:6080 > /dev/null &

# docker run -it expo-full bash
