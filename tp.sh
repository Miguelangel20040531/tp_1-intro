#!/bin/bash
echo "Elija una opcion:
1 Crear entorno
2 Correr proceso
3 Mostrar resultados ordenados por padron
4 Mostrar 10 notas mas altas
5 Buscar por padron
6 Salir"
read respuesta

case $respuesta in
    1) echo "Entorno creado"
        mkdir -p EPNro1
        mkdir -p EPNro1/Entrada
        mkdir -p EPNro1/Salida
        mkdir -p EPNro1/Procesado
        ;;
esac
