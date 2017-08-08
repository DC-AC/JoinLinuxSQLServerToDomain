#! /bin/bash
read -s -p "Enter Password for Sudo: " sudoPW
echo $sudoPW |sudo -S yum update

read -s -p "Enter your domain name in lowercase: "  $domain
read -s -p "Enter the IP Address of your domain controller:  " $dcip



#Check for Linux Distro


if [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    DISTRO=$DISTRIB_ID
elif [ -f /etc/debian_version ]; then
    DISTRO=Debian
    # Ubuntu
sudo apt-get install realmd krb5-user software-properties-common python-software-properties packagekit
    
elif [ -f /etc/redhat-release ]; then
    DISTRO="Red Hat"
    # RHEL
sudo yum install realmd krb5-workstation

elif [ -f /etc/centos-release ]; then
    DISTRO="Red Hat"
    # RHEL
sudo yum install realmd krb5-workstation

elif [ -f /etc/SuSE-release ]; then
    DISTRO="SUSE"
    # RHEL
sudo yum install realmd krb5-workstation


else
    DISTRO=$(uname -s)

fi


$dcip3 echo $dcip |awk -F '.' -v OFS='.' '{print $1, $2, $3}'
$dcip3
#grabs adapter for inet connector
#Needs adjustment for different subnets

iface=$(ifconfig | grep -B1 "$dcip3" | head -n1 |sed 's/:.*//')

