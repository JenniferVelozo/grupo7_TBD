-------- Consulta 1 --------
-- escultura más cara vendida por galería en el último mes
-- Observacines: como producto tiene un atributo 'estado', para que esté vendido, dicho atributo debe ser igual a 1 
SELECT DISTINCT MAX(producto.precio) as precio_maximo, producto.nombre as nombre_producto, galeria.nombre as nombre_galeria
FROM producto, tipo, galeria, venta
WHERE tipo.nombre = 'escultura' AND producto.estado = 1 AND tipo.id = producto.id_tipo AND producto.id_venta = venta.id AND producto.id_galeria = galeria.id AND venta.fecha BETWEEN '2021-04-01' AND '2021-04-30'
GROUP BY producto.nombre, galeria.nombre;


-------- Consulta 2 --------
-- pintura más económica vendida el año pasado
-- Observaciones: el tipo de id 2 corresponde a pintura
SELECT DISTINCT MIN(producto.precio) as precio_minimo
FROM producto, venta, tipo
WHERE producto.estado = 1 AND tipo.nombre = 'pintura' AND tipo.id = producto.id_tipo AND producto.id_venta = venta.id AND venta.fecha BETWEEN '2020-01-01' AND '2020-12-31';
    
-------- Consulta 3 --------
-- vendedor con más ventas por galería
--este funca--
SELECT DISTINCT nombre_galeria as nombre_galeria, MAX(mayor_ventas) as mayor_ventas FROM (
    SELECT COUNT(venta.id_vendedor) as mayor_ventas, vendedor.nombre as nombre_vendedor, galeria.nombre as nombre_galeria
    FROM venta, vendedor, galeria
    WHERE venta.id_vendedor = vendedor.id AND vendedor.id_galeria = galeria.id AND mayor_ventas = (SELECT MAX(mayor_ventas) FROM venta)
    GROUP BY galeria.nombre, vendedor.nombre)
venta, vendedor, galeria
GROUP BY nombre_galeria, mayor_ventas, nombre_vendedor
ORDER BY mayor_ventas DESC;


SELECT cant_cant_vol FROM (
    SELECT COUNT(vt.id_vendedor) cant_cant_vol
    FROM venta vt, vendedor vn, galeria g
    WHERE vn.id = vt.id_vendedor AND vn.id_galeria = g.id 
    GROUP BY g.id
) vt

select max(cant_vol) from (
    select a.id_emergencia, count(c.id) cant_vol
    from tarea a, ranking b, voluntario c
    where a.id = b.id_tarea
    and b.id_voluntario=c.id
    group by a.id_emergencia
) a


SELECT COUNT(venta.id_vendedor) as mayor_ventas, vendedor.nombre as nombre_vendedor, galeria.nombre as nombre_galeria
    FROM venta, vendedor, galeria
    WHERE venta.id_vendedor = vendedor.id AND vendedor.id_galeria = galeria.id 
    GROUP BY galeria.nombre, vendedor.nombre
	HAVING COUNT(venta.id_vendedor) = (SELECT MAX(mayor_ventas) as max_mayor_ventas
										FROM(
			                                SELECT vd.nombre, COUNT(vt.id_vendedor) as mayor_ventas
											FROM venta as vt, vendedor as vd
											WHERE vt.id_vendedor = vd.id
											GROUP BY vd.nombre)as foo);

--este si que si--
SELECT nombre_galeria, mayor_ventas_real
FROM
(
    SELECT galeria_id, MAX(mayor_ventas) as mayor_ventas_real
    FROM
    (
        SELECT COUNT(venta.id_vendedor) as mayor_ventas, vendedor.nombre as nombre_vendedor, galeria.id as galeria_id
        FROM venta, vendedor, galeria
        WHERE venta.id_vendedor = vendedor.id AND vendedor.id_galeria = galeria.id
        GROUP BY galeria_id, vendedor.nombre
        ORDER BY mayor_ventas DESC
    )
    as prueba
    GROUP BY galeria_id
    ORDER BY galeria_id
)
as prueba2 INNER JOIN vendedor ON vendedor.id_galeria = galeria_id;

SELECT prueba.nombre_galeria, MAX(prueba.cantidad_ventas) as mayor_ventas_real, prueba.nombre_vendedor
FROM
(
	SELECT COUNT(venta.id_vendedor) as cantidad_ventas, vendedor.nombre as nombre_vendedor, galeria.nombre as nombre_galeria
	FROM venta, vendedor, galeria
	WHERE venta.id_vendedor = vendedor.id AND vendedor.id_galeria = galeria.id
	GROUP BY galeria.nombre, vendedor.nombre
	ORDER BY cantidad_ventas DESC
)
as prueba
GROUP BY prueba.nombre_galeria, prueba.nombre_vendedor
ORDER BY prueba.nombre_galeria;


-------- Consulta 4 --------
-- acá hay que sacar el año de la fecha 
-- cliente que ha invertido más en arte, por año
SELECT cliente.nombre
FROM cliente, venta, tipo
WHERE venta.id_cliente = cliente.id AND producto.id_venta = venta.id AND producto.id_tipo = tipo.id 
GROUP BY venta.fecha



-------- Consulta 5 --------
-- acá hay que sacar el año de la fecha 
-- tipo de arte más vendido por año
SELECT tipo.nombre
FROM tipo, producto, venta
WHERE producto.id_tipo = tipo.id AND producto.id_venta = venta.id AND producto.id_tipo = tipo.id
GROUP BY EXTRACT(YEAR FROM venta.fecha); 

-------- Consulta 6 --------
-- lista de regiones, y sus galerías por comuna
SELECT region.nombre, comuna.nombre, galeria.nombre
FROM region, comuna, galeria
WHERE comuna.id_region = region.id AND galeria.id_comuna = comuna.id
GROUP BY comuna.nombre;

--- POSIBLE SOLUCION
SELECT region.nombre, comuna.nombre, galeria.nombre
FROM region, comuna, galeria
WHERE region.id = comuna.id_region AND comuna.id = galeria.id_comuna;

-------- Consulta 7 --------
-- venta más cara por mes por galería en 2019
SELECT DISTINCT MAX(venta.monto_total) as precio_venta, galeria.nombre as nombre_galeria, venta.fecha as fecha
FROM venta, producto, galeria
WHERE  venta.id = producto.id_venta AND galeria.id = producto.id_galeria AND venta.fecha BETWEEN '2019-01-01' AND '2019-12-31'
    
GROUP BY venta.monto_total, galeria.nombre, venta.fecha, EXTRACT(MONTH FROM venta.fecha);


-------- Consulta 8 --------
-- cliente que ha comprado más pinturas entre el 2019 y 2021
SELECT COUNT(venta.id_cliente), cliente.nombre
FROM cliente, venta, tipo, producto
WHERE venta.id_cliente = cliente.id AND venta.id = producto.id_venta AND producto.id_tipo = 2 
    AND venta.fecha BETWEEN '2019-01-01' AND GETDATE(); -- obtiene la fecha actual
GROUP BY venta.id_cliente, cliente.nombre
-------- Consulta 9 --------
/* 
promedio de sueldos de hombres y mujeres mensual por galería, en los últimos 12
meses, debe indicar cantidad de hombres cantidad de mujeres, y promedio de
sueldos por género 
*/


-------- Consulta 10 --------
-- venta más pesada en kilogramos por mes en los últimos 12 meses
SELECT MAX(venta.peso_total), venta.descripcion
FROM venta
WHERE venta.fecha BETWEEN '2020-04-27' AND '2021-04-27' 
GROUP BY EXTRACT(MONTH FROM venta.fecha); -- se agrupa por mes