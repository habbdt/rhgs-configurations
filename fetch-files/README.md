Role Name
=========

This anisble role perform fetching of some important glusterfs configurations files. 

Requirements
------------

N/A.

Role Variables
--------------

In the inventory files provide the hostname of the hosts and in the site.yml provide the value of destinations varible. The destinations varibele defines the location where the files would be saved after being fetched from the taget nodes defined in the inventory files. 

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


