#! /usr/bin/bash

cd ansible

echo "Running homelab ansible host updates"

ansible-playbook update_hosts.yml --become-password-file .sudo_password --verbose
