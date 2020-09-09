#!/bin/bash

# A script to quickly git you updated on the latest version
# of whatever git repo you're going to work on.

# ARGS:
#   1 -> name of new branch to set up off of master

git reset --hard
git checkout master
git pull upstream master
git push

if [ $# == 1 ]
then
    git checkout -b $1
    git push --set-upstream origin $1
fi   
