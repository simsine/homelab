#! /usr/bin/env bash

pushd ansible

echo "Installing Ansible dependencies"

ansible-galaxy install -r requirements.yml
