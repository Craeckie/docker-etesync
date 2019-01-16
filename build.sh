#!/bin/bash
git pull --rebase
bash generate.sh

pushd debian/slim
bash build.sh || exit
popd
docker build -t craeckie/etesync .
