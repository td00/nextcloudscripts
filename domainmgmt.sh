#!/bin/bash

###################################################
# Author: Thies Mueller (https://thiesmueller.de) #
# License: GNU AGPL v3.0                          #
# USE AT YOUR OWN RISK!                           #
# Originally developed for 161host.net            #
###################################################

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi


while true; do
	read -p 'Create subdomain (s) , own Domain (o) or delete Domain (d)?: ' dc

    case $dc in

        [Dd]* ) echo 'launching domain deletion '; bash /scripts/deletion.sh;break;;

        [Oo]* ) echo 'launching creation (own) '; bash /scripts/creation_own.sh;break;;

        [Ss]* ) echo 'launching creation (subdomain) '; bash /scripts/creation_sub.sh;break;;

        * ) echo 'Please answer s , o or c: ';;

    esac

done