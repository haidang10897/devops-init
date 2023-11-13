#!/bin/bash

# Global variables
## Beautiful variables
red='\033[0;31m'
green='\033[0;32m'
no_color='\033[0m'
## Get information variables
os_name=$(grep "^NAME=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
architecture=$(dpkg --print-architecture)
