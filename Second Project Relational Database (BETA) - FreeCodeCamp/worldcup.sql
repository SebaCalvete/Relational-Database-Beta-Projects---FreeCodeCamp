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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1921, 2018, 'Final', 1700, 1701, 4, 2);
INSERT INTO public.games VALUES (1922, 2018, 'Third Place', 1702, 1703, 2, 0);
INSERT INTO public.games VALUES (1923, 2018, 'Semi-Final', 1701, 1703, 2, 1);
INSERT INTO public.games VALUES (1924, 2018, 'Semi-Final', 1700, 1702, 1, 0);
INSERT INTO public.games VALUES (1925, 2018, 'Quarter-Final', 1701, 1704, 3, 2);
INSERT INTO public.games VALUES (1926, 2018, 'Quarter-Final', 1703, 1705, 2, 0);
INSERT INTO public.games VALUES (1927, 2018, 'Quarter-Final', 1702, 1706, 2, 1);
INSERT INTO public.games VALUES (1928, 2018, 'Quarter-Final', 1700, 1707, 2, 0);
INSERT INTO public.games VALUES (1929, 2018, 'Eighth-Final', 1703, 1708, 2, 1);
INSERT INTO public.games VALUES (1930, 2018, 'Eighth-Final', 1705, 1709, 1, 0);
INSERT INTO public.games VALUES (1931, 2018, 'Eighth-Final', 1702, 1710, 3, 2);
INSERT INTO public.games VALUES (1932, 2018, 'Eighth-Final', 1706, 1711, 2, 0);
INSERT INTO public.games VALUES (1933, 2018, 'Eighth-Final', 1701, 1712, 2, 1);
INSERT INTO public.games VALUES (1934, 2018, 'Eighth-Final', 1704, 1713, 2, 1);
INSERT INTO public.games VALUES (1935, 2018, 'Eighth-Final', 1707, 1714, 2, 1);
INSERT INTO public.games VALUES (1936, 2018, 'Eighth-Final', 1700, 1715, 4, 3);
INSERT INTO public.games VALUES (1937, 2014, 'Final', 1716, 1715, 1, 0);
INSERT INTO public.games VALUES (1938, 2014, 'Third Place', 1717, 1706, 3, 0);
INSERT INTO public.games VALUES (1939, 2014, 'Semi-Final', 1715, 1717, 1, 0);
INSERT INTO public.games VALUES (1940, 2014, 'Semi-Final', 1716, 1706, 7, 1);
INSERT INTO public.games VALUES (1941, 2014, 'Quarter-Final', 1717, 1718, 1, 0);
INSERT INTO public.games VALUES (1942, 2014, 'Quarter-Final', 1715, 1702, 1, 0);
INSERT INTO public.games VALUES (1943, 2014, 'Quarter-Final', 1706, 1708, 2, 1);
INSERT INTO public.games VALUES (1944, 2014, 'Quarter-Final', 1716, 1700, 1, 0);
INSERT INTO public.games VALUES (1945, 2014, 'Eighth-Final', 1706, 1719, 2, 1);
INSERT INTO public.games VALUES (1946, 2014, 'Eighth-Final', 1708, 1707, 2, 0);
INSERT INTO public.games VALUES (1947, 2014, 'Eighth-Final', 1700, 1720, 2, 0);
INSERT INTO public.games VALUES (1948, 2014, 'Eighth-Final', 1716, 1721, 2, 1);
INSERT INTO public.games VALUES (1949, 2014, 'Eighth-Final', 1717, 1711, 2, 1);
INSERT INTO public.games VALUES (1950, 2014, 'Eighth-Final', 1718, 1722, 2, 1);
INSERT INTO public.games VALUES (1951, 2014, 'Eighth-Final', 1715, 1709, 1, 0);
INSERT INTO public.games VALUES (1952, 2014, 'Eighth-Final', 1702, 1723, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1700, 'France');
INSERT INTO public.teams VALUES (1701, 'Croatia');
INSERT INTO public.teams VALUES (1702, 'Belgium');
INSERT INTO public.teams VALUES (1703, 'England');
INSERT INTO public.teams VALUES (1704, 'Russia');
INSERT INTO public.teams VALUES (1705, 'Sweden');
INSERT INTO public.teams VALUES (1706, 'Brazil');
INSERT INTO public.teams VALUES (1707, 'Uruguay');
INSERT INTO public.teams VALUES (1708, 'Colombia');
INSERT INTO public.teams VALUES (1709, 'Switzerland');
INSERT INTO public.teams VALUES (1710, 'Japan');
INSERT INTO public.teams VALUES (1711, 'Mexico');
INSERT INTO public.teams VALUES (1712, 'Denmark');
INSERT INTO public.teams VALUES (1713, 'Spain');
INSERT INTO public.teams VALUES (1714, 'Portugal');
INSERT INTO public.teams VALUES (1715, 'Argentina');
INSERT INTO public.teams VALUES (1716, 'Germany');
INSERT INTO public.teams VALUES (1717, 'Netherlands');
INSERT INTO public.teams VALUES (1718, 'Costa Rica');
INSERT INTO public.teams VALUES (1719, 'Chile');
INSERT INTO public.teams VALUES (1720, 'Nigeria');
INSERT INTO public.teams VALUES (1721, 'Algeria');
INSERT INTO public.teams VALUES (1722, 'Greece');
INSERT INTO public.teams VALUES (1723, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1952, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1723, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

