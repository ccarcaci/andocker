# andocker

This project provides a mechanism to run in a virtualized sandbox the entire Android and React Native ecosystem.
This could be useful for testing environment, in a context of CI/CD integration, that would have an easy and scalable mechanism to run tests.

To have an explanation on how this tool works please refer to this article: [Android emulation on Docker](https://medium.com/@ccarcaci/android-emulation-on-docker-90d70ea95425)

## Prerequisites

Host system must provide:

* Docker
* Node 12.13.1 Erbium ([nvm could come in to help out](http://nvm.sh))
* nested virtualization

## How to Use

Go to the /ecosystem folder, set executable permission to compose.sh script and run it:

```bash
$ cd ecosystem/
$ chmod +x compose.sh
$ ./compose.sh
```

To force the expo image rebuilding run the command:

```bash
$ ./compose.sh --rebuild-ecosystem
```

## Usage Technical Limitations

This [issue](https://github.com/ccarcaci/andocker/issues/6) investigated in details what are some limitations.

* The emulator works only in Ubuntu systems. It is possible that it works also on others Linux OS but they have not been tested yet.
* *nested virtualisation* must be available in host system.
If you're using a VM to run the host system:

  [Enable in VirtualBox](https://docs.oracle.com/en/virtualization/virtualbox/6.0/relnotes/nested-virt-support.html)

  VMWare supports nested virtualization natively.

  If you're on an Intel CPU please verify the related virtualization mirroring from host to guest system.
* OSX users must virtualize host system.

Special thanks to [omarhassanhub](https://github.com/omarhassanhub) who conducted this detailed investigation.

## License

This project is distributed under [EUPL-1.2](https://eupl.eu/1.2/en).
