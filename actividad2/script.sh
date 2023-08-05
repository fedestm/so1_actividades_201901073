#!/bin/bash

# Federico David Zet Pajoc - 201901073

#Se obtiene los datos usando curl $1 es el usuario que se enviara
#La entrada debe ser ./script sh fedestm
URL=$(curl -s "https://api.github.com/users/$1")

#Funcion para obtener valores de json
regex_json() {
    local json="$1"
    local llave="$2"
    local valor=$(echo "$json" | grep -o "\"$llave\": *\"[^\"]*\"" | sed -E 's/"'"$llave"'": *"([^"]*)"/\1/')
    if [ -z "$valor" ]; then
        valor=$(echo "$json" | grep -o "\"$llave\": *[0-9]*" | sed -E 's/"'"$llave"'": *([0-9]*)/\1/')
    fi
    echo $valor
}

#Variables donde se almacenan los valores que se quieran obtener del json
USER=$(regex_json "$URL" "login")
ID=$(regex_json "$URL" "id")
CREATED_AT=$(regex_json "$URL" "created_at")

echo "Hola $USER. User ID: $ID. Cuenta fue creada el: $CREATED_AT."

#Variable para obtener la fecha
FECHA=$(date +%Y-%m-%d)
#Se crea un directorio en /tmp/<FECHA>
mkdir -p "/tmp/$FECHA"
#Se escriben los datos del usuario en el archivo saludos.log
echo "Hola $USER. User ID. $ID. Cuenta fue creada el: $CREATED_AT." >> "/tmp/$FECHA/saludos.log"


#                       Configuración de cronjob
# Se debe ingresar el comando crontab -e para crear un nuevo archivo cronjob
# Al ejecutarlo nos abrira un editor con Nano, al final de dicho archivo se agrega lo siguiente
# */5 * * * * /home/federico/Documentos/Github/so1_actividades_201901073/actividad2/script.sh fedestm
# Este comando ejecutara el script cada 5 minutos
# Para verificar que se creo el cronjob se ingresa crontab -l