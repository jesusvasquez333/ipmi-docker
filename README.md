# Docker image with the SLAC's IPMI tools

## Description

This docker image, named **ipmi** contains the SLAC's IPMI tools used in the High Performance System (HPS) based on ATCA.

It is based on centos 6.10, to closely match the SLAC's development environment.

## Source code

The IPMC package containing source code and binaries were taken from SLAC's version, hosted internally. The package was manually copied into this repository in the form of a tarball.

## Building the image

The provided script *build_docker.sh* will automatically build the docker image. It will tag the resulting image using the same git tag string (as returned by `git describe --tags --always`).

## How to get the container

To get the most recent version of the docker image, first you will need to install docker in you host OS and be logged in. Then you can pull a copy by running:

```
docker pull jesusvasquez333/ipmi:<TAG>
```

Where **<TAG>** represents the specific tagged version you want to use.

## How to run the container

To start the container just execute the following command:

```
docker run -ti --rm --name ipmi ipmi
```

You will be given a bash shell where you can run the IPMI commands.

Note that the container must be run in a server with access to the ATCA system you plan to use.