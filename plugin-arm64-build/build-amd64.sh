#!/bin/bash
echo "================Docker building loki-build-image================"

pushd ../loki-build-image
docker build -t cubis/loki-build-image .
if [ $? -ne 0 ]; then
    exit -1
fi
popd

echo "================Building driver================"
pushd ../
make docker-driver
if [ $? -ne 0 ]; then
    exit -1
fi
popd

echo "Driver built succesfully. Please run make-docker-driver-enable to install. Run make docker-driver-clean to remove from Docker once installed."