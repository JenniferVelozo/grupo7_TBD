--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-06-28 17:32:18

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

--
-- TOC entry 2 (class 3079 OID 28291)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 29305)
-- Name: division_regional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.division_regional (
    gid integer NOT NULL,
    nom_reg character varying(50),
    nom_prov character varying(20),
    cod_com character varying(5),
    nom_com character varying(30),
    cod_regi numeric,
    superficie numeric,
    poblac02 integer,
    pobl2010 integer,
    shape_leng numeric,
    shape_area numeric,
    geom public.geometry(MultiPolygon)
);


ALTER TABLE public.division_regional OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 29303)
-- Name: division_regional_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.division_regional_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.division_regional_gid_seq OWNER TO postgres;

--
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 216
-- Name: division_regional_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.division_regional_gid_seq OWNED BY public.division_regional.gid;


--
-- TOC entry 201 (class 1259 OID 28180)
-- Name: eme_habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eme_habilidad (
    id numeric(8,0) NOT NULL,
    id_emergencia numeric(6,0),
    id_habilidad numeric(4,0)
);


ALTER TABLE public.eme_habilidad OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 28183)
-- Name: emergencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emergencia (
    id numeric(6,0) NOT NULL,
    nombre character varying(100),
    descrip character varying(400),
    finicio date,
    ffin date,
    id_institucion numeric(4,0),
    location public.geometry(Point,4326)
);


ALTER TABLE public.emergencia OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 28189)
-- Name: estado_tarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_tarea (
    id numeric(2,0) NOT NULL,
    descrip character varying(20)
);


ALTER TABLE public.estado_tarea OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 28192)
-- Name: habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.habilidad (
    id numeric(4,0) NOT NULL,
    descrip character varying(100)
);


ALTER TABLE public.habilidad OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 28195)
-- Name: institucion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.institucion (
    id numeric(4,0) NOT NULL,
    nombre character varying(100),
    descrip character varying(400)
);


ALTER TABLE public.institucion OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 28201)
-- Name: ranking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ranking (
    id numeric(8,0) NOT NULL,
    id_voluntario numeric(8,0),
    id_tarea numeric(8,0),
    puntaje numeric(3,0),
    flg_invitado numeric(1,0),
    flg_participa numeric(1,0)
);


ALTER TABLE public.ranking OWNER TO postgres;

--
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE ranking; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.ranking IS 'los flgInvitado, flgParticipa 1 si la respuesta es si, 2 si la respuesta es no';


--
-- TOC entry 207 (class 1259 OID 28204)
-- Name: tarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarea (
    id numeric(8,0) NOT NULL,
    nombre character varying(60),
    descrip character varying(300),
    cant_vol_requeridos numeric(4,0),
    cant_vol_inscritos numeric(4,0),
    id_emergencia numeric(6,0),
    finicio date,
    ffin date,
    id_estado numeric(2,0)
);


ALTER TABLE public.tarea OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 28207)
-- Name: tarea_habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarea_habilidad (
    id numeric(8,0) NOT NULL,
    id_emehab numeric(8,0),
    id_tarea numeric(8,0)
);


ALTER TABLE public.tarea_habilidad OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 28210)
-- Name: vol_habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vol_habilidad (
    id numeric(8,0) NOT NULL,
    id_voluntario numeric(8,0),
    id_habilidad numeric(8,0)
);


ALTER TABLE public.vol_habilidad OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 28213)
-- Name: voluntario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voluntario (
    id numeric(8,0) NOT NULL,
    nombre character varying(100),
    fnacimiento date,
    location public.geometry(Point,4326)
);


ALTER TABLE public.voluntario OWNER TO postgres;

--
-- TOC entry 3746 (class 2604 OID 29308)
-- Name: division_regional gid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division_regional ALTER COLUMN gid SET DEFAULT nextval('public.division_regional_gid_seq'::regclass);

--
-- TOC entry 3937 (class 0 OID 0)
-- Dependencies: 216
-- Name: division_regional_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.division_regional_gid_seq', 23, true);


--
-- TOC entry 3770 (class 2606 OID 29313)
-- Name: division_regional division_regional_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division_regional
    ADD CONSTRAINT division_regional_pkey PRIMARY KEY (gid);


--
-- TOC entry 3748 (class 2606 OID 28217)
-- Name: eme_habilidad eme_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT eme_habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 3750 (class 2606 OID 28219)
-- Name: emergencia emergencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emergencia
    ADD CONSTRAINT emergencia_pkey PRIMARY KEY (id);


--
-- TOC entry 3752 (class 2606 OID 28221)
-- Name: estado_tarea estado_tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_tarea
    ADD CONSTRAINT estado_tarea_pkey PRIMARY KEY (id);


--
-- TOC entry 3754 (class 2606 OID 28223)
-- Name: habilidad habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habilidad
    ADD CONSTRAINT habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 3756 (class 2606 OID 28225)
-- Name: institucion institucion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institucion
    ADD CONSTRAINT institucion_pkey PRIMARY KEY (id);


--
-- TOC entry 3758 (class 2606 OID 28227)
-- Name: ranking ranking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT ranking_pkey PRIMARY KEY (id);


--
-- TOC entry 3762 (class 2606 OID 28229)
-- Name: tarea_habilidad tarea_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT tarea_habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 3760 (class 2606 OID 28231)
-- Name: tarea tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT tarea_pkey PRIMARY KEY (id);


--
-- TOC entry 3764 (class 2606 OID 28233)
-- Name: vol_habilidad vol_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT vol_habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 3766 (class 2606 OID 28235)
-- Name: voluntario voluntario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voluntario
    ADD CONSTRAINT voluntario_pkey PRIMARY KEY (id);


--
-- TOC entry 3771 (class 2606 OID 28236)
-- Name: eme_habilidad fk_emehab_emergencia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT fk_emehab_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);


--
-- TOC entry 3772 (class 2606 OID 28241)
-- Name: eme_habilidad fk_emehab_habilidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT fk_emehab_habilidad FOREIGN KEY (id_habilidad) REFERENCES public.habilidad(id);


--
-- TOC entry 3773 (class 2606 OID 28246)
-- Name: emergencia fk_emergencia_institucion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emergencia
    ADD CONSTRAINT fk_emergencia_institucion FOREIGN KEY (id_institucion) REFERENCES public.institucion(id);


--
-- TOC entry 3774 (class 2606 OID 28251)
-- Name: ranking fk_ranking_tarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT fk_ranking_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);


--
-- TOC entry 3775 (class 2606 OID 28256)
-- Name: ranking fk_ranking_voluntario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT fk_ranking_voluntario FOREIGN KEY (id_voluntario) REFERENCES public.voluntario(id);


--
-- TOC entry 3776 (class 2606 OID 28261)
-- Name: tarea fk_tarea_emergencia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT fk_tarea_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);


--
-- TOC entry 3777 (class 2606 OID 28266)
-- Name: tarea fk_tarea_estadotarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT fk_tarea_estadotarea FOREIGN KEY (id_estado) REFERENCES public.estado_tarea(id);


--
-- TOC entry 3778 (class 2606 OID 28271)
-- Name: tarea_habilidad fk_tareahab_emehab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT fk_tareahab_emehab FOREIGN KEY (id_emehab) REFERENCES public.eme_habilidad(id);


--
-- TOC entry 3779 (class 2606 OID 28276)
-- Name: tarea_habilidad fk_tareahab_tarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT fk_tareahab_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);


--
-- TOC entry 3780 (class 2606 OID 28281)
-- Name: vol_habilidad fk_volhab_habilidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT fk_volhab_habilidad FOREIGN KEY (id_habilidad) REFERENCES public.habilidad(id);


--
-- TOC entry 3781 (class 2606 OID 28286)
-- Name: vol_habilidad fk_volhab_voluntario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT fk_volhab_voluntario FOREIGN KEY (id_voluntario) REFERENCES public.voluntario(id);


-- Completed on 2021-06-28 17:32:20

--
-- PostgreSQL database dump complete
--