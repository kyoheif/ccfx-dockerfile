# CCFinderX on Ubuntu 16.04
FROM ubuntu:16.04
MAINTAINER Kyohei Fushida <kyohei.fushida@gmail.com>

LABEL Description="This image is used to build CCFinderX."

RUN apt-get update && apt-get install -y \
	build-essential \
	libboost-dev \
	libboost-system-dev \
	libboost-thread-dev \
	libicu-dev \
	python-dev \
	&& apt-get -y -o Dpkg::Options::="--force-overwrite" install openjdk-9-jdk \ 
	&& rm -rf /var/lib/apt/lists/*
ADD http://github.com/kyoheif/ccfx/archive/master.tar.gz /usr/src/ccfx/ccfx.tar.gz
RUN tar xvfz /usr/src/ccfx/ccfx.tar.gz -C /usr/src/ccfx
RUN make -C /usr/src/ccfx/ccfx-master

CMD ["/usr/src/ccfx/ccfx-master/ubuntu32/ccfx"]
