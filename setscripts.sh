#!/bin/bash

echo 'Copying scripts to /usr/bin...'
rm /usr/bin/devenv
cp devenv.sh /usr/bin/devenv
rm /usr/bin/updatepc
cp updatepc.sh /usr/bin/updatepc
echo 'Scripts copied'
