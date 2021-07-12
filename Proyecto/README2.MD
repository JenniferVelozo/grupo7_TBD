Enlace de Repositorio Git: https://github.com/JenniferVelozo/grupo7_TBD

Instrucciones de instalación y ejecución:

- Creación de la base de datos mediante el software pgAdmin, insertando el nombre: "voluntariadodb" y la contraseña: "admin"
- Creación de las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "dbCreate2.sql" 
- Poblar las tablas mediante el software pgAdmin y su herramienta Query tool, para esto debe cargar el archivo adjunto llamado: "loadData2.sql"
- Una vez creada la base de datos con sus tablas pobladas, se debe definir el SRID de la tabla division_regional con la siguiente sentencia en pgAdmin: SELECT UpdateGeometrySRID('public', 'division_regional', 'geom', 4326);
- Visualizar los las ubicaciones como puntos mediante el software QGis, creando una nueva conexión con PostGis. Colocar la primera capa que corresponde al mundo, luego division_regional, y finalmente voluntario y emergencia para visualizar los puntos en el mapa. 
- Ejecutar el backend mediante Gradle: VisualStudio con extensión de Gradle o por consola con el comando (ingresado en la terminal dentro de la carpeta Backend/entrega1-grupo7) ./gradlew bootRun.
- Para listar las emergencias ubicadas en la misma región de un voluntario, se utiliza el software Postman, colocando la siguiente URL: http://localhost:8080/emergencias/id_vol, donde id_vol corresponde al ID del voluntario.
- Ejecutar el frontend mediante el comando (ingresado en la terminal dentro de la carpeta Frontend/entrega1grupo7): npm run dev
- Abrir el navegador y colocar la URL http://localhost:3000/, lo cual mostrará la ventana principal de la aplicación. 
- Allí aparecerán todas las emergencias, y debe ingresar la fecha de inicio y fin para listar los voluntarios por tarea.
- Al ingresar las fechas y presionar el botón "VER" de alguna de las emergencias, se listarán todos los voluntarios por tarea (que estén en el rango de las fechas ingresadas) de acuerdo a la emergencia seleccionada.