Role Name
=========

This anisble role perform fetching of some important systems configuration files. 

Requirements
------------

N/A.

Role Variables
--------------

In the inventory file, provide the hostname of the rhgs hosts and in the site.yml file provide the value of destinations varible. The destinations variable defines the location where the files would be saved after being fetched from the taget nodes defined in the inventory file. 

# site.yml
vars:
  destinations: '/code/backup-dir'

# inventory File
[fetch-hosts]
rhgsa.example.com
rhgsb.example.com
rhgsc.example.com


Run Ansible Role
----------------

# ansible-playbook -i inventory site.yml


