#!/bin/bash

# Obtener la lista de submódulos
submodules=$(git config --file .gitmodules --name-only --get-regexp path | sed 's/submodule\.//; s/\.path//')

# Eliminar referencia a cada submódulo y mover los archivos al repositorio principal
for submodule in $submodules; do
    git rm --cached "$submodule"  # Eliminar referencia al submódulo HEAD (sin barra al final)
    rm -rf "$submodule/.git"      # Asegúrate de tener una copia de seguridad
done

# Eliminar el archivo .gitmodules
git rm .gitmodules  # Si tienes más de un submódulo, edita este archivo en lugar de eliminarlo