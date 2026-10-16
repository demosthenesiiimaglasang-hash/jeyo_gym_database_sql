--
-- PostgreSQL database dump
--

\restrict OJj4YugSzqCcf8aVknaY3FMUqjJGuilyUtlpKOiK4JMnhjio4cu5rNqQZpM1csO

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-10-16 16:35:20    

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 57415)
-- Name: jeyo_schema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA jeyo_schema;


ALTER SCHEMA jeyo_schema OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 57417)
-- Name: members; Type: TABLE; Schema: jeyo_schema; Owner: postgres
--

CREATE TABLE jeyo_schema.members (
    member_id integer NOT NULL,
    member_name character varying(50),
    member_number character varying(15),
    mem_expire_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    staff_id integer
);


ALTER TABLE jeyo_schema.members OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 57416)
-- Name: members_member_id_seq; Type: SEQUENCE; Schema: jeyo_schema; Owner: postgres
--

CREATE SEQUENCE jeyo_schema.members_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE jeyo_schema.members_member_id_seq OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 220
-- Name: members_member_id_seq; Type: SEQUENCE OWNED BY; Schema: jeyo_schema; Owner: postgres
--

ALTER SEQUENCE jeyo_schema.members_member_id_seq OWNED BY jeyo_schema.members.member_id;


--
-- TOC entry 225 (class 1259 OID 57439)
-- Name: product; Type: TABLE; Schema: jeyo_schema; Owner: postgres
--

CREATE TABLE jeyo_schema.product (
    product_id integer NOT NULL,
    product_name character varying(50),
    product_stock integer,
    staff_id integer
);


ALTER TABLE jeyo_schema.product OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 57438)
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: jeyo_schema; Owner: postgres
--

CREATE SEQUENCE jeyo_schema.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE jeyo_schema.product_product_id_seq OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: jeyo_schema; Owner: postgres
--

ALTER SEQUENCE jeyo_schema.product_product_id_seq OWNED BY jeyo_schema.product.product_id;


--
-- TOC entry 227 (class 1259 OID 57452)
-- Name: protein_powder; Type: TABLE; Schema: jeyo_schema; Owner: postgres
--

CREATE TABLE jeyo_schema.protein_powder (
    protein_id integer NOT NULL,
    protein_name character varying(50),
    add_ons character varying(50),
    product_id integer
);


ALTER TABLE jeyo_schema.protein_powder OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 57451)
-- Name: protein_powder_protein_id_seq; Type: SEQUENCE; Schema: jeyo_schema; Owner: postgres
--

CREATE SEQUENCE jeyo_schema.protein_powder_protein_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE jeyo_schema.protein_powder_protein_id_seq OWNER TO postgres;

--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 226
-- Name: protein_powder_protein_id_seq; Type: SEQUENCE OWNED BY; Schema: jeyo_schema; Owner: postgres
--

ALTER SEQUENCE jeyo_schema.protein_powder_protein_id_seq OWNED BY jeyo_schema.protein_powder.protein_id;


--
-- TOC entry 223 (class 1259 OID 57426)
-- Name: staff; Type: TABLE; Schema: jeyo_schema; Owner: postgres
--

CREATE TABLE jeyo_schema.staff (
    staff_id integer NOT NULL,
    staff_name character varying(50),
    staff_number character varying(11)
);


ALTER TABLE jeyo_schema.staff OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 57425)
-- Name: staff_staff_id_seq; Type: SEQUENCE; Schema: jeyo_schema; Owner: postgres
--

CREATE SEQUENCE jeyo_schema.staff_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE jeyo_schema.staff_staff_id_seq OWNER TO postgres;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 222
-- Name: staff_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: jeyo_schema; Owner: postgres
--

ALTER SEQUENCE jeyo_schema.staff_staff_id_seq OWNED BY jeyo_schema.staff.staff_id;


--
-- TOC entry 4771 (class 2604 OID 57420)
-- Name: members member_id; Type: DEFAULT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.members ALTER COLUMN member_id SET DEFAULT nextval('jeyo_schema.members_member_id_seq'::regclass);


--
-- TOC entry 4774 (class 2604 OID 57442)
-- Name: product product_id; Type: DEFAULT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.product ALTER COLUMN product_id SET DEFAULT nextval('jeyo_schema.product_product_id_seq'::regclass);


--
-- TOC entry 4775 (class 2604 OID 57455)
-- Name: protein_powder protein_id; Type: DEFAULT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.protein_powder ALTER COLUMN protein_id SET DEFAULT nextval('jeyo_schema.protein_powder_protein_id_seq'::regclass);


--
-- TOC entry 4773 (class 2604 OID 57429)
-- Name: staff staff_id; Type: DEFAULT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.staff ALTER COLUMN staff_id SET DEFAULT nextval('jeyo_schema.staff_staff_id_seq'::regclass);


--
-- TOC entry 4935 (class 0 OID 57417)
-- Dependencies: 221
-- Data for Name: members; Type: TABLE DATA; Schema: jeyo_schema; Owner: postgres
--

COPY jeyo_schema.members (member_id, member_name, member_number, mem_expire_date, staff_id) FROM stdin;
1	Nathan	09234767767	2026-10-16 16:01:15.011107+08	1
\.


--
-- TOC entry 4939 (class 0 OID 57439)
-- Dependencies: 225
-- Data for Name: product; Type: TABLE DATA; Schema: jeyo_schema; Owner: postgres
--

COPY jeyo_schema.product (product_id, product_name, product_stock, staff_id) FROM stdin;
1	protein powder	20	1
\.


--
-- TOC entry 4941 (class 0 OID 57452)
-- Dependencies: 227
-- Data for Name: protein_powder; Type: TABLE DATA; Schema: jeyo_schema; Owner: postgres
--

COPY jeyo_schema.protein_powder (protein_id, protein_name, add_ons, product_id) FROM stdin;
1	whey strawberry	banana	1
\.


--
-- TOC entry 4937 (class 0 OID 57426)
-- Dependencies: 223
-- Data for Name: staff; Type: TABLE DATA; Schema: jeyo_schema; Owner: postgres
--

COPY jeyo_schema.staff (staff_id, staff_name, staff_number) FROM stdin;
1	Lee	09254564489
\.


--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 220
-- Name: members_member_id_seq; Type: SEQUENCE SET; Schema: jeyo_schema; Owner: postgres
--

SELECT pg_catalog.setval('jeyo_schema.members_member_id_seq', 1, true);


--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: jeyo_schema; Owner: postgres
--

SELECT pg_catalog.setval('jeyo_schema.product_product_id_seq', 1, true);


--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 226
-- Name: protein_powder_protein_id_seq; Type: SEQUENCE SET; Schema: jeyo_schema; Owner: postgres
--

SELECT pg_catalog.setval('jeyo_schema.protein_powder_protein_id_seq', 1, true);


--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 222
-- Name: staff_staff_id_seq; Type: SEQUENCE SET; Schema: jeyo_schema; Owner: postgres
--

SELECT pg_catalog.setval('jeyo_schema.staff_staff_id_seq', 1, true);


--
-- TOC entry 4777 (class 2606 OID 57424)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


--
-- TOC entry 4781 (class 2606 OID 57445)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4783 (class 2606 OID 57458)
-- Name: protein_powder protein_powder_pkey; Type: CONSTRAINT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.protein_powder
    ADD CONSTRAINT protein_powder_pkey PRIMARY KEY (protein_id);


--
-- TOC entry 4779 (class 2606 OID 57432)
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- TOC entry 4786 (class 2606 OID 57459)
-- Name: protein_powder fk_product; Type: FK CONSTRAINT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.protein_powder
    ADD CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES jeyo_schema.product(product_id);


--
-- TOC entry 4784 (class 2606 OID 57433)
-- Name: members fk_staff; Type: FK CONSTRAINT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.members
    ADD CONSTRAINT fk_staff FOREIGN KEY (staff_id) REFERENCES jeyo_schema.staff(staff_id);


--
-- TOC entry 4785 (class 2606 OID 57446)
-- Name: product fk_staff; Type: FK CONSTRAINT; Schema: jeyo_schema; Owner: postgres
--

ALTER TABLE ONLY jeyo_schema.product
    ADD CONSTRAINT fk_staff FOREIGN KEY (staff_id) REFERENCES jeyo_schema.staff(staff_id);


-- Completed on 2026-10-16 16:35:20

--
-- PostgreSQL database dump complete
--

\unrestrict OJj4YugSzqCcf8aVknaY3FMUqjJGuilyUtlpKOiK4JMnhjio4cu5rNqQZpM1csO

