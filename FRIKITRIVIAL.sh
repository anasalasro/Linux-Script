#!/bin/bash
# Author: Ana Salas
# Version: 1.0
# Descripción: Frikitrivial
#Variables
#Funciones
Encabezado()
{    
    echo "★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★"
    echo
    echo "                                   BIENVENIDOS AL FRIKITRIVIAL"
    echo
    echo "★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★"
    echo
    sleep 1
    echo "Soy el típico juego de preguntas y respuestas 😉"
    echo
    sleep 1
    echo "Si aciertas todas las preguntas, te concederé el título de Friki del universo."
    echo
    sleep 2
    read -p "Pulse INTRO para comenzar 👇" intro
    echo
}

Preguntas()
{
    read -p "¿Cómo se llama la casa donde viven los Weasley? MansiónWeasley, LaMadriguera, CasadeLosWeasley, Hogsmeade ➺  " respuesta1
    echo

    if [ "$respuesta1" = "LaMadriguera" ]
    then
        echo "Respuesta correcta 🥳"
        echo
    else
        echo "Lo siento 😭, la respuesta correcta es: LaMadriguera."
        echo
    fi

    sleep 2
    echo "Pasemos a la siguiente pregunta: "
    echo
    sleep 2
    read -p "¿Quién dirigió Pesadilla antes de Navidad? HenrySelick, JhonnyDeep, TimBurton, JimHenson ➺  " respuesta2
    echo

    if [ "$respuesta2" = "TimBurton" ]
    then
        echo "Respuesta correcta 🥳"
        echo
    else
        echo "Lo siento 😭, la respuesta correcta es: TimBurton."
        echo
    fi

    sleep 2
    echo "Pasemos a la última pregunta: "
    echo
    read -p "En Dragon Ball ¿Quién derrotó a Cell? Goku, Trunks, Vegetta, Gohan ➺  " respuesta3
    echo

    if [ "$respuesta3" = "Gohan" ]
    then
        echo "Respuesta correcta 🥳"
        echo
    else
        echo "Lo siento 😭, la respuesta correcta es: Gohan."
        echo
    
    fi
    sleep 2
}

Premio()
{
    if [ "$respuesta1" = "LaMadriguera" ] && [ "$respuesta2" = "TimBurton" ]  && [ "$respuesta3" = "Gohan" ]
    
    then
        echo "★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★"
        echo
        echo "                                         !!ENHORABUENA!!"
        echo
        echo "                                Eres un pequeño Friki del universo."
        echo
        echo "                                       🥳🥳🥳🥳🥳🥳🥳🥳"
        echo
        echo "★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★゜・。。・゜゜・。。・゜☆゜・。。・゜゜・。。・゜★"
        echo
    else
        echo "Las respuestas correctas son LaMadriguera, TimBurton, Gohan "
        echo "Lo siento 😭 "
        echo "NO eres un pequeño Friki del universo."
        echo
    fi
}
#Bloque principal
clear
Encabezado
Preguntas
Premio
