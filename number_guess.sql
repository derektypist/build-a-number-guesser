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

INSERT INTO public.games VALUES (1, 18, 740);
INSERT INTO public.games VALUES (2, 18, 841);
INSERT INTO public.games VALUES (3, 19, 667);
INSERT INTO public.games VALUES (4, 19, 666);
INSERT INTO public.games VALUES (5, 18, 704);
INSERT INTO public.games VALUES (6, 18, 235);
INSERT INTO public.games VALUES (7, 18, 269);
INSERT INTO public.games VALUES (8, 3, 12);
INSERT INTO public.games VALUES (9, 20, 972);
INSERT INTO public.games VALUES (10, 20, 85);
INSERT INTO public.games VALUES (11, 21, 459);
INSERT INTO public.games VALUES (12, 21, 895);
INSERT INTO public.games VALUES (13, 20, 268);
INSERT INTO public.games VALUES (14, 20, 511);
INSERT INTO public.games VALUES (15, 20, 866);
INSERT INTO public.games VALUES (16, 3, 10);
INSERT INTO public.games VALUES (17, 22, 982);
INSERT INTO public.games VALUES (18, 22, 346);
INSERT INTO public.games VALUES (19, 23, 511);
INSERT INTO public.games VALUES (20, 23, 465);
INSERT INTO public.games VALUES (21, 22, 348);
INSERT INTO public.games VALUES (22, 22, 660);
INSERT INTO public.games VALUES (23, 22, 38);
INSERT INTO public.games VALUES (24, 24, 249);
INSERT INTO public.games VALUES (25, 24, 906);
INSERT INTO public.games VALUES (26, 25, 198);
INSERT INTO public.games VALUES (27, 25, 205);
INSERT INTO public.games VALUES (28, 24, 28);
INSERT INTO public.games VALUES (29, 24, 533);
INSERT INTO public.games VALUES (30, 24, 92);
INSERT INTO public.games VALUES (31, 26, 950);
INSERT INTO public.games VALUES (32, 26, 242);
INSERT INTO public.games VALUES (33, 27, 555);
INSERT INTO public.games VALUES (34, 27, 158);
INSERT INTO public.games VALUES (35, 26, 645);
INSERT INTO public.games VALUES (36, 26, 522);
INSERT INTO public.games VALUES (37, 26, 506);
INSERT INTO public.games VALUES (38, 28, 115);
INSERT INTO public.games VALUES (39, 28, 672);
INSERT INTO public.games VALUES (40, 29, 792);
INSERT INTO public.games VALUES (41, 29, 472);
INSERT INTO public.games VALUES (42, 28, 574);
INSERT INTO public.games VALUES (43, 28, 220);
INSERT INTO public.games VALUES (44, 28, 72);
INSERT INTO public.games VALUES (45, 30, 993);
INSERT INTO public.games VALUES (46, 30, 191);
INSERT INTO public.games VALUES (47, 31, 777);
INSERT INTO public.games VALUES (48, 31, 214);
INSERT INTO public.games VALUES (49, 30, 297);
INSERT INTO public.games VALUES (50, 30, 759);
INSERT INTO public.games VALUES (51, 30, 391);
INSERT INTO public.games VALUES (52, 32, 417);
INSERT INTO public.games VALUES (53, 32, 817);
INSERT INTO public.games VALUES (54, 33, 945);
INSERT INTO public.games VALUES (55, 33, 907);
INSERT INTO public.games VALUES (56, 32, 311);
INSERT INTO public.games VALUES (57, 32, 733);
INSERT INTO public.games VALUES (58, 32, 850);
INSERT INTO public.games VALUES (59, 34, 377);
INSERT INTO public.games VALUES (60, 34, 277);
INSERT INTO public.games VALUES (61, 35, 762);
INSERT INTO public.games VALUES (62, 35, 133);
INSERT INTO public.games VALUES (63, 34, 203);
INSERT INTO public.games VALUES (64, 34, 220);
INSERT INTO public.games VALUES (65, 34, 619);
INSERT INTO public.games VALUES (66, 3, 12);
INSERT INTO public.games VALUES (67, 36, 762);
INSERT INTO public.games VALUES (68, 36, 96);
INSERT INTO public.games VALUES (69, 37, 775);
INSERT INTO public.games VALUES (70, 37, 630);
INSERT INTO public.games VALUES (71, 36, 357);
INSERT INTO public.games VALUES (72, 36, 618);
INSERT INTO public.games VALUES (73, 36, 428);
INSERT INTO public.games VALUES (74, 38, 557);
INSERT INTO public.games VALUES (75, 38, 350);
INSERT INTO public.games VALUES (76, 39, 483);
INSERT INTO public.games VALUES (77, 39, 90);
INSERT INTO public.games VALUES (78, 38, 540);
INSERT INTO public.games VALUES (79, 38, 993);
INSERT INTO public.games VALUES (80, 38, 361);
INSERT INTO public.games VALUES (81, 40, 572);
INSERT INTO public.games VALUES (82, 40, 374);
INSERT INTO public.games VALUES (83, 41, 149);
INSERT INTO public.games VALUES (84, 41, 491);
INSERT INTO public.games VALUES (85, 40, 706);
INSERT INTO public.games VALUES (86, 40, 6);
INSERT INTO public.games VALUES (87, 40, 854);
INSERT INTO public.games VALUES (88, 3, 15);
INSERT INTO public.games VALUES (89, 42, 574);
INSERT INTO public.games VALUES (90, 42, 495);
INSERT INTO public.games VALUES (91, 43, 530);
INSERT INTO public.games VALUES (92, 43, 503);
INSERT INTO public.games VALUES (93, 42, 433);
INSERT INTO public.games VALUES (94, 42, 11);
INSERT INTO public.games VALUES (95, 42, 80);
INSERT INTO public.games VALUES (96, 44, 234);
INSERT INTO public.games VALUES (97, 44, 43);
INSERT INTO public.games VALUES (98, 45, 324);
INSERT INTO public.games VALUES (99, 45, 187);
INSERT INTO public.games VALUES (100, 44, 580);
INSERT INTO public.games VALUES (101, 44, 606);
INSERT INTO public.games VALUES (102, 44, 563);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1714037788989');
INSERT INTO public.users VALUES (2, 'user_1714037788988');
INSERT INTO public.users VALUES (3, 'Derek');
INSERT INTO public.users VALUES (4, 'user_1714037902690');
INSERT INTO public.users VALUES (5, 'user_1714037902689');
INSERT INTO public.users VALUES (6, 'user_1714037952625');
INSERT INTO public.users VALUES (7, 'user_1714037952624');
INSERT INTO public.users VALUES (8, 'user_1714038540767');
INSERT INTO public.users VALUES (9, 'user_1714038540766');
INSERT INTO public.users VALUES (10, 'user_1714039049635');
INSERT INTO public.users VALUES (11, 'user_1714039049634');
INSERT INTO public.users VALUES (12, 'user_1714039132687');
INSERT INTO public.users VALUES (13, 'user_1714039132686');
INSERT INTO public.users VALUES (14, 'user_1714039186078');
INSERT INTO public.users VALUES (15, 'user_1714039186077');
INSERT INTO public.users VALUES (16, 'user_1714039458494');
INSERT INTO public.users VALUES (17, 'user_1714039458493');
INSERT INTO public.users VALUES (18, 'user_1714039802313');
INSERT INTO public.users VALUES (19, 'user_1714039802312');
INSERT INTO public.users VALUES (20, 'user_1714040074249');
INSERT INTO public.users VALUES (21, 'user_1714040074248');
INSERT INTO public.users VALUES (22, 'user_1714040213255');
INSERT INTO public.users VALUES (23, 'user_1714040213254');
INSERT INTO public.users VALUES (24, 'user_1714040410489');
INSERT INTO public.users VALUES (25, 'user_1714040410488');
INSERT INTO public.users VALUES (26, 'user_1714040490496');
INSERT INTO public.users VALUES (27, 'user_1714040490495');
INSERT INTO public.users VALUES (28, 'user_1714040517431');
INSERT INTO public.users VALUES (29, 'user_1714040517430');
INSERT INTO public.users VALUES (30, 'user_1714040677188');
INSERT INTO public.users VALUES (31, 'user_1714040677187');
INSERT INTO public.users VALUES (32, 'user_1714041008883');
INSERT INTO public.users VALUES (33, 'user_1714041008882');
INSERT INTO public.users VALUES (34, 'user_1714041095181');
INSERT INTO public.users VALUES (35, 'user_1714041095180');
INSERT INTO public.users VALUES (36, 'user_1714041281853');
INSERT INTO public.users VALUES (37, 'user_1714041281852');
INSERT INTO public.users VALUES (38, 'user_1714041328965');
INSERT INTO public.users VALUES (39, 'user_1714041328964');
INSERT INTO public.users VALUES (40, 'user_1714041344033');
INSERT INTO public.users VALUES (41, 'user_1714041344032');
INSERT INTO public.users VALUES (42, 'user_1714041380731');
INSERT INTO public.users VALUES (43, 'user_1714041380730');
INSERT INTO public.users VALUES (44, 'user_1714041443135');
INSERT INTO public.users VALUES (45, 'user_1714041443134');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 102, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 45, true);


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

