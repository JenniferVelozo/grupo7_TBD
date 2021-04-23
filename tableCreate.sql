--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-22 18:53:23

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
-- TOC entry 204 (class 1259 OID 24629)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL,
    apellido character varying(40) NOT NULL,
    rut character varying(40) NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24609)
-- Name: comuna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comuna (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL
);


ALTER TABLE public.comuna OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24654)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL,
    genero integer NOT NULL
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24619)
-- Name: galeria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galeria (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL
);


ALTER TABLE public.galeria OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24684)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL,
    precio integer NOT NULL,
    estado integer NOT NULL,
    peso integer NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24599)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.region (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24704)
-- Name: sueldo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sueldo (
    id uuid NOT NULL,
    monto_total integer NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.sueldo OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 24604)
-- Name: tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL
);


ALTER TABLE public.tipo OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24639)
-- Name: vendedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendedor (
    id uuid NOT NULL,
    nombre character varying(40) NOT NULL,
    genero integer NOT NULL
);


ALTER TABLE public.vendedor OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24669)
-- Name: venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta (
    id uuid NOT NULL,
    descripcion character varying(40) NOT NULL,
    fecha date NOT NULL,
    monto_total integer NOT NULL,
    peso_total integer NOT NULL
);


ALTER TABLE public.venta OWNER TO postgres;

--
-- TOC entry 2893 (class 2606 OID 24633)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 24613)
-- Name: comuna comuna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT comuna_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 24658)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 24623)
-- Name: galeria galeria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeria
    ADD CONSTRAINT galeria_pkey PRIMARY KEY (id);


--
-- TOC entry 2901 (class 2606 OID 24688)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 24603)
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 24708)
-- Name: sueldo sueldo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT sueldo_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 24608)
-- Name: tipo tipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 24643)
-- Name: vendedor vendedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 24673)
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);


--
-- TOC entry 2911 (class 2606 OID 24674)
-- Name: venta id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT id_cliente FOREIGN KEY (id) REFERENCES public.cliente(id);


--
-- TOC entry 2905 (class 2606 OID 24624)
-- Name: galeria id_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeria
    ADD CONSTRAINT id_comuna FOREIGN KEY (id) REFERENCES public.comuna(id);


--
-- TOC entry 2906 (class 2606 OID 24634)
-- Name: cliente id_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_comuna FOREIGN KEY (id) REFERENCES public.comuna(id);


--
-- TOC entry 2908 (class 2606 OID 24649)
-- Name: vendedor id_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT id_comuna FOREIGN KEY (id) REFERENCES public.comuna(id);


--
-- TOC entry 2910 (class 2606 OID 24664)
-- Name: empleado id_comuna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_comuna FOREIGN KEY (id) REFERENCES public.comuna(id);


--
-- TOC entry 2916 (class 2606 OID 24709)
-- Name: sueldo id_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT id_empleado FOREIGN KEY (id) REFERENCES public.empleado(id);


--
-- TOC entry 2907 (class 2606 OID 24644)
-- Name: vendedor id_galeria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT id_galeria FOREIGN KEY (id) REFERENCES public.galeria(id);


--
-- TOC entry 2909 (class 2606 OID 24659)
-- Name: empleado id_galeria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_galeria FOREIGN KEY (id) REFERENCES public.galeria(id);


--
-- TOC entry 2915 (class 2606 OID 24699)
-- Name: producto id_galeria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT id_galeria FOREIGN KEY (id) REFERENCES public.galeria(id);


--
-- TOC entry 2904 (class 2606 OID 24614)
-- Name: comuna id_region; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT id_region FOREIGN KEY (id) REFERENCES public.region(id);


--
-- TOC entry 2914 (class 2606 OID 24694)
-- Name: producto id_tipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT id_tipo FOREIGN KEY (id) REFERENCES public.tipo(id);


--
-- TOC entry 2912 (class 2606 OID 24679)
-- Name: venta id_vendedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT id_vendedor FOREIGN KEY (id) REFERENCES public.vendedor(id);


--
-- TOC entry 2917 (class 2606 OID 24714)
-- Name: sueldo id_vendedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT id_vendedor FOREIGN KEY (id) REFERENCES public.vendedor(id);


--
-- TOC entry 2913 (class 2606 OID 24689)
-- Name: producto id_venta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT id_venta FOREIGN KEY (id) REFERENCES public.venta(id);


-- Completed on 2021-04-22 18:53:24

--
-- PostgreSQL database dump complete
--

