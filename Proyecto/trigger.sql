CREATE TABLE public.log_accion
(
id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1
MAXVALUE 99999999 CACHE 1 ),
accion character varying(100) COLLATE pg_catalog."default",
fh_accion timestamp with time zone,
CONSTRAINT log_accion_pkey PRIMARY KEY (id)
)
WITH (
OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public.log_accion
OWNER to postgres;

CREATE OR REPLACE FUNCTION update_ranking_logaccion()
RETURNS trigger AS
$$
BEGIN
INSERT INTO log_accion(accion,fh_accion)
VALUES('VOLUNTARIO-'||NEW.id_voluntario||' TAREA-'||NEW.id_tarea||' ACCION-'||NEW.flg_participa,CURRENT_TIMESTAMP);
RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER trg_update_ranking_log
AFTER UPDATE
ON ranking
FOR EACH ROW
EXECUTE PROCEDURE update_ranking_logaccion();