#!/bin/bash
# Source the configuration file
source ./config.sh

# Detect architecture
echo "Detected $architecture architecture"
# install kubectl
case $architecture in
    amd64)
        echo 'Installing kubectl'
        ./ubuntu/kubectl/kubectl-amd64.sh
        ./ubuntu/docker/docker-amd64.sh
        ./ubuntu/helm/helm-amd64.sh
esac
    