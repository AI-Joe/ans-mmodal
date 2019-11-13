#!/bin/sh

cd /opt
echo '---
- hosts: localhost
  connection: local
  roles:
    - ans-mmodal' > mmodal_playbook.yml

echo 'localhost' > inventory
