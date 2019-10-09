#!/bin/sh

cd /opt
echo '---
- hosts: server
  roles:
    - ans-mmodal
  environment:
    STRING_ONE: "{{str_one}}"
    STRING_TWO: "{{str_two}}"' > mmodal_playbook.yml

echo 'localhost' > inventory
