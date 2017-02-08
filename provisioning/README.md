ansible-kafka
---------
This Ansible playbook will build a Kafka cluster with Zookeeper.

You can pre-build a Rackspace cloud environment or run the playbook against an existing environment.

## [Requirements] (id:requirements)

- Ansible >= 2.0.

- Expects RHEL/CentOS 6

## [Features] (id:features)

- It installs Zookeeper for Kafka (Zookeeper will be installed on first 3 nodes if you provide cluster of more than 3 servers).

- It supports static inventory if the environment is pre-built (`inventory/static` file).

- The `id` is automatically set (on the inventory items in alphabetical order).

- It includes init scripts for both Zookeeper and Kafka.


## [Inventory] (id:inventory)

- When provisioning Kafka on existing infrastructure edit `inventory/static` and add the nodes.


## [Configuration] (id:configuration)

To customize, change the variables under `playbooks/group_vars` and `playbooks/roles` folders:

1. **playbooks/group_vars/all**: contains cluster and cloud settings
1. **playbooks/roles/zookeeper/defaults/main.yml**: Zookeeper specific settings
1. **playbooks/roles/kafka/defaults/main.yml**: Kafka specific settings

For a one-node cluster, set `nodes_count` in `playbooks/group_vars/all` to 1.


## [Scripts] (id:scripts)

- For static / prebuilt environments:
  ````
  bash kafka_static.sh
  ````
