#!/bin/bash

echo 'Copying scripts to /usr/bin...'
rm /usr/bin/devenv
cp devenv.sh /usr/bin/devenv
rm /usr/bin/updatepc
cp updatepc.sh /usr/bin/updatepc
rm /usr/bin/gen-git-release-notes
cp gen-git-release-notes.sh /usr/bin/gen-git-release-notes
rm /usr/bin/updatepostman
cp updatepostman.sh /usr/bin/updatepostman
rm /usr/bin/clone
cp clone.sh /usr/bin/clone
echo 'Scripts copied'
