#!/bin/bash
#Menu principal de instalacion de software
main_menu()
{
  option=0
  continue=true
  while $continue
  do
    echo "\e[1;31mSelecciona una opción:\e[0m"
    echo -n "\e[1;32m"
    echo "\t1. Configurar Git"
    echo "\t2. nada"
    echo -n "\e[1;31m"
    echo "\t0. Salir"
    echo -n "\e[0m"
    read option
    clear
    case $option in
      1 ) sh configuration/git.sh;;#Git
      2 ) echo "Ejecutar configuraciones";;
      0 ) continue=false;;
      * ) echo "Opcion incorrecta";;
    esac
    echo -n "\e[0m"
  done
}

##################################
#Inicio del script
main_menu
