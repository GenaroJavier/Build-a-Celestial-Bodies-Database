-
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    black_holes integer,
    constallations integer,
    active boolean NOT NULL,
    color character varying,
    discovery_date date
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    discovery_date date,
    size numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    size numeric,
    livable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

    ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    live boolean,
    color character varying,
    active boolean,
    gravity numeric,
    discovery_date date,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


    ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types (
    types_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer
);


ALTER TABLE public.types OWNER TO freecodecamp;

--
-- Name: types_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_types_id_seq OWNER TO freecodecamp;

--
-- Name: types_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_types_id_seq OWNED BY public.types.types_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: types types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types ALTER COLUMN types_id SET DEFAULT nextval('public.types_types_id_seq'::regclass);

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 10000, 30, true, 'white', '1610-01-01');
INSERT INTO public.galaxy VALUES (2, 'NGC 6753', 12, 23, true, 'white', '1921-01-01');
INSERT INTO public.galaxy VALUES (3, 'Palo de Hockey', 12, 23, true, 'white', '1921-01-01');
INSERT INTO public.galaxy VALUES (4, 'Magallanes', 12, 23, true, 'white', '1921-01-01');
INSERT INTO public.galaxy VALUES (5, 'NGC 4248', 12, 23, true, 'white', '1921-01-01');
INSERT INTO public.galaxy VALUES (6, 'NGC 2500', 12, 23, true, 'white', '1921-01-01');
INSERT INTO public.galaxy VALUES (7, 'Andromeda', 12, 23, true, 'white', '1921-01-01');
INSERT INTO public.galaxy VALUES (8, 'IC342', 12, 23, true, 'white', '1921-01-01');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Rhea', 1, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (2, 'Europa', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (3, 'Tritón', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (4, 'Io', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (5, 'Phobos', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (6, 'Ganímedes', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (7, 'Oberón', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (8, 'Calisto', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (9, 'Mimas', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (10, 'Luna Tierra', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (11, 'Encelado', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (12, 'Tetis', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (13, 'Dione', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (14, 'Alquonidas', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (15, 'Hyperion', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (16, 'Japeto', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (17, 'Inuit', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (18, 'Galo', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (19, 'Nordico', 2, '2011-01-01', 1213);
INSERT INTO public.moon VALUES (20, 'Martinrea', 2, '2011-01-01', 1213);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'Trazas de hidrogeno y helio', 4878, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Nitrogeno y agua', 12100, false, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', 'Nitrogeno, Oxigeno, Argon', 12756, true, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 'Nitrogeno y Argon', 6787, true, 1);
INSERT INTO public.planet VALUES (5, 'Júpite', 'Hidrogeno, helio, trazas de metano', 142984, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Hidrogeno, helio, trazas de metano', 120536, false, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 'Hidrogeno, helio, trazas de metano', 120536, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 'Hidrogeno, helio y metano', 49538, false, 1);
INSERT INTO public.planet VALUES (9, 'Epsilon', 'Hidrogeno, helio y metano', 49538, false, 1);
INSERT INTO public.planet VALUES (10, 'Corot', 'Hidrogeno, helio y metano', 49538, false, 1);
INSERT INTO public.planet VALUES (11, 'Ogle', 'Hidrogeno, helio y metano', 49538, false, 1);
INSERT INTO public.planet VALUES (12, 'Wasp', 'Hidrogeno, helio y metano', 49538, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Astro rey', true, 'orange', true, 274.0, '1801-01-01', 1);
INSERT INTO public.star VALUES (2, 'Tabby', true, 'blue', true, 321.0, '1801-01-01', 1);
INSERT INTO public.star VALUES (3, 'HD 140283', true, 'blue', true, 321.0, '1801-01-01', 1);
INSERT INTO public.star VALUES (4, 'Vega', true, 'blue', true, 321.0, '1801-01-01', 1);
INSERT INTO public.star VALUES (5, 'Proxima centauri', true, 'blue', true, 321.0, '1801-01-01', 1);
INSERT INTO public.star VALUES (6, 'Sirio', true, 'blue', true, 321.0, '1801-01-01', 1);
INSERT INTO public.star VALUES (7, 'Polux', true, 'blue', true, 321.0, '1801-01-01', 1);


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types VALUES (1, 'Rocosos', 1);
INSERT INTO public.types VALUES (2, 'Gaseosos', 1);
INSERT INTO public.types VALUES (3, 'Hielo', 1);
INSERT INTO public.types VALUES (4, 'Enanos', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: types_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_types_id_seq', 4, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: types types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
