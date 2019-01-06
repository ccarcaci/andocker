docker images | grep butomo1989/docker-android-x86-8.1

if [ $? -ne 0 ]; then
  docker pull butomo1989/docker-android-x86-8.1
fi

docker-compose up

google-chrome --new-window http://localhost:6080
