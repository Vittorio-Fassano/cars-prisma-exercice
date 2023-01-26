--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: cars; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    model text NOT NULL,
    "licensePlate" text NOT NULL,
    year integer NOT NULL,
    color text NOT NULL,
    "createAt" timestamp without time zone DEFAULT now()
);


--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cars VALUES (1, 'SONATA', 'EZD3035', 2010, 'PRETO', '2023-01-26 15:02:25.923231');
INSERT INTO public.cars VALUES (2, 'X1', 'FBI2231', 2018, 'BRANCO', '2023-01-26 15:02:25.936873');
INSERT INTO public.cars VALUES (3, 'CIVIC', 'LPA1019', 2021, 'CINZA', '2023-01-26 15:02:25.939378');
INSERT INTO public.cars VALUES (4, 'ONIX', 'HFA2713', 2023, 'AMARELO', '2023-01-26 15:02:25.949073');
INSERT INTO public.cars VALUES (5, 'EVOLUTION', 'EPR6655', 2005, 'CINZA', '2023-01-26 15:02:25.956588');
INSERT INTO public.cars VALUES (6, 'UNO', 'DMP7935', 2000, 'PRETO', '2023-01-26 15:02:25.962507');
INSERT INTO public.cars VALUES (7, '320i', 'LAS5546', 2017, 'BRANCO', '2023-01-26 15:02:27.381444');
INSERT INTO public.cars VALUES (8, 'SANDERO', 'CBD0421', 2021, 'VERDE', '2023-01-26 19:11:12.704');
INSERT INTO public.cars VALUES (9, 'FIESTA', 'CTD0420', 2012, 'BRANCO', '2023-01-26 19:32:30.55');


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cars_id_seq', 9, true);


--
-- Name: cars cars_licensePlate_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT "cars_licensePlate_key" UNIQUE ("licensePlate");


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

