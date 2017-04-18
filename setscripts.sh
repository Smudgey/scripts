#!/bin/bash

echo 'Copying scripts to /usr/bin...'
rm /usr/bin/devenv
cp devenv.sh /usr/bin/devenv
rm /usr/bin/updatepc
cp updatepc.sh /usr/bin/updatepc
rm /usr/bin/gen-git-release
cp gen-git-release.sh /usr/bin/gen-git-release
echo 'Scripts copied'
