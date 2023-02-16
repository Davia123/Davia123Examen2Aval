#!/bin/bash


# Obtener la media de los consumos de la ciudad
suma=0
valor=0
while read -r ciudad media consumo; do
  if [ "$ciudad" = "$1" ]; then
    suma=$((suma + valor))
    contador=$((valor + 1))
  fi
done < "Consumos.txt"

if [ $contador -eq 0 ]; then
  echo "Ciudad erronea"
  exit 1
fi
media=$((bc -l << "$suma / $valor"))
if [ $(echo "$media < 400" | bc -l) -eq 1 ]; then
  echo "ECO"
else
  echo "NO ECO"
fi
