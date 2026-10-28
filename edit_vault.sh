#! /usr/bin/env bash

pushd ansible

echo "Opening vault in editor"

ansible-vault edit group_vars/all/vault.yml --vault-password-file .ansible_vault_key

if [ $? -ne 0 ]; then
	echo "Error in writing vault file, have you created a vault password file?"
	exit 1
fi

echo "Wrote updated vault file"
