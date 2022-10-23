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
-- Name: another_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.another_table (
    another_table_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean
);


ALTER TABLE public.another_table OWNER TO freecodecamp;

--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.another_table_another_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.another_table_another_table_id_seq OWNER TO freecodecamp;

--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.another_table_another_table_id_seq OWNED BY public.another_table.another_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean,
    galaxy_id integer NOT NULL,
    number_starbucks integer,
    internet_speed integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean,
    moon_id integer NOT NULL,
    number_starbucks integer,
    internet_speed integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean,
    planet_id integer NOT NULL,
    number_starbucks integer,
    internet_speed integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric,
    star_id integer NOT NULL,
    number_starbucks integer,
    internet_speed integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: another_table another_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table ALTER COLUMN another_table_id SET DEFAULT nextval('public.another_table_another_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: another_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.another_table VALUES (1, '1', false);
INSERT INTO public.another_table VALUES (2, '2', false);
INSERT INTO public.another_table VALUES (3, '3', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('aaa', 'aaaaa', 123, false, 1, 100, 100);
INSERT INTO public.galaxy VALUES ('bbb', 'bbbbb', 123, false, 2, 100, 100);
INSERT INTO public.galaxy VALUES ('ccc', 'ccccc', 123, false, 3, 100, 100);
INSERT INTO public.galaxy VALUES ('ddd', 'dddddd', 123, false, 4, 100, 100);
INSERT INTO public.galaxy VALUES ('eee', 'eeeeee', 123, false, 5, 100, 100);
INSERT INTO public.galaxy VALUES ('fff', 'ffffff', 123, false, 6, 100, 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('a', 'ccc', 123, NULL, 1, 100, 100, NULL);
INSERT INTO public.moon VALUES ('b', 'ccc', 123, NULL, 2, 100, 100, NULL);
INSERT INTO public.moon VALUES ('c', 'ccc', 123, NULL, 3, 100, 100, NULL);
INSERT INTO public.moon VALUES ('d', 'ccc', 123, NULL, 4, 100, 100, NULL);
INSERT INTO public.moon VALUES ('e', 'ccc', 123, NULL, 5, 100, 100, NULL);
INSERT INTO public.moon VALUES ('f', 'ccc', 123, NULL, 6, 100, 100, NULL);
INSERT INTO public.moon VALUES ('g', 'ccc', 123, NULL, 7, 100, 100, NULL);
INSERT INTO public.moon VALUES ('h', 'ccc', 123, NULL, 8, 100, 100, NULL);
INSERT INTO public.moon VALUES ('i', 'ccc', 123, NULL, 9, 100, 100, NULL);
INSERT INTO public.moon VALUES ('j', 'ccc', 123, NULL, 10, 100, 100, NULL);
INSERT INTO public.moon VALUES ('k', 'ccc', 123, NULL, 11, 100, 100, NULL);
INSERT INTO public.moon VALUES ('l', 'ccc', 123, NULL, 12, 100, 100, NULL);
INSERT INTO public.moon VALUES ('m', 'ccc', 123, NULL, 32, 100, 100, NULL);
INSERT INTO public.moon VALUES ('n', 'ccc', 123, NULL, 13, 100, 100, NULL);
INSERT INTO public.moon VALUES ('o', 'ccc', 123, NULL, 14, 100, 100, NULL);
INSERT INTO public.moon VALUES ('p', 'ccc', 123, NULL, 15, 100, 100, NULL);
INSERT INTO public.moon VALUES ('q', 'ccc', 123, NULL, 16, 100, 100, NULL);
INSERT INTO public.moon VALUES ('r', 'ccc', 123, NULL, 17, 100, 100, NULL);
INSERT INTO public.moon VALUES ('s', 'ccc', 123, NULL, 18, 100, 100, NULL);
INSERT INTO public.moon VALUES ('t', 'ccc', 123, NULL, 19, 100, 100, NULL);
INSERT INTO public.moon VALUES ('u', 'ccc', 123, NULL, 20, 100, 100, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('a', 'aaa', 123, NULL, 1, 100, 100, NULL);
INSERT INTO public.planet VALUES ('b', 'bbb', 123, NULL, 2, 100, 100, NULL);
INSERT INTO public.planet VALUES ('c', 'ccc', 123, NULL, 3, 100, 100, NULL);
INSERT INTO public.planet VALUES ('d', 'ccc', 123, NULL, 4, 100, 100, NULL);
INSERT INTO public.planet VALUES ('e', 'ccc', 123, NULL, 5, 100, 100, NULL);
INSERT INTO public.planet VALUES ('f', 'ccc', 123, NULL, 6, 100, 100, NULL);
INSERT INTO public.planet VALUES ('g', 'ccc', 123, NULL, 7, 100, 100, NULL);
INSERT INTO public.planet VALUES ('h', 'ccc', 123, NULL, 8, 100, 100, NULL);
INSERT INTO public.planet VALUES ('i', 'ccc', 123, NULL, 9, 100, 100, NULL);
INSERT INTO public.planet VALUES ('j', 'ccc', 123, NULL, 10, 100, 100, NULL);
INSERT INTO public.planet VALUES ('k', 'ccc', 123, NULL, 11, 100, 100, NULL);
INSERT INTO public.planet VALUES ('l', 'ccc', 123, NULL, 12, 100, 100, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('aa', 'aaaa', 123, 1, 100, 100, NULL);
INSERT INTO public.star VALUES ('bb', 'bbbb', 123, 2, 100, 100, NULL);
INSERT INTO public.star VALUES ('cc', 'cccc', 123, 3, 100, 100, NULL);
INSERT INTO public.star VALUES ('dd', 'dddd', 123, 4, 100, 100, NULL);
INSERT INTO public.star VALUES ('ee', 'eeee', 123, 5, 100, 100, NULL);
INSERT INTO public.star VALUES ('ff', 'ffff', 123, 6, 100, 100, NULL);


--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.another_table_another_table_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: another_table another_table_another_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_another_table_id_key UNIQUE (another_table_id);


--
-- Name: another_table another_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_pkey PRIMARY KEY (another_table_id);


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

