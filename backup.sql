--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3 (Homebrew)

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
-- Name: contoh; Type: SCHEMA; Schema: -; Owner: rifuki
--

CREATE SCHEMA contoh;


ALTER SCHEMA contoh OWNER TO rifuki;

--
-- Name: product_category; Type: TYPE; Schema: public; Owner: rifuki
--

CREATE TYPE public.product_category AS ENUM (
    'Makanan',
    'Minuman',
    'Lain-lain'
);


ALTER TYPE public.product_category OWNER TO rifuki;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: products; Type: TABLE; Schema: contoh; Owner: rifuki
--

CREATE TABLE contoh.products (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE contoh.products OWNER TO rifuki;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: contoh; Owner: rifuki
--

CREATE SEQUENCE contoh.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contoh.products_id_seq OWNER TO rifuki;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: contoh; Owner: rifuki
--

ALTER SEQUENCE contoh.products_id_seq OWNED BY contoh.products.id;


--
-- Name: admin; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100)
);


ALTER TABLE public.admin OWNER TO rifuki;

--
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_id_seq OWNER TO rifuki;

--
-- Name: admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.categories (
    id character varying(10) NOT NULL,
    name character varying(10) NOT NULL
);


ALTER TABLE public.categories OWNER TO rifuki;

--
-- Name: character; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public."character" (
    id integer NOT NULL,
    codename tsvector,
    name character varying NOT NULL
);


ALTER TABLE public."character" OWNER TO rifuki;

--
-- Name: character_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.character_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.character_id_seq OWNER TO rifuki;

--
-- Name: character_id_seq1; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.character_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.character_id_seq1 OWNER TO rifuki;

--
-- Name: character_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.character_id_seq1 OWNED BY public."character".id;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(100)
);


ALTER TABLE public.customer OWNER TO rifuki;

--
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO rifuki;

--
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- Name: guestbooks; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.guestbooks (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    content text
);


ALTER TABLE public.guestbooks OWNER TO rifuki;

--
-- Name: guestbooks_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.guestbooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guestbooks_id_seq OWNER TO rifuki;

--
-- Name: guestbooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.guestbooks_id_seq OWNED BY public.guestbooks.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.items (
    code integer NOT NULL,
    name character varying(100) NOT NULL,
    price integer DEFAULT 100 NOT NULL,
    amount integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.items OWNER TO rifuki;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    total integer NOT NULL,
    order_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.orders OWNER TO rifuki;

--
-- Name: orders_detail; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.orders_detail (
    id_product character varying(20) NOT NULL,
    id_order integer NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.orders_detail OWNER TO rifuki;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO rifuki;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.products (
    id character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    price integer NOT NULL,
    quantity integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    id_category character varying(10),
    CONSTRAINT price_check CHECK ((price >= 1000)),
    CONSTRAINT quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.products OWNER TO rifuki;

--
-- Name: sellers; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.sellers OWNER TO rifuki;

--
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.sellers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sellers_id_seq OWNER TO rifuki;

--
-- Name: sellers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.sellers_id_seq OWNED BY public.sellers.id;


--
-- Name: sequence_example; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.sequence_example
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequence_example OWNER TO rifuki;

--
-- Name: wallet; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.wallet (
    id integer NOT NULL,
    id_customer integer NOT NULL,
    balance integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.wallet OWNER TO rifuki;

--
-- Name: wallet_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.wallet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallet_id_seq OWNER TO rifuki;

--
-- Name: wallet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.wallet_id_seq OWNED BY public.wallet.id;


--
-- Name: wishlist; Type: TABLE; Schema: public; Owner: rifuki
--

CREATE TABLE public.wishlist (
    id integer NOT NULL,
    description text,
    id_product character varying(10) NOT NULL,
    id_customer integer
);


ALTER TABLE public.wishlist OWNER TO rifuki;

--
-- Name: wishlist_id_seq; Type: SEQUENCE; Schema: public; Owner: rifuki
--

CREATE SEQUENCE public.wishlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wishlist_id_seq OWNER TO rifuki;

--
-- Name: wishlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rifuki
--

ALTER SEQUENCE public.wishlist_id_seq OWNED BY public.wishlist.id;


--
-- Name: products id; Type: DEFAULT; Schema: contoh; Owner: rifuki
--

ALTER TABLE ONLY contoh.products ALTER COLUMN id SET DEFAULT nextval('contoh.products_id_seq'::regclass);


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);


--
-- Name: character id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public."character" ALTER COLUMN id SET DEFAULT nextval('public.character_id_seq1'::regclass);


--
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- Name: guestbooks id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.guestbooks ALTER COLUMN id SET DEFAULT nextval('public.guestbooks_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: sellers id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.sellers ALTER COLUMN id SET DEFAULT nextval('public.sellers_id_seq'::regclass);


--
-- Name: wallet id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wallet ALTER COLUMN id SET DEFAULT nextval('public.wallet_id_seq'::regclass);


--
-- Name: wishlist id; Type: DEFAULT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wishlist ALTER COLUMN id SET DEFAULT nextval('public.wishlist_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: contoh; Owner: rifuki
--

COPY contoh.products (id, name) FROM stdin;
1	iPhone
2	Sony Playstation
\.


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.admin (id, first_name, last_name) FROM stdin;
1	Aozora	Umeko
2	Setsuna	Rika
3	Mahoma	Rifuki
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.categories (id, name) FROM stdin;
C0001	Makanan
C0002	Minuman
C0003	Gadget
C0004	Laptop
C0005	Pulsa
\.


--
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public."character" (id, codename, name) FROM stdin;
1	'CV-01'	Hatsune Miku
2	'CV-02'	Kagamine Rin
3	'CV-03'	Megurine Luka
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.customer (id, first_name, last_name, email) FROM stdin;
12	Iuchi	Minori	iuchiminori@gmail.com
13	Setsuna	Rika	setsunarika@gmail.com
11	Aozora	Umeko	aozoraumeko@gmail.com
14	Mahoma	Rifuki	mahomarifuki@gmail.com
\.


--
-- Data for Name: guestbooks; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.guestbooks (id, email, title, content) FROM stdin;
1	aozoraumeko@gmail.com	feedback aozora	ini feedback aozora
2	aozoraumeko@gmail.com	feedback aozora	ini feedback aozora
3	iuchiminori@gmail.com	feedback minori	ini feedback minori
4	setsunarika@gmail.com	feedback setsuna	ini feedback setsuna
5	setsunarika@gmail.com	feedback setsuna	ini feedback setsuna
28	contohaozora	aozora	this is aozora
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.items (code, name, price, amount, created_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.orders (id, total, order_date) FROM stdin;
1	1	2023-08-12 05:25:22.824795
2	2	2023-08-12 05:25:22.824795
3	3	2023-08-12 05:25:22.824795
\.


--
-- Data for Name: orders_detail; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.orders_detail (id_product, id_order, price, quantity) FROM stdin;
P0001	1	1000	2
P0002	1	1000	2
P0003	1	1000	2
P0004	2	1000	2
P0006	2	1000	2
P0007	2	1000	2
P0001	3	1000	2
P0004	3	1000	2
P0005	3	1000	2
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.products (id, name, description, price, quantity, created_at, id_category) FROM stdin;
P0002	Mie Ayam Bakso Tahu	Mie Ayam Original + Bakso Tahu	20000	500	2023-08-08 09:02:34.32486	C0001
P0004	Mie Ayam Spesial	\N	30000	500	2023-08-08 09:02:34.326297	C0001
P0003	Mie Ayam Ceker	Mie Ayam + Ceker	20000	500	2023-08-08 09:02:34.326297	C0001
P0005	Mie Ayam Yamin	\N	15000	500	2023-08-08 09:02:34.326297	C0001
P0009	Contoh	\N	10000	500	2023-08-08 09:02:34.345723	C0002
P0006	Es Teh Tawar	\N	10000	500	2023-08-08 09:02:34.346851	C0002
P0007	Es Campur	\N	20000	500	2023-08-08 09:02:34.346851	C0002
P0008	Jus Jeruk	\N	15000	500	2023-08-08 09:02:34.346851	C0002
XXX1	Contoh Gagal	\N	10000	500	2023-08-08 15:30:32.767724	C0002
X0001	Contoh Satu	\N	10000	500	2023-08-12 05:47:12.121434	\N
X0002	Contoh Satu	\N	10000	500	2023-08-12 05:47:12.121434	\N
P0001	Mie Ayam Original	Mie ayam original enak	30000	500	2023-08-08 09:02:34.322826	C0001
\.


--
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.sellers (id, name, email) FROM stdin;
1	Aozora Umeko	aozoraumeko@gmail.com
2	Mahoma Rifuki	mahomarifuki@gmail.com
3	Iuchi Minori	iuchiminori@gmail.com
4	Setsuna Rika	setsunarika@gmail.com
\.


--
-- Data for Name: wallet; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.wallet (id, id_customer, balance) FROM stdin;
1	11	1000000
2	12	5000000
3	13	10050000
\.


--
-- Data for Name: wishlist; Type: TABLE DATA; Schema: public; Owner: rifuki
--

COPY public.wishlist (id, description, id_product, id_customer) FROM stdin;
2	Mie Ayam Kesukaan	P0001	11
3	Mie ayam Kesukaan	P0002	11
4	Mie ayam kesukaan	P0005	12
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: contoh; Owner: rifuki
--

SELECT pg_catalog.setval('contoh.products_id_seq', 2, true);


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.admin_id_seq', 3, true);


--
-- Name: character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.character_id_seq', 5, true);


--
-- Name: character_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.character_id_seq1', 3, true);


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.customer_id_seq', 14, true);


--
-- Name: guestbooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.guestbooks_id_seq', 28, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.orders_id_seq', 3, true);


--
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.sellers_id_seq', 4, true);


--
-- Name: sequence_example; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.sequence_example', 4, true);


--
-- Name: wallet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.wallet_id_seq', 3, true);


--
-- Name: wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rifuki
--

SELECT pg_catalog.setval('public.wishlist_id_seq', 5, true);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: character character_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_pkey PRIMARY KEY (id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: sellers email_unique; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT email_unique UNIQUE (email);


--
-- Name: guestbooks guestbooks_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.guestbooks
    ADD CONSTRAINT guestbooks_pkey PRIMARY KEY (id);


--
-- Name: orders_detail order_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.orders_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id_product, id_order);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- Name: customer unique_email; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT unique_email UNIQUE (first_name);


--
-- Name: wallet wallet_customer_unique; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wallet
    ADD CONSTRAINT wallet_customer_unique UNIQUE (id_customer);


--
-- Name: wallet wallet_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wallet
    ADD CONSTRAINT wallet_pkey PRIMARY KEY (id);


--
-- Name: wishlist wishlist_pkey; Type: CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (id);


--
-- Name: character_name_index; Type: INDEX; Schema: public; Owner: rifuki
--

CREATE INDEX character_name_index ON public."character" USING gin (to_tsvector('indonesian'::regconfig, (name)::text));


--
-- Name: products_description_search; Type: INDEX; Schema: public; Owner: rifuki
--

CREATE INDEX products_description_search ON public.products USING gin (to_tsvector('indonesian'::regconfig, description));


--
-- Name: products_name_search; Type: INDEX; Schema: public; Owner: rifuki
--

CREATE INDEX products_name_search ON public.products USING gin (to_tsvector('indonesian'::regconfig, (name)::text));


--
-- Name: sellers_email_and_name_index; Type: INDEX; Schema: public; Owner: rifuki
--

CREATE INDEX sellers_email_and_name_index ON public.sellers USING btree (email, name);


--
-- Name: sellers_id_and_name_index; Type: INDEX; Schema: public; Owner: rifuki
--

CREATE INDEX sellers_id_and_name_index ON public.sellers USING btree (id, name);


--
-- Name: sellers_name_index; Type: INDEX; Schema: public; Owner: rifuki
--

CREATE INDEX sellers_name_index ON public.sellers USING btree (name);


--
-- Name: orders_detail fk_orders_detail_order; Type: FK CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.orders_detail
    ADD CONSTRAINT fk_orders_detail_order FOREIGN KEY (id_order) REFERENCES public.orders(id);


--
-- Name: orders_detail fk_orders_detail_product; Type: FK CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.orders_detail
    ADD CONSTRAINT fk_orders_detail_product FOREIGN KEY (id_product) REFERENCES public.products(id);


--
-- Name: products fk_product_category; Type: FK CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_product_category FOREIGN KEY (id_category) REFERENCES public.categories(id);


--
-- Name: wallet fk_wallet_customer; Type: FK CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wallet
    ADD CONSTRAINT fk_wallet_customer FOREIGN KEY (id_customer) REFERENCES public.customer(id);


--
-- Name: wishlist fk_whislist_customer; Type: FK CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT fk_whislist_customer FOREIGN KEY (id_customer) REFERENCES public.customer(id);


--
-- Name: wishlist fk_wishlist_product; Type: FK CONSTRAINT; Schema: public; Owner: rifuki
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT fk_wishlist_product FOREIGN KEY (id_product) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TABLE admin; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.admin TO aozora;


--
-- Name: TABLE categories; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.categories TO aozora;


--
-- Name: TABLE "character"; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public."character" TO aozora;


--
-- Name: TABLE customer; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.customer TO iuchi;
GRANT SELECT,INSERT,UPDATE ON TABLE public.customer TO aozora;


--
-- Name: TABLE guestbooks; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.guestbooks TO aozora;


--
-- Name: SEQUENCE guestbooks_id_seq; Type: ACL; Schema: public; Owner: rifuki
--

GRANT ALL ON SEQUENCE public.guestbooks_id_seq TO aozora;


--
-- Name: TABLE items; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.items TO aozora;


--
-- Name: TABLE orders; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.orders TO aozora;


--
-- Name: TABLE orders_detail; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.orders_detail TO aozora;


--
-- Name: TABLE products; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.products TO aozora;


--
-- Name: TABLE sellers; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.sellers TO aozora;


--
-- Name: TABLE wallet; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.wallet TO aozora;


--
-- Name: TABLE wishlist; Type: ACL; Schema: public; Owner: rifuki
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.wishlist TO aozora;


--
-- PostgreSQL database dump complete
--

