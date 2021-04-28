--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-23 21:55:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 16517)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL,
    apellido character varying(40) NOT NULL,
    rut character varying(12) NOT NULL,
    id_comuna character varying(4) NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16520)
-- Name: comuna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comuna (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL,
    id_region character varying(4) NOT NULL
);


ALTER TABLE public.comuna OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16523)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL,
    genero integer NOT NULL,
    id_galeria character varying(4) NOT NULL,
    id_comuna character varying(4) NOT NULL
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16526)
-- Name: galeria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galeria (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL,
    id_comuna character varying(4) NOT NULL
);


ALTER TABLE public.galeria OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16529)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL,
    precio integer NOT NULL,
    estado integer NOT NULL,
    peso integer NOT NULL,
    id_venta character varying(4),
    id_tipo character varying(4) NOT NULL,
    id_galeria character varying(4) NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16532)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.region (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16535)
-- Name: sueldo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sueldo (
    id character varying(4) NOT NULL,
    monto_total integer NOT NULL,
    fecha date NOT NULL,
    id_empleado character varying(4),
    id_vendedor character varying(4)
);


ALTER TABLE public.sueldo OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16538)
-- Name: tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL
);


ALTER TABLE public.tipo OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16541)
-- Name: vendedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendedor (
    id character varying(4) NOT NULL,
    nombre character varying(40) NOT NULL,
    genero integer NOT NULL,
    id_galeria character varying(4) NOT NULL,
    id_comuna character varying(4) NOT NULL
);


ALTER TABLE public.vendedor OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16544)
-- Name: venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta (
    id character varying(4) NOT NULL,
    descripcion character varying(40) NOT NULL,
    fecha date NOT NULL,
    monto_total integer NOT NULL,
    peso_total integer NOT NULL,
    id_cliente character varying(4) NOT NULL,
    id_vendedor character varying(4) NOT NULL
);


ALTER TABLE public.venta OWNER TO postgres;

--
-- TOC entry 2885 (class 2606 OID 16548)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 16550)
-- Name: comuna comuna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT comuna_pkey PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 16552)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 16554)
-- Name: galeria galeria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeria
    ADD CONSTRAINT galeria_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 16556)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 16558)
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 16560)
-- Name: sueldo sueldo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT sueldo_pkey PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 16562)
-- Name: tipo tipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (id);


--
-- TOC entry 2901 (class 2606 OID 16564)
-- Name: vendedor vendedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 16566)
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);


--
-- TOC entry 2904 (class 2606 OID 16567)
-- Name: cliente fk_cliente_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente_comuna FOREIGN KEY (id_comuna) REFERENCES public.comuna(id);


--
-- TOC entry 2905 (class 2606 OID 16572)
-- Name: comuna fk_comuna_region; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT fk_comuna_region FOREIGN KEY (id_region) REFERENCES public.region(id);


--
-- TOC entry 2906 (class 2606 OID 16577)
-- Name: empleado fk_empleado_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_empleado_comuna FOREIGN KEY (id_comuna) REFERENCES public.comuna(id);


--
-- TOC entry 2907 (class 2606 OID 16582)
-- Name: empleado fk_empleado_galeria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_empleado_galeria FOREIGN KEY (id_galeria) REFERENCES public.galeria(id);


--
-- TOC entry 2908 (class 2606 OID 16587)
-- Name: galeria fk_galeria_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeria
    ADD CONSTRAINT fk_galeria_comuna FOREIGN KEY (id_comuna) REFERENCES public.comuna(id);


--
-- TOC entry 2909 (class 2606 OID 16592)
-- Name: producto fk_producto_galeria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_producto_galeria FOREIGN KEY (id_galeria) REFERENCES public.galeria(id);


--
-- TOC entry 2910 (class 2606 OID 16597)
-- Name: producto fk_producto_tipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_producto_tipo FOREIGN KEY (id_tipo) REFERENCES public.tipo(id);


--
-- TOC entry 2911 (class 2606 OID 16602)
-- Name: producto fk_producto_venta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_producto_venta FOREIGN KEY (id_venta) REFERENCES public.venta(id);


--
-- TOC entry 2912 (class 2606 OID 16607)
-- Name: sueldo fk_sueldo_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT fk_sueldo_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);


--
-- TOC entry 2913 (class 2606 OID 16612)
-- Name: sueldo fk_sueldo_vendedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT fk_sueldo_vendedor FOREIGN KEY (id_vendedor) REFERENCES public.vendedor(id);


--
-- TOC entry 2914 (class 2606 OID 16617)
-- Name: vendedor fk_vendedor_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT fk_vendedor_comuna FOREIGN KEY (id_comuna) REFERENCES public.comuna(id);


--
-- TOC entry 2915 (class 2606 OID 16622)
-- Name: vendedor fk_vendedor_galeria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT fk_vendedor_galeria FOREIGN KEY (id_galeria) REFERENCES public.galeria(id);


--
-- TOC entry 2916 (class 2606 OID 16627)
-- Name: venta fk_venta_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_venta_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);


--
-- TOC entry 2917 (class 2606 OID 16632)
-- Name: venta fk_venta_vendedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_venta_vendedor FOREIGN KEY (id_vendedor) REFERENCES public.vendedor(id);


-- Completed on 2021-04-23 21:55:18

--
-- PostgreSQL database dump complete
--

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
INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('1', 'Santiago', '10');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('2', 'Estacion Central', '10');
	
INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('3', 'Pudahuel', '10');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('4', 'Cerro Navia', '7');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('5', 'Arica', '7');
	
INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('6', 'Paine', '6');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('7', 'Paina', '6');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('8', 'Providencia', '2');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('9', 'Raccon City', '15');
    
INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('10', 'Silent Hill', '2');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('11', 'Pueblo Paleta', '3');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('12', 'Pueblo Lavanda', '5');

INSERT INTO public.comuna(
	id, nombre, id_region)
	VALUES ('13', 'South Park', '10');
	
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
	VALUES ('4', 'Galería 4', '5');

INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('5', 'Galería 5', '5');

INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('6', 'Galería 6', '3');

INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('7', 'Galería 7', '2');
    
INSERT INTO public.galeria(
	id, nombre, id_comuna)
	VALUES ('8', 'Galería 8', '1');


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
	VALUES ('6', 'descripcion pendiente', '2020-09-12', 150900, 30, '2', '4');
    
------------------------------------------- PRODUCTO -------------------------------------------
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('1', 'producto 1', 230000, 1, 2, 1, 1, 1);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('2', 'producto 2', 5600, 1, 5, 2, 2, 1);
    
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('3', 'producto 3', 18000, 1, 10, 3, 1, 7);
    
INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('4', 'producto 4', 96500, 1, 23, 4, 2, 3);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('5', 'producto 5', 34900, 1, 7, 5, 1, 8);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('6', 'producto 6', 150900, 1, 30, 6, 2, 8);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('7', 'producto 7', 34900, 0, 14, null, 1, 8);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('8', 'producto 8', 340000, 0, 152, null, 2, 8);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('9', 'producto 9', 500000, 0, 1002, null, 1, 1);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('10', 'producto 10', 1200000, 0, 1325, null, 1, 3);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('11', 'producto 11', 990000, 0, 957, null, 2, 8);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('12', 'producto 12', 23000, 0, 43, null, 2, 3);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('13', 'producto 13', 45300, 0, 8, null, 1, 4);

INSERT INTO public.producto(
	id, nombre, precio, estado, peso, id_venta, id_tipo, id_galeria)
	VALUES ('14', 'producto 14', 12300, 0, 5, null, 2, 5);


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
	