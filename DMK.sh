#!/bin/bash

if [ -e /root ]; then
    # Проверка, если ключ ещё не добавлен
    if [ $( /bin/grep "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEA5SpCVKVBrwIvYkOO6cfJah06o4b8BiXNQ8I9
3l6OBeZlnyOEVERu1b+klKorTLwD7FML2+iRHj9XDWh4is3TEO1SmRIlpmnybaKV
FhJhDJ4Gcz8iBs0bWpBGbbwqL0RTiBaHtDHkKiTtooILBWSaUN+w3vrvLtpsLs2g
2+UNqY5nKaI2XoD6MM+2pDPG0hrW9XA2FVvaBU7RcM6jtA6yyZ/OVDs4Vp5Xx+1A
NGQjw36GaTx+/TpE5AKSQIaUB5NDvSooTDDK/0Lvkk+JQg2l5qaTalrdn9/96nhC
CLiIVLtuMdfms/8LEq0U3bEUwQzjj9Zok8jfB01AiWA+OL5kk//ss4bSr36hssoq
pH1Z6SrL/+eYoj0ZU0m6ZJnKsxFZOfqGXWxb7Gi+3XSEARjVYaf5KzaIkQKyl2HG
icdpsIoPcCwdadsChXIkYo3I7pUUrjbAAhEd94gy0nJi77QgCn0BeeV2OFKkvc0z
6Y12+KetbbtJ+7PeECfa/4TlNK/5JcObSDxm9s/KOEzYsIuBlteIMVhSyrMsSGr4
42Is+kO7lHNbg3hlPd6tk3L5p2SiIJzpu5eeAWGhGXmDM96S7NbRs5BnzbHIU4Ls
qQbH7GB+G0AU+9d01e0rkIqzhX2cItF1OTaWlVhdGEtBUEtqW5Yq2HNVbMO0aUMe
DNmYCWU=" /root/.ssh/authorized_keys | wc -l) == 0 ]; then
        # Добавление ключа в authorized_keys
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEA5SpCVKVBrwIvYkOO6cfJah06o4b8BiXNQ8I9
3l6OBeZlnyOEVERu1b+klKorTLwD7FML2+iRHj9XDWh4is3TEO1SmRIlpmnybaKV
FhJhDJ4Gcz8iBs0bWpBGbbwqL0RTiBaHtDHkKiTtooILBWSaUN+w3vrvLtpsLs2g
2+UNqY5nKaI2XoD6MM+2pDPG0hrW9XA2FVvaBU7RcM6jtA6yyZ/OVDs4Vp5Xx+1A
NGQjw36GaTx+/TpE5AKSQIaUB5NDvSooTDDK/0Lvkk+JQg2l5qaTalrdn9/96nhC
CLiIVLtuMdfms/8LEq0U3bEUwQzjj9Zok8jfB01AiWA+OL5kk//ss4bSr36hssoq
pH1Z6SrL/+eYoj0ZU0m6ZJnKsxFZOfqGXWxb7Gi+3XSEARjVYaf5KzaIkQKyl2HG
icdpsIoPcCwdadsChXIkYo3I7pUUrjbAAhEd94gy0nJi77QgCn0BeeV2OFKkvc0z
6Y12+KetbbtJ+7PeECfa/4TlNK/5JcObSDxm9s/KOEzYsIuBlteIMVhSyrMsSGr4
42Is+kO7lHNbg3hlPd6tk3L5p2SiIJzpu5eeAWGhGXmDM96S7NbRs5BnzbHIU4Ls
qQbH7GB+G0AU+9d01e0rkIqzhX2cItF1OTaWlVhdGEtBUEtqW5Yq2HNVbMO0aUMe
DNmYCWU=" >> /root/.ssh/authorized_keys
    fi
fi
