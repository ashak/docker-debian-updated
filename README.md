# docker-debian-updated
Take the official Debian docker images and dist-upgrade them to the latest package versions

## Howto

### docker build
If you simply wish to build the image use the following:
```sh
docker build --build-arg DEBIAN_RELEASE=<official Debian image tag> .
```
Build-arg DEBIAN_RELEASE is required. It must be an image tag from the official Debian docker images.

### build script
Shell wrapper for docker build that will also push the resultant image to a registry
```sh
./build.sh <official Debian image tag> <custom image name> [custom image tag]
```
Example
```sh
./build.sh buster-slim opensourcery/debian
 ```
