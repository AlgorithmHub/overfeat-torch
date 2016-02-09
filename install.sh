#!/usr/bin/env bash

# download OverFeat weights
mkdir -p data/default
cd data/default
curl -o weights.tgz http://cilvr.cs.nyu.edu/lib/exe/fetch.php?media=overfeat:overfeat-weights.tgz
tar -xzf weights.tgz
rm weights.tgz

# move weights to current directory
mv data/default/net_weight_* . 
rm -rf data/

# build C wrapper library
make clean && make

# done!
echo "==> Install completed, execute 'run.lua'"
