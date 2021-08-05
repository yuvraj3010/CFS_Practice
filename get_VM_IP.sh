#!/usr/bin/bash

Ip_Address=$(echo `az vm list-ip-addresses -g trainerrg1 -n testvm --query "[].virtualMachine.network.publicIpAddresses[*].ipAddress" -o tsv`)


echo "[linux]" >> /etc/ansible/hosts
echo "$Ip_Address" >> /etc/ansible/hosts
echo "[linux:vars]" >> /etc/ansible/hosts
echo "ansible_ssh_user = vmadmin" >> /etc/ansible/hosts
echo "ansible_ssh_pass = P@ssword123456" >> /etc/ansible/hosts
