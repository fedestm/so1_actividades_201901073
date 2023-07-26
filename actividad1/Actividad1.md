# Actividad 1

| CARNET | NOMBRES | APELLIDOS |
| ----------- | ----------- | ----------- |
| 201901073| Federico David | Zet Pajoc

- - - -

## TIpos de Kernel 

### Monol&iacute;tico
Se encarga de gestionar la memoria y los procesos,es un kernel de gran tama&ntilde;o. Se comunica entre los procesos de las funciones de los drivers. Los sistemas Windows, Linux y Mac OS utilizan dicho kernel.

### Microkernel
Es un kernel que esta dise&ntilde;ado con un enfoque modular, contiene funciones b&aacute;sicas. La funci&oacute;n principal de dicho de kernel es evitar la ca&iacute;da del sistema cuando se presente un fallo, por lo que cuenta con m&oacute;dulos. El sistema Mac OS es el &uacute;nico que lo utiliza.

### H&iacute;brido
Es la combinac&iacute;on del microkernet y el kernel monol&iacute;tico, por lo que combina un kernel grande que puede ser modulado y pueden cargarse de forma din&aacute;mica otras partes del kernel. El sistema Mac Os y Linux lo utiliza.

### Nanokernel
El nanokernel es m&aacute;s peque&ntilde;o que el microkernel, es utilizado por sistemas embebidos ya que el nivel de confianza es mayor.

### Exokernel
La estructura del exokernel se encuentra de manera vertical, los n&iacute;cleos son peque&ntilde;os. Los programas se encargan de manipular al exokernel, para que utilicen los recursos de hardware necesarios en librerias.

### Unikernel
Es un kernel que se encarga de eliminar capas intermedias entre el hardware y los programas, buscando simplificar la mayor&iacute;a de procesos, usado por dispostivos con una bajo consumo de recursos.

### Anykernel
Es un kernel que buscar conservar las caracter&iacute;sticas de los kernel monol&iacute;ticos, facilitando el desarrollo de controladores.


## Diferencias
### Monol&iacute;tico
- Las funciones importantes del sistema operativos se encuentran en un bloque de c&oacute;digo.
- Todas las llamadas se realizan en el mismo espacio de memoria.
- Para agregar o modificar funcionalidades es necesario recompilar todo el kernel.
- Utilizado por Windows, Linux y Mac Os.

### Microkernel
- Tiene funcionalidades b&aacute;sicas como la gesti&oacute;n de memoria y comunicaci&oacute;n entre los procesos.
- Los servicios se ejecutan como procesos en el espacio del usuario.
- Al modificar o ampliar el sistema operativo, el kernel no es afectado.
- Utilizado por Linux.

### H&iacute;brido
- Contiene funcionalidades del kernel monol&iacute;tico y del microkernel.
- Se pueden ejecutar partes del sistema operativo en un espacio de memoeria privilegiado para aumentar el rendimiento.
- Utilizado por Mac Os.

### Nanokernel
- Es un kernel muy peque&ntilde;o.
- Esta limitado a proporcionar funciones de administraci&oacute;n como planificaci&oacute;n de procesos y comuniaci&oacute;n entre ellos.
- El kernel es personalizable y eficiente.
- Utilizado por L4 Microkernel.

### Exokernel
- El kernel solo proporciona abstracciones de hardware necesarias.
- La gesti&oacute;n de memoeria y planificaci&oacute;n de procesos es realizada por el usuario.
- Utilizado por XOK/ExOS.

### Anykernel
- Conserva las caracter&iacute;sticas de los kernel monol&iacute;ticos.
- Facilita el desarrollo de controladores.
- Mayor seguridad al usuario.
- Utilizado por NetBSD.


## User vs Kernel Mode


| DIFERENCIAS | USER | KERNEL MODE |
| ----------- | ----------- | ----------- |
| Acceso a los recursos| Para acceder a los recursos del sistema se debe realizar una llamada al sistema | El programa tiene acceso directo, sin restricciones a los recursos del sistema. |
|Interrupciones|Con una falla se produce una interrupci&oacute;n| Si se produce una interrupci&oacute;n todo el sistema deja de funcionar |
|Modos| El modo usuario se conoce como modo esclavo| Conocido como modo maestro |
|Espacio de direcciones virtuales| Todos los procesos obtienen un espacio de direcciones virtuales de forma separada | Todos los procesos comparten un &uacute;nico espacio de direcciones virtuales |
| Nivel de privilegio | Los programas tienen menos privilegios | Los programas tienen m&aacute;s privilegios en comparaci&oacute;n con el modo usuario|
| Restricciones | Necesita acceder a los programas del kernel| Puede acceder a los programas de usuario como a los del kernel|
| Referencia de memoria| Solo puede hacer referencias a la memoria asignada para el modo usuario | Capaz de hacer referencia a los modos|
| Acceso | Los programas de usuario se puden acceder y ejecutar para un sistema determinado | Solo la funcionalidad esencial funciona en este modo|