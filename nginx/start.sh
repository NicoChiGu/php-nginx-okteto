#!bin/bash
SERVERNAME=$NGINX_SERVERNAME
sed -i "s/##Changeme##/${SERVERNAME}/g" /root/my_server_block.conf
