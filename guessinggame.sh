echo "guess how many files there are -Adivina cuantos archivos hay"

read respuesta

cuanto=$(ls -1 | wc -l)


while [[ $respuesta -ne $cuanto ]]
do
    let diferencia=$respuesta-$cuanto
    diferencia=$(echo ${diferencia#-})
#echo $diferencia
    if [[ $diferencia -le 10 ]]
    then
	echo "You are close: warm. To less than 10 / Tibio, muy cerca. Está a menos de 10 "
    fi

        if [[ $diferencia -le 5 ]]
    then
	echo "You are close: hot. More than 5 / Caliente, muy cerca. Está a menos de 5 "
    fi

    if [[ $diferencia -ge 10 ]]
    then
	echo "It's too far, cold: Less than 15/ Frío, muy lejos. Más de 15"
    fi
    echo "- "
    echo "Error Try again:  / Intenta de nuevo"
    read respuesta
done
echo "Congratulations you guessed it / Felicidades "





