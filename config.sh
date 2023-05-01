#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
        echo "Esse script deve ser executado pelo root ou por um sudoer" >&2
        exit 1
fi

groups_dirs=(
    "GRP_ADM:/adm"
    "GRP_VEN:/ven"
    "GRP_SEC:/sec"
)

users=(
    "carlos:Carlos:GRP_ADM"
    "maria:Maria:GRP_ADM"
    "joao:João:GRP_ADM"
    "debora:Débora:GRP_VEN"
    "sebastiana:Sebastiana:GRP_VEN"
    "roberto:Roberto:GRP_VEN"
    "josefina:Josefina:GRP_SEC"
    "amanda:Amanda:GRP_SEC"
    "rogerio:Rogério:GRP_SEC"
)
