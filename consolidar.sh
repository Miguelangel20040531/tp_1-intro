#!/bin/bash
echo "Ejecutando proceso en background..."
ENTRADA=~/EPNro1/Entrada
SALIDA=~/EPNro1/Salida
PROCESADO=~/EPNro1/Procesado

for archivo in "$ENTRADA"/*.txt; do
    if [ -f "$archivo" ]; then
        cat "$archivo" >> "$SALIDA/$FILENAME.txt"
        mv "$archivo" "$PROCESADO/"
    fi
done
echo "Proceso terminado"