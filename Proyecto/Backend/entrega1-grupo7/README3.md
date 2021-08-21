Enlace de Repositorio Git: https://github.com/JenniferVelozo/grupo7_TBD
Instrucciones de instalación y ejecución

- Creación de la base de datos mediante el software pgAdmin, insertando el nombre: "voluntariadodb" y la contraseña: "admin"
- Creación de las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "dbCreate.sql" 
- Además, se debe cargar el archivo "distribuidas.sql" para cargar las tablas distribuidas que se solicitan en el enunciado.
- Poblar las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "loadData.sql"
- Ejecutar el backend mediante Gradle: VisualStudio con extensión de Gradle o por consola con el comando (ingresado en la terminal dentro de la carpeta Backtend/entrega1-grupo7) ./gradlew bootRun.
- Abrir el navegador y colocar la URL http://localhost:8080//tareasmongo/voluntarios/{nombre}, donde nombre corresponde al nombre de la tarea de la cual se desea consultar los voluntarios.
