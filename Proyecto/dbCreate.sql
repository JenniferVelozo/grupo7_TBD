--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-18 22:19:01

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
-- TOC entry 200 (class 1259 OID 17254)
-- Name: eme_habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eme_habilidad (
    id numeric(8,0) NOT NULL,
    id_emergencia numeric(6,0),
    id_habilidad numeric(4,0)
);


ALTER TABLE public.eme_habilidad OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17257)
-- Name: emergencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emergencia (
    id numeric(6,0) NOT NULL,
    nombre character varying(100),
    descrip character varying(400),
    finicio date,
    ffin date,
    id_institucion numeric(4,0)
);


ALTER TABLE public.emergencia OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17263)
-- Name: estado_tarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_tarea (
    id numeric(2,0) NOT NULL,
    descrip character varying(20)
);


ALTER TABLE public.estado_tarea OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17266)
-- Name: habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.habilidad (
    id numeric(4,0) NOT NULL,
    descrip character varying(100)
);


ALTER TABLE public.habilidad OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17269)
-- Name: institucion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.institucion (
    id numeric(4,0) NOT NULL,
    nombre character varying(100),
    descrip character varying(400)
);


ALTER TABLE public.institucion OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17275)
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
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE ranking; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.ranking IS 'los flgInvitado, flgParticipa 1 si la respuesta es si, 2 si la respuesta es no';


--
-- TOC entry 206 (class 1259 OID 17278)
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
-- TOC entry 207 (class 1259 OID 17281)
-- Name: tarea_habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarea_habilidad (
    id numeric(8,0) NOT NULL,
    id_emehab numeric(8,0),
    id_tarea numeric(8,0)
);


ALTER TABLE public.tarea_habilidad OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17284)
-- Name: vol_habilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vol_habilidad (
    id numeric(8,0) NOT NULL,
    id_voluntario numeric(8,0),
    id_habilidad numeric(8,0)
);


ALTER TABLE public.vol_habilidad OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17287)
-- Name: voluntario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voluntario (
    id numeric(8,0) NOT NULL,
    nombre character varying(100),
    fnacimiento date
);


ALTER TABLE public.voluntario OWNER TO postgres;

--
-- TOC entry 3047 (class 0 OID 17254)
-- Dependencies: 200
-- Data for Name: eme_habilidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT eme_habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 17293)
-- Name: emergencia emergencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emergencia
    ADD CONSTRAINT emergencia_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 17295)
-- Name: estado_tarea estado_tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_tarea
    ADD CONSTRAINT estado_tarea_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 17297)
-- Name: habilidad habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habilidad
    ADD CONSTRAINT habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 17299)
-- Name: institucion institucion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institucion
    ADD CONSTRAINT institucion_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 17301)
-- Name: ranking ranking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT ranking_pkey PRIMARY KEY (id);


--
-- TOC entry 2901 (class 2606 OID 17303)
-- Name: tarea_habilidad tarea_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT tarea_habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 17305)
-- Name: tarea tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT tarea_pkey PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 17307)
-- Name: vol_habilidad vol_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT vol_habilidad_pkey PRIMARY KEY (id);


--
-- TOC entry 2905 (class 2606 OID 17309)
-- Name: voluntario voluntario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voluntario
    ADD CONSTRAINT voluntario_pkey PRIMARY KEY (id);


--
-- TOC entry 2906 (class 2606 OID 17310)
-- Name: eme_habilidad fk_emehab_emergencia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT fk_emehab_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);


--
-- TOC entry 2907 (class 2606 OID 17315)
-- Name: eme_habilidad fk_emehab_habilidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT fk_emehab_habilidad FOREIGN KEY (id_habilidad) REFERENCES public.habilidad(id);


--
-- TOC entry 2908 (class 2606 OID 17320)
-- Name: emergencia fk_emergencia_institucion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emergencia
    ADD CONSTRAINT fk_emergencia_institucion FOREIGN KEY (id_institucion) REFERENCES public.institucion(id);


--
-- TOC entry 2909 (class 2606 OID 17325)
-- Name: ranking fk_ranking_tarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT fk_ranking_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);


--
-- TOC entry 2910 (class 2606 OID 17330)
-- Name: ranking fk_ranking_voluntario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT fk_ranking_voluntario FOREIGN KEY (id_voluntario) REFERENCES public.voluntario(id);


--
-- TOC entry 2911 (class 2606 OID 17335)
-- Name: tarea fk_tarea_emergencia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT fk_tarea_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);


--
-- TOC entry 2912 (class 2606 OID 17340)
-- Name: tarea fk_tarea_estadotarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT fk_tarea_estadotarea FOREIGN KEY (id_estado) REFERENCES public.estado_tarea(id);


--
-- TOC entry 2913 (class 2606 OID 17345)
-- Name: tarea_habilidad fk_tareahab_emehab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT fk_tareahab_emehab FOREIGN KEY (id_emehab) REFERENCES public.eme_habilidad(id);


--
-- TOC entry 2914 (class 2606 OID 17350)
-- Name: tarea_habilidad fk_tareahab_tarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT fk_tareahab_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);


--
-- TOC entry 2915 (class 2606 OID 17355)
-- Name: vol_habilidad fk_volhab_habilidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT fk_volhab_habilidad FOREIGN KEY (id_habilidad) REFERENCES public.habilidad(id);


--
-- TOC entry 2916 (class 2606 OID 17360)
-- Name: vol_habilidad fk_volhab_voluntario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT fk_volhab_voluntario FOREIGN KEY (id_voluntario) REFERENCES public.voluntario(id);


-- Completed on 2021-05-18 22:19:02

--
-- PostgreSQL database dump complete
--
