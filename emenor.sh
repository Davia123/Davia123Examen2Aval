#!/bin/bash
while read -r ciudad mes anio consumo; 
do
  sumas[$ciudad]=$((sumas[$ciudad] + consumo))
  contadores[$ciudad]=$((contadores[$ciudad] + 1))
done < "Consumos.txt"
ciudad_minima=""
for ciudad in "${sumas}"; do
  media=$((bc -l << "${sumas[$ciudad]} / ${contadores[$ciudad]}"))
 
done

//no se hacerlo
