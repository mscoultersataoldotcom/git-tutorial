--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE universe OWNER TO postgres;

\connect universe

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
-- Name: astronomicalobj; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.astronomicalobj (
    astronomicalobj_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500) NOT NULL
);


ALTER TABLE public.astronomicalobj OWNER TO postgres;

--
-- Name: astronomicalobj_astronomicalobj_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.astronomicalobj_astronomicalobj_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.astronomicalobj_astronomicalobj_id_seq OWNER TO postgres;

--
-- Name: astronomicalobj_astronomicalobj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.astronomicalobj_astronomicalobj_id_seq OWNED BY public.astronomicalobj.astronomicalobj_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500) NOT NULL,
    dis_from_sun integer,
    diameter integer
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500) NOT NULL,
    dis_from_sun integer,
    diameter integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500) NOT NULL,
    dis_from_sun integer,
    diameter integer,
    is_dwarf boolean,
    has_rings boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    dis_from_sun integer,
    diameter integer,
    weight numeric(10,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astronomicalobj astronomicalobj_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.astronomicalobj ALTER COLUMN astronomicalobj_id SET DEFAULT nextval('public.astronomicalobj_astronomicalobj_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronomicalobj; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.astronomicalobj VALUES (1, 'galaxy', 'A galaxy is a system of stars, stellar remnants, interstellar gas, dust, dark matter, bound together by gravity. The word is derived from the Greek galaxias, literally "milky", a reference to the Milky Way galaxy that contains the Solar System.');
INSERT INTO public.astronomicalobj VALUES (2, 'star', ' Stars are astronomical objects that spend some portion of their existence generating energy through thermonuclear fusion.');
INSERT INTO public.astronomicalobj VALUES (3, 'planet', ' A planet is a large, rounded astronomical body that is neither a star nor its remnant.');
INSERT INTO public.astronomicalobj VALUES (4, 'moon', 'A natural satellite is, in the most common usage, an astronomical body that orbits a planet, dwarf planet, or small Solar System body (or sometimes another natural satellite).');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way. It was originally named the Andromeda Nebula and is cataloged as Messier 31, M31, and NGC 224.', 152000, 152000);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'The Antennae Galaxies (also known as NGC 4038/NGC 4039 or Caldwell 60/Caldwell 61) are a pair of interacting galaxies in the constellation Corvus. They are currently going through a starburst phase, in which the collision of clouds of gas and dust, with entangled magnetic fields, causes rapid star formation.', 45, 45);
INSERT INTO public.galaxy VALUES (3, 'NGC 4622', 'NGC 4622, also known as the Backward Galaxy, is a face-on unbarred spiral galaxy with a very prominent ring structure located in the constellation Centaurus. The galaxy is a member of the Centaurus Cluster.', 111000000, 160000);
INSERT INTO public.galaxy VALUES (4, 'NGC 6822', 'NGC 6822 (also known as Barnard''s Galaxy, IC 4895, or Caldwell 57) is a barred irregular galaxy approximately 1.6 million light-years away in the constellation Sagittarius.', 160000000, 7000);
INSERT INTO public.galaxy VALUES (5, 'NGC 2537', 'NGC 2537, also known as the Bear Paw Galaxy, Bear Claw Galaxy, Arp 6, or Mrk 86, is a blue compact dwarf galaxy in the constellation Lynx, located around 3 degrees NNW of 31 Lyncis', 500000, 500000);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 'The Black Eye Galaxy (also called Sleeping Beauty Galaxy or Evil Eye Galaxy and designated Messier 64, M64, or NGC 4826) is a relatively isolated[7] spiral galaxy 17 million light-years away in the mildly northern constellation of Coma Berenices.', 170000000, 2300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'Citanest Plain', 'Citanest PlainIs a great moon', 390356653, 54162, 8);
INSERT INTO public.moon VALUES (2, 'Natureplex Hydrocortisone', 'Natureplex HydrocortisoneIs a great moon', 308207568, 92056, 7);
INSERT INTO public.moon VALUES (3, 'Body Pure', 'Body PureIs a great moon', 853091196, 76483, 2);
INSERT INTO public.moon VALUES (4, 'Levetiracetam', 'LevetiracetamIs a great moon', 647676836, 38649, 12);
INSERT INTO public.moon VALUES (5, 'Injury Topical', 'Injury TopicalIs a great moon', 3278809, 78586, 15);
INSERT INTO public.moon VALUES (6, 'Codar', 'CodarIs a great moon', 822843840, 96661, 7);
INSERT INTO public.moon VALUES (7, 'Actos', 'ActosIs a great moon', 660235764, 46707, 18);
INSERT INTO public.moon VALUES (8, 'Bacterial Infection', 'Bacterial InfectionIs a great moon', 437363756, 55901, 11);
INSERT INTO public.moon VALUES (9, 'HyVee Inc', 'HyVee IncIs a great moon', 220410566, 71400, 12);
INSERT INTO public.moon VALUES (10, 'NEUROBALANCE PRO', 'NEUROBALANCE PROIs a great moon', 372460704, 89376, 8);
INSERT INTO public.moon VALUES (11, 'Hydrocodone Bitartrate and Acetaminophen', 'Hydrocodone Bitartrate and AcetaminophenIs a great moon', 945159206, 25275, 6);
INSERT INTO public.moon VALUES (12, 'sunscreen', 'sunscreenIs a great moon', 801857921, 29137, 8);
INSERT INTO public.moon VALUES (13, 'Diazepam', 'DiazepamIs a great moon', 311929105, 97849, 1);
INSERT INTO public.moon VALUES (14, 'Methocarbamol', 'MethocarbamolIs a great moon', 917227872, 25754, 22);
INSERT INTO public.moon VALUES (15, 'Bupropion', 'BupropionIs a great moon', 895034364, 80328, 22);
INSERT INTO public.moon VALUES (16, 'Pamidronate Disodium', 'Pamidronate DisodiumIs a great moon', 455893690, 38278, 8);
INSERT INTO public.moon VALUES (17, 'Cough - Asthma', 'Cough - AsthmaIs a great moon', 484214479, 86877, 10);
INSERT INTO public.moon VALUES (18, 'Allergy', 'AllergyIs a great moon', 328862031, 91259, 20);
INSERT INTO public.moon VALUES (19, 'Pantoprazole', 'PantoprazoleIs a great moon', 280614800, 11744, 23);
INSERT INTO public.moon VALUES (20, 'Zhenweilong Huoluo You', 'Zhenweilong Huoluo YouIs a great moon', 499030222, 47700, 14);
INSERT INTO public.moon VALUES (21, 'Eupatorium Perf Kit Refill', 'Eupatorium Perf Kit RefillIs a great moon', 922145595, 26770, 23);
INSERT INTO public.moon VALUES (22, 'Systane', 'SystaneIs a great moon', 405990147, 53930, 18);
INSERT INTO public.moon VALUES (23, 'JIANZE ALCOHOL', 'JIANZE ALCOHOLIs a great moon', 508747039, 13672, 4);
INSERT INTO public.moon VALUES (24, 'Yu Long You Pain Relieving', 'Yu Long You Pain RelievingIs a great moon', 468838202, 22003, 2);
INSERT INTO public.moon VALUES (25, 'Aging Eye Relief', 'Aging Eye ReliefIs a great moon', 571278374, 65462, 11);
INSERT INTO public.moon VALUES (26, 'Lidocaine Hydrochloride', 'Lidocaine HydrochlorideIs a great moon', 16051446, 15462, 23);
INSERT INTO public.moon VALUES (27, 'Sheer Cover Mineral Foundation', 'Sheer Cover Mineral FoundationIs a great moon', 971519084, 38278, 22);
INSERT INTO public.moon VALUES (28, 'Pomegranate Antibacterial Foaming Hand Wash', 'Pomegranate Antibacterial Foaming Hand WashIs a great moon', 745181005, 14700, 23);
INSERT INTO public.moon VALUES (29, 'sodium chloride', 'sodium chlorideIs a great moon', 171213479, 70373, 10);
INSERT INTO public.moon VALUES (30, 'Methyldopa', 'MethyldopaIs a great moon', 277694202, 67239, 2);
INSERT INTO public.moon VALUES (31, 'Covera-HS', 'Covera-HSIs a great moon', 852412574, 37481, 16);
INSERT INTO public.moon VALUES (32, 'PULMICORT RESPULES', 'PULMICORT RESPULESIs a great moon', 767662304, 66469, 18);
INSERT INTO public.moon VALUES (34, 'HEALTHMART NICOTINE TRANSDERMAL SYSTEM', 'HEALTHMART NICOTINE TRANSDERMAL SYSTEMIs a great moon', 715982490, 26924, 5);
INSERT INTO public.moon VALUES (35, 'Suboxone', 'SuboxoneIs a great moon', 199232901, 37800, 8);
INSERT INTO public.moon VALUES (36, 'modafinil', 'modafinilIs a great moon', 61417270, 77506, 3);
INSERT INTO public.moon VALUES (37, 'SEROQUEL', 'SEROQUELIs a great moon', 91192625, 44900, 21);
INSERT INTO public.moon VALUES (38, 'Solar Sense Zany Zinc SPF 50 - Blue', 'Solar Sense Zany Zinc SPF 50 - BlueIs a great moon', 442997871, 19978, 12);
INSERT INTO public.moon VALUES (39, 'Metoprolol succinate', 'Metoprolol succinateIs a great moon', 669730442, 39409, 16);
INSERT INTO public.moon VALUES (40, 'SELENIUM SULFIDE', 'SELENIUM SULFIDEIs a great moon', 411281145, 33133, 7);
INSERT INTO public.moon VALUES (41, 'Ithurts', 'IthurtsIs a great moon', 103203112, 86037, 6);
INSERT INTO public.moon VALUES (42, 'Simvastatin', 'SimvastatinIs a great moon', 315132481, 23884, 21);
INSERT INTO public.moon VALUES (43, 'Piranha Brand Foaming Alcohol Hand Sanitizer', 'Piranha Brand Foaming Alcohol Hand SanitizerIs a great moon', 369821050, 63915, 2);
INSERT INTO public.moon VALUES (44, 'NoHist DM', 'NoHist DMIs a great moon', 490944561, 97881, 6);
INSERT INTO public.moon VALUES (45, 'HAND SANITIZER', 'HAND SANITIZERIs a great moon', 503397078, 92470, 21);
INSERT INTO public.moon VALUES (46, 'ULTRA CORRECTION LINE REPAIR', 'ULTRA CORRECTION LINE REPAIRIs a great moon', 1770388, 63150, 14);
INSERT INTO public.moon VALUES (47, 'Loratadine and Pseudoephedrine', 'Loratadine and PseudoephedrineIs a great moon', 588782298, 41586, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'Microseris nutans (Hook.) Sch. Bip.', 'Microseris nutans (Hook.) Sch. Bip.Is a great planet', 115493941, 54445, false, false, 5);
INSERT INTO public.planet VALUES (2, 'Pascalia Ortega', 'Pascalia OrtegaIs a great planet', 884588916, 78800, false, true, 6);
INSERT INTO public.planet VALUES (3, 'Deschampsia flexuosa (L.) Trin.', 'Deschampsia flexuosa (L.) Trin.Is a great planet', 41399717, 96224, true, true, 3);
INSERT INTO public.planet VALUES (4, 'Hieracium longiberbe Howell', 'Hieracium longiberbe HowellIs a great planet', 927485213, 95814, true, false, 5);
INSERT INTO public.planet VALUES (5, 'Prosopis juliflora (Sw.) DC.', 'Prosopis juliflora (Sw.) DC.Is a great planet', 347264926, 45670, true, false, 6);
INSERT INTO public.planet VALUES (6, 'Erigeron pinnatisectus (A. Gray) A. Nelson', 'Erigeron pinnatisectus (A. Gray) A. NelsonIs a great planet', 234273863, 78799, true, true, 4);
INSERT INTO public.planet VALUES (7, 'Muhlenbergia mexicana (L.) Trin.', 'Muhlenbergia mexicana (L.) Trin.Is a great planet', 754595465, 78348, false, false, 2);
INSERT INTO public.planet VALUES (8, 'Menodora scabra A. Gray', 'Menodora scabra A. GrayIs a great planet', 19627530, 78481, true, false, 2);
INSERT INTO public.planet VALUES (9, 'Xanthium L.', 'Xanthium L.Is a great planet', 119425979, 42765, false, true, 6);
INSERT INTO public.planet VALUES (10, 'Phyllanthus ericoides Torr.', 'Phyllanthus ericoides Torr.Is a great planet', 493408697, 50015, false, true, 5);
INSERT INTO public.planet VALUES (11, 'Rumex arcticus Trautv. var. arcticus', 'Rumex arcticus Trautv. var. arcticusIs a great planet', 627497571, 53484, true, true, 1);
INSERT INTO public.planet VALUES (12, 'Glycyrrhiza lepidota Pursh', 'Glycyrrhiza lepidota PurshIs a great planet', 247975620, 24807, true, false, 6);
INSERT INTO public.planet VALUES (13, 'Carex bushii Mack.', 'Carex bushii Mack.Is a great planet', 335766859, 65490, true, false, 4);
INSERT INTO public.planet VALUES (14, 'Linum virginianum L.', 'Linum virginianum L.Is a great planet', 984475412, 76851, true, false, 6);
INSERT INTO public.planet VALUES (15, 'Notholaena R. Br.', 'Notholaena R. Br.Is a great planet', 758541466, 74436, true, true, 3);
INSERT INTO public.planet VALUES (16, 'Doellingeria umbellata (Mill.) Nees', 'Doellingeria umbellata (Mill.) NeesIs a great planet', 73741340, 37813, false, false, 1);
INSERT INTO public.planet VALUES (17, 'Pinus xmurraybanksiana Righter & Stockw.', 'Pinus xmurraybanksiana Righter & Stockw.Is a great planet', 968763706, 68378, true, true, 5);
INSERT INTO public.planet VALUES (18, 'Scutellaria galericulata L.', 'Scutellaria galericulata L.Is a great planet', 72095683, 56067, false, true, 3);
INSERT INTO public.planet VALUES (19, 'Guarea glabra Vahl', 'Guarea glabra VahlIs a great planet', 519613397, 43767, false, false, 2);
INSERT INTO public.planet VALUES (20, 'Paspalum dilatatum Poir. var. pauciciliatum Parodi', 'Paspalum dilatatum Poir. var. pauciciliatum ParodiIs a great planet', 995253169, 67336, false, true, 3);
INSERT INTO public.planet VALUES (21, 'Sanicula laciniata Hook. & Arn.', 'Sanicula laciniata Hook. & Arn.Is a great planet', 648436190, 73953, false, false, 3);
INSERT INTO public.planet VALUES (22, 'Tropidocarpum capparideum Greene', 'Tropidocarpum capparideum GreeneIs a great planet', 602555876, 73958, false, false, 5);
INSERT INTO public.planet VALUES (23, 'Malvaviscus arboreus Dill. ex Cav.', 'Malvaviscus arboreus Dill. ex Cav.Is a great planet', 763775996, 79400, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'SN 1885A', 'SN 1885A (also S Andromedae) was a supernova in the Andromeda Galaxy, the only one seen in that galaxy so far by astronomers. It was the first supernova ever seen outside the Milky Way', 150000, 15000, 19.50, 1);
INSERT INTO public.star VALUES (2, 'Lambda Geminorum', 'Lambda Geminorum, Latinized from ? Geminorum, is a candidate multiple star system in the constellation Gemini. It is visible to the naked eye at night with a combined apparent visual magnitude of 3.57.', 101, 10, 7.40, 2);
INSERT INTO public.star VALUES (3, 'Gamma Ophiuchi', 'Gamma Ophiuchi, Latinized from ? Ophiuchi, is a fourth-magnitude star in the constellation Ophiuchus. Together with Beta Ophiuchi, it forms the serpent-holder''s right shoulder.', 103, 10, 7.60, 3);
INSERT INTO public.star VALUES (4, 'K2-239', 'K2-239 (also designated EPIC 248545986) is a small red dwarf star in the constellation Sextans, about 32 parsecs (101 light-years) away from Earth.', 101, 10, 4.50, 4);
INSERT INTO public.star VALUES (5, 'Delta Andromedae', 'Delta Andromedae, Latinized from ë Andromedae, is a triple star[12] system in the northern constellation of Andromeda. The system is visible to the naked eye as a point of light with a combined apparent visual magnitude of 3.28.', 105, 10, 32.30, 5);
INSERT INTO public.star VALUES (6, 'Gamma Geminorum', 'Gamma Geminorum (? Geminorum, abbreviated Gamma Gem, ? Gem), formally named Alhena is the third-brightest object in the constellation of Gemini.', 190, 33, 1.90, 1);


--
-- Name: astronomicalobj_astronomicalobj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.astronomicalobj_astronomicalobj_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 47, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomicalobj astronomicalobj_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.astronomicalobj
    ADD CONSTRAINT astronomicalobj_name_key UNIQUE (name);


--
-- Name: astronomicalobj astronomicalobj_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.astronomicalobj
    ADD CONSTRAINT astronomicalobj_pkey PRIMARY KEY (astronomicalobj_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

