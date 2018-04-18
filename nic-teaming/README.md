Role Name
=========

roles/teaming configure nic teaming. It uses tradiational network scripts instead of NetworkManager. During the process, this role stop and disable NetworkManager, uninstall NetworkManager and create necessary scripts to configure NIC teaming.  

Requirements
------------

N/A

Role Variables
--------------

Change the following variables value according to your environment. 

    template_team: 'nicteam0'
    first_interface: 'eth1'
    second_interface: 'eth2'
    ip_address_team: '192.168.122.219'
    aggregation_method: 'activebackup'
    team_gateway: '192.168.122.1'
    mtu_size: '1500'
    dns1_server: '192.168.122.3'
    dns2_server: '192.168.122.1'
    search_domain: 'example.com'


Run Role
--------

- site.yml --> change the varibles values
- inventory --> hostname

# ansible-playbook -vvv -i inventory site.yml
