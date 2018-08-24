#!/bin/bash

rm -rf /etc/machine-id
systemd-machine-id-setup
subscription-manager register --auto-attach --force --username=rhn-gps-hbustam --password=Kexec\!05
subscription-manager attach --pool=8a85f98c60c2c2b40160c324e5d21d70
subscription-manager repos --disable=*
subscription-manager repos --enable=rh-gluster-3-client-for-rhel-7-server-rpms --enable=rhel-7-fast-datapath-rpms --enable=rhel-7-server-ansible-2.5-rpms --enable=rhel-7-server-extras-rpms --enable=rhel-7-server-ose-3.10-rpms --enable=rhel-7-server-rpms
yum clean all ; rm -rf /var/cache/yum/
yum update
/usr/sbin/reboot
