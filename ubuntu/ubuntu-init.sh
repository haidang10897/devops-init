#!/bin/bash
# Source the configuration file
source ./config.sh

# Detect architecture
echo "Detected $architecture architecture"
# install kubectl
case $architecture in
    amd64)
        echo -e "${green} Installing kubectl ${no_color}"
        ./ubuntu/kubectl/kubectl-amd64.sh
        echo -e "${green} Installing docker ${no_color}"
        ./ubuntu/docker/docker-amd64.sh
        echo -e "${green} Installing helm ${no_color}"
        ./ubuntu/helm/helm-amd64.sh
        echo -e "${green} Installing ansible ${no_color}"
        ./ubuntu/ansible/ansible-amd64.sh
        echo -e "${green} Installing git ${no_color}"
        ./ubuntu/git/git-amd64.sh
    ;;

    *)
        echo -e "${red} Unknown architecture!! ${no_color}"
    ;;
esac
    