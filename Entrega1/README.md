Enlace de Repositorio Git: https://github.com/JenniferVelozo/grupo7_TBD
Instrucciones de instalación y ejecución

- Creación de la base de datos mediante el software pgAdmin, insertando el nombre: "voluntariadodb" y la contraseña: "admingrupo7"
- Creación de las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "dbCreate.sql" 
- Poblar las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "loadData.sql"
- Creación de Trigger mediante el software pgAdmin y su herramienta Query tool, abriendo este ultimo especificamente en la tabla "ranking", para esto debe cargar el archivo adjunto llamado: "trigger.sql"
- Ejecutar el backend mediante Gradle: VisualStudio con extensión de Gradle o por consola con el comando (ingresado en la terminal dentro de la carpeta Backtend/entrega1-grupo7) ./gradlew bootRun.
- Ejecutar el frontend mediante el comando (ingresado en la terminal dentro de la carpeta Frontend/entrega1grupo7): npm run dev
- Abrir el navegador y colocar la URL http://localhost:3000/, lo cual mostrará la ventana principal de la aplicación.
- Debe ingresar un id de voluntario para ver todas las tareas a las que ha sido seleccionado.
- Al presionar el botón "Buscar" aparecerá una lista de tareas, las cuales puede Aceptar, Rechazar, Cancelar o Terminar. 
- Al presionar uno de los botones, la ventana se actualizará (eliminando todo el contenido) y la acción quedará realizada, la cual puede ser comprobada en la tabla log.