#!/bin/bash

# Runs cmatrix until input provided

cmatrix

while [[ $string == '' ]]
do
    read -s string
done