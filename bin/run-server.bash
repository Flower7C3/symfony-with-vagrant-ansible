#!/usr/bin/env bash
clear
ANSIBLE_COW_SELECTION=dragon ansible-playbook -i config/hosts config/run.yml
