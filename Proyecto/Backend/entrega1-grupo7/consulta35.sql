SELECT *
FROM 
WHERE






emergencia_id

SELECT e.id, t.id, th.id, h.descrip
FROM emergencia e, tarea t, tarea_habilidad th, eme_habilidad eh, habilidad h
WHERE emergencia_id=e.id, t.2=emergencia_id, emergencia_id=eh.2, h.id=eh.id_habilidad, t.id=th.id_tarea, th.id_emehab=eh.id


SELECT e.id as 2, t.id as id_tarea, th.id as id_tarea_hab, h.descrip
FROM emergencia e, tarea0 t, tarea_habilidad th, eme_habilidad eh, habilidad h
WHERE e.id=4 and t.2=4 and eh.2=4 and h.id=eh.id and t.id=th.id_tarea and th.id_emehab=eh.id


SELECT e.id as 2, t0.id as id_tarea,  t1.id as id_tarea,  t2.id as id_tarea,  th.id as id_tarea_hab, h.descrip
FROM emergencia e, tarea0 t0, tarea1 t1, tarea2 t2, tarea_habilidad th, eme_habilidad eh, habilidad h
WHERE e.id=2 and (t0.2=2 or t1.2=2 or t2.2=2) and eh.2=2 and h.id=eh.id and 
(t0.id=th.id_tarea or t1.id=th.id_tarea or t2.id=th.id_tarea) and th.id_emehab=eh.id

INSERT INTO public.tarea (id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, 2, finicio, ffin, id_estado) VALUES (0, 'tarea_0', 'descrip_0', 18, 11, 1, '1995-09-28', '2004-12-26', 1);



SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea0 t, tarea_habilidad0 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea0 t, tarea_habilidad1 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea0 t, tarea_habilidad2 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea1 t, tarea_habilidad0 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea1 t, tarea_habilidad1 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea1 t, tarea_habilidad2 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea2 t, tarea_habilidad0 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea2 t, tarea_habilidad1 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea2 t, tarea_habilidad2 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id






INSERT INTO public.tarea0 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea0',63, 'tarea_63', 'descrip_63', 18, 11, 2, '1993-09-28', '1999-12-09', 1);
INSERT INTO public.tarea0 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea0',81, 'tarea_81', 'descrip_81', 14, 13, 2, '1918-09-5', '2004-12-26', 1);
INSERT INTO public.tarea0 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea0',9, 'tarea_9', 'descrip_9', 98, 25, 2, '2010-10-13', '2017-12-04', 1);

INSERT INTO public.tarea1 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea1',10, 'tarea_10', 'descrip_10', 8, 10, 2, '2012-11-13', '2018-12-08', 1);
INSERT INTO public.tarea1 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea1',43, 'tarea_43', 'descrip_43', 79, 18, 2, '1999-10-13', '2008-11-02', 1);
INSERT INTO public.tarea1 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea1',85, 'tarea_85', 'descrip_85', 23, 11, 2, '2002-09-13', '2010-10-03', 1);
INSERT INTO public.tarea1 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea1',79, 'tarea_79', 'descrip_79', 46, 50, 2, '2011-07-13', '2011-11-04', 1);

INSERT INTO public.tarea2 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea2', 41, 'tarea_41', 'descrip_41', 57, 11, 2, '2003-10-13', '2019-01-08', 1);
INSERT INTO public.tarea2 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea2', 53, 'tarea_53', 'descrip_53', 43, 25, 2, '2005-10-11', '2020-03-09', 1);
INSERT INTO public.tarea2 (nombre_tabla,id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) VALUES ('tarea2', 38, 'tarea_38', 'descrip_38', 32, 24, 2, '1999-03-16', '2021-02-11', 1);



/*1-3-4-5-10-12-13-15-16*/
INSERT INTO public.tarea_habilidad0 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad0',15, 1, 63);
INSERT INTO public.tarea_habilidad0 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad0',18, 3, 81);
INSERT INTO public.tarea_habilidad0 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad0',21, 4, 9);

INSERT INTO public.tarea_habilidad1 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad1',22, 5, 10);
INSERT INTO public.tarea_habilidad1 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad1',25, 10, 43);
INSERT INTO public.tarea_habilidad1 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad1',28, 12, 85);
INSERT INTO public.tarea_habilidad1 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad1',31, 13, 79);

INSERT INTO public.tarea_habilidad2 (nombre_tabla, id, id_emehab, id_tarea) VALUES ('tarea_habilidad2', 23, 13, 41);
INSERT INTO public.tarea_habilidad2 nombre_tabla,id, id_emehab, id_tarea) VALUES ('tarea_habilidad2', 26, 15, 53);
INSERT INTO public.tarea_habilidad2 (id, id_emehab, id_tarea) VALUES ('tarea_habilidad2', 29, 16, 38);