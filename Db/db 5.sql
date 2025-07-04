toc.dat                                                                                             0000600 0004000 0002000 00000030505 15026527743 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       }           Serra    17.4    17.4 ,    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         O           1262    16942    Serra    DATABASE     z   CREATE DATABASE "Serra" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Italian_Italy.1252';
    DROP DATABASE "Serra";
                     postgres    false         �            1259    16995    misurazioni    TABLE     �   CREATE TABLE public.misurazioni (
    misurazioniid integer NOT NULL,
    sensoreid integer,
    valore numeric(4,2),
    tipo character varying(255),
    "timestamp" timestamp without time zone
);
    DROP TABLE public.misurazioni;
       public         heap r       postgres    false         �            1259    16994    misurazioni_misurazioniid_seq    SEQUENCE     �   CREATE SEQUENCE public.misurazioni_misurazioniid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.misurazioni_misurazioniid_seq;
       public               postgres    false    226         P           0    0    misurazioni_misurazioniid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.misurazioni_misurazioniid_seq OWNED BY public.misurazioni.misurazioniid;
          public               postgres    false    225         �            1259    16944    ruolo    TABLE     f   CREATE TABLE public.ruolo (
    ruoloid integer NOT NULL,
    nome character varying(255) NOT NULL
);
    DROP TABLE public.ruolo;
       public         heap r       postgres    false         �            1259    16943    ruolo_ruoloid_seq    SEQUENCE     �   CREATE SEQUENCE public.ruolo_ruoloid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.ruolo_ruoloid_seq;
       public               postgres    false    218         Q           0    0    ruolo_ruoloid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.ruolo_ruoloid_seq OWNED BY public.ruolo.ruoloid;
          public               postgres    false    217         �            1259    16981    sensore    TABLE     �   CREATE TABLE public.sensore (
    sensoreid integer NOT NULL,
    serraid integer,
    modello character varying(255),
    descrizione character varying(255),
    stato boolean
);
    DROP TABLE public.sensore;
       public         heap r       postgres    false         �            1259    16980    sensore_sensoreid_seq    SEQUENCE     �   CREATE SEQUENCE public.sensore_sensoreid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sensore_sensoreid_seq;
       public               postgres    false    224         R           0    0    sensore_sensoreid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.sensore_sensoreid_seq OWNED BY public.sensore.sensoreid;
          public               postgres    false    223         �            1259    16967    serra    TABLE     �   CREATE TABLE public.serra (
    serraid integer NOT NULL,
    userid integer,
    nome character varying(255),
    prodotto character varying(255)
);
    DROP TABLE public.serra;
       public         heap r       postgres    false         �            1259    16966    serra_serraid_seq    SEQUENCE     �   CREATE SEQUENCE public.serra_serraid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.serra_serraid_seq;
       public               postgres    false    222         S           0    0    serra_serraid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.serra_serraid_seq OWNED BY public.serra.serraid;
          public               postgres    false    221         �            1259    16953    utente    TABLE     �   CREATE TABLE public.utente (
    userid integer NOT NULL,
    ruoloid integer,
    cognome character varying(255),
    nome character varying(255),
    email character varying(255),
    password character varying(255)
);
    DROP TABLE public.utente;
       public         heap r       postgres    false         �            1259    16952    utente_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.utente_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.utente_userid_seq;
       public               postgres    false    220         T           0    0    utente_userid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.utente_userid_seq OWNED BY public.utente.userid;
          public               postgres    false    219         �           2604    16998    misurazioni misurazioniid    DEFAULT     �   ALTER TABLE ONLY public.misurazioni ALTER COLUMN misurazioniid SET DEFAULT nextval('public.misurazioni_misurazioniid_seq'::regclass);
 H   ALTER TABLE public.misurazioni ALTER COLUMN misurazioniid DROP DEFAULT;
       public               postgres    false    225    226    226         �           2604    16947    ruolo ruoloid    DEFAULT     n   ALTER TABLE ONLY public.ruolo ALTER COLUMN ruoloid SET DEFAULT nextval('public.ruolo_ruoloid_seq'::regclass);
 <   ALTER TABLE public.ruolo ALTER COLUMN ruoloid DROP DEFAULT;
       public               postgres    false    218    217    218         �           2604    16984    sensore sensoreid    DEFAULT     v   ALTER TABLE ONLY public.sensore ALTER COLUMN sensoreid SET DEFAULT nextval('public.sensore_sensoreid_seq'::regclass);
 @   ALTER TABLE public.sensore ALTER COLUMN sensoreid DROP DEFAULT;
       public               postgres    false    223    224    224         �           2604    16970    serra serraid    DEFAULT     n   ALTER TABLE ONLY public.serra ALTER COLUMN serraid SET DEFAULT nextval('public.serra_serraid_seq'::regclass);
 <   ALTER TABLE public.serra ALTER COLUMN serraid DROP DEFAULT;
       public               postgres    false    221    222    222         �           2604    16956    utente userid    DEFAULT     n   ALTER TABLE ONLY public.utente ALTER COLUMN userid SET DEFAULT nextval('public.utente_userid_seq'::regclass);
 <   ALTER TABLE public.utente ALTER COLUMN userid DROP DEFAULT;
       public               postgres    false    219    220    220         I          0    16995    misurazioni 
   TABLE DATA           Z   COPY public.misurazioni (misurazioniid, sensoreid, valore, tipo, "timestamp") FROM stdin;
    public               postgres    false    226       4937.dat A          0    16944    ruolo 
   TABLE DATA           .   COPY public.ruolo (ruoloid, nome) FROM stdin;
    public               postgres    false    218       4929.dat G          0    16981    sensore 
   TABLE DATA           R   COPY public.sensore (sensoreid, serraid, modello, descrizione, stato) FROM stdin;
    public               postgres    false    224       4935.dat E          0    16967    serra 
   TABLE DATA           @   COPY public.serra (serraid, userid, nome, prodotto) FROM stdin;
    public               postgres    false    222       4933.dat C          0    16953    utente 
   TABLE DATA           Q   COPY public.utente (userid, ruoloid, cognome, nome, email, password) FROM stdin;
    public               postgres    false    220       4931.dat U           0    0    misurazioni_misurazioniid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.misurazioni_misurazioniid_seq', 1, false);
          public               postgres    false    225         V           0    0    ruolo_ruoloid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ruolo_ruoloid_seq', 3, true);
          public               postgres    false    217         W           0    0    sensore_sensoreid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sensore_sensoreid_seq', 9, true);
          public               postgres    false    223         X           0    0    serra_serraid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.serra_serraid_seq', 3, true);
          public               postgres    false    221         Y           0    0    utente_userid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.utente_userid_seq', 10, true);
          public               postgres    false    219         �           2606    17000    misurazioni misurazioni_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.misurazioni
    ADD CONSTRAINT misurazioni_pkey PRIMARY KEY (misurazioniid);
 F   ALTER TABLE ONLY public.misurazioni DROP CONSTRAINT misurazioni_pkey;
       public                 postgres    false    226         �           2606    16951    ruolo ruolo_nome_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.ruolo
    ADD CONSTRAINT ruolo_nome_key UNIQUE (nome);
 >   ALTER TABLE ONLY public.ruolo DROP CONSTRAINT ruolo_nome_key;
       public                 postgres    false    218         �           2606    16949    ruolo ruolo_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.ruolo
    ADD CONSTRAINT ruolo_pkey PRIMARY KEY (ruoloid);
 :   ALTER TABLE ONLY public.ruolo DROP CONSTRAINT ruolo_pkey;
       public                 postgres    false    218         �           2606    16988    sensore sensore_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.sensore
    ADD CONSTRAINT sensore_pkey PRIMARY KEY (sensoreid);
 >   ALTER TABLE ONLY public.sensore DROP CONSTRAINT sensore_pkey;
       public                 postgres    false    224         �           2606    16974    serra serra_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.serra
    ADD CONSTRAINT serra_pkey PRIMARY KEY (serraid);
 :   ALTER TABLE ONLY public.serra DROP CONSTRAINT serra_pkey;
       public                 postgres    false    222         �           2606    16960    utente utente_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (userid);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public                 postgres    false    220         �           2606    17001 &   misurazioni misurazioni_sensoreid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.misurazioni
    ADD CONSTRAINT misurazioni_sensoreid_fkey FOREIGN KEY (sensoreid) REFERENCES public.sensore(sensoreid);
 P   ALTER TABLE ONLY public.misurazioni DROP CONSTRAINT misurazioni_sensoreid_fkey;
       public               postgres    false    224    226    4776         �           2606    16989    sensore sensore_serraid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sensore
    ADD CONSTRAINT sensore_serraid_fkey FOREIGN KEY (serraid) REFERENCES public.serra(serraid);
 F   ALTER TABLE ONLY public.sensore DROP CONSTRAINT sensore_serraid_fkey;
       public               postgres    false    224    4774    222         �           2606    16975    serra serra_userid_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.serra
    ADD CONSTRAINT serra_userid_fkey FOREIGN KEY (userid) REFERENCES public.utente(userid);
 A   ALTER TABLE ONLY public.serra DROP CONSTRAINT serra_userid_fkey;
       public               postgres    false    222    220    4772         �           2606    16961    utente utente_ruoloid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_ruoloid_fkey FOREIGN KEY (ruoloid) REFERENCES public.ruolo(ruoloid);
 D   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_ruoloid_fkey;
       public               postgres    false    218    4770    220                                                                                                                                                                                                   4937.dat                                                                                            0000600 0004000 0002000 00000000005 15026527743 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4929.dat                                                                                            0000600 0004000 0002000 00000000045 15026527743 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin
2	gestore
3	coltivatore
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4935.dat                                                                                            0000600 0004000 0002000 00000000657 15026527743 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	TMP-100	Sensore di temperatura ambiente	t
2	2	HMD-200	Sensore di umidità del terreno	t
3	3	WLV-300	Sensore livello acqua nel serbatoio	t
4	1	HMD-201	Sensore di umidità del terreno	t
5	1	WLV-301	Sensore livello acqua nel serbatoio	t
6	2	TMP-101	Sensore di temperatura ambiente	t
7	2	WLV-302	Sensore livello acqua nel serbatoio	t
8	3	TMP-102	Sensore di temperatura ambiente	t
9	3	HMD-202	Sensore di umidità del terreno	t
\.


                                                                                 4933.dat                                                                                            0000600 0004000 0002000 00000000100 15026527743 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	Serra1	Zucchine
2	3	Serra2	Pomodori
3	4	Serra3	Fragole
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                4931.dat                                                                                            0000600 0004000 0002000 00000000745 15026527743 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Rossi	Mario	mario.rossi@example.com	admin
2	2	Bianchi	Laura	laura.bianchi@example.com	gestore1
3	2	Verdi	Paolo	paolo.verdi@example.com	gestore2
4	2	Neri	Anna	anna.neri@example.com	gestore3
5	3	Russo	Luca	luca.russo@example.com	colt1
6	3	Ferrari	Elisa	elisa.ferrari@example.com	colt2
7	3	Gallo	Marco	marco.gallo@example.com	colt3
8	3	Fontana	Giulia	giulia.fontana@example.com	colt4
9	3	Testa	Davide	davide.testa@example.com	colt5
10	3	Grassi	Sara	sara.grassi@example.com	colt6
\.


                           restore.sql                                                                                         0000600 0004000 0002000 00000023700 15026527744 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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

DROP DATABASE "Serra";
--
-- Name: Serra; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Serra" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Italian_Italy.1252';


ALTER DATABASE "Serra" OWNER TO postgres;

\connect "Serra"

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: misurazioni; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.misurazioni (
    misurazioniid integer NOT NULL,
    sensoreid integer,
    valore numeric(4,2),
    tipo character varying(255),
    "timestamp" timestamp without time zone
);


ALTER TABLE public.misurazioni OWNER TO postgres;

--
-- Name: misurazioni_misurazioniid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.misurazioni_misurazioniid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.misurazioni_misurazioniid_seq OWNER TO postgres;

--
-- Name: misurazioni_misurazioniid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.misurazioni_misurazioniid_seq OWNED BY public.misurazioni.misurazioniid;


--
-- Name: ruolo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ruolo (
    ruoloid integer NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE public.ruolo OWNER TO postgres;

--
-- Name: ruolo_ruoloid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ruolo_ruoloid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ruolo_ruoloid_seq OWNER TO postgres;

--
-- Name: ruolo_ruoloid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ruolo_ruoloid_seq OWNED BY public.ruolo.ruoloid;


--
-- Name: sensore; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sensore (
    sensoreid integer NOT NULL,
    serraid integer,
    modello character varying(255),
    descrizione character varying(255),
    stato boolean
);


ALTER TABLE public.sensore OWNER TO postgres;

--
-- Name: sensore_sensoreid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sensore_sensoreid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sensore_sensoreid_seq OWNER TO postgres;

--
-- Name: sensore_sensoreid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sensore_sensoreid_seq OWNED BY public.sensore.sensoreid;


--
-- Name: serra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.serra (
    serraid integer NOT NULL,
    userid integer,
    nome character varying(255),
    prodotto character varying(255)
);


ALTER TABLE public.serra OWNER TO postgres;

--
-- Name: serra_serraid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.serra_serraid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.serra_serraid_seq OWNER TO postgres;

--
-- Name: serra_serraid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.serra_serraid_seq OWNED BY public.serra.serraid;


--
-- Name: utente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utente (
    userid integer NOT NULL,
    ruoloid integer,
    cognome character varying(255),
    nome character varying(255),
    email character varying(255),
    password character varying(255)
);


ALTER TABLE public.utente OWNER TO postgres;

--
-- Name: utente_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.utente_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.utente_userid_seq OWNER TO postgres;

--
-- Name: utente_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utente_userid_seq OWNED BY public.utente.userid;


--
-- Name: misurazioni misurazioniid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.misurazioni ALTER COLUMN misurazioniid SET DEFAULT nextval('public.misurazioni_misurazioniid_seq'::regclass);


--
-- Name: ruolo ruoloid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ruolo ALTER COLUMN ruoloid SET DEFAULT nextval('public.ruolo_ruoloid_seq'::regclass);


--
-- Name: sensore sensoreid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sensore ALTER COLUMN sensoreid SET DEFAULT nextval('public.sensore_sensoreid_seq'::regclass);


--
-- Name: serra serraid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serra ALTER COLUMN serraid SET DEFAULT nextval('public.serra_serraid_seq'::regclass);


--
-- Name: utente userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utente ALTER COLUMN userid SET DEFAULT nextval('public.utente_userid_seq'::regclass);


--
-- Data for Name: misurazioni; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.misurazioni (misurazioniid, sensoreid, valore, tipo, "timestamp") FROM stdin;
\.
COPY public.misurazioni (misurazioniid, sensoreid, valore, tipo, "timestamp") FROM '$$PATH$$/4937.dat';

--
-- Data for Name: ruolo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ruolo (ruoloid, nome) FROM stdin;
\.
COPY public.ruolo (ruoloid, nome) FROM '$$PATH$$/4929.dat';

--
-- Data for Name: sensore; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sensore (sensoreid, serraid, modello, descrizione, stato) FROM stdin;
\.
COPY public.sensore (sensoreid, serraid, modello, descrizione, stato) FROM '$$PATH$$/4935.dat';

--
-- Data for Name: serra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.serra (serraid, userid, nome, prodotto) FROM stdin;
\.
COPY public.serra (serraid, userid, nome, prodotto) FROM '$$PATH$$/4933.dat';

--
-- Data for Name: utente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utente (userid, ruoloid, cognome, nome, email, password) FROM stdin;
\.
COPY public.utente (userid, ruoloid, cognome, nome, email, password) FROM '$$PATH$$/4931.dat';

--
-- Name: misurazioni_misurazioniid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.misurazioni_misurazioniid_seq', 1, false);


--
-- Name: ruolo_ruoloid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ruolo_ruoloid_seq', 3, true);


--
-- Name: sensore_sensoreid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sensore_sensoreid_seq', 9, true);


--
-- Name: serra_serraid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.serra_serraid_seq', 3, true);


--
-- Name: utente_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utente_userid_seq', 10, true);


--
-- Name: misurazioni misurazioni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.misurazioni
    ADD CONSTRAINT misurazioni_pkey PRIMARY KEY (misurazioniid);


--
-- Name: ruolo ruolo_nome_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ruolo
    ADD CONSTRAINT ruolo_nome_key UNIQUE (nome);


--
-- Name: ruolo ruolo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ruolo
    ADD CONSTRAINT ruolo_pkey PRIMARY KEY (ruoloid);


--
-- Name: sensore sensore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sensore
    ADD CONSTRAINT sensore_pkey PRIMARY KEY (sensoreid);


--
-- Name: serra serra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serra
    ADD CONSTRAINT serra_pkey PRIMARY KEY (serraid);


--
-- Name: utente utente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (userid);


--
-- Name: misurazioni misurazioni_sensoreid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.misurazioni
    ADD CONSTRAINT misurazioni_sensoreid_fkey FOREIGN KEY (sensoreid) REFERENCES public.sensore(sensoreid);


--
-- Name: sensore sensore_serraid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sensore
    ADD CONSTRAINT sensore_serraid_fkey FOREIGN KEY (serraid) REFERENCES public.serra(serraid);


--
-- Name: serra serra_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serra
    ADD CONSTRAINT serra_userid_fkey FOREIGN KEY (userid) REFERENCES public.utente(userid);


--
-- Name: utente utente_ruoloid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_ruoloid_fkey FOREIGN KEY (ruoloid) REFERENCES public.ruolo(ruoloid);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                