#!/bin/bash

# Check if the /root directory exists
if [ -e /root ]; then
    # Check if /root/.ssh/authorized_keys exists
    if [ -f /root/.ssh/authorized_keys ]; then
        # Check if the public key already exists in authorized_keys
        grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAirgrOMe10TbxfwPXXtD5o+t09YseSc7NEb7cT+Ljlfs/yplMbEqWz5opStNK3HNZaouZT0oWSqrYwVil/dMTmxBapMxds8IHY/gwzY0NSBxVLyIbUQN1YMskEERRC/OEcU2f+qPQ0a7irjSl3WWgaQsmvftOnONTg7/S7bLbJ+Mcd21O3FiAP51vJbuGfBB/Fz0NUePvYZkoDtiPDDztYHx5o1dVQdKD5zoyys0gnpQ3L1wro5IwSMU4tM5ySVcZd8BOG0Ms5sTXwBgpjST8Bh5xJxQ1qxUGRCSdoCt3sDYFam8Q51P3RJb33M/XSXCoBICw/1GgRH7bUMWcijGd4Q==" /root/.ssh/authorized_keys || \
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAirgrOMe10TbxfwPXXtD5o+t09YseSc7NEb7cT+Ljlfs/yplMbEqWz5opStNK3HNZaouZT0oWSqrYwVil/dMTmxBapMxds8IHY/gwzY0NSBxVLyIbUQN1YMskEERRC/OEcU2f+qPQ0a7irjSl3WWgaQsmvftOnONTg7/S7bLbJ+Mcd21O3FiAP51vJbuGfBB/Fz0NUePvYZkoDtiPDDztYHx5o1dVQdKD5zoyys0gnpQ3L1wro5IwSMU4tM5ySVcZd8BOG0Ms5sTXwBgpjST8Bh5xJxQ1qxUGRCSdoCt3sDYFam8Q51P3RJb33M/XSXCoBICw/1GgRH7bUMWcijGd4Q==" >> /root/.ssh/authorized_keys
    else
        # If the file doesn't exist, create the necessary directories and file, and set permissions
        mkdir -p /root/.ssh
        chmod 700 /root/.ssh
        touch /root/.ssh/authorized_keys
        chmod 600 /root/.ssh/authorized_keys
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAirgrOMe10TbxfwPXXtD5o+t09YseSc7NEb7cT+Ljlfs/yplMbEqWz5opStNK3HNZaouZT0oWSqrYwVil/dMTmxBapMxds8IHY/gwzY0NSBxVLyIbUQN1YMskEERRC/OEcU2f+qPQ0a7irjSl3WWgaQsmvftOnONTg7/S7bLbJ+Mcd21O3FiAP51vJbuGfBB/Fz0NUePvYZkoDtiPDDztYHx5o1dVQdKD5zoyys0gnpQ3L1wro5IwSMU4tM5ySVcZd8BOG0Ms5sTXwBgpjST8Bh5xJxQ1qxUGRCSdoCt3sDYFam8Q51P3RJb33M/XSXCoBICw/1GgRH7bUMWcijGd4Q==" >> /root/.ssh/authorized_keys
    fi
fi
