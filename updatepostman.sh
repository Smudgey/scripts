#!/bin/bash

cmd=$1

echo '=== Updating postman...'
sudo mv ~/Downloads/Postman-linux-x64-$cmd.tar.gz /opt/.
sudo tar -xzvf Postman-linux-x64-$cmd.tar.gz
sudo rm Postman-linux-x64-$cmd.tar.gz
echo '=== Update finished.'
