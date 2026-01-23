#! /usr/bin/bash

cd ansible

echo "Running homelab Ansible configuration"

if ! tailscale status > /dev/null; then
	ehco "Starting tailscale"
	tailscale up
	tailscale switch headscale.simsine.no
fi

ansible-playbook homelab_config.yml --become-password-file .sudo_password
