#!/bin/bash
#ansible-playbook -i ocp-brownfield.hosts  /usr/share/ansible/openshift-ansible/playbooks/prerequisites.yml
ansible-playbook -i ocp-brownfield.hosts  /usr/share/ansible/openshift-ansible/playbooks/deploy_cluster.yml

