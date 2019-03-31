# build-genivi-baseline
Build tool for genivi-baseline.

## Setup
Initialize submodules:

`git submodule update --init --recursive`

If selinux is in use, set the context for use with the container:

`chcon -Rt svirt_sandbox_file_t .`

## Docker Image
`make docker`

## Build
`make`
