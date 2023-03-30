#!bin/bash
SERVERNAME=$NGINX_SERVERNAME
echo "SERVERNAME WAS ${SERVERNAME}"
sed -i "s/##Changeme##/${SERVERNAME}/g" /root/my_server_block.conf
