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
    galaxy_types text,
    age_in_millions_of_years integer,
    number_of_planets integer,
    is_reachable boolean,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    distance_from_earth integer,
    has_life boolean,
    is_reachable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age integer,
    distance_from_earth integer,
    star_id integer,
    population numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth integer,
    luminous_intensity integer,
    soon_disappear boolean,
    is_in_the_constellation boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: test_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test_table (
    test_table_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL
);


ALTER TABLE public.test_table OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'fringilda', 'green', 2000000, 20, true, true);
INSERT INTO public.galaxy VALUES (2, 'golou', 'red', 2005000, 26, true, false);
INSERT INTO public.galaxy VALUES (3, 'ziri', 'blau', 1006000, 34, false, true);
INSERT INTO public.galaxy VALUES (4, 'gera', 'black', 1000000, 12, false, false);
INSERT INTO public.galaxy VALUES (5, 'tesaia', 'red', 50006000, 21, true, true);
INSERT INTO public.galaxy VALUES (6, 'volkolav', 'black', 10406000, 56, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aa', 'aaaa', 123, 2354, true, true, 1);
INSERT INTO public.moon VALUES (2, 'ss', 'ssss', 325, 3634, true, false, 1);
INSERT INTO public.moon VALUES (3, 'dd', 'dddd', 4542, 65365, true, false, 2);
INSERT INTO public.moon VALUES (4, 'ff', 'ffff', 2432, 2352, true, true, 1);
INSERT INTO public.moon VALUES (5, 'gg', 'gggg', 3542, 242, false, true, 2);
INSERT INTO public.moon VALUES (6, 'hh', 'hhhh', 54345, 4352, true, true, 2);
INSERT INTO public.moon VALUES (7, 'jj', 'jjjj', 424, 63, false, true, 3);
INSERT INTO public.moon VALUES (8, 'kk', 'kkkk', 452, 764, true, true, 3);
INSERT INTO public.moon VALUES (9, 'll', 'llll', 74, 2341, false, false, 4);
INSERT INTO public.moon VALUES (10, 'öö', 'öööö', 6346, 7657, true, true, 4);
INSERT INTO public.moon VALUES (11, 'qq', 'qqqq', 25, 6536, true, NULL, 5);
INSERT INTO public.moon VALUES (12, 'ww', 'wwww', 463, 858, true, NULL, 5);
INSERT INTO public.moon VALUES (13, 'ee', 'eeee', 5373, 352135, NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'rr', 'rrrr', 351, 64864, NULL, true, 6);
INSERT INTO public.moon VALUES (15, 'tt', 'tttt', 26, 647, true, false, 7);
INSERT INTO public.moon VALUES (16, 'zz', 'zzzz', 25, 647, true, NULL, 7);
INSERT INTO public.moon VALUES (17, 'uu', 'uuuu', 154, 754, NULL, NULL, 8);
INSERT INTO public.moon VALUES (18, 'ii', 'iiii', 6546, 6235, true, true, 8);
INSERT INTO public.moon VALUES (19, 'oo', 'oooo', 141, 675, NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'pp', 'pppp', 325, 647, NULL, NULL, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aaa', 'aaaaa', true, true, 150, 1000, 1, 200000);
INSERT INTO public.planet VALUES (2, 'bbb', 'bbbbb', false, true, NULL, 7741, 1, 49089);
INSERT INTO public.planet VALUES (3, 'ccc', 'ccccc', false, false, 233, 5389, 2, 20009954);
INSERT INTO public.planet VALUES (4, 'ddd', 'ddddd', true, true, 2354, 8395, 2, 32525);
INSERT INTO public.planet VALUES (5, 'eee', 'eeeee', true, false, 2342, 744, 3, 4536);
INSERT INTO public.planet VALUES (6, 'fff', 'fffff', true, true, 32432, 564, 4, 745);
INSERT INTO public.planet VALUES (7, 'ggg', 'ggggg', false, true, 425, 6547, 4, 547);
INSERT INTO public.planet VALUES (8, 'hhh', 'hhhhh', true, false, 2352, 564, 5, 7453);
INSERT INTO public.planet VALUES (9, 'jjj', 'jjjjj', true, true, 23532, 56467, 6, 537);
INSERT INTO public.planet VALUES (10, 'kkk', 'kkkkk', false, false, 2342, 6546, 5, 7647);
INSERT INTO public.planet VALUES (11, 'sss', 'sssss', true, false, 4564, 6747, 6, 253);
INSERT INTO public.planet VALUES (12, 'www', 'wwwww', true, true, 56653, 6856, 6, 253);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sunny', 'warm as sun', 2000, 1500, false, false, 1);
INSERT INTO public.star VALUES (2, 'bunny', 'second star after sun', 3000, 1200, false, true, 1);
INSERT INTO public.star VALUES (3, 'munny', 'third star after sun', 2200, 2500, false, false, 2);
INSERT INTO public.star VALUES (4, 'lolly', 'fourth star after sun', 1200, 2200, false, true, 3);
INSERT INTO public.star VALUES (5, 'kunny', 'fiifth tar after sun', 2300, 2400, true, false, 4);
INSERT INTO public.star VALUES (6, 'molly', 'sixth star after sun', 4200, 2250, false, true, 5);


--
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test_table VALUES (1, 'ggg', 'hhh');
INSERT INTO public.test_table VALUES (2, 'rrr', 'ttt');
INSERT INTO public.test_table VALUES (3, 'ddd', 'sss');


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
-- Name: test_table test_table_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_description_key UNIQUE (description);


--
-- Name: test_table test_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (test_table_id);


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

