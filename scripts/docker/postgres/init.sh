#!/bin/bash

# Install Multicorn
echo "~~~~~~~~~~~~~ Installing multicorn"
cd ~
if [ ! -d "/Multicorn" ]; then
  git clone git://github.com/Kozea/Multicorn.git
fi
cd Multicorn
sed -e '/preflight-check.sh/d;/preflight-check:/d;s/preflight-check //' -i.bak Makefile
make && make install

# Install neo4j fdw
echo "~~~~~~~~~~~~~ Installing Neo4j FDW"
cd /neo4j-fdw/source/
make install
