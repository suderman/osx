#!/bin/sh

# 2015 Jon Suderman
# https://github.com/suderman/osx/

# Open a terminal and run this command:
# curl https://raw.githubusercontent.com/suderman/osx/master/install.sh | sh

# Ensure /usr/local/bin exists
if [ ! -d "/usr/local" ]; then
  sudo mkdir -p /usr/local/bin
  ULB_OWNER=`whoami`:`ls -ld /usr | awk '{print $4}'`
  sudo chown $ULB_OWNER /usr/{local,local/bin}
fi

# Download osx into /usr/local/bin
sudo curl https://raw.githubusercontent.com/suderman/osx/master/osx -o /usr/local/bin/osx

# Set permissions
ULB_OWNER=`ls -ld /usr/local/bin | awk '{print $3}'`:`ls -ld /usr/local/bin | awk '{print $4}'`
sudo chown $ULB_OWNER /usr/local/bin/osx 
sudo chmod +x /usr/local/bin/osx

echo "Installed osx to /usr/local/bin"

