# Create SSH Publickey
```bash
mkdir ssh
ssh-keygen -t rsa -b 4096 -f $HOME/.ssh/id_rsa_zabbix_libvirt -N ""
ln -s $HOME/.ssh/id_rsa_zabbix_libvirt.pub ssh/

```

# Create libvirt Storage Pool
```bash
mkdir volumes
virsh pool-define-as --name zabbix-monitor-pool --type dir --target volumes/
virsh pool-autostart zabbix-monitor-pool
virsh pool-start zabbix-monitor-pool
```

# Create vm with terraform
```bash
terraform init
terraform apply -auto-approve
```
