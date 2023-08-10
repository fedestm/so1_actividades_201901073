# Actividad 3

| CARNET | NOMBRES | APELLIDOS |
| ----------- | ----------- | ----------- |
| 201901073| Federico David | Zet Pajoc

- - - -


## Parte 1: Gestión de Usuarios

### Para la ejecución de los comandos se debe tener permisos de super usuario.

1. Creación de Usuarios

Comandos para crear `usuario1`, `usuario2` y `usuario3`
~~~
add user usuario1
add user usuario2
add user usuario3
~~~
2. Asignación de Contraseñas
~~~
passwd nombre_usuario
~~~
3. Información de usuarios.
~~~
Comando: id nombre_usuario

Información de usuario1
uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)

Información de usuario2
uid=1002(usuario2) gid=1002(usuario2) grupos=1002(usuario2)

Información de usuario3
uid=1003(usuario3) gid=1003(usuario3) grupos=1003(usuario3)           
~~~

4. Eliminación de usuarios

Se elimina el usuario pero se conserva el usuario
~~~
userdel usuario3
~~~


## Parte 2: Gestión de Grupos

1. Creación de Grupos

Comandos para crear `grupo1` y `grupo2`.

~~~
groupadd grupo1
groupadd grupo2
~~~

2. Agregar usuarios

~~~
usermod -aG grupo1 usuario1
usermod -aG grupo2 usuario2
~~~

3. Verificación de membresía
Se verifica si los usuarios fueron agrego correctamente a los grupos asignados

~~~
groups nombre_usuario


Información de grupo1
usuario1 : usuario1 grupo1

Información de grupo2
usuario2 : usuario2 grupo2
~~~

4. Eliminar grupo

~~~
grupodel grupo2
~~~

## Parte 3: Gestión de Permisos

1. Creación de Archivos y Directorios

Se accede como usuario 1
~~~
su usuario1
~~~

Se debe mover al directorio raiz del usuario

~~~
cd ~
~~~

No se agrega sudo al inicio de los comandos porque el usuario es un usuario regular.

Se crea archivo en raiz de usuario y directorio
~~~
touch ~/archivo1.txt
echo "Archivo 1" >> ~/archivo1.txt

mkdir ~/directorio1
touch ~/directorio1/archivo2.txt
echo "Archivo 2" >> ~/directorio1/archivo2.txt
~~~

2. Verificar permisos

Permisos de archivo1.txt
~~~
ls -l archivo1.txt

Salida:
-rw-rw-r-- 1 usuario1 usuario1 10 ago  9 21:32 archivo1.txt
~~~

Permisos de directorio
~~~
ls -ld directorio1

Salida:
drwxrwxr-x 2 usuario1 usuario1 4096 ago  9 21:36 directorio1
~~~

3. Modificación de permisos usando `chmod` con Modo Número

Cambio de permisos en archivo1.txt para usuario1.txt

- 6: rw- Leer y escribir
- 4: r-- Grupo puede leer
- 0: Sin permisos

~~~
chmod 640 archivo1.txt
~~~

4. Modificar Permisos usando `chmod` con Modo Simbólico

Se agrega permiso de ejecución al propietario del archivo2.txt

~~~
chmod u+x directorio1/archivo2.txt
~~~

5. Cambiar el Grupo Propietario

Se cambia el grupo propietario de archivo2.txt a grupo1.

~~~
chown :grupo1 directorio1/archivo2.txt
~~~

6. Configurar Permisos de Directorio

Se cambian los permisos del directorio 1 para que solo el propietario pueda ingresar, el grupo puede lista productos pero no entrar, y los demás no pueden hacer nada.

- 7: rwx Lectura, escritura y ejecución para propietario
- 5: r-x Lectura para grupo
- 0: Sin permisos

~~~
chmod 750 directorio1
~~~


7. Comprobación de Acceso

Se valida el acceso como usuario2 al archivo1.txt y el archivo2.txt que esta en directorio1.

Se accede como usuario2
~~~
su usuario2
cd ~
cat /home/usuario1/archivo1.txt
cat: /home/usuario1/archivo1.txt: Permiso denegado
~~~

8. Verificación Final
Se verifica los permisos y propietarios de los archivos.

Verificación de archivo1.txt

~~~
sudo ls -l /home/usuario1/archivo1.txt

-rw-r----- 1 usuario1 usuario1 10 ago  9 21:32 /home/usuario1/archivo1.txt
~~~

Verificación de archivo2.txt

~~~
sudo ls -l /home/usuario1/directorio1/archivo2.txt

-rwxrw-r-- 1 usuario1 grupo1 10 ago  9 21:36 /home/usuario1/directorio1/archivo2.txt
~~~

Verificación de directorio1
~~~
sudo ls -ld /home/usuario1/directorio1

drwxr-x--- 2 usuario1 usuario1 4096 ago  9 21:36 /home/usuario1/directorio1
~~~

### ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?
Para que cada usuario tenga un rol específico, evitando acceso a recursos confidenciales.

### ¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?
El comando su permite cambiar de usuario.