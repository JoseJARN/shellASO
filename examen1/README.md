## Examen 1
Realizar un script llamado examen.sh que reciba 1 o más parámetros con las siguientes posibilidades:

- Si solo recibe un parámetro, pueden darse los siguientes casos:
    - si el parámetro es fichero me indicará su número de líneas
    - si el parámetro es directorio y tiene menos de X ficheros en su interior se borrará por completo (pidiendo confirmación antes de borrar). El número X ha de preguntarse al usuario.
    - si el parámetro es un nombre de usuario del sistema me devolverá su identificador de usuario, su identificador de grupo y su carpeta home.
- Si recibe más de un parámetro: 
    - para cada uno de ellos se indicará si es un fichero y, si es así, se cambiará su nombre a usuario-fichero, siendo usuario el nombre del usuario que ejecuta el script (ejemplo: fich1, pasará a llamarse vanesa-fich1).
