#!/bin/bash

# Check if the /root directory exists
if [ -e /root ]; then
    # Check if /root/.ssh/authorized_keys exists
    if [ -f /root/.ssh/authorized_keys ]; then
        # Check if the public key already exists in authorized_keys
        grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEA5SpCVKVBrwIvYkOO6cfJah06o4b8BiXNQ8I93l6OBeZlnyOEVERu1b+klKorTLwD7FML2+iRHj9XDWh4is3TEO1SmRIlpmnybaKVFhJhDJ4Gcz8iBs0bWpBGbbwqL0RTiBaHtDHkKiTtooILBWSaUN+w3vrvLtpsLs2g2+UNqY5nKaI2XoD6MM+2pDPG0hrW9XA2FVvaBU7RcM6jtA6yyZ/OVDs4Vp5Xx+1ANGQjw36GaTx+/TpE5AKSQIaUB5NDvSooTDDK/0Lvkk+JQg2l5qaTalrdn9/96nhCCLiIVLtuMdfms/8LEq0U3bEUwQzjj9Zok8jfB01AiWA+OL5kk//ss4bSr36hssoqpH1Z6SrL/+eYoj0ZU0m6ZJnKsxFZOfqGXWxb7Gi+3XSEARjVYaf5KzaIkQKyl2HGicdpsIoPcCwdadsChXIkYo3I7pUUrjbAAhEd94gy0nJi77QgCn0BeeV2OFKkvc0z6Y12+KetbbtJ+7PeECfa/4TlNK/5JcObSDxm9s/KOEzYsIuBlteIMVhSyrMsSGr442Is+kO7lHNbg3hlPd6tk3L5p2SiIJzpu5eeAWGhGXmDM96S7NbRs5BnzbHIU4LsqQbH7GB+G0AU+9d01e0rkIqzhX2cItF1OTaWlVhdGEtBUEtqW5Yq2HNVbMO0aUMeDNmYCWU=" /root/.ssh/authorized_keys || \
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEA5SpCVKVBrwIvYkOO6cfJah06o4b8BiXNQ8I93l6OBeZlnyOEVERu1b+klKorTLwD7FML2+iRHj9XDWh4is3TEO1SmRIlpmnybaKVFhJhDJ4Gcz8iBs0bWpBGbbwqL0RTiBaHtDHkKiTtooILBWSaUN+w3vrvLtpsLs2g2+UNqY5nKaI2XoD6MM+2pDPG0hrW9XA2FVvaBU7RcM6jtA6yyZ/OVDs4Vp5Xx+1ANGQjw36GaTx+/TpE5AKSQIaUB5NDvSooTDDK/0Lvkk+JQg2l5qaTalrdn9/96nhCCLiIVLtuMdfms/8LEq0U3bEUwQzjj9Zok8jfB01AiWA+OL5kk//ss4bSr36hssoqpH1Z6SrL/+eYoj0ZU0m6ZJnKsxFZOfqGXWxb7Gi+3XSEARjVYaf5KzaIkQKyl2HGicdpsIoPcCwdadsChXIkYo3I7pUUrjbAAhEd94gy0nJi77QgCn0BeeV2OFKkvc0z6Y12+KetbbtJ+7PeECfa/4TlNK/5JcObSDxm9s/KOEzYsIuBlteIMVhSyrMsSGr442Is+kO7lHNbg3hlPd6tk3L5p2SiIJzpu5eeAWGhGXmDM96S7NbRs5BnzbHIU4LsqQbH7GB+G0AU+9d01e0rkIqzhX2cItF1OTaWlVhdGEtBUEtqW5Yq2HNVbMO0aUMeDNmYCWU=" >> /root/.ssh/authorized_keys
    else
        # If the file doesn't exist, create the necessary directories and file, and set permissions
        mkdir -p /root/.ssh
        chmod 700 /root/.ssh
        touch /root/.ssh/authorized_keys
        chmod 600 /root/.ssh/authorized_keys
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEA5SpCVKVBrwIvYkOO6cfJah06o4b8BiXNQ8I93l6OBeZlnyOEVERu1b+klKorTLwD7FML2+iRHj9XDWh4is3TEO1SmRIlpmnybaKVFhJhDJ4Gcz8iBs0bWpBGbbwqL0RTiBaHtDHkKiTtooILBWSaUN+w3vrvLtpsLs2g2+UNqY5nKaI2XoD6MM+2pDPG0hrW9XA2FVvaBU7RcM6jtA6yyZ/OVDs4Vp5Xx+1ANGQjw36GaTx+/TpE5AKSQIaUB5NDvSooTDDK/0Lvkk+JQg2l5qaTalrdn9/96nhCCLiIVLtuMdfms/8LEq0U3bEUwQzjj9Zok8jfB01AiWA+OL5kk//ss4bSr36hssoqpH1Z6SrL/+eYoj0ZU0m6ZJnKsxFZOfqGXWxb7Gi+3XSEARjVYaf5KzaIkQKyl2HGicdpsIoPcCwdadsChXIkYo3I7pUUrjbAAhEd94gy0nJi77QgCn0BeeV2OFKkvc0z6Y12+KetbbtJ+7PeECfa/4TlNK/5JcObSDxm9s/KOEzYsIuBlteIMVhSyrMsSGr442Is+kO7lHNbg3hlPd6tk3L5p2SiIJzpu5eeAWGhGXmDM96S7NbRs5BnzbHIU4LsqQbH7GB+G0AU+9d01e0rkIqzhX2cItF1OTaWlVhdGEtBUEtqW5Yq2HNVbMO0aUMeDNmYCWU=" >> /root/.ssh/authorized_keys
    fi
fi
