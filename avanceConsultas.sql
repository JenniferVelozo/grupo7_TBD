-- Anotacion: para distinguir los diferentes id se les añadira la notacion "id_entidad" --
-- al momento de utilizar el SCRIPT se deberia dejar solo id o el nombre de la FK

Entidades:

region (id_region, nombre)
comuna(id_comuna, nombre, id_region) 
galeria (id_galeria, nombre, id_comuna)
cliente(id_cliente, nombre, apellido, rut, id_comuna)
vendedor(id_vendedor, nombre, genero, id_galeria, id_comuna)
empleado(id_empleado, nombre, genero, id_galeria, id_comuna)
sueldo(id_sueldo, monto_total, fecha, id_empleado, id_vendedor)
tipo(id_tipo, nombre)
producto(id_producto, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
venta(id_venta, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)



************** 1) escultura más cara vendida por galería en el último mes
considerando para esta consulta el mes actual (abril del 2021)

ENTIDADES A UTILILZAR
tipo(id_tipo, nombre)
producto(id_producto, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
venta(id_venta, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
galeria (id_galeria, nombre, id_comuna)


SCRIPT:
¿se debe agregar en el SELECT producto.nombre? --> tengo esa duda, y si se decide hacer asi: SELECT DISTINCT galeria.nombre, producto.nombre... creo que no entrega la salida
solicitada, ya que se tiene el caso en que sea la misma galeria pero distinto producto

SELECT DISTINCT galeria.nombre
FROM tipo, producto, venta, galeria
ORDER BY producto.precio DESC
WHERE tipo.nombre = 'escultura' AND producto.estado = 1 AND tipo.id_tipo = producto.id_tipo AND producto.id_venta = venta.id_venta AND producto.id_galeria = galeria.id_galeria
BETWEEN venta.fecha = '2021-04-01' AND venta.fecha = '2021-04-30'

*************************************************************************



************************** 2) pintura más económica vendida el año pasado
considerando para esta consulta el año pasado 2020

ENTIDADES A UTILILZAR
tipo(id_tipo, nombre)
producto(id_producto, nombre, precio, estado, peso, id_venta, id_tipo)
venta(id_venta, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)

SCRIPT:

SELECT TOP 1 producto.nombre
FROM tipo, producto, venta
ORDER BY producto.precio ASC
WHERE tipo.nombre = 'pintura' AND producto.estado = 1 AND tipo.id_tipo = producto.id_tipo AND producto.id_venta = venta.id_venta
BETWEEN venta.fecha = '2020-01-01' AND venta.fecha = '2020-12-31'

*************************************************************************



********************************** 3) vendedor con más ventas por galería
PARA ESTE TENGO LA MISMA DUDA QUE EN LA 1

*************************************************************************



************************ 4) cliente que ha invertido más en arte, por año
NO SE ME OCURRE COMO REALIZAR EL INTERVALOR DE AÑOS

*************************************************************************



************************************* 5) tipo de arte más vendido por año
NO SE ME OCURRE COMO REALIZAR EL INTERVALOR DE AÑOS

*************************************************************************



************************* 6) lista de regiones, y sus galerías por comuna
region (id_region, nombre)
comuna(id_comuna, nombre, id_region) 
galeria (id_galeria, nombre, id_comuna)

¿aplicar un group by para el orden de las regiones? --> para mayor orden
SCRIPT:

SELECT region.nombre, comuna.nombre, galeria.nombre
FROM region, comuna, galeria
WHERE region.id_region = comuna.id_region AND comuna.id_comuna = galeria.id_galeria



************************************************************************

Para la letra 8 todo seria mas facil si cliente tuviera un atributo correspondiente a la cantidad de productor comprados, onda como un historial, teniendo eso 
se hace facil 

************************************************************************

