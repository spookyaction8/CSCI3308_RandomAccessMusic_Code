--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accountdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountdata (
    userid integer NOT NULL,
    username text NOT NULL,
    userpassword text NOT NULL,
    verified integer,
    reviewcount integer
);


ALTER TABLE public.accountdata OWNER TO postgres;

--
-- Name: accountdata_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountdata_userid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountdata_userid_seq OWNER TO postgres;

--
-- Name: accountdata_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountdata_userid_seq OWNED BY public.accountdata.userid;


--
-- Name: userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountdata ALTER COLUMN userid SET DEFAULT nextval('public.accountdata_userid_seq'::regclass);


--
-- Data for Name: accountdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountdata (userid, username, userpassword, verified, reviewcount) FROM stdin;
1	Garrett	gahe0404	0	0
2	Mattie	madi6851	0	0
3	Sanaa	muot5862	0	0
4	Priyanka	prka4960	0	0
5	Zack	zate8983	0	0
6	Matthew	masi9192	0	0
\.


--
-- Name: accountdata_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountdata_userid_seq', 6, true);


--
-- Name: accountdata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountdata
    ADD CONSTRAINT accountdata_pkey PRIMARY KEY (userid);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

