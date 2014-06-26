--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: artists; Type: TABLE; Schema: public; Owner: Ros; Tablespace: 
--

CREATE TABLE artists (
    id integer NOT NULL,
    name character varying(255),
    nationality character varying(255),
    dob date,
    period character varying(255),
    image text
);


ALTER TABLE public.artists OWNER TO "Ros";

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: Ros
--

CREATE SEQUENCE artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_id_seq OWNER TO "Ros";

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ros
--

ALTER SEQUENCE artists_id_seq OWNED BY artists.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Ros; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Ros";

--
-- Name: works; Type: TABLE; Schema: public; Owner: Ros; Tablespace: 
--

CREATE TABLE works (
    id integer NOT NULL,
    title character varying(255),
    year character varying(255),
    medium character varying(255),
    style character varying(255),
    image text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    artist_id integer
);


ALTER TABLE public.works OWNER TO "Ros";

--
-- Name: works_id_seq; Type: SEQUENCE; Schema: public; Owner: Ros
--

CREATE SEQUENCE works_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_id_seq OWNER TO "Ros";

--
-- Name: works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ros
--

ALTER SEQUENCE works_id_seq OWNED BY works.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Ros
--

ALTER TABLE ONLY artists ALTER COLUMN id SET DEFAULT nextval('artists_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Ros
--

ALTER TABLE ONLY works ALTER COLUMN id SET DEFAULT nextval('works_id_seq'::regclass);


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: Ros
--

COPY artists (id, name, nationality, dob, period, image) FROM stdin;
1	Joan Miro	Spanish	1893-04-20	20th century	http://upload.wikimedia.org/wikipedia/commons/5/5c/Portrait_of_Joan_Miro%2C_Barcelona_1935_June_13.jpg
\.


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ros
--

SELECT pg_catalog.setval('artists_id_seq', 1, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Ros
--

COPY schema_migrations (version) FROM stdin;
20140625000621
20140625001329
20140625042334
20140625042856
\.


--
-- Data for Name: works; Type: TABLE DATA; Schema: public; Owner: Ros
--

COPY works (id, title, year, medium, style, image, created_at, updated_at, artist_id) FROM stdin;
1	The Flight of the Dragonfly in Front of the Sun	1968	oil on canvas	Abstract Art	http://uploads0.wikipaintings.org/images/joan-miro/the-flight-of-the-dragonfly-in-front-of-the-sun.jpg	2014-06-26 00:33:13.364367	2014-06-26 00:33:13.364367	\N
\.


--
-- Name: works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ros
--

SELECT pg_catalog.setval('works_id_seq', 1, true);


--
-- Name: artists_pkey; Type: CONSTRAINT; Schema: public; Owner: Ros; Tablespace: 
--

ALTER TABLE ONLY artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: works_pkey; Type: CONSTRAINT; Schema: public; Owner: Ros; Tablespace: 
--

ALTER TABLE ONLY works
    ADD CONSTRAINT works_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: Ros; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: Ros
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "Ros";
GRANT ALL ON SCHEMA public TO "Ros";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

