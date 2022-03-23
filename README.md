# CyberDivision
A collection of works and projects dedicated to cyber security
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

~/Downloads/README/Images/’Virtual_Network.drawio’



These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the install-elk.yml  file may be used to install only certain pieces of it, such as Filebeat.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
- Beats in Use
- Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the Damn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system metrics and statistics.

The configuration details of each machine may be found below.

Name		               Function                         Ip Address                     Operating System
Jump Box
Gateway
104.42.40.196
Linux(ubuntu 18.04)
Elk-VM
Network Security Monitoring
20.69.165.230
Linux(ubuntu 20.04)
Web1
Web Server(DVWA)
168.62.4.11
Linux(ubuntu 18.04)
Web2
Web Server(DVWA)
168.62.4.11
Linux(ubuntu 18.04)
Web2
Web Server(DVWA)
168.62.4.11
Linux(ubuntu 18.04)



### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the Jump Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 10.1.0.4
- 10.0.0.5
- 10.0.0.6
- 10.0.0.9

Machines within the network can only be accessed by SSH.
- Access to the Elk stack machine is permitted through the Jump Box with a source IP address of 72.197.208.80






A summary of the access policies in place can be found in the table below.

Name | Publicly Accessible | Allowed IP Addresses
--- | --- | --- 
Jump Box | Yes |10.1.0.4  10.0.0.5  10.0.0.6 10.0.0.9
Elk-VM | No | 10.0.0.4  72.197.208.80
Web1 | No | 10.0.0.4  10.0.0.6  10.0.0.9
Web2 | No | 10.0.0.4  10.0.0.5  10.0.0.9
Web3 | No | 10.0.0.4  10.0.0.5  10.0.0.6


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it limits the potential for human error as well as the ability to potentially configure thousands of identical machines at the same time.

The playbook implements the following tasks:
- Install docker.io
- Install python3-pip
- Install docker module
- Enable more memory
- Download and launch docker elk container
- Enable docker on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

~/Downloads/README/Images/docker_ps.png



### Target Machines & Beats

This ELK server is configured to monitor the following machines:
- 10.0.0.5
- 10.0.0.6
- 10.0.0.9

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat is used to collect and organize log files from specific locations, such as the mysql module, which collects and parses the error logs and slow logs created by MySQL.
- Metricbeat helps to monitor servers by collecting metrics from the system and services running on the server, such as fetching the metrics of the Apache server.

### Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to /etc/ansible.
- Update the hosts file to include the elk group, separate from the webservers group, where the DVWA machines reside.
- Run the playbook, and navigate to http://20.83.98.34:5601/app/kibana to check that the installation worked as expected.

Command to download and run the playbook:
- ansible-playbook install-elk.yml
