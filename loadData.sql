------------------------------------------- REGION -------------------------------------------
INSERT INTO public.region(
	id, nombre)
	VALUES ('1', 'Region de Tarapaca');

INSERT INTO public.region(
	id, nombre)
	VALUES ('2', 'Region de Antofagasta');

INSERT INTO public.region(
	id, nombre)
	VALUES ('3', 'Region de Atacama');
    
INSERT INTO public.region(
	id, nombre)
	VALUES ('4', 'Region de Coquimbo');

INSERT INTO public.region(
	id, nombre)
	VALUES ('5', 'Region de Valparaiso');

INSERT INTO public.region(
	id, nombre)
	VALUES ('6', 'Region de Libertador Bernardo O Higgins');
    
INSERT INTO public.region(
	id, nombre)
	VALUES ('7', 'Region del Maule');

INSERT INTO public.region(
	id, nombre)
	VALUES ('8', 'Region del Bio-Bio');

INSERT INTO public.region(
	id, nombre)
	VALUES ('9', 'Region de la Araucania');

INSERT INTO public.region(
	id, nombre)
	VALUES ('10', 'Region de los Lagos');
    
INSERT INTO public.region(
	id, nombre)
	VALUES ('11', 'Region de Aysen');
    
INSERT INTO public.region(
	id, nombre)
	VALUES ('12', 'Region de Magallanes');
    
INSERT INTO public.region(
	id, nombre)
	VALUES ('13', 'Region Metropolitana');
    
INSERT INTO public.region(
	id, nombre)
	VALUES ('14', 'Region de los Rios');
    
INSERT INTO public.region(
	id, nombre)
	VALUES ('15', 'Region de Arica y Parinacota');

INSERT INTO public.region(
	id, nombre)
	VALUES ('16', 'Region de Ñuble');

------------------------------------------- TIPO -------------------------------------------
INSERT INTO public.tipo(
	id, nombre)
	VALUES ('1', 'escultura');
	
INSERT INTO public.tipo(
	id, nombre)
	VALUES ('2', 'pintura');

------------------------------------------- COMUNA -------------------------------------------
INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('1', 'Santiago', '10');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('2', 'Estacion Central', '10');
	
INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('3', 'Pudahuel', '1');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('4', 'Cerro Navia', '7');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('5', 'Arica', '4');
	
INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('6', 'Paine', '6');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('7', 'Paina', '6');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('8', 'Providencia', '2');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('9', 'Raccon City', '15');
    
INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('10', 'Silent Hill', '2');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('11', 'Pueblo Paleta', '3');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('12', 'Pueblo Lavanda', '5');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('13', 'South Park', '10');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('14', 'Paino', '6');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('15', 'Paini', '6');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('16', 'PudahuelSur', '1');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('17', 'PudahuelEste', '1');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('18', 'PudahuelNorte', '2');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('19', 'PudahuelOreste', '2');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('20', 'PudahuelNorOeste', '2');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('21', 'Pueblo Paleta Sur', '3');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('22', 'Pueblo Paleta Norte', '3');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('23', 'Ciudad Azafrán', '4');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('24', 'Ventormenta', '4');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('25', 'Orgrimmar', '5');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('26', 'Darnassus', '5');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('27', 'IslasDelEcho', '5');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('28', 'Laboratorio del Profesor Oak', '7');
	
INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('29', 'Jonia', '7');
	
INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('30', 'Piltover', '8');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('31', 'Freddy Fazbears Pizza', '8');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('32', 'Pueblo Paleta Oriente', '14');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('33', 'Aldea Navideña Sur', '9');
	
INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('34', 'Aldea Navideña Norte', '9');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('35', 'Aldea Aguasturbias', '16');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('36', 'Noxus', '14');

INSERT INTO public.comuna(id, nombre, id_region)
	VALUES ('37', 'Demacia', '13');

------------------------------------------- GALERIA -------------------------------------------
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('1', 'Galería 1', '2');
    
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('2', 'Galería 2', '5');
    
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('3', 'Galería 3', '8');
    
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('4', 'Galería 4', '30');

INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('5', 'Galería 5', '5');

INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('6', 'Galería 6', '3');

INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('7', 'Galería 7', '32');
    
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('8', 'Galería 8', '4');
	
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('9', 'Galería 9', '1');
	
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('10', 'Galería 10', '1');
	
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('11', 'Galería 11', '11');
	
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('12', 'Galería 12', '21');
	
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('13', 'Galería 13', '25');
	
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('14', 'Galería 14', '27');
	
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('15', 'Galería 15', '1');
	
	
------------------------------------------- CLIENTE -------------------------------------------
INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('1', 'Pablito', 'A', '17.981.123-3', '9');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('2', 'Ash', 'Ketchup', '13.981.321-k', '2');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('3', 'Cristobal', 'Rivas', '22.333.111.0', '2');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('4', 'Roberto', 'Gonzalez', '11.111.111-1', '1');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('5', 'Profesor', 'Oak', '12.121.212-2', '6');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('6', 'Luis', 'Riveros', '31.121.177-6', '3');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('7', 'Sr. Rector', 'Solezzi', '66.666.666-6', '2');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('8', 'Juan', 'Topo', '12.345.678-9', '4');
	
INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('9', 'Daniel', 'Saa', '21.666.877-9', '4');

INSERT INTO public.cliente(
	id, nombre, apellido, rut, id_comuna)
	VALUES ('10', 'Meper', 'D0nas', '11.111.111-1', '3');

------------------------------------------- VENDEDOR -------------------------------------------
INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('1', 'Javier Salazar', 0, '4', '13');

INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('2', 'Alma Placencia', 1, '5','12');

INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('3', 'Marcela Ilabaca', 1, '4', '10');

INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('4', 'Blas Valenzuela', 0, '1', '5');

INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('5', 'Francisco Cabañas', 0, '3', '3');

INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('6', 'Maria Miranda', 1, '2', '1');

INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('7', 'Jorge Carvacho', 0, '1', '4');

INSERT INTO public.vendedor(
	id, nombre, genero, id_galeria, id_comuna)
	VALUES ('8', 'Francisco Castillo', 0, '5', '8');	

------------------------------------------- EMPLEADO -------------------------------------------
INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('1', 'Juan Jimenez', 0, '4', '5');
    
INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('2', 'Apu Nahasapeemapetilon', 0, '12', '3');

INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('3', 'Ylatina', 1, '4', '4');

INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('4', 'Luis Rios', 0, '2', '4');

INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('5', 'Chikorita', 1, '13', '1');

INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('6', 'Pikachu', 1, '6', '5');

INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('7', 'Charmander', 0, '1', '3');

INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('8', 'Bulbasaur', 1, '2', '6');

INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('9', 'Pichu', 0, '4', '8');
    
INSERT INTO public.empleado(
	id, nombre, genero, id_comuna, id_galeria)
	VALUES ('10', 'Eevee', 1, '1', '2');
    
------------------------------------------- VENTA -------------------------------------------
INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('1', 'a', '2019-02-28', 230000, 2, '10', '8');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('2', 'ventita uwu', '2020-05-31', 5600, 5, '6', '5');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('3', 'descripcion', '2019-11-05', 18000, 10, '1', '2');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('4', 'ta bonitu uwu', '2021-04-22', 96500, 23, '5', '7');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('5', 'anita lava la tina', '2020-01-15', 34900, 7, '4', '1');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('6', 'descripcion pendiente', '2020-09-12', 150900, 30, '2', '1');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('7', 'mi mami me mima', '2020-05-11', 500000, 1002, '2', '3');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('8', 'atomico', '2019-08-02',  990000, 957, '2', '2');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('9', 'no contesta, llamare a su padre', '2019-08-02', 6500, 555, '2', '4');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('10', 'alo?', '2018-08-06', 50990, 3, '2', '5');
	
INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('11', 'hable mas fuerte que tengo una toalla', '2020-10-04', 112300, 5, '2', '2');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('12', 'el mejor producto ever', '2019-04-05', 265440, 7, '2', '5');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('13', 'ta de pana', '2019-11-30', 350000, 5, '2', '3');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('14', 'comprameeee uwu', '2021-08-10', 3000, 5, '2', '8');

INSERT INTO public.venta(
	id, descripcion, fecha, monto_total, peso_total, id_cliente, id_vendedor)
	VALUES ('15', 'a', '2021-01-29', 87700, 8, '2', '1');
	
------------------------------------------- PRODUCTO -------------------------------------------
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('1', 'producto 1', 230000, 1, 2, 1, 1, 1);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('2', 'producto 2', 5600, 1, 5, 2, 2, 2);
    
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('3', 'producto 3', 18000, 1, 10, 3, 1, 3);
    
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('4', 'producto 4', 96500, 1, 23, 4, 2, 4);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('5', 'producto 5', 34900, 1, 7, 5, 1, 5);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('6', 'producto 6', 150900, 1, 30, 6, 2, 6);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('7', 'producto 7', 34900, 0, 14, null, 1, 7);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('8', 'producto 8', 340000, 0, 152, null, 2, 8);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('9', 'producto 9', 500000, 1, 1002, 7, 1, 9);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('10', 'producto 10', 1200000, 0, 1325, null, 1, 10);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('11', 'producto 11', 990000, 1, 957, 8, 2, 11);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('12', 'producto 12', 23000, 0, 43, null, 2, 12);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('13', 'producto 13', 45300, 0, 8, null, 1, 13);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('14', 'producto 14', 12300, 0, 5, null, 2, 14);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('15', 'producto 15', 3000, 1, 5, 14, 2, 5);
	
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('16', 'producto 16', 112300, 1, 5, 11, 2, 15);

-- HAY QUE VARIAR  DE AQUI PA ABAJO
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('17', 'producto 17', 6500, 1, 555, 9, 2, 2);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('18', 'producto 18', 350000, 1, 5, 13, 2, 3);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('19', 'producto 19', 265440, 1, 7, 12, 2, 4);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('20', 'producto 20', 50990, 1, 3, 10, 2, 5);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('21', 'producto 21', 87700, 1, 8, 15, 2, 6);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('22', 'producto 22', 479900, 0, 5, null, 2, 7);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('23', 'producto 23', 500, 0, 5, null, 2, 8);
	
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('24', 'producto 24', 780000, 0, 5, null, 2, 9);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('25', 'producto 25', 90000, 0, 5, null, 2, 10);

------------------------------------------- SUELDO -------------------------------------------
INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('1', 5600, '2021-02-12', '1', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('2', 11600, '2021-03-12', '2', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('3', 12334, '2021-04-12', '3', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('4', 227999, '2020-02-12', '4', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('5', 31234, '2019-02-12', '5', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('6', 43123, '2019-07-22', '6', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('7', 65123, '2020-07-02', '7', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('8', 76521, '2019-05-05', '8', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('9', 62455, '2021-01-13', '9', null);
	
INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('10', 53132, '2019-08-01', '10', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('11', 132034, '2021-12-12', null, '1');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('12', 985064, '2019-03-03', null, '2');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('13', 410760, '2021-02-05', null, '3');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('14', 139320, '2019-03-3', null, '4');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('15', 725930, '2020-07-18', null, '5');
	
INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('16', 151080, '2021-11-11', null, '6');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('17', 580912, '2019-10-10', null, '7');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('18', 634254, '2021-04-14', null, '8');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('19', 13513, '2020-12-21', '2', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('20', 367853, '2019-01-02', null, '7');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('21', 123456, '2021-02-22', null, '1');

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('22', 1436853, '2019-07-11', '10', null);

INSERT INTO public.sueldo(
	id, monto_total, fecha, id_empleado, id_vendedor)
	VALUES ('23', 987654, '2020-09-06', null, '3');