#!/bin/bash

consumos
decreciente


while read -r ciudad media año consumo; 
do
  if [ "$año" == "2022" ]; then
    if [ -z "${consumos[$ciudad]}" ]; then
      consumos[$ciudad]=$consumo
    else
      if [ "${consumos[$ciudad]}" -ge "$consumo" ]; then
        decreciente[$ciudad]=1
      fi
      consumos[$ciudad]=$consumo
    fi
  fi
done < "Consumos.txt"

# Mostrar las ciudades con consumo decreciente
for ciudad in Valencia Madrid Barcelona; do
  if [ "${decreciente[$ciudad]}" == "1" ]; then
    echo "$ciudad"
  fi
done
