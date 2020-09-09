#!/bin/bash

# Combines git-latest-version and git-clear-branches:
# Gets you checked out on the latest version of master,
# with no branches or local commits to clog things up

sh ~/scripts/git-latest-version.sh
sh ~/scripts/git-clear-branches.sh

if [ $# == 1 ]
then
    sh ~/scripts/git-latest-version.sh $1
fi