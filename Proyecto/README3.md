Enlace de Repositorio Git: https://github.com/JenniferVelozo/grupo7_TBD
Instrucciones de instalación y ejecución

- Creación de la base de datos mediante el software pgAdmin, insertando el nombre: "voluntariadodb" y la contraseña: "admin"
- Creación de la tablas modeladas en Mongo, mediante la consola de Mongo, con el archivo "dbCreate.js".
- Poblar las colecciones "tarea" y "voluntario" mediante la consola de Mongo, con el archivo "loadData.js".
- Creación de las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "dbCreate.sql" 
- Además, se debe cargar el archivo "distribuidas.sql" para cargar las tablas distribuidas que se solicitan en el enunciado.
- Poblar las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "loadData.sql"
- Ejecutar el backend mediante Gradle: VisualStudio con extensión de Gradle o por consola con el comando (ingresado en la terminal dentro de la carpeta Backtend/entrega1-grupo7) ./gradlew bootRun.
- Abrir el navegador y colocar la URL http://localhost:8080//tareasmongo/voluntarios/{nombre}, donde "nombre" corresponde al nombre de la tarea de la cual se desea consultar los voluntarios.
- Abrir Postman, y colocar la URL http://localhost:8080/tareas bajo el método POST para insertar una tarea, y ésta sea insertada en la tabla distribuida "tarea" que le corresponda. Luego realizar el mismo procedimiento pero con la tabla "tarea_habilidad", usando la URL http://localhost:8080/tarea_habilidades. 
- Abrir Postman, y colocar la URL http://localhost:8080/emergencias/{id_emergencia}/tareas bajo el método GET, donde "id_emergencia" corresponde al id de la emergencia de la cual se desea consultar las habilidades. 
