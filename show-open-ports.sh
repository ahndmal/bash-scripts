#!/bin/bash

# The script shows the open network ports on the system

netstat -nutl ${1} | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}'
