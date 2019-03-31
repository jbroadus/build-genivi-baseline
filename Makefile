ROOT=$(shell realpath .)
SHELL=/bin/bash

HOST_DIR=${ROOT}
GUEST_DIR=/build/
TAG=genivi6-builder
TARGET=qemux86-64
USER=1000:1000

INIT=. ./poky/oe-init-build-env
IMAGE = horizon-image
PACKAGE ?= $(IMAGE)
BBTARGETS = $(PACKAGE) show-recipes fetch show-env
#BBVERBOSE = -v
#BBDEBUG = -DDD
BB = bitbake $(BBVERBOSE) $(BBDEBUG)

.PHONY: $(BBTARGETS)
$(BBTARGETS):
	docker run -v ${HOST_DIR}:${GUEST_DIR} -w ${GUEST_DIR} -u ${USER} ${TAG} make _$@ PACKAGE=$(PACKAGE)

_$(PACKAGE):
	$(INIT) ; $(BB) $(PACKAGE)

_fetch:
	$(INIT) ; $(BB) -c fetch -f $(PACKAGE)

_show-env:
	$(INIT) ; $(BB) -e $(PACKAGE)

_show-recipes:
	$(INIT) ; bitbake-layers show-recipes

.PHONY: docker
docker:
	docker build -t $(TAG) docker

