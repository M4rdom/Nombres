#!/bin/bash

# Verifica si se proporcionó un archivo como argumento
if [ $# -eq 0 ]; then
  echo "Por favor, proporciona el nombre del archivo como argumento."
  exit 1
fi

# Comprueba si el archivo existe
if [ ! -f $1 ]; then
  echo "El archivo $1 no existe."
  exit 1
fi

# Utiliza el comando sort y uniq para eliminar las líneas duplicadas
sort $1 | uniq > temp.txt

# Reemplaza el archivo original con el archivo temporal
mv temp.txt $1

echo "Las líneas duplicadas se han eliminado correctamente."