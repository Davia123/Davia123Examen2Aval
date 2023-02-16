#!/bin/bash
read -p"Dame una ciudad" ciudad

suma=0
valor=0
while read -r ciudad media año consumo; do
  if [ "$ciudad" = "$media" ]; then
    suma=$((suma + valor))
    valor=$((valor + 1))
  fi
done < "Consumos.txt"

if [ $valor -eq 0 ]; then
  echo "Ciudad erronea"
else
  media=$((bc -l < "$suma / $valor"))
  printf "El consumo medio de $ciudad es " "$media" 
fi
