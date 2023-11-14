#!/bin/bash
# Source the configuration file
source ./config.sh

# Install pre-flight package
echo -e "${green} Installing pre-flight package ${no_color}"
./pre-flight.sh
echo -e "${green} Finish install pre-flight package ${no_color}"
# Fancy box things
./information/information-box.sh
# Read choose option input
# read -p "Choose your option: " option
PS3="Please choose your option: "
options=("Auto install" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Auto install")
            case $os_name in
                Ubuntu)
                    echo -e "${red} Detected Ubuntu operating system"
                    echo -e "${green} Install Ubuntu init ${no_color}"
                    ./ubuntu/ubuntu-init.sh
                    echo -e "${green} Done Ubuntu init ${no_color}"
                    ;;
                *)
                    echo "Unknown operating system"
                    ;;
            esac
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
# =========== Main =============

