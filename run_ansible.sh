#! /usr/bin/bash

cd ansible

echo "Running homelab ansible configuration"

ansible-playbook homelab_config.yml -K
