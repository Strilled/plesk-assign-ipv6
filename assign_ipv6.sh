#!/bin/bash

/usr/sbin/plesk db -NBe 'select d.name,ip.ip_address from domains d left join dom_param dp on d.id=dp.dom_id left join IP_Addresses ip on dp.val=ip.id where dp.param="ip_addr_id" and ip.ip_address="1.1.1.1";' | while read a b; do echo "$a - $b"; /usr/sbin/plesk bin subscription -u $a -ip "$b",'2606:4700:4700::1111' -mail-service-ip "$b",'2606:4700:4700::1111';done
