--
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
-- Name: distant_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distant_moon (
    distant_moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(2,2),
    galaxy_type integer,
    planet_type integer
);


ALTER TABLE public.distant_moon OWNER TO freecodecamp;

--
-- Name: distant_moon_distant_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distant_moon_distant_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distant_moon_distant_moon_id_seq OWNER TO freecodecamp;

--
-- Name: distant_moon_distant_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distant_moon_distant_moon_id_seq OWNED BY public.distant_moon.distant_moon_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    is_spherical boolean,
    galaxy_types integer,
    planet_types integer,
    distance_from_earth numeric(2,2),
    description text NOT NULL,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_universe_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_universe_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    galaxy_types integer,
    planet_types integer,
    distance_from_earth numeric(2,2),
    description text NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_universe_id_seq OWNER TO freecodecamp;

--
-- Name: moon_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_universe_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    galaxy_types integer,
    planet_types integer,
    distance_from_earth numeric(2,2),
    description text NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_universe_id_seq OWNER TO freecodecamp;

--
-- Name: planet_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_universe_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    galaxy_types integer,
    planet_types integer,
    distance_from_earth numeric(2,2),
    description text NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_universe_id_seq OWNER TO freecodecamp;

--
-- Name: star_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_universe_id_seq OWNED BY public.star.star_id;


--
-- Name: distant_moon distant_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distant_moon ALTER COLUMN distant_moon_id SET DEFAULT nextval('public.distant_moon_distant_moon_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_universe_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_universe_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_universe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_universe_id_seq'::regclass);


--
-- Data for Name: distant_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distant_moon VALUES (1, 'distant moon 1', 'distant moon 1 is very distant', true, false, 1, 0.95, 1, 1);
INSERT INTO public.distant_moon VALUES (2, 'distant moon 2', 'distant moon 2 is very distant', true, false, 2, 0.94, 2, 2);
INSERT INTO public.distant_moon VALUES (3, 'distant moon 3', 'distant moon 3 is very distant', true, false, 3, 0.93, 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', true, 1, 2, 0.99, 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda. ', false);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', true, 2, 3, 0.89, 'Antennae Galaxies is very far ', false);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', true, 3, 4, 0.79, 'Backward Galaxy is very backward', false);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', true, 4, 5, 0.69, 'Black eye Galaxy is very black', false);
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', true, 5, 6, 0.59, 'Bodes Galaxy is very boring', false);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', true, 6, 7, 0.49, 'Butterfly Galaxies is having dangerous butterflies ', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', false, true, 1, 1, 0.95, 'moon 1 is very distant', 1);
INSERT INTO public.moon VALUES (2, 'moon 2', false, true, 1, 2, 0.94, 'moon 2 is very distant', 1);
INSERT INTO public.moon VALUES (3, 'moon 3', false, true, 2, 1, 0.93, 'moon 3 is very distant', 2);
INSERT INTO public.moon VALUES (4, 'moon 4', false, true, 2, 2, 0.92, 'moon 4 is very distant', 2);
INSERT INTO public.moon VALUES (5, 'moon 5', false, true, 3, 1, 0.91, 'moon 5 is very distant', 3);
INSERT INTO public.moon VALUES (6, 'moon 6', false, true, 3, 2, 0.90, 'moon 6 is very distant', 3);
INSERT INTO public.moon VALUES (7, 'moon 7', false, true, 4, 1, 0.89, 'moon 7 is very distant', 4);
INSERT INTO public.moon VALUES (8, 'moon 8', false, true, 4, 2, 0.88, 'moon 8 is very distant', 4);
INSERT INTO public.moon VALUES (9, 'moon 9', false, true, 5, 1, 0.87, 'moon 9 is very distant', 5);
INSERT INTO public.moon VALUES (10, 'moon 10', false, true, 5, 2, 0.86, 'moon 10 is very distant', 5);
INSERT INTO public.moon VALUES (11, 'moon 11', false, true, 6, 1, 0.85, 'moon 11 is very distant', 6);
INSERT INTO public.moon VALUES (12, 'moon 12', false, true, 6, 2, 0.84, 'moon 12 is very distant', 6);
INSERT INTO public.moon VALUES (13, 'moon 13', false, true, 4, 1, 0.83, 'moon 13 is very distant', 7);
INSERT INTO public.moon VALUES (14, 'moon 14', false, true, 4, 2, 0.82, 'moon 14 is very distant', 7);
INSERT INTO public.moon VALUES (15, 'moon 15', false, true, 5, 1, 0.81, 'moon 15 is very distant', 8);
INSERT INTO public.moon VALUES (16, 'moon 16', false, true, 5, 2, 0.80, 'moon 16 is very distant', 8);
INSERT INTO public.moon VALUES (17, 'moon 17', false, true, 6, 1, 0.79, 'moon 17 is very distant', 9);
INSERT INTO public.moon VALUES (18, 'moon 18', false, true, 6, 2, 0.78, 'moon 18 is very distant', 9);
INSERT INTO public.moon VALUES (19, 'moon 19', false, true, 6, 1, 0.77, 'moon 19 is very distant', 10);
INSERT INTO public.moon VALUES (20, 'moon 20', false, true, 6, 2, 0.76, 'moon 20 is very distant', 11);
INSERT INTO public.moon VALUES (21, 'distant moon 1', false, true, 1, 1, 0.95, 'distant moon 1 is very distant', 1);
INSERT INTO public.moon VALUES (22, 'distant moon 2', false, true, 1, 2, 0.94, 'distant moon 2 is very distant', 1);
INSERT INTO public.moon VALUES (23, 'distant moon 3', false, true, 2, 1, 0.93, 'distant moon 3 is very distant', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', false, true, 1, 1, 0.97, 'planet 1 is very distant', 1);
INSERT INTO public.planet VALUES (2, 'planet 2', false, true, 1, 2, 0.96, 'planet 2 is very distant', 1);
INSERT INTO public.planet VALUES (3, 'planet 3', false, true, 2, 1, 0.95, 'planet 3 is very distant', 2);
INSERT INTO public.planet VALUES (4, 'planet 4', false, true, 2, 2, 0.94, 'planet 4 is very distant', 2);
INSERT INTO public.planet VALUES (5, 'planet 5', false, true, 3, 1, 0.93, 'planet 5 is very distant', 3);
INSERT INTO public.planet VALUES (6, 'planet 6', false, true, 3, 2, 0.92, 'planet 6 is very distant', 3);
INSERT INTO public.planet VALUES (7, 'planet 7', false, true, 4, 1, 0.91, 'planet 7 is very distant', 4);
INSERT INTO public.planet VALUES (8, 'planet 8', false, true, 4, 2, 0.90, 'planet 8 is very distant', 4);
INSERT INTO public.planet VALUES (9, 'planet 9', false, true, 5, 1, 0.89, 'planet 9 is very distant', 5);
INSERT INTO public.planet VALUES (10, 'planet 10', false, true, 5, 2, 0.88, 'planet 10 is very distant', 5);
INSERT INTO public.planet VALUES (11, 'planet 11', false, true, 6, 1, 0.87, 'planet 11 is very distant', 6);
INSERT INTO public.planet VALUES (12, 'planet 12', false, true, 6, 2, 0.86, 'planet 12 is very distant', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', false, true, 1, 2, 0.98, 'star 1 is very distant', 1);
INSERT INTO public.star VALUES (2, 'star 2', false, true, 2, 3, 0.88, 'star 2 is very distant', 2);
INSERT INTO public.star VALUES (3, 'star 3', false, true, 3, 4, 0.78, 'star 3 is very distant', 3);
INSERT INTO public.star VALUES (4, 'star 4', false, true, 4, 5, 0.68, 'star 4 is very distant', 4);
INSERT INTO public.star VALUES (5, 'star 5', false, true, 5, 6, 0.58, 'star 5 is very distant', 5);
INSERT INTO public.star VALUES (6, 'star 6', false, true, 6, 7, 0.58, 'star 6 is very distant', 6);


--
-- Name: distant_moon_distant_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distant_moon_distant_moon_id_seq', 3, true);


--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_universe_id_seq', 6, true);


--
-- Name: moon_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_universe_id_seq', 23, true);


--
-- Name: planet_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_universe_id_seq', 12, true);


--
-- Name: star_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_universe_id_seq', 6, true);


--
-- Name: distant_moon distant_moon_distant_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distant_moon
    ADD CONSTRAINT distant_moon_distant_moon_id_key UNIQUE (distant_moon_id);


--
-- Name: distant_moon distant_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distant_moon
    ADD CONSTRAINT distant_moon_pkey PRIMARY KEY (distant_moon_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

