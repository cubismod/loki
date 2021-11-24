# ARM64 Docker Plugin Build
So the Docker Driver Client for Loki https://grafana.com/docs/loki/latest/clients/docker-driver/ currently only builds for AMD64. This aims to fix that problem by building a dirty version of AMD64 build image under `loki-build-image` (see https://github.com/grafana/loki/blob/main/docs/sources/installation/install-from-source.md). Then it runs a build of the Docker Plugin from the Makefile (https://github.com/grafana/loki/blob/main/clients/cmd/docker-driver/README.md).
# Running Plugin
Make `build-amd64.sh` executable and then run it `./build-amd64.sh`