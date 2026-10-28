#! /usr/bin/env bash

cd ansible

echo "Running homelab Ansible local test configuration"

if ! tailscale status > /dev/null; then
	echo "Starting tailscale"
	tailscale up
fi

tailscale switch headscale.simsine.no

if [ -e local_config.yml ]
then
	ansible-playbook local_config.yml \
		--verbose \
		--vault-password-file .ansible_vault_key
else
	echo "No local config found please create it first."
fi
