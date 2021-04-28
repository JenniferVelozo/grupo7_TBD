--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-23 22:31:18

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
-- TOC entry 3048 (class 0 OID 16517)
-- Dependencies: 200
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--