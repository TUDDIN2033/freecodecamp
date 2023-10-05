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
    name character varying(50) NOT NULL,
    more_details character varying(255),
    redshift double precision,
    distance_in_ly integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id2_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id2_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    more_details character varying(255),
    size_in_kg integer
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
    name character varying(50) NOT NULL,
    support_life boolean,
    planer_description text,
    mass_10exp24 numeric,
    number_of_moons integer,
    mean_temperature_in_celcius integer,
    life_possible boolean,
    star_id integer,
    more_details character varying(255)
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
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    space_mission_id integer NOT NULL,
    name character varying(255) NOT NULL,
    status text
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mission_space_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mission_space_mission_id_seq OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mission_space_mission_id_seq OWNED BY public.space_mission.space_mission_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_in_ly integer,
    magnitude double precision,
    more_details character varying(255),
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id2_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_mission space_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission ALTER COLUMN space_mission_id SET DEFAULT nextval('public.space_mission_space_mission_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'wiki.com', 0.34324, 3);
INSERT INTO public.galaxy VALUES (2, 'whirpool', 'wiki.com', 0.34324, 3);
INSERT INTO public.galaxy VALUES (3, 'triangalium', 'wiki.com', 0.34324, 3);
INSERT INTO public.galaxy VALUES (4, 'centratrius A', 'wiki.com', 0.34324, 3);
INSERT INTO public.galaxy VALUES (5, 'pinnwell galaxy', 'wiki.com', 0.34324, 3);
INSERT INTO public.galaxy VALUES (6, 'milky way', 'wiki.com', 0.34324, 3);
INSERT INTO public.galaxy VALUES (7, 'sombrereo', 'wiki.com', 0.34324, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 5, 'largret moon in the solar system', 5268);
INSERT INTO public.moon VALUES (2, 'Callisto', 5, 'Secon large moon of jupiter', 4821);
INSERT INTO public.moon VALUES (3, 'Io', 5, 'volcaniac activities', 3643);
INSERT INTO public.moon VALUES (4, 'Europia', 5, 'surface ocean', 3122);
INSERT INTO public.moon VALUES (5, 'Amalther', 5, 'really red', 250);
INSERT INTO public.moon VALUES (6, 'Himalia', 5, 'Irragular shaped', 170);
INSERT INTO public.moon VALUES (7, 'Elara', 5, 'moon', 86);
INSERT INTO public.moon VALUES (8, 'Pasiphae', 5, 'moon', 60);
INSERT INTO public.moon VALUES (9, 'Metis', 5, 'moon', 42);
INSERT INTO public.moon VALUES (10, 'Lysithea', 5, 'moon', 36);
INSERT INTO public.moon VALUES (11, 'Anake', 5, 'moon', 36);
INSERT INTO public.moon VALUES (12, 'Thebe', 5, 'moon', 36);
INSERT INTO public.moon VALUES (13, 'Adrasta', 5, 'moon', 36);
INSERT INTO public.moon VALUES (14, 'Carme', 5, 'moon', 36);
INSERT INTO public.moon VALUES (15, 'Thermesto', 5, 'moon', 36);
INSERT INTO public.moon VALUES (16, 'taygate', 5, 'moon', 36);
INSERT INTO public.moon VALUES (17, 'Kylke', 5, 'moon', 36);
INSERT INTO public.moon VALUES (18, 'locaste', 5, 'moon', 36);
INSERT INTO public.moon VALUES (19, 'Erinnome', 5, 'moon', 36);
INSERT INTO public.moon VALUES (20, 'Megaclite', 5, 'moon', 36);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', false, 'rock, heavily cratere', 0.055, 0, 165, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (3, 'Venus', false, 'hot, thic atomosphere', 0.815, 0, 464, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (4, 'Earth', true, 'Diverse, abudnat life', 1, 1, 15, true, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (5, 'Mars', false, 'cold dry cananyons', 0.107, 1, -65, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 'Gas gian with storms', 317.8, 79, -110, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (7, 'Saturn', false, 'gas giant with rings', 95.2, 83, -140, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (8, 'Uranus', false, 'ice giant with rings', 14.5, 27, -195, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (9, 'Neptune', false, 'ice giant with storms', 17.1, 14, -200, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (10, 'Kepler-186f', false, 'rocky, larger than earth', 1.44, 0, 10, false, 3, 'science.nasa.gov');
INSERT INTO public.planet VALUES (13, 'Prozima Centuri-b', false, 'rocky, larger than earth', 1.44, 0, 10, false, 4, 'science.nasa.gov');
INSERT INTO public.planet VALUES (14, 'Trappist-1e', false, 'rocky, larger than earth', 1.44, 0, 10, false, 4, 'science.nasa.gov');
INSERT INTO public.planet VALUES (15, 'kepler 442b', false, 'rocky, larger than earth', 1.44, 0, 10, false, 4, 'science.nasa.gov');


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission VALUES (1, 'Mars science rover', 'ongoing');
INSERT INTO public.space_mission VALUES (2, 'Hubble telescope', 'still in use');
INSERT INTO public.space_mission VALUES (3, 'Curisoty', 'rover on mars');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'sun', 3, 0.34324, 'wiki.com', 6);
INSERT INTO public.star VALUES (4, 'siriusus', 3, 0.34324, 'wiki.com', 6);
INSERT INTO public.star VALUES (6, 'alpha centruri', 3, 0.34324, 'wiki.com', 6);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 3, 0.34324, 'wiki.com', 6);
INSERT INTO public.star VALUES (8, 'vega', 3, 0.34324, 'wiki.com', 6);
INSERT INTO public.star VALUES (9, 'Antares', 3, 0.34324, 'wiki.com', 6);


--
-- Name: galaxy_galaxy_id2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id2_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


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
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_constraint UNIQUE (name);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
