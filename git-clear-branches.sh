#!/bin/bash

# Setup
filename=~/scripts/output/branches.txt
git branch > $filename

python ~/scripts/git-clear-branches.py $filename