#!/bin/bash

source config.sh

echo "Criando grupos..."

for group in "${groups_dirs[@]}"; do
    	IFS=":" read group _ <<< "$group"
    	groupadd "$group"
done

echo "Criando usuários..."

for user in "${users[@]}"; do
    	IFS=":" read username name groupname <<< "$user"
    	useradd -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g "$groupname" "$username"
    	passwd "$username" -e >/dev/null
done

echo "Criando diretórios..."

mkdir /publica /adm /ven /sec

echo "Definindo permissões..."

chown root:root /publica /adm /ven /sec

for group in "${groups_dirs[@]}"; do
        IFS=":" read group dir <<< "$group"
        chgrp "$group" "$dir"
	chmod 770 "$dir"
done

chmod 777 /publica
