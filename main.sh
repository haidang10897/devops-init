#!/bin/bash
# Source the configuration file
source ./config.sh

# =========== Main =============
case $os_name in
    Ubuntu)
        echo -e "${red} Detected Ubuntu operating system"
        echo -e "${green} Install pre-flight package ${no_color}"
        ./pre-flight.sh
        echo -e "${green} Install Ubuntu init ${no_color}"
        ./ubuntu/ubuntu-init.sh
        ;;
    *)
        echo "Unknown"
        ;;
esac
