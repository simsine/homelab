#! /usr/bin/bash

cd ansible

echo "Opening group vars in editor"

ansible-vault edit group_vars/all --vault-password-file .ansible_vault_key
