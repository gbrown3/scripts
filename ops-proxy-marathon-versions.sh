#!/bin/bash

# Makes it easier to check the version of a component 
# on different environments via ops proxy
#
# $1 -> environment, ie bluesteel.werally.in
# $2 -> search string, ie settings

curl "https://ops-proxy.$1/marathon/versions" -s | jq | grep $2
