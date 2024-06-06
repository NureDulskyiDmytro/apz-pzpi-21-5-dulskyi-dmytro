--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-06-01 15:48:42

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
-- TOC entry 215 (class 1259 OID 16987)
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
-- TOC entry 216 (class 1259 OID 16992)
-- Name: addressstorage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addressstorage (
    address_storage_id integer NOT NULL,
    storage_id character varying(50) NOT NULL,
    size character varying(50),
    price bigint,
    status boolean,
    product_id bigint
);


ALTER TABLE public.addressstorage OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16995)
-- Name: addressstorage_address_storage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.addressstorage_address_storage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.addressstorage_address_storage_id_seq OWNER TO postgres;

--
-- TOC entry 4850 (class 0 OID 0)
-- Dependencies: 217
-- Name: addressstorage_address_storage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.addressstorage_address_storage_id_seq OWNED BY public.addressstorage.address_storage_id;


--
-- TOC entry 218 (class 1259 OID 16996)
-- Name: authority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authority (
    name character varying(50) NOT NULL
);


ALTER TABLE public.authority OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16999)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17000)
-- Name: ordering; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordering (
    ordering_id integer NOT NULL,
    date character varying(50),
    status boolean,
    product_id bigint,
    sum character varying(50),
    size character varying(50)
);


ALTER TABLE public.ordering OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17003)
-- Name: ordering_ordering_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ordering_ordering_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ordering_ordering_id_seq OWNER TO postgres;

--
-- TOC entry 4851 (class 0 OID 0)
-- Dependencies: 221
-- Name: ordering_ordering_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ordering_ordering_id_seq OWNED BY public.ordering.ordering_id;


--
-- TOC entry 222 (class 1259 OID 17004)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    weight character varying(50),
    size character varying(50),
    type_of_product character varying(100),
    quantity bigint,
    storage_life character varying(50),
    storage_address character varying(50),
    temperature_range character varying(50),
    humidity_range character varying(50),
    temperature_now character varying(50),
    humidity_now character varying(50),
    customer_id character varying(50),
    worker_id character varying(50),
    summa bigint
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17009)
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_product_id_seq OWNER TO postgres;

--
-- TOC entry 4852 (class 0 OID 0)
-- Dependencies: 223
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- TOC entry 224 (class 1259 OID 17010)
-- Name: user_authority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_authority (
    user_id bigint NOT NULL,
    authority_name character varying(50) NOT NULL
);


ALTER TABLE public.user_authority OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17013)
-- Name: usr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usr (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    fname character varying(50),
    lname character varying(50),
    email character varying(50),
    phone character varying(50),
    age character varying(50),
    activated boolean,
    passwordconfirm character varying(100),
    f_name character varying(50),
    l_name character varying(50)
);


ALTER TABLE public.usr OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17018)
-- Name: usr_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usr_id_seq OWNER TO postgres;

--
-- TOC entry 4853 (class 0 OID 0)
-- Dependencies: 226
-- Name: usr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usr_id_seq OWNED BY public.usr.id;


--
-- TOC entry 4662 (class 2604 OID 17019)
-- Name: addressstorage address_storage_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addressstorage ALTER COLUMN address_storage_id SET DEFAULT nextval('public.addressstorage_address_storage_id_seq'::regclass);


--
-- TOC entry 4663 (class 2604 OID 17020)
-- Name: ordering ordering_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordering ALTER COLUMN ordering_id SET DEFAULT nextval('public.ordering_ordering_id_seq'::regclass);


--
-- TOC entry 4664 (class 2604 OID 17021)
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- TOC entry 4665 (class 2604 OID 17022)
-- Name: usr id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usr ALTER COLUMN id SET DEFAULT nextval('public.usr_id_seq'::regclass);


--
-- TOC entry 4833 (class 0 OID 16987)
-- Dependencies: 215
-- Data for Name: address_storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address_storage (address_storage_id, price, product_id, size, status, storage_id) FROM stdin;
5	100	5	string	t	AZ001
6	1	1	M	f	ZFGFG
\.


--
-- TOC entry 4834 (class 0 OID 16992)
-- Dependencies: 216
-- Data for Name: addressstorage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addressstorage (address_storage_id, storage_id, size, price, status, product_id) FROM stdin;
\.


--
-- TOC entry 4836 (class 0 OID 16996)
-- Dependencies: 218
-- Data for Name: authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authority (name) FROM stdin;
ROLE_USER
ROLE_ADMIN
\.


--
-- TOC entry 4838 (class 0 OID 17000)
-- Dependencies: 220
-- Data for Name: ordering; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordering (ordering_id, date, status, product_id, sum, size) FROM stdin;
\.


--
-- TOC entry 4840 (class 0 OID 17004)
-- Dependencies: 222
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, weight, size, type_of_product, quantity, storage_life, storage_address, temperature_range, humidity_range, temperature_now, humidity_now, customer_id, worker_id, summa) FROM stdin;
4	string	string	string	0	string	string	string	string	string	string	string	string	0
\.


--
-- TOC entry 4842 (class 0 OID 17010)
-- Dependencies: 224
-- Data for Name: user_authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_authority (user_id, authority_name) FROM stdin;
2	ROLE_USER
3	ROLE_USER
\.


--
-- TOC entry 4843 (class 0 OID 17013)
-- Dependencies: 225
-- Data for Name: usr; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usr (id, username, password, fname, lname, email, phone, age, activated, passwordconfirm, f_name, l_name) FROM stdin;
2	ddddd	$2a$10$ljXfsDMbFyyWst4r0dfbgOERhc6aLtutnUcB2q4UKpsdSMSmSEksC	\N	\N	ddddd	123456789	0	t	\N	ddddd	ddddd
3	aaaaa	$2a$10$yk9W.CVA612.LKPsrAJTJuU8BYoBZ5BrvT2hUN7cK8hPp5JCYo4la	\N	\N	aaaaa	12345678	20	t	\N	aaaaa	aaaaa
\.


--
-- TOC entry 4854 (class 0 OID 0)
-- Dependencies: 217
-- Name: addressstorage_address_storage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addressstorage_address_storage_id_seq', 1, false);


--
-- TOC entry 4855 (class 0 OID 0)
-- Dependencies: 219
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 6, true);


--
-- TOC entry 4856 (class 0 OID 0)
-- Dependencies: 221
-- Name: ordering_ordering_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ordering_ordering_id_seq', 1, false);


--
-- TOC entry 4857 (class 0 OID 0)
-- Dependencies: 223
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);


--
-- TOC entry 4858 (class 0 OID 0)
-- Dependencies: 226
-- Name: usr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usr_id_seq', 1, false);


--
-- TOC entry 4667 (class 2606 OID 17024)
-- Name: address_storage address_storage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_storage
    ADD CONSTRAINT address_storage_pkey PRIMARY KEY (address_storage_id);


--
-- TOC entry 4671 (class 2606 OID 17026)
-- Name: addressstorage addressstorage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addressstorage
    ADD CONSTRAINT addressstorage_pkey PRIMARY KEY (address_storage_id);


--
-- TOC entry 4673 (class 2606 OID 17028)
-- Name: addressstorage addressstorage_storage_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addressstorage
    ADD CONSTRAINT addressstorage_storage_id_key UNIQUE (storage_id);


--
-- TOC entry 4675 (class 2606 OID 17030)
-- Name: authority authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT authority_pkey PRIMARY KEY (name);


--
-- TOC entry 4677 (class 2606 OID 17032)
-- Name: ordering ordering_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordering
    ADD CONSTRAINT ordering_pkey PRIMARY KEY (ordering_id);


--
-- TOC entry 4679 (class 2606 OID 17034)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4669 (class 2606 OID 17036)
-- Name: address_storage uk_i792c8nq90ql443ap79cg5msi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_storage
    ADD CONSTRAINT uk_i792c8nq90ql443ap79cg5msi UNIQUE (storage_id);


--
-- TOC entry 4681 (class 2606 OID 17038)
-- Name: user_authority user_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_authority
    ADD CONSTRAINT user_authority_pkey PRIMARY KEY (user_id, authority_name);


--
-- TOC entry 4683 (class 2606 OID 17040)
-- Name: usr usr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (id);


--
-- TOC entry 4685 (class 2606 OID 17042)
-- Name: usr usr_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_username_key UNIQUE (username);


--
-- TOC entry 4686 (class 2606 OID 17043)
-- Name: addressstorage addressstorage_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addressstorage
    ADD CONSTRAINT addressstorage_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);


--
-- TOC entry 4687 (class 2606 OID 17048)
-- Name: ordering ordering_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordering
    ADD CONSTRAINT ordering_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);


--
-- TOC entry 4688 (class 2606 OID 17053)
-- Name: user_authority user_authority_authority_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_authority
    ADD CONSTRAINT user_authority_authority_name_fkey FOREIGN KEY (authority_name) REFERENCES public.authority(name);


--
-- TOC entry 4689 (class 2606 OID 17058)
-- Name: user_authority user_authority_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_authority
    ADD CONSTRAINT user_authority_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usr(id);


-- Completed on 2024-06-01 15:48:43

--
-- PostgreSQL database dump complete
--

