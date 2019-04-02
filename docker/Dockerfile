FROM debian:jessie-20190326

RUN apt-get update
RUN apt-get install -y locales locales-all
RUN apt-get install -y --no-install-recommends asciidoc
RUN apt-get install -y --no-install-recommends binutils
RUN apt-get install -y --no-install-recommends bzip2
RUN apt-get install -y --no-install-recommends chrpath
RUN apt-get install -y --no-install-recommends cpio
RUN apt-get install -y --no-install-recommends cpp
RUN apt-get install -y --no-install-recommends diffstat
RUN apt-get install -y --no-install-recommends file
RUN apt-get install -y --no-install-recommends g++
RUN apt-get install -y --no-install-recommends gawk
RUN apt-get install -y --no-install-recommends git
RUN apt-get install -y --no-install-recommends libsdl1.2-dev
RUN apt-get install -y --no-install-recommends make
RUN apt-get install -y --no-install-recommends patch
RUN apt-get install -y --no-install-recommends perl
RUN apt-get install -y --no-install-recommends procps
RUN apt-get install -y --no-install-recommends python
RUN apt-get install -y --no-install-recommends python3
RUN apt-get install -y --no-install-recommends ssh
RUN apt-get install -y --no-install-recommends texinfo
RUN apt-get install -y --no-install-recommends wget
RUN apt-get install -y --no-install-recommends ca-certificates

RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

RUN useradd -u 1000 builder
