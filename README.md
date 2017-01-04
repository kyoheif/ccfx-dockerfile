# Dockerfile for building CCFinderX on Ubuntu 16.04
===

This Dcokerfile will get the source code of CCFinderX, install packages to build it, and build it.

## Base Docker Image
 * ubuntu:16.04

## Installed Packages
 * build-essential
 * libboost-dev
 * libboost-system-dev
 * lib-boost-thread-dev
 * libicu-dev
 * openjdk-9-jdk
 * python-dev

## Usage
 * Executable binary of CCFinderX is deployed at /usr/src/ccfx/ccfx-master/ubuntu32/ccfx .
 * For detecting code clone, you should mount host volumes into the docker container.

## Note
 * CCFinderX is a code-clone detector which was originally developed by [Toshihiro Kamiya](http://toshihirokamiya.com/).
 * The source code of CCFinderX is ported from [the archive of CCFinder Official Site](http://www.ccfinder.net/ccfinderxos.html), and is modified to build on Ubuntu 16.04 according [the installation instructions](http://nicolas-bettenburg.com/articles/how-to-compile-ccfinderx-under-ubuntu-linux/) by [Nicolas Bettenburg](http://nicolas-bettenburg.com/). For more information, please see [kyoheif/ccfx](https://github.com/kyoheif/ccfx).

