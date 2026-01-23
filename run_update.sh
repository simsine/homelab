#! /usr/bin/bash

cd ansible

echo "Running homelab Ansible host updates"

if ! tailscale status > /dev/null; then
	ehco "Starting tailscale"
	tailscale up
	tailscale switch headscale.simsine.no
fi

ansible-playbook update_hosts.yml --become-password-file .sudo_password --verbose
