#!/bin/bash

while true; 
do
  echo "Introduzca una ciudad (Valencia, Barcelona o Madrid):"
  read ciudad
  filas=$(grep "^$ciudad " Consumos.txt)

  if [[ -n $filas ]]; then
    total=0
    while read -r fila; 
    do
      consumo=$(($consumo + $(echo "$fila" | awk '{print $NF}'))
    done <<< "$filas"
    echo "El total de consumo de $ciudad es: $consumo"
    break
  else
    echo "Esta ciudad no. Inténtalo otra vez."
  fi
done