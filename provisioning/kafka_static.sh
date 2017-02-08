#!/bin/bash

VARS="${VARS} ANSIBLE_SCP_IF_SSH=y ANSIBLE_HOST_KEY_CHECKING=False"
VAGRANT_OPTS='--private-key=/root/insecure_private_key1 --timeout=10'
ansible-playbook -v ${VAGRANT_OPTS} -f 20 -i inventory/static playbooks/kafka.yml
