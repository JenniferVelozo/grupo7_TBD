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



	




	