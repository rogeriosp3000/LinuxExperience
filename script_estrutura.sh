#!/bin/bash

echo "Criando os diretorios /publico /admin /ven /sec"

mkdir /publico /adm /ven /sec

echo "Criando os grupos "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando as contas com os grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_VEN
useradd josefa -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_SEC
useradd rogerio2 -m -s /bin/bash -p $(openssl passwd -crypt Senhas123) -G GRP_SEC

echo "Permissoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script concluido"

