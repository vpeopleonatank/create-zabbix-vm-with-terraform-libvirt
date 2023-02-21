#!/bin/bash
mkdir sources/
wget -O sources/ubuntu2004.qcow2 https://cloud-images.ubuntu.com/focal/20230215/focal-server-cloudimg-amd64.img
qemu-img resize sources/ubuntu2004.qcow2 12G 
cp sources/ubuntu2004.qcow2 sources/server_ubuntu.qcow2
cp sources/ubuntu2004.qcow2 sources/database_ubuntu.qcow2
mv sources/ubuntu2004.qcow2 sources/proxy_ubuntu.qcow2
