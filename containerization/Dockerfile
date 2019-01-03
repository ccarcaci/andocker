FROM ubuntu
MAINTAINER Claudio Carcaci

ENV WORKPATH /work
ENV SDKTOOLSPATH sdk-tools
ENV SDKTOOLSARCHIVENAME sdk-tools-linux-4333796.zip

WORKDIR $WORKPATH

# Comment this and uncomment wget below
# COPY $SDKTOOLSARCHIVENAME $WORKPATH

# Node, Npm and Expo layer
RUN apt-get update && \
	apt-get -y install nodejs npm && \
	npm install -g expo-cli

# Jdk and Android SDK layer
RUN apt-get -y install software-properties-common zip && \
	add-apt-repository ppa:openjdk-r/ppa && \
	apt-get update && \
	apt-get -y install openjdk-8-jdk && \
	wget https://dl.google.com/android/repository/$SDKTOOLSARCHIVENAME && \
	mkdir $SDKTOOLSPATH && \
	unzip $SDKTOOLSARCHIVENAME -d $SDKTOOLSPATH && \
	rm $SDKTOOLSARCHIVENAME

# Create Android Device layer
RUN export ANDROID_HOME=$WORKPATH/$SDKTOOLSPATH && \
export PATH=$PATH:$WORKPATH/$SDKTOOLSPATH/tools/bin:$WORKPATH/$SDKTOOLSPATH/emulator && \
yes | sdkmanager --install 'system-images;android-28;google_apis;x86_64' && \
	avdmanager create avd -n Nexus5X -k 'system-images;android-28;google_apis;x86_64' --device 'Nexus 5X'

COPY script.sh $WORKPATH
RUN chmod +x $WORKPATH/script.sh

# CMD /work/sdk-tools/emulator/emulator
ENTRYPOINT ["/work/script.sh", "-avd", "Nexus5X"]

# $ export ANDROID_HOME=$HOME/Android/Sdk
# $ export PATH=$PATH:$ANDROID_HOME/tools
# $ export PATH=$PATH:$ANDROID_HOME/tools/bin
# $ export PATH=$PATH:$ANDROID_HOME/platform-tools
# $ export JAVA_HOME=/home/claudio/Downloads/apps/jdk1.8.0_172/
# $ alias emu="$ANDROID_HOME/emulator/emulator"
# $ cd $HOME/Downloads/apps/sdk-tools-linux-4333796/tools/
# $ ./bin/sdkmanager --install "system-images;android-27;google_apis;x86"
# $ avdmanager create avd -n Nexus5X -k "system-images;android-28;google_apis;x86" --device "Nexus 5X"
# $ emu -avd Nexus5X
