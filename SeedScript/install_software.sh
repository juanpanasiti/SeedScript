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
      2 ) menu_multimedia_n_streaming;;
      3 ) menu_games;;
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
    echo -n "\e[0;94m\t1.  Git\e[0m"
    check_soft "git"

    #Atom option
    echo -n "\e[0;94m\t2.  Atom\e[0m"
    echo ""
    #check_soft "atom"

    #Sublime Text option
    echo -n "\e[0;94m\t3.  Sublime Text\e[0m"
    echo ""
    #check_soft "_____"

    #Android Studio option
    echo -n "\e[0;94m\t4.  Android Studio\e[0m"
    echo ""
    #check_soft "_____"

    #Ruby on Rails option
    echo -n "\e[0;94m\t5.  Ruby on Rails\e[0m"
    echo ""
    #check_soft "ruby"

    #Dia option
    echo -n "\e[0;94m\t6.  Dia\e[0m"
    check_soft "dia"

    #Visual Studio Code option
    echo -n "\e[0;94m\t7.  Visual Studio Code\e[0m"
    echo ""
    #check_soft "dia"

    #IntelliJ IDEA Community option
    echo -n "\e[0;94m\t8.  IntelliJ IDEA Community\e[0m"
    echo ""
    #check_soft "_____"

    #Arduino IDE option
    echo -n "\e[0;94m\t9.  Arduino IDE\e[0m"
    echo ""
    #check_soft "_____"

    #PostgreSQL option
    echo -n "\e[0;94m\t10. PostgreSQL\e[0m"
    echo ""
    #check_soft "_____"

    #Postman option
    echo -n "\e[0;94m\t11. Postman\e[0m"
    echo ""
    #check_soft "_____"

    #_____ option
    #echo -n "\e[0;94m\tn. _____\e[0m"
    #echo ""
    #check_soft "_____"


    echo -n "\e[1;31m"
    echo "\t0. Salir"
    echo -n "\e[0m"
    read option
    clear
    case $option in
      1 ) sh install/git.sh;;#Git
      2 ) sh install/atom.sh;;#
      3 ) sh install/sublime_text.sh;;#
      4 ) sh install/android_studio.sh;;#
      5 ) sh install/ruby_on_rails.sh;;#
      6 ) sh install/dia.sh;;#
      7 ) sh install/visual_studio_code.sh;;#
      8 ) sh install/intellij_idea_community.sh;;#
      9 ) sh install/arduino_ide.sh;;#
      10 ) sh install/postgresql.sh;;#
      11 ) sh install/postman.sh;;#
      0 ) continue=false;;
      * ) echo "Opcion incorrecta";;
    esac
    echo -n "\e[0m"
  done
}

menu_multimedia_n_streaming()
{
  option=0
  continue=true
  while $continue
  do
    echo "\e[1;31mSelecciona un programa a instalar:\e[0m"

    #Psensor option
    echo -n "\e[0;94m\t1.  Psensor\e[0m"
    #echo ""
    check_soft "psensor"


    #Klavaro (Flathub) option
    echo -n "\e[0;94m\t2. Klavaro (Flathub)\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"


    #_____ option
    echo -n "\e[0;94m\tn. _____\e[0m"
    echo ""
    #check_soft "_____"

    #_____ option
    #echo -n "\e[0;94m\tn. _____\e[0m"
    #echo ""
    #check_soft "_____"


    echo -n "\e[1;31m"
    echo "\t0. Salir"
    echo -n "\e[0m"
    read option
    clear
    case $option in
      1 ) sh install/git.sh;;#Git
      2 ) echo "Ejecutar configuraciones";;#
      3 ) echo "Ejecutar configuraciones";;
      4 ) echo "Ejecutar configuraciones";;
      0 ) continue=false;;
      * ) echo "Opcion incorrecta";;
    esac
    echo -n "\e[0m"
  done
}

menu_games()
{
  option=0
  continue=true
  while $continue
  do
    echo "\e[1;31mSelecciona un juego a instalar:\e[0m"

    #Steam (Flathub) option
    echo -n "\e[0;94m\t1. Steam (Flathub)\e[0m"
    echo ""
    #check_soft "_____"

    #SuperTuxKart option
    echo -n "\e[0;94m\t2.  SuperTuxKart (Flathub)\e[0m"
    echo ""
    #check_soft "psensor"

    #HexGL (Flathub) option
    echo -n "\e[0;94m\t3. HexGL (Flathub)\e[0m"
    echo ""
    #check_soft "_____"

    #Minetest (Flathub) option
    echo -n "\e[0;94m\t4. Minetest (Flathub)\e[0m"
    echo ""
    #check_soft "_____"


    #Billiards (Flathub) option
    echo -n "\e[0;94m\t5. Billiards (Flathub)\e[0m"
    echo ""
    #check_soft "_____"

    #_____ option
    #echo -n "\e[0;94m\tn. _____\e[0m"
    #echo ""
    #check_soft "_____"

    echo "\e[1;31m\t0. Salir\e[0m"
    read option
    clear
    case $option in
      1 ) sh install/super_tux_kart.sh;;#SuperTuxKart (Flathub)
      2 ) sh install/steam.sh;;#Steam (Flathub)
      3 ) sh install/minetest.sh;;#Minetest (Flathub)
      4 ) sh install/billiards.sh;;#Billiards (Flathub)
      5 ) sh install/hexgl.sh;;#HexGL (Flathub)
      0 ) continue=false;;
      * ) echo "Opcion incorrecta";;
    esac
    echo -n "\e[0m"
  done
}
##################################
#Inicio del script
main_menu
