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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    speed integer,
    floatgalaxy numeric(3,1) NOT NULL,
    description text,
    truth boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    speed integer,
    size integer,
    "float" numeric(3,1) NOT NULL,
    description text,
    truth boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    size integer,
    speed integer,
    "float" numeric(3,1),
    planetdesc text,
    truth boolean,
    startruth integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    speed integer,
    size integer,
    "float" numeric(3,1),
    description text,
    startruth integer,
    floatgalaxy numeric(3,1) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    cold integer,
    heavy boolean,
    name character varying(30) NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'paco', 12, 12, 1.1, 'Hello boys', true);
INSERT INTO public.galaxy VALUES (2, 'maco', 22, 22, 2.2, 'Hello boys', true);
INSERT INTO public.galaxy VALUES (3, 'macon', 222, 322, 32.2, 'Hellooo boys', false);
INSERT INTO public.galaxy VALUES (4, 'con', 252, 32, 5.6, 'Heooys', false);
INSERT INTO public.galaxy VALUES (5, 'cgony', 52, 2, 4.6, 'Hooy', false);
INSERT INTO public.galaxy VALUES (6, 'cggg', 26, 8, 49.6, 'Fwo', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (10, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (1, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (2, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (23, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (235, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (2355, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (23555, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (235555, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (2355555, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (23565, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (235655, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (2356575, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (2356, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (23569, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (235695, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (2356955, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (23569554, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (235695544, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (24, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.moon VALUES (244, 'astar', 1, 1, 1.1, 'lel', true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 'astar', 1, 1, 1.1, 'lel', true, 0);
INSERT INTO public.planet VALUES (1, 'astar', 1, 1, 1.1, 'lel', true, 1);
INSERT INTO public.planet VALUES (2, 'astar', 1, 1, 1.1, 'lel', true, 2);
INSERT INTO public.planet VALUES (3, 'astar', 1, 1, 1.1, 'lel', true, 3);
INSERT INTO public.planet VALUES (4, 'astar', 1, 1, 1.1, 'lel', true, 4);
INSERT INTO public.planet VALUES (5, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.planet VALUES (6, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.planet VALUES (7, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.planet VALUES (8, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.planet VALUES (9, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.planet VALUES (10, 'astar', 1, 1, 1.1, 'lel', true, 5);
INSERT INTO public.planet VALUES (11, 'astar', 1, 1, 1.1, 'lel', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'astar', 1, 1, 1.0, 'lel', 1, 1.1);
INSERT INTO public.star VALUES (2, 'astar', 1, 1, 1.0, 'lel', 0, 2.2);
INSERT INTO public.star VALUES (3, 'astar', 1, 1, 1.1, 'lel', 2, 32.2);
INSERT INTO public.star VALUES (4, 'astar', 1, 1, 1.1, 'lel', 3, 5.6);
INSERT INTO public.star VALUES (5, 'astar', 1, 1, 1.1, 'lel', 4, 4.6);
INSERT INTO public.star VALUES (6, 'astar', 1, 1, 1.1, 'lel', 5, 49.6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, NULL, NULL, 'hot');
INSERT INTO public.sun VALUES (2, NULL, NULL, 'hot');
INSERT INTO public.sun VALUES (3, NULL, NULL, 'hot');


--
-- Name: galaxy galaxy_float_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_float_key UNIQUE (floatgalaxy);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_floatgalaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_floatgalaxy_key UNIQUE (floatgalaxy);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_truth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_truth_key UNIQUE (startruth);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_sun_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sun_id_key UNIQUE (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_startruth_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_startruth_fkey FOREIGN KEY (startruth) REFERENCES public.star(startruth);


--
-- Name: star star_floatgalaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_floatgalaxy_fkey FOREIGN KEY (floatgalaxy) REFERENCES public.galaxy(floatgalaxy);


--
-- PostgreSQL database dump complete
--

