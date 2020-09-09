#!/bin/bash

# for when you forgot to pre-commit

pre-commit run -a

if [ [$# == 1] -a [$1 == "-c"] ]
then    
    git commit -a -m "pre-commit"
    git push
fi