#!/bin/bash
# Script to do basic install

option=0
continue=true
while $continue
do
  echo "\e[1;31mSelecciona una opción:\e[0m"
  echo -n "\e[1;32m"
  echo "\t1. Instalar programas"
  echo "\t2. Ejecutar configuraciones"
  echo -n "\e[1;31m"
  echo "\t0. Salir"
  echo -n "\e[1;33m"
  read option
  clear
  case $option in
    1 ) sh install_software.sh;;
    2 ) sh set_configurations.sh;;
    0 ) continue=false;;
    * ) echo "Opcion incorrecta";;
  esac
  echo -n "\e[0m"
done
