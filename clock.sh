#!/bin/bash

# Constantly updates clock until input provided

# TODO: rather than sleep, get time and only update if minute has changed

while [[ $string == '' ]]
do
    read -s string

    clear
    sh /etc/motd.sh
    sleep 60
done