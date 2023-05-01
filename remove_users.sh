#!/bin/bash

source config.sh

for user in "${users[@]}"; do
	IFS=":" read username _ _ <<< "$user"
    	userdel -r -f "$username" 2>/dev/null
done

for group_dir in "${groups_dirs[@]}"; do
    	IFS=":" read group_name dir_name <<< "$group_dir"
    	groupdel -f "$group_name" 2>/dev/null
    	rm -rf "/$dir_name"
done

rm -rf /publica

echo "Usuários, grupos e diretórios foram removidos"
