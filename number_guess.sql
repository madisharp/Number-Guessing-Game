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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    guess_num integer
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
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_user_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_user_id_seq OWNED BY public.usernames.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: usernames user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN user_id SET DEFAULT nextval('public.usernames_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (17, 40, 10);
INSERT INTO public.games VALUES (18, 40, 14);
INSERT INTO public.games VALUES (19, 41, 102);
INSERT INTO public.games VALUES (20, 41, 991);
INSERT INTO public.games VALUES (21, 42, 446);
INSERT INTO public.games VALUES (22, 42, 781);
INSERT INTO public.games VALUES (23, 41, 697);
INSERT INTO public.games VALUES (24, 41, 965);
INSERT INTO public.games VALUES (25, 41, 515);
INSERT INTO public.games VALUES (26, 43, 1);
INSERT INTO public.games VALUES (27, 43, 1);
INSERT INTO public.games VALUES (28, 44, 1);
INSERT INTO public.games VALUES (29, 44, 1);
INSERT INTO public.games VALUES (30, 43, 1);
INSERT INTO public.games VALUES (31, 43, 1);
INSERT INTO public.games VALUES (32, 43, 1);
INSERT INTO public.games VALUES (33, 45, 144);
INSERT INTO public.games VALUES (34, 45, 59);
INSERT INTO public.games VALUES (35, 46, 410);
INSERT INTO public.games VALUES (36, 46, 509);
INSERT INTO public.games VALUES (37, 45, 64);
INSERT INTO public.games VALUES (38, 45, 780);
INSERT INTO public.games VALUES (39, 45, 230);
INSERT INTO public.games VALUES (40, 47, 738);
INSERT INTO public.games VALUES (41, 47, 856);
INSERT INTO public.games VALUES (42, 48, 923);
INSERT INTO public.games VALUES (43, 48, 692);
INSERT INTO public.games VALUES (44, 47, 411);
INSERT INTO public.games VALUES (45, 47, 986);
INSERT INTO public.games VALUES (46, 47, 171);
INSERT INTO public.games VALUES (47, 49, 924);
INSERT INTO public.games VALUES (48, 49, 441);
INSERT INTO public.games VALUES (49, 50, 384);
INSERT INTO public.games VALUES (50, 50, 859);
INSERT INTO public.games VALUES (51, 49, 816);
INSERT INTO public.games VALUES (52, 49, 468);
INSERT INTO public.games VALUES (53, 49, 70);
INSERT INTO public.games VALUES (54, 51, 1);
INSERT INTO public.games VALUES (55, 51, 1);
INSERT INTO public.games VALUES (56, 52, 1);
INSERT INTO public.games VALUES (57, 52, 1);
INSERT INTO public.games VALUES (58, 51, 1);
INSERT INTO public.games VALUES (59, 51, 1);
INSERT INTO public.games VALUES (60, 51, 1);
INSERT INTO public.games VALUES (61, 53, 1);
INSERT INTO public.games VALUES (62, 53, 1);
INSERT INTO public.games VALUES (63, 54, 1);
INSERT INTO public.games VALUES (64, 54, 1);
INSERT INTO public.games VALUES (65, 53, 1);
INSERT INTO public.games VALUES (66, 53, 1);
INSERT INTO public.games VALUES (67, 53, 1);
INSERT INTO public.games VALUES (68, 55, 287);
INSERT INTO public.games VALUES (69, 55, 678);
INSERT INTO public.games VALUES (70, 56, 306);
INSERT INTO public.games VALUES (71, 56, 675);
INSERT INTO public.games VALUES (72, 55, 938);
INSERT INTO public.games VALUES (73, 55, 64);
INSERT INTO public.games VALUES (74, 55, 816);
INSERT INTO public.games VALUES (75, 40, 9);
INSERT INTO public.games VALUES (76, 57, 324);
INSERT INTO public.games VALUES (77, 57, 575);
INSERT INTO public.games VALUES (78, 58, 308);
INSERT INTO public.games VALUES (79, 58, 581);
INSERT INTO public.games VALUES (80, 57, 999);
INSERT INTO public.games VALUES (81, 57, 805);
INSERT INTO public.games VALUES (82, 57, 383);
INSERT INTO public.games VALUES (83, 59, 227);
INSERT INTO public.games VALUES (84, 59, 941);
INSERT INTO public.games VALUES (85, 60, 421);
INSERT INTO public.games VALUES (86, 60, 802);
INSERT INTO public.games VALUES (87, 59, 102);
INSERT INTO public.games VALUES (88, 59, 914);
INSERT INTO public.games VALUES (89, 59, 411);
INSERT INTO public.games VALUES (90, 40, 10);
INSERT INTO public.games VALUES (91, 61, 509);
INSERT INTO public.games VALUES (92, 61, 108);
INSERT INTO public.games VALUES (93, 62, 118);
INSERT INTO public.games VALUES (94, 62, 573);
INSERT INTO public.games VALUES (95, 61, 124);
INSERT INTO public.games VALUES (96, 61, 548);
INSERT INTO public.games VALUES (97, 61, 395);
INSERT INTO public.games VALUES (98, 63, 477);
INSERT INTO public.games VALUES (99, 63, 954);
INSERT INTO public.games VALUES (100, 64, 812);
INSERT INTO public.games VALUES (101, 64, 116);
INSERT INTO public.games VALUES (102, 63, 634);
INSERT INTO public.games VALUES (103, 63, 275);
INSERT INTO public.games VALUES (104, 63, 290);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (40, 'MADISHARP');
INSERT INTO public.usernames VALUES (41, 'user_1687969963371');
INSERT INTO public.usernames VALUES (42, 'user_1687969963370');
INSERT INTO public.usernames VALUES (43, 'user_1687970048086');
INSERT INTO public.usernames VALUES (44, 'user_1687970048085');
INSERT INTO public.usernames VALUES (45, 'user_1687970171896');
INSERT INTO public.usernames VALUES (46, 'user_1687970171895');
INSERT INTO public.usernames VALUES (47, 'user_1687970439318');
INSERT INTO public.usernames VALUES (48, 'user_1687970439316');
INSERT INTO public.usernames VALUES (49, 'user_1687970451075');
INSERT INTO public.usernames VALUES (50, 'user_1687970451074');
INSERT INTO public.usernames VALUES (51, 'user_1687970482970');
INSERT INTO public.usernames VALUES (52, 'user_1687970482969');
INSERT INTO public.usernames VALUES (53, 'user_1687970505560');
INSERT INTO public.usernames VALUES (54, 'user_1687970505559');
INSERT INTO public.usernames VALUES (55, 'user_1687970554535');
INSERT INTO public.usernames VALUES (56, 'user_1687970554534');
INSERT INTO public.usernames VALUES (57, 'user_1687970637844');
INSERT INTO public.usernames VALUES (58, 'user_1687970637843');
INSERT INTO public.usernames VALUES (59, 'user_1687970686640');
INSERT INTO public.usernames VALUES (60, 'user_1687970686639');
INSERT INTO public.usernames VALUES (61, 'user_1687970785847');
INSERT INTO public.usernames VALUES (62, 'user_1687970785846');
INSERT INTO public.usernames VALUES (63, 'user_1687970830866');
INSERT INTO public.usernames VALUES (64, 'user_1687970830865');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 104, true);


--
-- Name: usernames_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_user_id_seq', 64, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usernames(user_id);


--
-- PostgreSQL database dump complete
--

