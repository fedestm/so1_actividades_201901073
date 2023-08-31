# Actividad 4

Se crea el script que contendrá la fecha y el mensaje.
~~~
#!/bin/bash
echo "Fecha: $(date +%d/%m/%Y)"
echo "Hola Mundo"
~~~

Luego se crea el archivo .service en la siguiente carpeta /etc/systemd/system, y el archivo contendrá lo siguiente.

~~~
[Unit]
Description=Fecha y Hola Mundo - Actividad 4

[Service]
Type=simple
ExecStart=/home/federico/actividad4.sh

[Install]
WantedBy=multi-user.target
~~~

Luego se ejecuta con los siguientes comandos para habilitar y ejecutar el servicio correctamente.

~~~
sudo systemctl daemon-reload
sudo systemctl enable actividad4.service
sudo systemctl start actividad4.service
~~~

Se verifica el estado del servicio con el siguiente comando.
~~~
sudo systemctl status actividad4.service
~~~