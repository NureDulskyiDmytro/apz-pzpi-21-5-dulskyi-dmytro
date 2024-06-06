--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-06-22 18:41:56

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
-- TOC entry 200 (class 1259 OID 29899)
-- Name: address_storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address_storage (
    address_storage_id bigint NOT NULL,
    price bigint,
    product_id bigint,
    size character varying(255),
    status boolean,
    storage_id character varying(255) NOT NULL
);


ALTER TABLE public.address_storage OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 29905)
-- Name: authority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authority (
    name character varying(50) NOT NULL
);


ALTER TABLE public.authority OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 29908)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 29910)
-- Name: ordering; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordering (
    ordering_id bigint NOT NULL,
    date character varying(50),
    product_id bigint,
    size character varying(50),
    status boolean,
    sum character varying(255)
);


ALTER TABLE public.ordering OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 29913)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id bigint NOT NULL,
    customer_id character varying(50),
    humidity_now character varying(50),
    humidity_range character varying(50),
    quantity bigint,
    size character varying(50),
    storage_address character varying(50),
    storage_life character varying(50),
    summa bigint,
    temperature_now character varying(50),
    temperature_range character varying(50),
    type_of_product character varying(100),
    weight character varying(50),
    worker_id character varying(50)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 29919)
-- Name: user_authority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_authority (
    user_id bigint NOT NULL,
    authority_name character varying(50) NOT NULL
);


ALTER TABLE public.user_authority OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 29922)
-- Name: usr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usr (
    id bigint NOT NULL,
    activated boolean,
    age character varying(50),
    email character varying(50),
    f_name character varying(50),
    l_name character varying(50),
    password character varying(100) NOT NULL,
    phone character varying(50),
    username character varying(50) NOT NULL
);


ALTER TABLE public.usr OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 29899)
-- Dependencies: 200
-- Data for Name: address_storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address_storage (address_storage_id, price, product_id, size, status, storage_id) FROM stdin;
23	150	0	XL	f	AX0011
13	50	0	M	f	AX0001
14	50	0	M	f	AX0002
15	50	0	M	f	AX0003
19	100	0	L	f	AX0007
20	100	0	L	f	AX0008
24	150	0	XL	f	AX0012
25	150	0	XL	f	AX0013
27	150	114	XL	t	AX0015
22	100	116	L	t	AX0010
17	50	118	M	t	AX0005
16	50	120	M	t	AX0004
26	150	122	XL	t	AX0014
21	100	128	L	t	AX0009
\.


--
-- TOC entry 3021 (class 0 OID 29905)
-- Dependencies: 201
-- Data for Name: authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authority (name) FROM stdin;
ROLE_USER
ROLE_ADMIN
\.


--
-- TOC entry 3023 (class 0 OID 29910)
-- Dependencies: 203
-- Data for Name: ordering; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordering (ordering_id, date, product_id, size, status, sum) FROM stdin;
115	20.06.2021	114	XL	t	48000$
117	20.06.2021	116	L	t	31500$
119	20.06.2021	118	M	t	257400$
121	20.06.2021	120	M	t	52000$
123	20.06.2021	122	XL	t	240000$
129	22.06.2021	128	L	t	29000
\.


--
-- TOC entry 3024 (class 0 OID 29913)
-- Dependencies: 204
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, customer_id, humidity_now, humidity_range, quantity, size, storage_address, storage_life, summa, temperature_now, temperature_range, type_of_product, weight, worker_id) FROM stdin;
116	97	10	15%	15	L	AX0010	2021-08-02	31500	10	15 C	Метал	15 кг	97
118	97	10	15%	33	M	AX0005	2021-09-07	257400	10	15 C	Мебель	21 кг	97
120	97	10	16%	20	M	AX0004	2021-07-17	52000	10	16 C	Мебель	14 кг	97
114	97	10	10%	10	XL	AX0015	2021-07-23	48000	10	10 C	Стекло	10 кг	97
122	97	10	15%	20	XL	AX0014	2021-09-09	240000	10	15 C	Стекло	26 кг	97
128	127	\N	15%	20	L	AX0009	2021-07-22	29000	\N	15 C	Пластик	10 кг	\N
\.


--
-- TOC entry 3025 (class 0 OID 29919)
-- Dependencies: 205
-- Data for Name: user_authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_authority (user_id, authority_name) FROM stdin;
97	ROLE_USER
113	ROLE_USER
127	ROLE_USER
\.


--
-- TOC entry 3026 (class 0 OID 29922)
-- Dependencies: 206
-- Data for Name: usr; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usr (id, activated, age, email, f_name, l_name, password, phone, username) FROM stdin;
113	t	20	user444@gmail.com	Surname	Name	$2a$10$j3j3b/z11Jw9OqQsqW1p3.ShriwnklCBl6iQZJyp3xOOIEabfLrHS	+43050000343443	user444
127	t	21	admin123@gmail.com	Admin	X	$2a$10$8ZCZQ.5odeOlqmWeSovIE.vJvXAY7uXr3o.j/PSCtDaf8Qoq05Df.	+1234567890	admin123
97	t	21	max_x444@gmail.com	Maksym	Frolov	$2a$10$e2ba.a0NZQTkc0Frmj0hw.UDKOEzBM4G6R6.8LNcgDW8M7113wvea	+380669943097	max_x444
\.


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 202
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 129, true);


--
-- TOC entry 2873 (class 2606 OID 29926)
-- Name: address_storage address_storage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_storage
    ADD CONSTRAINT address_storage_pkey PRIMARY KEY (address_storage_id);


--
-- TOC entry 2877 (class 2606 OID 29928)
-- Name: authority authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT authority_pkey PRIMARY KEY (name);


--
-- TOC entry 2879 (class 2606 OID 29930)
-- Name: ordering ordering_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordering
    ADD CONSTRAINT ordering_pkey PRIMARY KEY (ordering_id);


--
-- TOC entry 2881 (class 2606 OID 29932)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 2885 (class 2606 OID 29934)
-- Name: usr uk_dfui7gxngrgwn9ewee3ogtgym; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT uk_dfui7gxngrgwn9ewee3ogtgym UNIQUE (username);


--
-- TOC entry 2875 (class 2606 OID 29936)
-- Name: address_storage uk_i792c8nq90ql443ap79cg5msi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_storage
    ADD CONSTRAINT uk_i792c8nq90ql443ap79cg5msi UNIQUE (storage_id);


--
-- TOC entry 2883 (class 2606 OID 29938)
-- Name: user_authority user_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_authority
    ADD CONSTRAINT user_authority_pkey PRIMARY KEY (user_id, authority_name);


--
-- TOC entry 2887 (class 2606 OID 29940)
-- Name: usr usr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (id);


--
-- TOC entry 2888 (class 2606 OID 29941)
-- Name: user_authority fk6ktglpl5mjosa283rvken2py5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_authority
    ADD CONSTRAINT fk6ktglpl5mjosa283rvken2py5 FOREIGN KEY (authority_name) REFERENCES public.authority(name);


--
-- TOC entry 2889 (class 2606 OID 29946)
-- Name: user_authority fknylnibf9um2l0hqqgo036ijhs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_authority
    ADD CONSTRAINT fknylnibf9um2l0hqqgo036ijhs FOREIGN KEY (user_id) REFERENCES public.usr(id);


-- Completed on 2021-06-22 18:41:57

--
-- PostgreSQL database dump complete
--

