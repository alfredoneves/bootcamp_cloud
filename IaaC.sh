#!/bin/bash

# directories
mkdir /publico -m 777
mkdir /adm -m 770
mkdir /ven -m 770
mkdir /sec -m 770
 
# groups
groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

# users of adm
useradd carlos -b /adm -m -e 0 -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt password123)
useradd maria -b /adm -m -e 0 -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt password123)
useradd joao -b /adm -m -e 0 -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt password123)

# users of ven
useradd debora -b /ven -m -e 0 -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt password123)
useradd sebastiana -b /ven -m -e 0 -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt password123)
useradd roberto -b /ven -m -e 0 -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt password123)

# users of sec
useradd josefina -b /sec -m -e 0 -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt password123)
useradd amanda -b /sec -m -e 0 -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt password123)
useradd rogerio -b /sec -m -e 0 -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt password123)

# changing the groups of the directories 
chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven 
chown root:GRP_SEC /sec
