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
-- Name: all_data_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.all_data_universe (
    all_data_universe_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.all_data_universe OWNER TO freecodecamp;

--
-- Name: all_data_universe_all_data_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.all_data_universe_all_data_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.all_data_universe_all_data_universe_id_seq OWNER TO freecodecamp;

--
-- Name: all_data_universe_all_data_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.all_data_universe_all_data_universe_id_seq OWNED BY public.all_data_universe.all_data_universe_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_light_years integer,
    age_in_millions_of_years numeric(11,2),
    description text,
    has_life boolean
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    diameter_in_light_years integer,
    age_in_millions_of_years numeric(11,2),
    description text,
    has_life boolean
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    diameter_in_light_years integer,
    age_in_millions_of_years numeric(11,2),
    description text,
    has_life boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    diameter_in_light_years integer,
    age_in_millions_of_years numeric(11,2),
    description text,
    has_life boolean
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
-- Name: all_data_universe all_data_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_data_universe ALTER COLUMN all_data_universe_id SET DEFAULT nextval('public.all_data_universe_all_data_universe_id_seq'::regclass);


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
-- Data for Name: all_data_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.all_data_universe VALUES (1, 1, 2, 3, 4, 'Data One');
INSERT INTO public.all_data_universe VALUES (2, 1, 3, 4, 5, 'Data Two');
INSERT INTO public.all_data_universe VALUES (3, 1, 4, 5, 6, 'Data Three');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 105700, 13000.61, 'Galaxy that houses the Earth.', true);
INSERT INTO public.galaxy VALUES (2, 'Enana del Can Mayor', 25, 930.43, 'Satélite de la Vía Láctea', false);
INSERT INTO public.galaxy VALUES (3, 'Enana Elíptica de Sagitario', 30, 865.23, 'Satélite de la Vía Láctea', false);
INSERT INTO public.galaxy VALUES (4, 'Gran Nube de Magallanes', 20, 911.23, 'Satélite de la Vía Láctea', false);
INSERT INTO public.galaxy VALUES (5, 'Enana de Bootes', 15, 700.23, 'Satélite de la Vía Láctea', false);
INSERT INTO public.galaxy VALUES (6, 'Pequeña Nube de Magallanes', 10, 545.23, 'Satélite de la Vía Láctea', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, 50, 100.00, 'Description Moon 1.', true);
INSERT INTO public.moon VALUES (2, 'Moon 2', 2, 100, 150.00, 'Description Moon 2.', true);
INSERT INTO public.moon VALUES (3, 'Moon 3', 3, 150, 200.00, 'Description Moon 3.', false);
INSERT INTO public.moon VALUES (4, 'Moon 4', 3, 200, 250.00, 'Description Moon 4.', false);
INSERT INTO public.moon VALUES (5, 'Moon 5', 4, 250, 300.00, 'Description Moon 5.', true);
INSERT INTO public.moon VALUES (6, 'Moon 6', 4, 300, 350.00, 'Description Moon 6.', true);
INSERT INTO public.moon VALUES (7, 'Moon 7', 5, 350, 400.00, 'Description Moon 7.', false);
INSERT INTO public.moon VALUES (8, 'Moon 8', 5, 400, 450.00, 'Description Moon 8.', false);
INSERT INTO public.moon VALUES (9, 'Moon 9', 6, 450, 500.00, 'Description Moon 9.', true);
INSERT INTO public.moon VALUES (10, 'Moon 10', 6, 500, 550.00, 'Description Moon 10.', true);
INSERT INTO public.moon VALUES (11, 'Moon 11', 7, 550, 600.00, 'Description Moon 11.', false);
INSERT INTO public.moon VALUES (12, 'Moon 12', 7, 600, 650.00, 'Description Moon 12.', false);
INSERT INTO public.moon VALUES (13, 'Moon 13', 8, 650, 700.00, 'Description Moon 13.', true);
INSERT INTO public.moon VALUES (14, 'Moon 14', 8, 700, 750.00, 'Description Moon 14.', true);
INSERT INTO public.moon VALUES (15, 'Moon 15', 9, 750, 800.00, 'Description Moon 15.', false);
INSERT INTO public.moon VALUES (16, 'Moon 16', 9, 800, 850.00, 'Description Moon 16.', false);
INSERT INTO public.moon VALUES (17, 'Moon 17', 10, 850, 900.00, 'Description Moon 17.', true);
INSERT INTO public.moon VALUES (18, 'Moon 18', 10, 900, 950.00, 'Description Moon 18.', true);
INSERT INTO public.moon VALUES (19, 'Moon 19', 11, 950, 1000.00, 'Description Moon 19.', false);
INSERT INTO public.moon VALUES (20, 'Moon 20', 12, 1000, 1050.00, 'Description Moon 20.', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 2, 100, 500.00, 'Description Planet 1.', false);
INSERT INTO public.planet VALUES (2, 'Planet 2', 2, 200, 600.00, 'Description Planet 2.', true);
INSERT INTO public.planet VALUES (3, 'Planet 3', 3, 300, 700.00, 'Description Planet 3.', false);
INSERT INTO public.planet VALUES (4, 'Planet 4', 3, 400, 800.00, 'Description Planet 4.', true);
INSERT INTO public.planet VALUES (5, 'Planet 5', 4, 500, 900.00, 'Description Planet 5.', false);
INSERT INTO public.planet VALUES (6, 'Planet 6', 4, 600, 1000.00, 'Description Planet 6.', true);
INSERT INTO public.planet VALUES (7, 'Planet 7', 5, 700, 1100.00, 'Description Planet 7.', false);
INSERT INTO public.planet VALUES (8, 'Planet 8', 5, 800, 1200.00, 'Description Planet 8.', true);
INSERT INTO public.planet VALUES (9, 'Planet 9', 6, 900, 1300.00, 'Description Planet 9.', false);
INSERT INTO public.planet VALUES (10, 'Planet 10', 6, 1000, 1400.00, 'Description Planet 10.', true);
INSERT INTO public.planet VALUES (11, 'Planet 11', 6, 1100, 1500.00, 'Description Planet 11.', false);
INSERT INTO public.planet VALUES (12, 'Planet 12', 6, 1100, 1600.00, 'Description Planet 12.', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirio', 1, 1, 8.60, 'Enana blanca.', false);
INSERT INTO public.star VALUES (3, 'Canopus', 1, 1, 309.80, 'Supergigante blanco-amarilla.', false);
INSERT INTO public.star VALUES (4, 'Arturo', 1, 2, 36.70, 'Gigante naranja.', false);
INSERT INTO public.star VALUES (5, 'Alfa Centauri A', 1, 2, 4.37, 'Enana amarilla.', false);
INSERT INTO public.star VALUES (6, 'Vega', 1, 3, 25.30, 'Gigante blanca.', false);
INSERT INTO public.star VALUES (7, 'Rigel', 1, 3, 900.00, 'Supergigante Azul.', false);


--
-- Name: all_data_universe_all_data_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.all_data_universe_all_data_universe_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: all_data_universe all_data_universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_data_universe
    ADD CONSTRAINT all_data_universe_name_key UNIQUE (name);


--
-- Name: all_data_universe all_data_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_data_universe
    ADD CONSTRAINT all_data_universe_pkey PRIMARY KEY (all_data_universe_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: all_data_universe all_data_universe_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_data_universe
    ADD CONSTRAINT all_data_universe_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: all_data_universe all_data_universe_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_data_universe
    ADD CONSTRAINT all_data_universe_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: all_data_universe all_data_universe_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_data_universe
    ADD CONSTRAINT all_data_universe_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: all_data_universe all_data_universe_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_data_universe
    ADD CONSTRAINT all_data_universe_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_columnplanet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_columnplanet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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