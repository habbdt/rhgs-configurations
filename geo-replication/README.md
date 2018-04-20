Role Name
=========

roles/geo-replication configures root geo-replication session between mastervolume and slavevolume.  

Requirements
------------

N/A

Role Variables
--------------

Change the following variables values according to your environment. 
File: site.yml

    master_volume: 'mastervol'
    slave_volume: 'slavevol'
    slave_host: 'rhgs4.example.com'

Define name of one of the nodes in mastervolume TSP in inventory file. 

Run Role
--------

- site.yml --> change the varibles values
- inventory --> change the hostname

ansible-playbook -vvv -i inventory site.yml
