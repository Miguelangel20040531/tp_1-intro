#!/bin/bash
CORRIENDO=true

while $CORRIENDO; do
    echo "Elija una opcion:
    1. Crear entorno
    2. Correr proceso
    3. Mostrar resultados ordenados por padron
    4. Mostrar 10 notas mas altas
    5. Buscar por padron
    6. Salir
    
    "
    read respuesta

    case $respuesta in
    1)  echo "Entorno creado"
        mkdir -p ~/EPNro1
        mkdir -p ~/EPNro1/Entrada
        mkdir -p ~/EPNro1/Salida
        mkdir -p ~/EPNro1/Procesado
        mv consolidar.sh ~/EPNro1
        ;;
    2)  bash ~/EPNro1/consolidar.sh &
        ;;
    3)  if [ -f ~/EPNro1/Salida/$FILENAME.txt ]; then
            sort -n ~/EPNro1/Salida/$FILENAME.txt
        else
            echo "No existe"
        fi
        ;;
    4)  if [ -f ~/EPNro1/Salida/$FILENAME.txt ]; then
            sort -nk5 ~/EPNro1/Salida/$FILENAME.txt | head
        else
            echo "No existe"
        fi
        ;;
    5)  echo "Ingrese el padron"
        read padron
        grep "^$padron" ~/EPNro1/Salida/$FILENAME.txt
        ;;
    6)  CORRIENDO=false
        echo "Saliendo..."
        if [ "$1" = "-d" ]; then
            echo "Borrando..."
            rm -r ~/EPNro1
        fi
        ;;
    esac
done   