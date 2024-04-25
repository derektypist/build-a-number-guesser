--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 463);
INSERT INTO public.games VALUES (2, 1, 328);
INSERT INTO public.games VALUES (3, 2, 755);
INSERT INTO public.games VALUES (4, 2, 215);
INSERT INTO public.games VALUES (5, 1, 424);
INSERT INTO public.games VALUES (6, 1, 12);
INSERT INTO public.games VALUES (7, 3, 4);
INSERT INTO public.games VALUES (8, 4, 813);
INSERT INTO public.games VALUES (9, 4, 317);
INSERT INTO public.games VALUES (10, 5, 13);
INSERT INTO public.games VALUES (11, 5, 170);
INSERT INTO public.games VALUES (12, 4, 752);
INSERT INTO public.games VALUES (13, 4, 530);
INSERT INTO public.games VALUES (14, 3, 17);
INSERT INTO public.games VALUES (15, 6, 112);
INSERT INTO public.games VALUES (16, 6, 920);
INSERT INTO public.games VALUES (17, 7, 298);
INSERT INTO public.games VALUES (18, 7, 928);
INSERT INTO public.games VALUES (19, 6, 342);
INSERT INTO public.games VALUES (20, 6, 932);
INSERT INTO public.games VALUES (21, 8, 493);
INSERT INTO public.games VALUES (22, 8, 366);
INSERT INTO public.games VALUES (23, 9, 408);
INSERT INTO public.games VALUES (24, 9, 473);
INSERT INTO public.games VALUES (25, 8, 176);
INSERT INTO public.games VALUES (26, 8, 440);
INSERT INTO public.games VALUES (27, 10, 907);
INSERT INTO public.games VALUES (28, 10, 933);
INSERT INTO public.games VALUES (29, 11, 299);
INSERT INTO public.games VALUES (30, 11, 844);
INSERT INTO public.games VALUES (31, 10, 930);
INSERT INTO public.games VALUES (32, 10, 23);
INSERT INTO public.games VALUES (33, 12, 12);
INSERT INTO public.games VALUES (34, 13, 209);
INSERT INTO public.games VALUES (35, 13, 966);
INSERT INTO public.games VALUES (36, 14, 470);
INSERT INTO public.games VALUES (37, 14, 907);
INSERT INTO public.games VALUES (38, 13, 823);
INSERT INTO public.games VALUES (39, 13, 584);
INSERT INTO public.games VALUES (40, 12, 9);
INSERT INTO public.games VALUES (41, 15, 493);
INSERT INTO public.games VALUES (42, 15, 833);
INSERT INTO public.games VALUES (43, 16, 153);
INSERT INTO public.games VALUES (44, 16, 354);
INSERT INTO public.games VALUES (45, 15, 799);
INSERT INTO public.games VALUES (46, 15, 924);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1714057024528');
INSERT INTO public.users VALUES (2, 'user_1714057024527');
INSERT INTO public.users VALUES (3, 'Derek');
INSERT INTO public.users VALUES (4, 'user_1714057059649');
INSERT INTO public.users VALUES (5, 'user_1714057059648');
INSERT INTO public.users VALUES (6, 'user_1714057123842');
INSERT INTO public.users VALUES (7, 'user_1714057123841');
INSERT INTO public.users VALUES (8, 'user_1714057577977');
INSERT INTO public.users VALUES (9, 'user_1714057577976');
INSERT INTO public.users VALUES (10, 'user_1714058310676');
INSERT INTO public.users VALUES (11, 'user_1714058310675');
INSERT INTO public.users VALUES (12, 'Zippy');
INSERT INTO public.users VALUES (13, 'user_1714059167465');
INSERT INTO public.users VALUES (14, 'user_1714059167464');
INSERT INTO public.users VALUES (15, 'user_1714059215523');
INSERT INTO public.users VALUES (16, 'user_1714059215522');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 46, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


