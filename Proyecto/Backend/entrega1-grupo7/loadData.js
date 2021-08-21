+print("Cargando datos ...");
db.tarea.insertMany([
    {"nombre": "tarea_1", "descrip": "descrip_1", "cant_vol_requeridos": 5, "cant_vol_inscritos": 6, "id_emergencia": 1, "finicio": new Date(2021,02,03), "ffin": new Date(2021,03,01), "id_estado": 0},
    {"nombre": "tarea_2", "descrip": "descrip_2", "cant_vol_requeridos": 10, "cant_vol_inscritos": 5, "id_emergencia": 6, "finicio": new Date(2021,02,12), "ffin": new Date(2022,03,01), "id_estado": 1},
    {"nombre": "tarea_3", "descrip": "descrip_3", "cant_vol_requeridos": 15, "cant_vol_inscritos": 4, "id_emergencia": 2, "finicio": new Date(2003,04,01), "ffin": new Date(2010,09,11), "id_estado": 2},
    {"nombre": "tarea_4", "descrip": "descrip_4", "cant_vol_requeridos": 32, "cant_vol_inscritos": 7, "id_emergencia": 7, "finicio": new Date(1998,07,12), "ffin": new Date(2000,08,14), "id_estado": 0},
    {"nombre": "tarea_5", "descrip": "descrip_5", "cant_vol_requeridos": 44, "cant_vol_inscritos": 4, "id_emergencia": 4, "finicio": new Date(2021,04,4), "ffin": new Date(2022,07,04), "id_estado": 2},
    {"nombre": "tarea_6", "descrip": "descrip_6", "cant_vol_requeridos": 60, "cant_vol_inscritos": 25, "id_emergencia": 6, "finicio": new Date(2001,02,22), "ffin": new Date(2015,07,01), "id_estado": 1},
    {"nombre": "tarea_7", "descrip": "descrip_7", "cant_vol_requeridos": 54, "cant_vol_inscritos": 5, "id_emergencia": 3, "finicio": new Date(1999,05,21), "ffin": new Date(2010,12,31), "id_estado": 2},
    {"nombre": "tarea_8", "descrip": "descrip_8", "cant_vol_requeridos": 19, "cant_vol_inscritos": 3, "id_emergencia": 4, "finicio": new Date(2005,10,06), "ffin": new Date(2022,11,03), "id_estado": 1},
    {"nombre": "tarea_9", "descrip": "descrip_9", "cant_vol_requeridos": 90, "cant_vol_inscritos": 58, "id_emergencia": 3, "finicio": new Date(2003,07,21), "ffin": new Date(2020,03,02), "id_estado": 2},
    {"nombre": "tarea_10", "descrip": "descrip_10", "cant_vol_requeridos": 22, "cant_vol_inscritos": 1, "id_emergencia": 1, "finicio": new Date(2020,01,22), "ffin": new Date(2021,09,30), "id_estado": 1},
]);



db.voluntario.insertMany([
    {"nombre": "Juan", "fnacimiento": new Date(2001,02,12), "nombreTarea": "tarea_1"}, 
    {"nombre": "Fernando", "fnacimiento": new Date(2000,02,11), "nombreTarea": "tarea_2"},
    {"nombre": "Luis", "fnacimiento": new Date(2001,12,12), "nombreTarea": "tarea_1"},
    {"nombre": "Luciano", "fnacimiento": new Date(1998,12,05), "nombreTarea": "tarea_2"},
    {"nombre": "Aylin", "fnacimiento": new Date(1998,05,05), "nombreTarea": "tarea_3"},
    {"nombre": "Andres", "fnacimiento": new Date(2001,04,12), "nombreTarea": "tarea_3"},
    {"nombre": "Diego", "fnacimiento": new Date(2020,02,12), "nombreTarea": "tarea_10"},
    {"nombre": "Daniel", "fnacimiento": new Date(1999,02,28), "nombreTarea": "tarea_9"},
    {"nombre": "Arturo", "fnacimiento": new Date(2011,02,12), "nombreTarea": "tarea_10"},
    {"nombre": "Diega", "fnacimiento": new Date(2000,05,12), "nombreTarea": "tarea_3"},
    {"nombre": "Ignacio", "fnacimiento": new Date(1997,08,01), "nombreTarea": "tarea_1"},
    {"nombre": "Andrea", "fnacimiento": new Date(1998,05,13), "nombreTarea": "tarea_1"},
    {"nombre": "Laura", "fnacimiento": new Date(2005,11,05), "nombreTarea": "tarea_7"},
    {"nombre": "Patricio", "fnacimiento": new Date(1999,05,07), "nombreTarea": "tarea_8"},

]);
    