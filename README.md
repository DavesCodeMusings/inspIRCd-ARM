# inspIRCd-ARM
InspIRCd Docker container for ARM64

## What is it?
inspIRCd-ARM is a containerized version of the [inspIRCd](https://www.inspircd.org/) internet relay chat server that you can run in a Docker container on Raspberry Pi.

## For the love of God man, why?
The number one reason: the [official Docker builds](https://hub.docker.com/r/inspircd/inspircd-docker) do not include ARM-based architecture.

Other reasons include:
* You can use it with the [Pidgin instant messaging client](https://pidgin.im/) to set up a home network chat server.
* It might be useful for [relaying information from Internet of Things (IoT) devices](https://flows.nodered.org/node/node-red-node-irc) to humans.
* You can [use IRC as a front end to the Frotz interactive fiction engine](https://github.com/DavesCodeMusings/irc2Frotz) for multi-player fun with old text-based games.

## Where can I get it?
The Dockerfile you need to build it, along with a couple handy shell scripts to make things easier, are right here in the GitHub repository. The container is available on [Docker Hub](https://hub.docker.com/repository/docker/davescodemusings/inspircd)
