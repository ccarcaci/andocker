# andocker

This project provides a mechanism to run in a virtualized sandbox the entire Android and React Native ecosystem.
This could be useful for development environment and for testing environment that would have an easy and scalable mechanism to run tests.

To have an explanation on how this tool works please refer to this article: [Android emulation on Docker](https://medium.com/@ccarcaci/android-emulation-on-docker-90d70ea95425)

## Important note

This project is no longer supported since [React Native default initialization](https://facebook.github.io/react-native/docs/getting-started) needs a Java support which is basically incompatible with the node image used to setup the expo ecosystem.

I'm working on a new script that runs and initializes a working installation for Android development on React Native without Android Studio.

[Stay tuned!](https://github.com/ccarcaci)

## Prerequisites

* Docker

## How to Use

Go to the /ecosystem folder, set executable permission to compose.sh script and run it:

```
$ cd ecosystem/
$ chmod +x compose.sh
$ ./compose.sh
```

To force the expo image rebuilding run the command:

```
$ ./compose.sh --rebuild-ecosystem
```

## License

This project is distributed under [EUPL-1.2](https://eupl.eu/1.2/en).
