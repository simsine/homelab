#! /usr/bin/env bash

pushd ansible

echo "Running homelab Ansible configuration"

if ! tailscale status > /dev/null; then
	echo "Starting tailscale"
	tailscale up
fi

tailscale switch headscale.simsine.no

ansible-playbook homelab_config.yml \
	--become-password-file .ansible_sudo_password \
	--vault-password-file .ansible_vault_key
