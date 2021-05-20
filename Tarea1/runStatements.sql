-------- Consulta 1 --------
-- escultura más cara vendida por galería en el último mes
-- Observaciones: como producto tiene un atributo 'estado', para que esté vendido, dicho atributo debe ser igual a 1 

SELECT DISTINCT MAX(producto.precio) as precio_maximo, producto.nombre as nombre_producto, galeria.nombre as nombre_galeria
FROM producto, tipo, galeria, venta
WHERE tipo.nombre = 'escultura' AND producto.estado = 1 AND tipo.id = producto.id_tipo AND producto.id_venta = venta.id AND producto.id_galeria = galeria.id AND venta.fecha BETWEEN '2021-04-01' AND '2021-04-30'
GROUP BY producto.nombre, galeria.nombre;


-------- Consulta 2 --------
-- pintura más económica vendida el año pasado
-- Observaciones: el tipo de id 2 corresponde a pintura
SELECT DISTINCT MIN(producto.precio) as precio_minimo, producto.nombre, venta.fecha
FROM producto, venta, tipo
WHERE producto.estado = 1 AND tipo.nombre = 'pintura' AND tipo.id = producto.id_tipo AND producto.id_venta = venta.id AND venta.fecha BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY producto.nombre, venta.fecha
ORDER BY precio_minimo ASC
LIMIT 1;

-------- Consulta 3 --------
-- vendedor con más ventas por galería
SELECT v.nombre as nombre_vendedor, vxv.cantidad, g.nombre as nombre_galeria FROM vendedor v
INNER JOIN (
            SELECT id_vendedor, count(1) cantidad 
            FROM venta
            GROUP BY id_vendedor) 
            AS VxV on v.id = vxv.id_vendedor
            INNER JOIN galeria g on v.id_galeria = g.id
            INNER JOIN (
                SELECT g.id, max( cantidad) cantidad FROM vendedor V
                INNER JOIN  (
                    SELECT id_vendedor, count(1) cantidad FROM venta
                    GROUP BY id_vendedor) as VxV on v.id = vxv.id_vendedor
                    INNER JOIN galeria g on v.id_galeria = g.id
                    GROUP BY g.id ) 
                    as MaxXGaleria on g.id = MaxXGaleria.id AND vxv.cantidad = MaxXGaleria.cantidad;


-------- Consulta 4 --------
-- cliente que ha invertido más en arte, por año
SELECT c.nombre, c.apellido, MaxxAnio.total, MaxxAnio.anio FROM cliente c
INNER JOIN (
    SELECT id_cliente, sum(monto_total) total,  EXTRACT(YEAR FROM fecha) anio FROM venta
    GROUP BY id_cliente,  EXTRACT(YEAR FROM fecha)) IxAxC on C.id = IxAxC.id_cliente
    INNER JOIN (
        SELECT  anio, max(total) total FROM (
            SELECT id_cliente, sum(monto_total) total,  EXTRACT(YEAR FROM fecha) anio FROM venta
            GROUP BY id_cliente,  EXTRACT(YEAR FROM fecha)) as etc
        GROUP BY anio
    ) MaxxAnio on IxAxC.anio = MaxxAnio.anio and IxAxC.total = MaxxAnio.total;


-------- Consulta 5 --------
-- tipo de arte más vendido por año
SELECT c.nombre, EXTRACT(YEAR FROM a.fecha) as ano
FROM venta a, producto b, tipo c
WHERE a.id = b.id_venta AND b.estado = 1 AND b.id_tipo = c.id 
GROUP BY c.nombre, a.fecha
ORDER BY 2,1 DESC;


-------- Consulta 6 --------
-- lista de regiones, y sus galerías por comuna
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
SELECT COUNT(venta.id_cliente) AS cantidad_compras, cliente.nombre 
FROM cliente, venta, tipo, producto
WHERE venta.id_cliente = cliente.id AND venta.id = producto.id_venta AND producto.id_tipo = tipo.id AND venta.fecha BETWEEN '2019-01-01' AND '2021-12-31' AND tipo.id = '2'
GROUP BY venta.id_cliente, cliente.nombre
ORDER BY cantidad_compras DESC
LIMIT 1;

-------- Consulta 9 --------
/* 
promedio de sueldos de hombres y mujeres mensual por galería, en los últimos 12
meses, debe indicar cantidad de hombres cantidad de mujeres, y promedio de
sueldos por género
*/
--Observación: 0 = hombre, 1 = mujer
SELECT AVG(sueldo.monto_total) as promedio, galeria.nombre, empleado.genero
FROM empleado, sueldo, galeria
WHERE sueldo.id_empleado = empleado.id AND empleado.id_galeria = galeria.id AND empleado.genero = '1' AND sueldo.fecha BETWEEN '2020-04-29' AND '2021-04-29'
GROUP BY galeria.nombre, empleado.genero
UNION (SELECT AVG(sueldo.monto_total) as promedio, galeria.nombre, empleado.genero
			FROM empleado, sueldo, galeria
			WHERE sueldo.id_empleado = empleado.id AND empleado.id_galeria = galeria.id AND empleado.genero = '0' AND sueldo.fecha BETWEEN '2020-04-29' AND '2021-04-29'
			GROUP BY galeria.nombre, empleado.genero);


-------- Consulta 10 --------
-- venta más pesada en kilogramos por mes en los últimos 12 meses
SELECT c.descripcion AS descripcion_venta, MaxxMes.total AS max_peso, MaxxMes.mes, c.fecha FROM venta c
INNER JOIN (
    SELECT id, sum(peso_total) total,  EXTRACT(MONTH FROM fecha) mes FROM venta
	WHERE fecha BETWEEN '2020-04-27' AND '2021-04-27'
    GROUP BY id,  EXTRACT(MONTH FROM fecha)) IxAxC on c.id = IxAxC.id
    INNER JOIN (
        SELECT  mes, max(total) total FROM (
            SELECT id, sum(peso_total) total,  EXTRACT(MONTH FROM fecha) mes FROM venta
			WHERE fecha BETWEEN '2020-04-27' AND '2021-04-27'
            GROUP BY id,  EXTRACT(MONTH FROM fecha)) as etc
        GROUP BY mes
    ) MaxxMes on IxAxC.mes = MaxxMes.mes and IxAxC.total = MaxxMes.total;
