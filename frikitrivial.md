# 🎮FRIKITRIVIAL🎮

## Descripción
``` ruby
Hemos creado este pequeño script simulando un trivial en el que haremos una serie de preguntas, 
si todas las respuestas son correctas nos mostrará un mensaje con la enhorabuena, 
en cambio si alguna respuesta es erronea nos mostrará la respuesta correcta a esa pregunta
y al terminar nos hará un breve resumem con las que serían las respuestas correctas. 
Os dejo dos pequeños videos en el que os muestro el funcionamiento de este script,
tanto en los aciertos como en los errores.
Espero que os guste 😜
```


## Respuestas correctas ✔️

``` ruby 
🎬 Video en el que respondemos a nuestro trivial con las respuestas correctas. ✔️
```

[![ScreenShot](https://github.com/anasalasro/Linux-Script/blob/main/ImagenesLinux/captura1.png)](https://www.youtube.com/watch?v=x2lSfuU6Z44&ab_channel=anasugus)

## Respuestas erroneas ❌

``` ruby 
🎬 Video en el que respondemos a nuestro trivial con las respuestas incorrectas. ❌
```

[![ScreenShot](https://github.com/anasalasro/Linux-Script/blob/main/ImagenesLinux/captura2.png)](https://www.youtube.com/watch?v=biE2PPjJNWA&ab_channel=anasugus)


## Código del script 📝

``` ruby
#!/bin/bash
# Author: Ana Salas
# Version: 1.0
# Descripción: Frikitrivial
#Variables
#Funciones
Encabezado()
#Creamos la funcion encabezado que estará compuesta por la decoración principal del juego 
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
# En la funcion de preguntas hacemos las preguntas y guardamos las respuestas introducidas, si las respuestas introducidas son las corectas nos devolverá: Respuesta correcta 🥳 y en el caso contrario nos devolverá: Lo siento 😭, la respuesta correcta es: LaMadriguera.
# Agregamos algunos sleep para que haya una pausa para que de tiempo a leer las instrucciones y las preguntas.
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
#En la funcion premio si se cumple la condicion de que todas las preguntas son correctas nos aparecerá la enhorabuena con su decoración correspondiente y en el caso de que alguna de las respuestas sea erronea nos mostrará:  Lo siento 😭....
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
#Bloque principal en el que llamanos a todas las funciones que hemos creado
clear
Encabezado
Preguntas
Premio
