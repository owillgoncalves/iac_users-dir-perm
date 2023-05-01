#!/bin/bash

source config.sh

echo "Criando grupos e diretórios e definindo permissões..."

for group_dir in "${groups_dirs[@]}"; do
    	IFS=":" read group dir <<< "$group_dir"
    	groupadd "$group"
	mkdir "$dir"
	chown root:root "$dir"
	chgrp "$group" "$dir"
	chmod 770 "$dir"
done

mkdir /publica
chown root:root /publica
chmod 777 /publica

echo "Criando usuários..."

for user in "${users[@]}"; do
    	IFS=":" read username name groupname <<< "$user"
    	useradd -m -s /bin/bash -c "$name" -p $(openssl passwd -6 Senha123) -g "$groupname" "$username"
    	passwd "$username" -e >/dev/null
done
