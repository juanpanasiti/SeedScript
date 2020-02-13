#!/bin/bash
# Script to do basic insta
#Menu principal de instalacion de software
main_menu()
{
  option=0
  continue=true
  while $continue
  do
    echo "\e[1;31mSelecciona un programa a instalar:\e[0m"
    echo -n "\e[1;32m"
    echo "\t1. Programas y utilidades para programación"
    echo "\t2. Multimedia y Streaming"
    echo "\t3. Juegos"
    echo "\t4. Otros programas"
    echo -n "\e[1;31m"
    echo "\t0. Salir"
    echo -n "\e[0m"
    read option
    clear
    case $option in
      1 ) menu_dev_software;;
      2 ) echo "Ejecutar configuraciones";;
      3 ) echo "Ejecutar configuraciones";;
      4 ) echo "Ejecutar configuraciones";;
      0 ) continue=false;;
      * ) echo "Opcion incorrecta";;
    esac
    echo -n "\e[0m"
  done
}
check_soft()
{
  com=$1
  outputCom=$(type -p $com)
  n1=${#outputCom}
  n2=${#com}
  diff=$(( n1-n2 ))
  #si la diferencia es 25 hay error, si es 30 está OK
  if [ $diff -eq 30 ]
  then
    echo "\e[1;32m - INSTALADO\e[0m"
  else
    echo "\e[1;5;31m - NO INSTALADO\e[0m"
  fi
}
#Menu de "Programas y utilidades para programación"
menu_dev_software()
{
  option=0
  continue=true
  while $continue
  do
    echo "\e[1;31mSelecciona un programa a instalar:\e[0m"

    #Git Option
    echo -n "\e[0;94m\t1. Git\e[0m"
    check_soft "git"

    #Atom option
    echo -n "\e[0;94m\t2. Atom\e[0m"
    echo ""
    #check_soft "atom"

    #Rails option
    echo -n "\e[0;94m\t3. Rails\e[0m"
    echo ""
    #check_soft "rails"

    #Ruby option
    echo -n "\e[0;94m\t4. Ruby\e[0m"
    echo ""
    #check_soft "ruby"

    #Dia option
    echo -n "\e[0;94m\t5. Dia\e[0m"
    check_soft "dia"

    #_____ option
    #echo -n "\e[0;94m\tn. _____\e[0m"
    #check_soft "_____"

    echo -n "\e[1;31m"
    echo "\t0. Salir"
    echo -n "\e[0m"
    read option
    clear
    case $option in
      1 ) menu_dev_software;;
      2 ) echo "Ejecutar configuraciones";;
      3 ) echo "Ejecutar configuraciones";;
      4 ) echo "Ejecutar configuraciones";;
      0 ) continue=false;;
      * ) echo "Opcion incorrecta";;
    esac
    echo -n "\e[0m"
  done
}
##################################
#Inicio del script
main_menu
