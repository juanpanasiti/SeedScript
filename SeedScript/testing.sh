echo "El caracter de escape <esc> puede ser obtenido de las siguientes formas:"
echo "  \e"
echo "  \033"
echo "  \x1b"
echo "Se utiliza con el corchete [ seguido del código de formato (FormatCode) seguido de una m"
printf "el formato general sería:"
echo "  \e[FormatCodem"

printf "\e[31m" "\e"  "FormatCode"
