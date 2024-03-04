#/bin/bash

FROM centos

cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

sudo yum -y install epel-release


#echo "Inicio da instalação - Ansible"
#sudo cat <<EOT >> /etc/ansible/hosts
#10.10.0.6 servidor01
#EOT

#sh vagrant@10.10.0.6 | ~/.ssh/id_rsa.pub |"mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"
