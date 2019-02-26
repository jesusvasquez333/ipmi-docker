# Docker image with the SLAC's IPMI tools

## Description

This docker image, named **amcc-ipmi** contains the SLAC's IPMI tools used in the High Performance System (HPS) based on ATCA.

It is based on centos 6.10, to closely match the SLAC's development environment.

## Source code

The IPMC package containing source code, libraries, and binaries was taken from SLAC's version, hosted internally. The package was manually copied into this repository in the form of a tarball.

## Building the image

When a tag is pushed to this github repository, a new Docker image is automatically built and push to its [Dockerhub repository](https://hub.docker.com/r/jesusvasquez333/amcc-ipmi) using travis.

The resulting docker image is tagged with the same git tag string (as returned by `git describe --tags --always`).

## How to get the container

To get the most recent version of the docker image, first you will need to install docker in you host OS and be logged in. Then you can pull a copy by running:

```
docker pull jesusvasquez333/amcc-ipmi:<TAG>
```

Where **<TAG>** represents the specific tagged version you want to use.

## How to run the container

To start the container just execute the following command:

```
docker run -ti --rm --name amcc-ipmi jesusvasquez333/amcc-ipmi:<TAG>
```

Where **<TAG>** represents the specific tagged version you want to use.

You will be given a bash shell where you can run the IPMI commands. You can also add the IPMI command at the  of the docker run command, in this case the container will be started, the command will be run, and the container will be stopped.

Note that the container must be run in a server with access to the ATCA system you plan to use.
