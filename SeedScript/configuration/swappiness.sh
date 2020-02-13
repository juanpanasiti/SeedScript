continue=true
while $continue
do
  echo -n "Ingrese un valor: "
  read num
  if [ $num -ge 1 ]
  then
    if [ $num -le 99 ]
    then
      #el numero está entre 1 y 99
      continue=false
    else
      echo "El número debe ser menor o igual a 99"
    fi
  else
    echo "El número debe ser mayor o igual a 1"
  fi
done

echo $num > /proc/sys/vm/swappiness
