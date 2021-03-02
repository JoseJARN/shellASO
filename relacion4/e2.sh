#!/bin/bash
if [ $# -ne 1 ];then
    echo "Solo debes pasarme un parámetro"
    exit 1
else
    gruposistema=$(cut -d: -f1 /etc/group | grep $1)
    gid=$(grep $1 /etc/group | cut -d: -f3)
    grupoprincipal=$(grep $gid /etc/passwd | cut -d: -f1)
    gruposecundario=$(grep $1 /etc/group | cut -d: -f4)
    if [ "$gruposistema" = "$1" ];then
        echo "El nombre del grupo es $1"
        echo "Su GID es $gid"
        echo "Los usuarios que tienen este grupo como primario son: $grupoprincipal"
        echo "Los usuarios que tienen este grupo como secundario son: $gruposecundario"
    else
        echo "El parámetro que has pasado no es un grupo"
    fi
fi
