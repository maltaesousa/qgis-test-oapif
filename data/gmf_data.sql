--
-- PostgreSQL database dump
--

\restrict PCRVepXIHjYfAUdcFmnJ8oKvnfcOeqMP6rhQlS5jhYsXNlTeuOFAf5TxW1mUA9n

-- Dumped from database version 17.6
-- Dumped by pg_dump version 18.4

-- Started on 2026-10-23 13:27:01

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
-- TOC entry 18 (class 2615 OID 2790976)
-- Name: demo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA demo;


SET default_table_access_method = heap;

--
-- TOC entry 485 (class 1259 OID 2793027)
-- Name: demo01_edit_point; Type: TABLE; Schema: demo; Owner: -
--

CREATE TABLE demo.demo01_edit_point (
    id integer NOT NULL,
    details text,
    geom public.geometry(Point,2056)
);


--
-- TOC entry 486 (class 1259 OID 2793032)
-- Name: demo01_edit_point_idobj_seq; Type: SEQUENCE; Schema: demo; Owner: -
--

CREATE SEQUENCE demo.demo01_edit_point_idobj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 10678 (class 0 OID 0)
-- Dependencies: 486
-- Name: demo01_edit_point_idobj_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: -
--

ALTER SEQUENCE demo.demo01_edit_point_idobj_seq OWNED BY demo.demo01_edit_point.id;


--
-- TOC entry 487 (class 1259 OID 2793033)
-- Name: demo02_edit_line; Type: TABLE; Schema: demo; Owner: -
--

CREATE TABLE demo.demo02_edit_line (
    id integer NOT NULL,
    details text,
    geom public.geometry(LineString,2056)
);


--
-- TOC entry 488 (class 1259 OID 2793038)
-- Name: demo02_edit_line_idobj_seq; Type: SEQUENCE; Schema: demo; Owner: -
--

CREATE SEQUENCE demo.demo02_edit_line_idobj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 10679 (class 0 OID 0)
-- Dependencies: 488
-- Name: demo02_edit_line_idobj_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: -
--

ALTER SEQUENCE demo.demo02_edit_line_idobj_seq OWNED BY demo.demo02_edit_line.id;


--
-- TOC entry 489 (class 1259 OID 2793039)
-- Name: demo03_edit_polygon; Type: TABLE; Schema: demo; Owner: -
--

CREATE TABLE demo.demo03_edit_polygon (
    id integer NOT NULL,
    details text,
    geom public.geometry(Polygon,2056)
);


--
-- TOC entry 490 (class 1259 OID 2793044)
-- Name: demo03_edit_polygon_idobj_seq; Type: SEQUENCE; Schema: demo; Owner: -
--

CREATE SEQUENCE demo.demo03_edit_polygon_idobj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 10680 (class 0 OID 0)
-- Dependencies: 490
-- Name: demo03_edit_polygon_idobj_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: -
--

ALTER SEQUENCE demo.demo03_edit_polygon_idobj_seq OWNED BY demo.demo03_edit_polygon.id;


--
-- TOC entry 491 (class 1259 OID 2793045)
-- Name: demo04_edit_multiline; Type: TABLE; Schema: demo; Owner: -
--

CREATE TABLE demo.demo04_edit_multiline (
    id integer NOT NULL,
    details text,
    geom public.geometry(MultiLineString,2056)
);


--
-- TOC entry 492 (class 1259 OID 2793050)
-- Name: demo04_edit_multiline_idobj_seq; Type: SEQUENCE; Schema: demo; Owner: -
--

CREATE SEQUENCE demo.demo04_edit_multiline_idobj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 10681 (class 0 OID 0)
-- Dependencies: 492
-- Name: demo04_edit_multiline_idobj_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: -
--

ALTER SEQUENCE demo.demo04_edit_multiline_idobj_seq OWNED BY demo.demo04_edit_multiline.id;


--
-- TOC entry 493 (class 1259 OID 2793051)
-- Name: demo05_edit_multipolygon; Type: TABLE; Schema: demo; Owner: -
--

CREATE TABLE demo.demo05_edit_multipolygon (
    id integer NOT NULL,
    details text,
    geom public.geometry(MultiPolygon,2056)
);


--
-- TOC entry 494 (class 1259 OID 2793056)
-- Name: demo05_edit_multipolygon_idobj_seq; Type: SEQUENCE; Schema: demo; Owner: -
--

CREATE SEQUENCE demo.demo05_edit_multipolygon_idobj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 10682 (class 0 OID 0)
-- Dependencies: 494
-- Name: demo05_edit_multipolygon_idobj_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: -
--

ALTER SEQUENCE demo.demo05_edit_multipolygon_idobj_seq OWNED BY demo.demo05_edit_multipolygon.id;


--
-- TOC entry 10425 (class 2604 OID 2798048)
-- Name: demo01_edit_point id; Type: DEFAULT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo01_edit_point ALTER COLUMN id SET DEFAULT nextval('demo.demo01_edit_point_idobj_seq'::regclass);


--
-- TOC entry 10426 (class 2604 OID 2798049)
-- Name: demo02_edit_line id; Type: DEFAULT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo02_edit_line ALTER COLUMN id SET DEFAULT nextval('demo.demo02_edit_line_idobj_seq'::regclass);


--
-- TOC entry 10427 (class 2604 OID 2798050)
-- Name: demo03_edit_polygon id; Type: DEFAULT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo03_edit_polygon ALTER COLUMN id SET DEFAULT nextval('demo.demo03_edit_polygon_idobj_seq'::regclass);


--
-- TOC entry 10428 (class 2604 OID 2798051)
-- Name: demo04_edit_multiline id; Type: DEFAULT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo04_edit_multiline ALTER COLUMN id SET DEFAULT nextval('demo.demo04_edit_multiline_idobj_seq'::regclass);


--
-- TOC entry 10429 (class 2604 OID 2798052)
-- Name: demo05_edit_multipolygon id; Type: DEFAULT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo05_edit_multipolygon ALTER COLUMN id SET DEFAULT nextval('demo.demo05_edit_multipolygon_idobj_seq'::regclass);


--
-- TOC entry 10663 (class 0 OID 2793027)
-- Dependencies: 485
-- Data for Name: demo01_edit_point; Type: TABLE DATA; Schema: demo; Owner: -
--

COPY demo.demo01_edit_point (id, details, geom) FROM stdin;
\.


--
-- TOC entry 10665 (class 0 OID 2793033)
-- Dependencies: 487
-- Data for Name: demo02_edit_line; Type: TABLE DATA; Schema: demo; Owner: -
--

COPY demo.demo02_edit_line (id, details, geom) FROM stdin;
\.


--
-- TOC entry 10667 (class 0 OID 2793039)
-- Dependencies: 489
-- Data for Name: demo03_edit_polygon; Type: TABLE DATA; Schema: demo; Owner: -
--

COPY demo.demo03_edit_polygon (id, details, geom) FROM stdin;
\.


--
-- TOC entry 10669 (class 0 OID 2793045)
-- Dependencies: 491
-- Data for Name: demo04_edit_multiline; Type: TABLE DATA; Schema: demo; Owner: -
--

COPY demo.demo04_edit_multiline (id, details, geom) FROM stdin;
\.


--
-- TOC entry 10671 (class 0 OID 2793051)
-- Dependencies: 493
-- Data for Name: demo05_edit_multipolygon; Type: TABLE DATA; Schema: demo; Owner: -
--

COPY demo.demo05_edit_multipolygon (id, details, geom) FROM stdin;
\.


--
-- TOC entry 10683 (class 0 OID 0)
-- Dependencies: 486
-- Name: demo01_edit_point_idobj_seq; Type: SEQUENCE SET; Schema: demo; Owner: -
--

SELECT pg_catalog.setval('demo.demo01_edit_point_idobj_seq', 1, false);


--
-- TOC entry 10684 (class 0 OID 0)
-- Dependencies: 488
-- Name: demo02_edit_line_idobj_seq; Type: SEQUENCE SET; Schema: demo; Owner: -
--

SELECT pg_catalog.setval('demo.demo02_edit_line_idobj_seq', 1, false);


--
-- TOC entry 10685 (class 0 OID 0)
-- Dependencies: 490
-- Name: demo03_edit_polygon_idobj_seq; Type: SEQUENCE SET; Schema: demo; Owner: -
--

SELECT pg_catalog.setval('demo.demo03_edit_polygon_idobj_seq', 1, false);


--
-- TOC entry 10686 (class 0 OID 0)
-- Dependencies: 492
-- Name: demo04_edit_multiline_idobj_seq; Type: SEQUENCE SET; Schema: demo; Owner: -
--

SELECT pg_catalog.setval('demo.demo04_edit_multiline_idobj_seq', 1, false);


--
-- TOC entry 10687 (class 0 OID 0)
-- Dependencies: 494
-- Name: demo05_edit_multipolygon_idobj_seq; Type: SEQUENCE SET; Schema: demo; Owner: -
--

SELECT pg_catalog.setval('demo.demo05_edit_multipolygon_idobj_seq', 1, false);


--
-- TOC entry 10431 (class 2606 OID 2798890)
-- Name: demo01_edit_point demo01_edit_point_pkey; Type: CONSTRAINT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo01_edit_point
    ADD CONSTRAINT demo01_edit_point_pkey PRIMARY KEY (id);


--
-- TOC entry 10433 (class 2606 OID 2798892)
-- Name: demo02_edit_line demo02_edit_line_pkey; Type: CONSTRAINT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo02_edit_line
    ADD CONSTRAINT demo02_edit_line_pkey PRIMARY KEY (id);


--
-- TOC entry 10435 (class 2606 OID 2798894)
-- Name: demo03_edit_polygon demo03_edit_polygon_pkey; Type: CONSTRAINT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo03_edit_polygon
    ADD CONSTRAINT demo03_edit_polygon_pkey PRIMARY KEY (id);


--
-- TOC entry 10437 (class 2606 OID 2798896)
-- Name: demo04_edit_multiline demo04_edit_multiline_pkey; Type: CONSTRAINT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo04_edit_multiline
    ADD CONSTRAINT demo04_edit_multiline_pkey PRIMARY KEY (id);


--
-- TOC entry 10439 (class 2606 OID 2798898)
-- Name: demo05_edit_multipolygon demo05_edit_multipolygon_pkey; Type: CONSTRAINT; Schema: demo; Owner: -
--

ALTER TABLE ONLY demo.demo05_edit_multipolygon
    ADD CONSTRAINT demo05_edit_multipolygon_pkey PRIMARY KEY (id);


-- Completed on 2026-10-23 13:27:01

--
-- PostgreSQL database dump complete
--

\unrestrict PCRVepXIHjYfAUdcFmnJ8oKvnfcOeqMP6rhQlS5jhYsXNlTeuOFAf5TxW1mUA9n

-- The dump empties the search path
SELECT pg_catalog.set_config('search_path', 'public', false);

-- Complement to gmf_data.sql: brings the demo tables in line with gmf_project.qgs
-- (fields code, parent_ref, status, state, born_when and the demo06_edit_parent table)
-- and seeds a feature so the items can be read.

CREATE TYPE demo.state AS ENUM ('OPEN', 'CLOSED', 'UNKNOWN');

CREATE TABLE demo.demo06_edit_parent (
    id serial PRIMARY KEY,
    parent_name text,
    geom public.geometry(Polygon,2056)
);

DO $$
DECLARE
    t text;
BEGIN
    FOREACH t IN ARRAY ARRAY[
        'demo01_edit_point',
        'demo02_edit_line',
        'demo03_edit_polygon',
        'demo04_edit_multiline',
        'demo05_edit_multipolygon'
    ] LOOP
        EXECUTE format(
            'ALTER TABLE demo.%I
                ADD COLUMN code varchar(3),
                ADD COLUMN parent_ref integer REFERENCES demo.demo06_edit_parent (id),
                ADD COLUMN status text,
                ADD COLUMN state demo.state,
                ADD COLUMN born_when timestamp',
            t
        );
    END LOOP;
END $$;

INSERT INTO demo.demo06_edit_parent (parent_name, geom) VALUES (
    'Parent 1',
    ST_GeomFromText('POLYGON((2557000 1210000,2559000 1210000,2559000 1212000,2557000 1212000,2557000 1210000))', 2056)
);

INSERT INTO demo.demo01_edit_point (details, code, parent_ref, status, state, geom) VALUES (
    'Seed feature', 'ABC', 1, 'PUBLISHED', 'OPEN',
    ST_GeomFromText('POINT(2558000 1211000)', 2056)
);

-- GeoMapFish admin configuration for gmf_project.qgs (same rows as created through the admin interface):
-- an OGC server 'qgisserver', a public WMS layer with all the demo layers and a read/write
-- restriction area for role_admin (required to create, update and delete features).


INSERT INTO main.ogc_server (
    name, description, url, type, image_type, auth, wfs_support, is_single_tile,
    map_protocol, query_protocol, query_auth, edit_protocol, edit_auth
) VALUES (
    'qgisserver', 'QGIS Server with gmf_project.qgs',
    'config://qgisserver/?MAP=/etc/qgisserver/project.qgs',
    'qgisserver', 'image/png', 'Standard auth', true, false,
    'WMS', 'WFS/GetFeature', 'Standard auth', 'OGC API - Features', 'Standard auth'
);

WITH item AS (
    INSERT INTO main.treeitem (type, name) VALUES ('l_wms', 'demo_edit') RETURNING id
), layer AS (
    INSERT INTO main.layer (id, public) SELECT id, true FROM item RETURNING id
)
INSERT INTO main.layer_wms (id, ogc_server_id, layer)
SELECT
    layer.id,
    (SELECT id FROM main.ogc_server WHERE name = 'qgisserver'),
    'demo01_edit_point,demo02_edit_line,demo03_edit_polygon,demo04_edit_multiline,'
    'demo05_edit_multipolygon,demo06_edit_parent'
FROM layer;

INSERT INTO main.restrictionarea (name, readwrite) VALUES ('demo_edit', true);

INSERT INTO main.layer_restrictionarea (layer_id, restrictionarea_id)
SELECT l.id, r.id FROM main.treeitem l, main.restrictionarea r
WHERE l.name = 'demo_edit' AND l.type = 'l_wms' AND r.name = 'demo_edit';

INSERT INTO main.role_restrictionarea (role_id, restrictionarea_id)
SELECT ro.id, r.id FROM main.role ro, main.restrictionarea r
WHERE ro.name = 'role_admin' AND r.name = 'demo_edit';
