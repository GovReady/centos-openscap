GovReady centos-openscap
=============================

# Status

| Date         | Status | Time to Build |
|--------------|-------------|-------------|
| May 22, 2014 Created| - | - |

A Virtual Machine for Exploring openSCAP on CentOS

## Goals

Help others learn about openSCAP on CentOS

## About this Virtual Machine

This repo contains a Vagrant file and Ansible Playbook to automatically configure a CentOS 6.4 64-bit virtual machine.

## Background

RHEL involves licenses. To do simple learning, it's best to have an open source computer that is also does not have up front costs.

## Manual Installation Instructions (from Ben)

Installation issues:
-------------------


## Links

### Ansible
* [Jeff Geerling Slides](http://www.slideshare.net/geerlingguy/local-development-on-virtual-machines-vagrant-virtualbox-and-ansible)
* [Ansible's Example on GitHub](https://github.com/ansible/ansible-examples/tree/master/lamp_simple)
* [Julian Ponge post with examples](http://julien.ponge.org/blog/scalable-and-understandable-provisioning-with-ansible-and-vagrant/)
* [Ansible docs on using Vagrant](http://docs.ansible.com/guide_vagrant.html)
* [Vagrant docs on using Ansible](http://docs.vagrantup.com/v2/provisioning/ansible.html)
* [Getting Cirrius example of Ansible and Firewall rules](http://www.gettingcirrius.com/2013/11/configure-iptables-with-ansible.html)
* [CentOS wiki EC2 and Ansible](http://wiki.centos.org/Cloud/Manage/Ansible)

More on Ansible
* Ansible executes in order.
* Ansible playbook needs to address `hosts`, `vars`, `handlers`, and `tasks`. 
* Variable substitution in Ansible `{{ var_name }}` 
* Ansible loop you indicate the command and then add `with_items` YAML list. 
* Ansible copy file by defaults copies `src` from Ansible computer to `dest` on guest (target) server. You can set mode and ownership
* Copying files really is an easy way manage firewalls and vhost configurations.


