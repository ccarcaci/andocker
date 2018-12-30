FROM alpine
MAINTAINER Claudio Carcaci

VOLUME /tmp
# COPY 

# WORKDIR
RUN apk update && \
	apk add --no-cache nodejs nodejs-npm
RUN npm install expo-cli --global

ENTRYPOINT expo --version

$ export ANDROID_HOME=$HOME/Android/Sdk
$ export PATH=$PATH:$ANDROID_HOME/tools
$ export PATH=$PATH:$ANDROID_HOME/tools/bin
$ export PATH=$PATH:$ANDROID_HOME/platform-tools
$ export JAVA_HOME=/home/claudio/Downloads/apps/jdk1.8.0_172/
$ alias emu="$ANDROID_HOME/emulator/emulator"
$ cd $HOME/Downloads/apps/sdk-tools-linux-4333796/tools/
$ ./bin/sdkmanager --install "system-images;android-27;google_apis;x86"
$ avdmanager create avd -n Nexus5X -k "system-images;android-28;google_apis_playstore;x86" --device "Nexus 5X"
$ emu -avd Nexus5
