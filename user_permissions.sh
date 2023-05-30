#!/bin/bash
#
echo "Criando diretorios..."
mkdir /Dados/publica
mkdir /Dados/adm
mkdir /Dados/ven
mkdir /Dados/sec

echo "Criando Grupos..."
groupadd G_ADM
groupadd G_VEN
groupadd G_SEC

echo "Criando Usuarios..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_ADM


useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G G_SEC

echo "Definindo Permissoes..."

chown root:G_ADM /Dados/adm
chown root:G_ADM /Dados/ven
chown root:G_ADM /Dados/sec

chmod 770 /Dados/adm
chmod 770 /Dados/ven
chmod 770 /Dados/sec
chmod 777 /Dados/publica
