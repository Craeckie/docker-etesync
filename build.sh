#!/bin/bash
git pull --rebase upstream master
bash generate.sh

pushd debian/slim
bash build.sh || exit
popd
docker build -t craeckie/etesync .
