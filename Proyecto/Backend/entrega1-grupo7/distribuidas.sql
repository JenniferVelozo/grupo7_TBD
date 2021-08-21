-- Creación de tablas distribuidas
-- Creación de tarea0
CREATE TABLE public.tarea0 (
    nombre_tabla character varying(60),
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


ALTER TABLE public.tarea0 OWNER TO postgres;

-- Creación de tarea1
CREATE TABLE public.tarea1 (
    nombre_tabla character varying(60),
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


ALTER TABLE public.tarea1 OWNER TO postgres;

-- Creación de tarea2
CREATE TABLE public.tarea2 (
    nombre_tabla character varying(60),
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

ALTER TABLE public.tarea2 OWNER TO postgres;


-- Creación de tarea_habilidad0
CREATE TABLE public.tarea_habilidad0 (
    nombre_tabla character varying(60),
    id numeric(8,0) NOT NULL,
    id_emehab numeric(8,0),
    id_tarea numeric(8,0)
);

ALTER TABLE public.tarea_habilidad0 OWNER TO postgres;

-- Creación de tarea_habilidad1
CREATE TABLE public.tarea_habilidad1 (
    nombre_tabla character varying(60),
    id numeric(8,0) NOT NULL,
    id_emehab numeric(8,0),
    id_tarea numeric(8,0)
);

ALTER TABLE public.tarea_habilidad1 OWNER TO postgres;

-- Creación de tarea_habilidad2
CREATE TABLE public.tarea_habilidad2 (
    nombre_tabla character varying(60),
    id numeric(8,0) NOT NULL,
    id_emehab numeric(8,0),
    id_tarea numeric(8,0)
);

ALTER TABLE public.tarea_habilidad2 OWNER TO postgres;

--
-- TOC entry 2899 (class 2606 OID 17305)
-- Name: tarea tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Definición de llaves primarias
ALTER TABLE ONLY public.tarea0
    ADD CONSTRAINT tarea0_pkey PRIMARY KEY (id);
    
--
-- TOC entry 2899 (class 2606 OID 17305)
-- Name: tarea tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea1
    ADD CONSTRAINT tarea1_pkey PRIMARY KEY (id);

--
-- TOC entry 2899 (class 2606 OID 17305)
-- Name: tarea tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea2
    ADD CONSTRAINT tarea2_pkey PRIMARY KEY (id);


--
-- TOC entry 2901 (class 2606 OID 17303)
-- Name: tarea_habilidad tarea_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad0
    ADD CONSTRAINT tarea_habilidad0_pkey PRIMARY KEY (id);

--
-- TOC entry 2901 (class 2606 OID 17303)
-- Name: tarea_habilidad tarea_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad1
    ADD CONSTRAINT tarea_habilidad1_pkey PRIMARY KEY (id);

--
-- TOC entry 2901 (class 2606 OID 17303)
-- Name: tarea_habilidad tarea_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad2
    ADD CONSTRAINT tarea_habilidad2_pkey PRIMARY KEY (id);

-- Llaves foráneas para las tablas distribuidas tarea y tara_habilidad
--
-- TOC entry 2911 (class 2606 OID 17335)
-- Name: tarea fk_tarea_emergencia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea0
    ADD CONSTRAINT fk_tarea_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);


--
-- TOC entry 2912 (class 2606 OID 17340)
-- Name: tarea fk_tarea_estadotarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea0
    ADD CONSTRAINT fk_tarea_estadotarea FOREIGN KEY (id_estado) REFERENCES public.estado_tarea(id);

-- TOC entry 2911 (class 2606 OID 17335)
-- Name: tarea fk_tarea_emergencia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea1
    ADD CONSTRAINT fk_tarea_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);


--
-- TOC entry 2912 (class 2606 OID 17340)
-- Name: tarea fk_tarea_estadotarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea1
    ADD CONSTRAINT fk_tarea_estadotarea FOREIGN KEY (id_estado) REFERENCES public.estado_tarea(id);

-- TOC entry 2911 (class 2606 OID 17335)
-- Name: tarea fk_tarea_emergencia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea2
    ADD CONSTRAINT fk_tarea_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);


--
-- TOC entry 2912 (class 2606 OID 17340)
-- Name: tarea fk_tarea_estadotarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea2
    ADD CONSTRAINT fk_tarea_estadotarea FOREIGN KEY (id_estado) REFERENCES public.estado_tarea(id);

--
-- TOC entry 2913 (class 2606 OID 17345)
-- Name: tarea_habilidad fk_tareahab_emehab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad0
    ADD CONSTRAINT fk_tareahab_emehab FOREIGN KEY (id_emehab) REFERENCES public.eme_habilidad(id);


--
-- TOC entry 2914 (class 2606 OID 17350)
-- Name: tarea_habilidad fk_tareahab_tarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad0
    ADD CONSTRAINT fk_tareahab_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);

--
-- TOC entry 2913 (class 2606 OID 17345)
-- Name: tarea_habilidad fk_tareahab_emehab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad1
    ADD CONSTRAINT fk_tareahab_emehab FOREIGN KEY (id_emehab) REFERENCES public.eme_habilidad(id);


--
-- TOC entry 2914 (class 2606 OID 17350)
-- Name: tarea_habilidad fk_tareahab_tarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad1
    ADD CONSTRAINT fk_tareahab_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);

--
-- TOC entry 2913 (class 2606 OID 17345)
-- Name: tarea_habilidad fk_tareahab_emehab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad2
    ADD CONSTRAINT fk_tareahab_emehab FOREIGN KEY (id_emehab) REFERENCES public.eme_habilidad(id);


--
-- TOC entry 2914 (class 2606 OID 17350)
-- Name: tarea_habilidad fk_tareahab_tarea; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarea_habilidad2
    ADD CONSTRAINT fk_tareahab_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);