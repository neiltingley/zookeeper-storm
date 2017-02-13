#!/bin/bash

VARS="${VARS} ANSIBLE_SCP_IF_SSH=y ANSIBLE_HOST_KEY_CHECKING=False"
ansible-playbook -vv ${VAGRANT_OPTS} -f 20 -i inventory/static provisioning/playbooks/storm.yml
