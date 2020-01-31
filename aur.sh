#!/bin/bash
pushd /tmp

git clone "$1" && cd "$(basename "$1" .git)"
makepkg -sri
rm -rf $1

popd
