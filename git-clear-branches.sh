#!/bin/bash

# Setup
filename=~/scripts/output/branches.txt
git branch > $filename

python3 ~/scripts/git-clear-branches.py $filename