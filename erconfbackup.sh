#!/bin/bash

# This script connects to a specified Ubiquiti EdgeRouter and spits the config
## into a local text file for backup (in this case, 'br01').

# Author: Zach Wendell
# Date/Time: 20170929 21:51 UTC

# Define a variable called '_date' that will pull and store the current timestamp
_date=`date -u +"%Y%m%dT%H%M%SZ"`
ssh zmw@br01 "cat /config/config.boot" > br01_config_$_date.txt

# eof
