ans-mmodal
=========

Installs and starts docker, builds a python docker image that takes two strings and prints true or false depending on if they are anagrams.

Requirements
------------

vagrant centos7 VM

Assumptions
-----------

* VM's can access github
* VM can support docker

Role Variables
--------------

|Name|Variable Type|
|----|-------------|
|str_one|String|
|str_two|String|

Example Playbook
----------------
    ---
    - hosts: localhost
      roles:
        - ans-model
      environment:
        STRING_ONE: "{{str_one}}"
        STRING_TWO: "{{str_two}}"

How To Run
----------

1. ssh into centos7 VM and become root
2. run `yum -y update && yum -y install git epel-release ansible`
3. run `cd /opt/`
4. run `git clone https://github.com/AI-Joe/ans-mmodal.git`
5. run `cd /opt/ans-mmodal/files`
6. run `sh setup.sh`
7. run `cd /opt/`
8. run `ansible-playbook -i inventory mmodal_playbook.yml -e "str_one={string_value_one}" -e "str_two={string_value_two}"`

Run Test Playbooks
-----------
The variables are already added to the playbooks. Change test_anagram to another name to test other cases.

1. run `cd /opt/ans-mmodal/tests`
2. run `ansible-playbook -i inventory test_anagram.yml`

Author Information
------------------

Joe Lieberman jlbrmn@gmail.com