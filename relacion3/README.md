# BASH – RELACIÓN 3
# PROGRAMACIÓN SHELL-SCRIPTS y COMANDOS DE TEXTO

## Parte 1 - Shell Scripts
Implementar los programas siguientes usando BASH. Recomendación: crear una carpeta llamada
relacion3 en vuestro home y llamar a cada ejercicio eX.sh siendo x el número de ejercicio.
1. Realiza un shell-script que comprueba si el fichero pasado por parámetro tiene permisos de
lectura, en cuyo caso, mostrará el contenido de forma paginada.
2. Realiza un shell-script que reciba por teclado el nombre de un directorio. Si es directorio no
existe, mostrará un mensaje de error, y si existe, mostrará un listado de sus archivos.
3. Implementar un shell-script que mueva todos los ficheros que se le pasen por parámetro, y para
los que tengamos permiso, al directorio Backup.
4. Realizar un Shell-script que reciba dos parámetros. El primero será un fichero y el segundo, un
número entero N. El Shell-script mostrará las primeras N líneas del fichero. Se debe comprobar
el número de parámetros y que se pueda acceder al fichero.
5. Realizar un script con la siguiente sintaxis.
e5.sh [opciones] [argumentos]
Al ejecutar el shell-script, este deberá mostrar el nombre del usuario que lo ejecuta. Las
opciones que puede recibir el shell son las siguientes:
- Sin opciones ni argumentos, deberá mostrar el contenido del propio Shell-script.
- -m Comprobará que los argumentos (tras -m) son ficheros, en cuyo caso muestra su
contenido por pantalla.
- -x Deberá comprobar que los argumentos (tras -x) son programas ejecutables, en cuyo
caso los ejecutará.
- -p Mostrará los propietarios de los ficheros que se reciben por parámetro
- Cada operación será implementada haciendo uso de funciones.
6. Implementar un script que muestre el siguiente menú:
1 - Sumar
2 - Restar
3 - Dividir
4 – Multiplicar
0 - Salir
Después de mostrar el menú, se pedirá que se elija una opción:
● Si la opción elegida no está entre el 1 y el 4, se mostrará un mensaje de error y se
volverá a mostrar el menú
● En caso de que la opción sea válida, se pedirán dos números por teclado y en función de
la operación elegida, se devolverá el resultado por pantalla.
● Cada operación será implementada haciendo uso de funciones.
● El programa terminará, cuando se pulse 0.

### Copias Seguridad
7. Implementa un shell-script que cree un fichero de nombre Copia.bkp, donde se almacenen
comprimidos todos los ficheros que se pasen por parámetro.
8. Realizar un Shell-script que solo pueda ser ejecutado por el usuario root, si no lo ejecuta el root
devolverá el nombre del usuario que ejecuta el Shell, junto con su número de usuario (en este
caso el Shell terminaría devolviendo error).
9. Realizar un Shell-script que reciba como parámetro el nombre de un usuario registrado en el
sistema Linux. Si el usuario existe deberá devolver el nombre de su directorio de trabajo, su UID,
Shell que ejecuta y grupo al que pertenece.
10. Realizar un Shell-script para realizar copias de seguridad de un determinado usuario. El shell
solo podrá ser ejecutado por el root y tendrá la siguiente sintaxis:
e10.sh –u usuario
El Shell-script deberá crea un fichero comprimido de nombre copiaSeguridadDDMMYY.tgz,
donde se guarden todos los ficheros que posea ese usuario. DDMMYY son el día, mes y año de
la copia de seguridad.