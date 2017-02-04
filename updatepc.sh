#!/bin/bash

echo '=== Updating pc...'
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt autoremove -y
echo '=== Updates finished.'
