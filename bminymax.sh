#!/bin/bash


while true; 
do
  echo "Introduce valor para obtener el consumo mínimo o máximo:"
  read valor

  if [[ $valor = "minimo" || $valor = "maximo" ]]; then
    break
  else
    echo "Inténtalo de nuevo."
  fi
done

if [[ $valor = "maximo" ]]; then
  fila=$(sort -k4 -n -r "Consumos.txt" | head -n 1)
else
  fila=$(sort -k4 -n "Consumos.txt" | head -n 1)
fi


