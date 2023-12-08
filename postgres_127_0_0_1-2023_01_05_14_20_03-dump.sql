--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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

DROP DATABASE IF EXISTS db_epcot;
--
-- Name: db_epcot; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_epcot ENCODING = 'UTF8';


ALTER DATABASE db_epcot OWNER TO postgres;

\connect db_epcot

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
-- Name: tb_discounting_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_discounting_game (
    id bigint NOT NULL,
    fr_game_id bigint NOT NULL,
    discount_percentage integer NOT NULL,
    started_at timestamp without time zone NOT NULL,
    finished_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_discounting_game OWNER TO postgres;

--
-- Name: tb_discounting_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_discounting_game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_discounting_game_id_seq OWNER TO postgres;

--
-- Name: tb_discounting_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_discounting_game_id_seq OWNED BY public.tb_discounting_game.id;


--
-- Name: tb_discover_banner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_discover_banner (
    id bigint NOT NULL,
    image_url text NOT NULL,
    link text NOT NULL,
    "position" integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_discover_banner OWNER TO postgres;

--
-- Name: tb_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_game (
    id bigint NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    cover_urls text NOT NULL,
    download_link text DEFAULT 'https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe'::text NOT NULL,
    price numeric(12,2) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    tags text NOT NULL,
    platforms text NOT NULL,
    reviews text,
    marks text,
    developer text NOT NULL,
    publisher text NOT NULL,
    released_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tb_game OWNER TO postgres;

--
-- Name: tb_game_dlc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_game_dlc (
    id bigint NOT NULL,
    fr_game_id bigint NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    price numeric(12,2) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone,
    cover_urls text NOT NULL,
    download_link text,
    released_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tb_game_dlc OWNER TO postgres;

--
-- Name: tb_game_dlc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_game_dlc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_game_dlc_id_seq OWNER TO postgres;

--
-- Name: tb_game_dlc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_game_dlc_id_seq OWNED BY public.tb_game_dlc.id;


--
-- Name: tb_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_game_id_seq OWNER TO postgres;

--
-- Name: tb_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_game_id_seq OWNED BY public.tb_game.id;


--
-- Name: tb_home_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_home_banner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_home_banner_id_seq OWNER TO postgres;

--
-- Name: tb_home_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_home_banner_id_seq OWNED BY public.tb_discover_banner.id;


--
-- Name: tb_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_order (
    id bigint NOT NULL,
    sn text NOT NULL,
    fr_game_ids text,
    fr_game_dlc_ids text,
    price numeric(12,2) NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone,
    fr_user_id bigint NOT NULL
);


ALTER TABLE public.tb_order OWNER TO postgres;

--
-- Name: tb_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_order_id_seq OWNER TO postgres;

--
-- Name: tb_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_order_id_seq OWNED BY public.tb_order.id;


--
-- Name: tb_preordering_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_preordering_game (
    id bigint NOT NULL,
    fr_game_id bigint NOT NULL,
    started_at timestamp without time zone NOT NULL,
    finished_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_preordering_game OWNER TO postgres;

--
-- Name: tb_preordering_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_preordering_game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_preordering_game_id_seq OWNER TO postgres;

--
-- Name: tb_preordering_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_preordering_game_id_seq OWNED BY public.tb_preordering_game.id;


--
-- Name: tb_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user (
    id bigint NOT NULL,
    username text NOT NULL,
    nickname text,
    password text NOT NULL,
    email text NOT NULL,
    avatar_url text,
    address text,
    birthday timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_user OWNER TO postgres;

--
-- Name: tb_user_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user_cart (
    id bigint NOT NULL,
    fr_user_id bigint NOT NULL,
    fr_game_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_user_cart OWNER TO postgres;

--
-- Name: tb_user_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_cart_id_seq OWNER TO postgres;

--
-- Name: tb_user_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_cart_id_seq OWNED BY public.tb_user_cart.id;


--
-- Name: tb_user_game_asset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user_game_asset (
    id bigint NOT NULL,
    fr_user_id bigint NOT NULL,
    fr_game_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_user_game_asset OWNER TO postgres;

--
-- Name: tb_user_game_asset_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_game_asset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_game_asset_id_seq OWNER TO postgres;

--
-- Name: tb_user_game_asset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_game_asset_id_seq OWNED BY public.tb_user_game_asset.id;


--
-- Name: tb_user_game_dlc_asset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user_game_dlc_asset (
    id bigint NOT NULL,
    fr_user_id bigint NOT NULL,
    fr_game_dlc_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_user_game_dlc_asset OWNER TO postgres;

--
-- Name: tb_user_game_dlc_asset_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_game_dlc_asset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_game_dlc_asset_id_seq OWNER TO postgres;

--
-- Name: tb_user_game_dlc_asset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_game_dlc_asset_id_seq OWNED BY public.tb_user_game_dlc_asset.id;


--
-- Name: tb_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_id_seq OWNER TO postgres;

--
-- Name: tb_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_id_seq OWNED BY public.tb_user.id;


--
-- Name: tb_user_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user_token (
    id bigint NOT NULL,
    fr_user_id bigint NOT NULL,
    token text NOT NULL,
    is_disabled boolean DEFAULT false NOT NULL,
    expired_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_user_token OWNER TO postgres;

--
-- Name: tb_user_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_token_id_seq OWNER TO postgres;

--
-- Name: tb_user_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_token_id_seq OWNED BY public.tb_user_token.id;


--
-- Name: tb_user_wish_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user_wish_list (
    id bigint NOT NULL,
    fr_user_id bigint NOT NULL,
    fr_game_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.tb_user_wish_list OWNER TO postgres;

--
-- Name: tb_user_wish_list_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_wish_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_wish_list_id_seq OWNER TO postgres;

--
-- Name: tb_user_wish_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_wish_list_id_seq OWNED BY public.tb_user_wish_list.id;


--
-- Name: tb_discounting_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_discounting_game ALTER COLUMN id SET DEFAULT nextval('public.tb_discounting_game_id_seq'::regclass);


--
-- Name: tb_discover_banner id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_discover_banner ALTER COLUMN id SET DEFAULT nextval('public.tb_home_banner_id_seq'::regclass);


--
-- Name: tb_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_game ALTER COLUMN id SET DEFAULT nextval('public.tb_game_id_seq'::regclass);


--
-- Name: tb_game_dlc id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_game_dlc ALTER COLUMN id SET DEFAULT nextval('public.tb_game_dlc_id_seq'::regclass);


--
-- Name: tb_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_order ALTER COLUMN id SET DEFAULT nextval('public.tb_order_id_seq'::regclass);


--
-- Name: tb_preordering_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_preordering_game ALTER COLUMN id SET DEFAULT nextval('public.tb_preordering_game_id_seq'::regclass);


--
-- Name: tb_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user ALTER COLUMN id SET DEFAULT nextval('public.tb_user_id_seq'::regclass);


--
-- Name: tb_user_cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_cart ALTER COLUMN id SET DEFAULT nextval('public.tb_user_cart_id_seq'::regclass);


--
-- Name: tb_user_game_asset id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_game_asset ALTER COLUMN id SET DEFAULT nextval('public.tb_user_game_asset_id_seq'::regclass);


--
-- Name: tb_user_game_dlc_asset id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_game_dlc_asset ALTER COLUMN id SET DEFAULT nextval('public.tb_user_game_dlc_asset_id_seq'::regclass);


--
-- Name: tb_user_token id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_token ALTER COLUMN id SET DEFAULT nextval('public.tb_user_token_id_seq'::regclass);


--
-- Name: tb_user_wish_list id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_wish_list ALTER COLUMN id SET DEFAULT nextval('public.tb_user_wish_list_id_seq'::regclass);


--
-- Data for Name: tb_discounting_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_discounting_game (id, fr_game_id, discount_percentage, started_at, finished_at, created_at, deleted_at) FROM stdin;
1	1	10	2023-01-04 21:07:51	2023-02-10 21:07:54	2023-01-04 21:08:02	\N
2	14	80	2023-01-05 01:09:53	2023-01-10 01:09:55	2023-01-05 01:10:05	\N
\.


--
-- Data for Name: tb_discover_banner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_discover_banner (id, image_url, link, "position", created_at, deleted_at) FROM stdin;
2	/app/assets/images/potion-craft-logo-3rwf8.png	/game/detail?title=6I2v5YmC5bel6Im677ya54K86YeR5qih5ouf5Zmo	1	2023-01-04 02:40:56	\N
3	/app/assets/images/pirates-outlaws-jmw57.jpg	/game/detail?title=UGlyYXRlcyBPdXRsYXdz	2	2023-01-04 02:41:18	\N
4	/app/assets/images/egs-themsfightinherds-mane6inc-s1-2560x1440-c2aa6090cc5c.jpg	/game/detail?title=44CKVGhlbeKAmXMgRmlnaHRpbuKAmSBIZXJkc-OAiw	3	2023-01-04 02:41:37	\N
\.


--
-- Data for Name: tb_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_game (id, title, description, cover_urls, download_link, price, created_at, deleted_at, tags, platforms, reviews, marks, developer, publisher, released_at) FROM stdin;
1	《LEGO? Brawls》	<h5>在 LEGO 宇宙中的第一个团队动作乱斗组中，梦想出终极的 Minifigure 乱斗者，在所有最爱的 LEGO? 主题中尽情狂欢。和家里或和世界各地的朋友一起玩，看看如何在竞争中脱颖而出。</h5><h6>《LEGO? Brawls》</h6><p>在 LEGO 宇宙中的第一个团队动作乱斗组中，梦想出终极的 Minifigure 乱斗者，在所有最爱的 LEGO? 主题中尽情狂欢。和家里或和世界各地的朋友一起玩，看看如何在竞争中脱颖而出。</p><h6>打造终极乱斗者</h6><p>设计具有独特风格、策略和个性的终极策略 Minifigure 英雄。有态度的仙人掌？好斗的忍者门卫，还碰巧斗鸡？有些事要解决的挥着大锤的小丑？好啊！打造终极乱斗者，用可解锁的内容给他们升级！</p>	/app/assets/images/EGS_LEGOBrawls_RedGamesCo_S2_1200x1600-403d920a29bdedbe610d23e06dc657f0.jpg,/app/assets/images/egs-legobrawls-redgamesco-ic1-350x102-1b0737e898ae.png,/app/assets/images/egs-legobrawls-redgamesco-g1a-01-1920x1080-644b28f45df9.jpg,/app/assets/images/egs-legobrawls-redgamesco-g1a-02-1920x1080-11d35f9d5223.jpg,/app/assets/images/egs-legobrawls-redgamesco-g1a-03-1920x1080-f50cb018841a.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	60.00	2023-01-03 07:41:25.664204	\N	动作	Windoiws	\N	\N	Red Games Co	LEGO	2022-12-17 00:00:00
2	Sail Forth	<h5>驾驭一支可定制的船队穿越海洋，古老的海洋深处吞噬着这个星球神秘历史的关键。与这里的人们交朋友，扩大你的船队，拿起武器对付狂暴的海盗，并在广阔的海洋世界中制定一条路线。终极冒险正在召唤，你要不要回应？</h5><h6>探索深蓝之海!</h6><br/><p>- 乘风破浪，在横跨几十个古怪地区的广阔海洋上进行高级冒险。</p><br/><p>发现无数的岛屿，它们有自己的植物群、动物群、友好的人民和可怕的敌人。</p><br/><p>俏皮地追赶一群好奇的海豚，欣赏太阳沉入冰冷地平线的美景，或者跑掉一伙胆小的罪犯，在狂野的炮声中接受他们的道歉</p><h6>指挥一支帆船队!</h6><br/><p>- 建立和管理一支由专门船只组成的定制队伍，匹配任何个性和游戏风格。</p><br/><p>购买、装备、升级和修改你的船只武器装备，以对抗“日月无光”之侧的强悍匪徒。</p><br/><p>敲开巨大的蛤蜊，打捞孤独的沉船，填补船队的开销，并保持船员的状态。</p>	/app/assets/images/sail-forth-e9n76.jpg,/app/assets/images/sail-forth-logo-8cwm7.png,/app/assets/images/sail-forth-f5kuq.png,/app/assets/images/sail-forth-jms3m.png,/app/assets/images/sail-forth-ja2uf.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	60.00	2023-01-03 07:42:34.732593	\N	冒险,探索,独立	Windoiws	\N	\N	Festive Vector	The Quantum Astrophysicists Guild	2022-12-17 00:00:00
3	Demeo	<h5>It’s dangerous to go alone! Grab your friends and assemble a party, because plumbing the depths of Demeo requires strategy, cunning, and teamwork. An award-winning cooperative tabletop adventure for up to four players.</h5><br/><h6>Demeo</h6><br/><p>Adventurers, it’s time to unite! A dark force has taken over the underworld in the RPG dungeon crawler, Demeo, and it’s a world you’re not likely to survive alone.</p><br/><p>Demeo is a cross-platform cooperative adventure for up to four players that recreates all of the magic and camaraderie of gathering around a tabletop with friends to do battle against the forces of evil.</p><br/><p>Assume the role of the eagle-eyed hunter, mystical sorcerer, deadly assassin, or protective guardian, melodic bard or powerful warlock. But choose your heroes wisely in this cooperative adventure, for once players have accepted their quest, they must work together to vanquish the unholy force that corrupts everything... or die trying.</p><br/><p>Gilmerra is a place of contrast, consisting of eight provinces stretching across mountains, forests, caves and oceans. It holds the beauty of a sunset over a meadow where sherp bunnies and brins feed their younglings, or perhaps a wedding taking place in the village of Torp. At the same time, there is also an ugly side. Maybe a reaver drags you down below in a murky river or a vílther attacking you as you explore the ruins of Castle Hollowmark.</p><br/><p>One might state that Gilmerra is an ancient coin with two sides - one light and one dark.</p>	/app/assets/images/demeo-w1f4t (2).png,/app/assets/images/demeo-logo-1i04q.png,/app/assets/images/demeo-video-1osqu.png,/app/assets/images/demeo-zmaev.jpg,/app/assets/images/demeo-1gk4s.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	88.00	2023-01-03 07:43:02.007938	\N	冒险,策略,角色扮演	Windiows	\N	\N	Resolution Games	Resolution Games	2022-12-26 00:00:00
4	药剂工艺：炼金模拟器	<h5>在《药剂工艺：炼金模拟器》中，你将扮演一个炼金术士，并使用各种工具和原料来调制药剂。你将掌控药剂商店的方方面面：发明新配方、吸引顾客、并尽情地做实验。不过请记住：整个小镇都指望着你。</h5><br/><h6>游戏特色</h6><p>-独特而精致的古典美术风格，灵感来自于中世纪的手稿和医学书籍。</p><br/><p>随心使用各种原料和工具制作药剂，体验让人满足的物理交互。</p><br/><p>丰富而自由的沙盒风格玩法，选择多种多样的方式来完成各个任务。</p><br/><p>在向小镇居民出售药剂的同时，你可以自由选择扮演道德高尚的匠人、唯利是图的奸商、神秘的黑魔法术士或者任何你想成为的角色！</p><h6>随心运用各种原料</h6><br/><p>树叶、鲜花、浆果、根茎、水果、矿石和各种蘑菇都在你的研钵中准备好了。就像磨咖啡豆一样，把它们研磨得越细越好！</p>	/app/assets/images/potion-craft-5kkbx (2).png,/app/assets/images/potion-craft-l3h69.jpg,/app/assets/images/potion-craft-video-pgfx1.jpg,/app/assets/images/potion-craft-logo-3rwf8.png,/app/assets/images/potion-craft-l3h69.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	45.00	2023-01-03 07:44:05.876802	\N	独立,模拟	Windiows	\N	\N	niceplay games	tinyBuild	2022-12-14 00:00:00
5	《Master of Magic》	<h5>在这款经典小众回合制策略游戏中，你需要扮演一名使用强力咒语的强大巫师，率领幻想种族来挑战你的对手。你有能力成为魔法之主（Master of Magic）吗？</h5><br/><h6>关于游戏</h6><br/><p>《Master of Magic》结合了角色扮演与策略游戏，是一款上世纪 90 年代经典作品的重制版。</p><br/><p>在《Master of Magic》中，你将扮演 14 位形形色色的大巫师中的其中之一，和彼此互相比拼，争取 Arcanus 以及 Myrror 世界的控制权。从不同的魔法流派以及幻想种族中进行选择，然后率领你的大军，不断在这片大陆上扩张你的影响力和权力。</p><br/><p>在《Master of Magic》中，你将扮演 14 位形形色色的大巫师中的其中之一，和彼此互相比拼，争取 Arcanus 以及 Myrror 世界的控制权。从不同的魔法流派以及幻想种族中进行选择，然后率领你的大军，不断在这片大陆上扩张你的影响力和权力。</p><br/><p>研究新的咒语，展开炼金术，进行仪式，使用你的奥术之力来改变周围的世界。你要时刻小心注意你的对手巫师们的行动，毕竟他们的目标和你一致。但请记住：最后的魔法之主（Master of Magic）只能有一位。</p><br/><h6>游戏特色：</h6><br/><p>14 个彼此不同的强力巫师</p><p>5 个魔法流派与 18 个特性，供你定制你的巫师</p><br/><p>超过 60 种特殊能力</p><br/><p>超过 200 种咒语可供研究</p><br/><p>来率领包括精灵，矮人，巨魔，龙人，兽人，虫人，狼人等 14 多种幻想种族</p><br/><p>196 种独一无二的单位类型</p><br/><p>超过 250 种不同的魔法物品，你还可以自由打造</p><br/><p>两个平行世界——Arcanus 与 Myrror</p>	/app/assets/images/EGS_MasterofMagic_MuHaGames_S2_1200x1600-30a1ab661e722c4edad8d50d0069e871.jpg,/app/assets/images/egs-masterofmagic-muhagames-ic1-400x400-12031dc1471b-428x188-1657639275874-428x187-547afbebcb25.png,/app/assets/images/egs-masterofmagic-muhagames-g1a-00-1920x1080-eaa17bfde558.jpg,/app/assets/images/egs-masterofmagic-muhagames-g1a-01-1920x1080-9be24691a3ba.jpg,/app/assets/images/egs-masterofmagic-muhagames-g1a-02-1920x1080-7a16c4718b94.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	118.00	2023-01-03 07:44:16.235953	\N	策略	Windiows	\N	\N	MuHa Games	Slitherine Ltd.	2022-12-13 00:00:00
6	Arcanium: Rise of Akhan	<h5>Arcanium is an Open-world, Strategy Card Adventure that merges Roguelite and Deckbuilding genres like never before. Control your party of three heroes, craft your deck, unlock a vast amount of cards and items and save the world of Arzu from corruption!</h5><br/><h6>A PERFECT COMBO</h6><p>Merging the best of Roguelite and Deckbuilding, Arcanium is an epic, ambitious, open-world single-player strategy game. Form a party of three heroes and embark on a dangerous journey in order to defeat Akhan the Calamity, and save the world of Arzu from destruction.</p><br/><h6>OPEN WORLD DUNGEON CRAWLER<h6><br/><p>Roam freely inside a vast, fully procedural 3D map, but keep an eye on the Threat meter. The longer you stay in a Province, the harder the enemies get. Forge a path wisely, the choices you make have a lasting impact on the rest of your run.</p>,/app/assets/images/arcanium-1xmlj (1).jpg	/app/assets/images/arcanium-logo-o1zle.png,/app/assets/images/arcanium-video-vqszb.png,/app/assets/images/arcanium-lmz4q.jpg,/app/assets/images/arcanium-1jooq.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	75.00	2023-01-03 07:44:16.262856	\N	Rogue-lite,卡牌游戏,策略	Windiows	\N	\N	Supercombo, Inc.	Rogue Games, Inc.	2022-12-16 00:00:00
7	《Cassiodora》	<h5>《Cassiodora》是一款受经典射击游戏启发而诞生的中世纪奇幻游戏，拥有独特的游戏机制和场面宏大的首领战。你可以独自闯关或是与最多两名好友同屏合作，一路闯关救出 Cassiodora 公主。</h5><br/><h6>故事模式</h6><br/><p>独自闯关或是与最多两名好友同屏合作，探索 7 个区域中的总共 35 个手绘关卡。每个关卡均拥有独特的环境设置、挑战、特殊奖励与专属道具。</p><br/><h6>适合所有玩家</h6><br/><p>你可以选择从简单到困难等各种难度的关卡，或是自定义你的游玩体验。想要全程无敌或者原地复活？没问题！</p><h6>重玩价值</h6><br/><p>游戏共有队长、最年长的骑士和最年轻的骑士三位主角，每位主角都有自己的个性、技能、招式和独特的可解锁道具。</p>	/app/assets/images/cassiodora-weswu (2).jpg,/app/assets/images/cassiodora-logo-1jn10.png,/app/assets/images/cassiodora-1g14f.jpg,/app/assets/images/cassiodora-xni4i.jpg,/app/assets/images/cassiodora-10q97.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	58.00	2023-01-03 07:44:16.296303	\N	动作	Windiows	\N	\N	Void Studio	PID Games	2022-12-16 00:00:00
8	60 Seconds! Reatomized	<h5>后末日题材的黑色喜剧又回来了——重新制作，辐射更强！搜集物资，拯救家人，在避难所里坚强生存。做出艰难决定，捕猎变异蟑螂……顽强幸存，或者一命呜呼。</h5><br/><h6>全新游戏模式</h6><br/><p>“生存挑战”——独特、简短的剧情，考验你的生存技巧！</p><br/><h6>新的机遇</h6><p>一个剧情，多种玩法，共同逃离废土！你在逃命的路上还能保持潇洒吗？</p><br/><h6>全新关系系统</h6><br/><p>更多的故事，各种让你大跌眼镜的互动，McDoodle一家子永远不会让你省心！</p><br/><p>新制音效、美术和可供解锁的视觉内容</p><br/><p>让你为自己的避难所增添一点色彩！</p>	/app/assets/images/download-60-seconds-reatomized-offer-g91je (1).png,/app/assets/images/60-seconds-reatomized-logo-1saw4 (1).png,/app/assets/images/60-seconds-reatomized-easrb.png,/app/assets/images/60-seconds-reatomized-8uwlc.png,/app/assets/images/60-seconds-reatomized-1u7r9.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	30.00	2023-01-03 07:44:47.700426	\N	策略,冒险,生存	Windoiws	\N	\N	Robot Gentleman	Robot Gentleman	2022-12-13 00:00:00
9	Melatonin	<h5>Melatonin is a rhythm game about dreams and reality merging together. It uses animations and sound cues to keep you on beat without any intimidating overlays or interfaces. Harmonize through a variety of dreamy levels containing surprising challenges, hand-drawn art, and vibrant</h5><br><p>Melatonin explores the relationship between the dreams we have when we’re asleep and the experiences we go through when we’re awake, through unique rhythm game levels. Hand-drawn in a colorful and detailed visual style, with music produced to flow hand-in-hand with the gameplay and visuals, you will piece together elements about the main character’s life as you dive deeper and deeper into their dreams at night.</p><br/><p>Discover over 20 dreamy levels spread across 5 chapters, with every level introducing a new song.</p><br/><p>Unlock a Hard Mode that will truly test your rhythm.</p><br/><p>Make the rhythm game level of your dreams with an easy to use Level Editor.</p><br/><p>Use Practice Mode to guide you through each level.</p><br/><p>Try out plenty of assist features if you’re feeling lost.</p>	/app/assets/images/melatonin-13c7o.png,/app/assets/images/melatonin-logo-15mqb.png,/app/assets/images/melatonin-video-sn42h.png,/app/assets/images/melatonin-ps619.png,/app/assets/imagesmelatonin-6rag3.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	52.00	2023-01-03 07:44:47.72628	\N	音乐	Windiows	\N	\N	Half Asleep	Half Asleep	2022-12-15 00:00:00
10	60 Parsecs!	<h5>《60 Parsecs!》是一款以原子太空时代为背景的探索求生大冒险游戏。保护舰员存活，时刻准备行动。做出艰难抉择，面对食物短缺等外太空的挑战。或许最终你能够抵达终点，又或许只能殒命途中。</h5><br/><h6>原子太空时代就在电光火石之间！然后，后启示录太空时代来临了。</h6><br/><p>你的空间站即将爆炸，60秒时间一过，一切就会支离破碎。在奔向逃生飞船、前往神秘的未知领域之前，你想要带上什么（谁）？</p><br/><p>这就是《60 Parsecs!》，一款背景设定在原子太空时代的黑色幽默科幻冒险游戏，其中还有冷战偏执狂、镀铬墙以及戴着太空头盔的蟑螂。</p><br/><p>带领一队毫无准备的宇航员，在火箭发射升空之前，装备上随便什么垃圾——抱歉——“物资”，开启跌跌撞撞的宇宙之旅。充分利用物资，解决汤罐头短缺等其他外太空的困难。你能够找到一个新家并存活下去吗？</p><br/><p>祝你旅途愉快！</p><br/><h6>搜寻与撤离</h6><br/><p>在太空站被核爆炸成真空中的碎片之前，你只有60秒的时间。在离开前，尽可能的搜寻你能找到的所有物资与舰员。那只袜子玩偶说不定什么时候就能派上用场。</p>	/app/assets/images/download-60-parsecs-offer-1ranp (1).png,/app/assets/images/60-seconds-reatomized-logo-1saw4 (1).png,/app/assets/images/60-parsecs-rfvwv.png,/app/assets/images/60-parsecs-5tlpq.png,/app/assets/images/60-parsecs-pgvjd.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	30.00	2023-01-03 07:45:10.567775	\N	生存,策略,冒险	Windiows	\N	\N	Robot Gentleman	Robot Gentleman	2022-12-13 00:00:00
11	Wavetale	<h5>Surf the waters of a submerged city! Unravel the past, save the islanders from mysterious sea monsters and discover secrets hidden under the surface.</h5><br/><h6>Features</h6><br/><p>Speed through the open sea and swing yourself between buildings in this fast-paced adventure</p><br/><p>Experience a heart-warming story about loss and reconciliation</p><br/><p>Make new acquaintances amongst Strandvilles diverse cast of islanders – from the charmingly cocky surfer girl to an old fisherman turned fashion designer</p><br/><p>Change your appearance with collectible hats, hair dyes and outfits</p><br/><p>Fill the pages of Sigrid’s scrapbook with special drawings to learn more about her world</p>	/app/assets/images/wavetale-io44c.jpg,/app/assets/images/wavetale-logo-86lfq.png,/app/assets/images/wavetale-video-1ao0k.jpg,/app/assets/images/wavetale-1l32f.jpg,/app/assets/images/wavetale-1vr7o.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	90.00	2023-01-03 07:45:10.584764	\N	冒险,动作冒险	Windiows	\N	\N	Thunderful Development	Thunderful Publishing	2022-12-13 00:00:00
12	Pirates Outlaws	<h5>枪与香蕉是一款Roguelike卡牌游戏，操作十分简单。快来挑选一位海盗，在回合制的战斗系统中，管理好我们的牌库和子弹数来击败敌人！</h5><br/><h6>枪与香蕉-Pirates Outlaws</h6><br/><p>16位英雄各自都有独特的技能和初始卡牌。超过700张卡牌和230+遗物待你收集。在每个回合，去构筑卡牌形成超强组合去打败150+法外之徒和60+首领Boss吧。</p><br/><h6>航海模式</h6><br/><p>化为海盗，驱使船只在7个独立又神秘的海域上航行。路途中可选择 酒馆 恢复血量、出售遗物、移除卡牌，在 市场 购买卡牌、遗物和升级卡牌。枪与香蕉式的清新幽默 奇遇 事件总是能带给你惊喜。</p><br/><p>一旦声望达到9999，困难模式自动解锁。出现更加恶劣的环境和更强大的敌人。每个世界的困难模式都有各自不同的挑战情况。</p><br/><p>卡牌冒险，寻找宝藏，杀出重围，制霸七海。</p>	/app/assets/images/download-pirates-outlaws-offer-1tky1.jpg,/app/assets/images/pirates-outlaws-logo-1h5aq.png,/app/assets/images/pirates-outlaws-video-5n1pl.png,/app/assets/images/pirates-outlaws-jmw57.jpg,/app/assets/images/pirates-outlaws-1rpka.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	60.00	2023-01-03 07:45:23.892969	\N	卡牌游戏	Windiows	\N	\N	Fabled Game Limited	Fabled Game Limited	2022-12-12 00:00:00
13	Warrior Kings	<h5>Restoring the power of a kingdom to its former glory using innate cunning, military might and a fearsome will to win.</h5><br/><h6>ABOUT THIS GAME</h6><br/><p>You are tasked with restoring the power of a kingdom to its former glory using innate cunning, military might and a fearsome will to win. Warrior Kings is an epic real-time strategy game that smashes the mould. Using true 3D it propels you into a living, breathing and fascinating medieval fantasy world. Now it's all in your hands!</p><br/><h6>Features:</h6><br/><p>Build up your economic and military power base, research new technologies, and employ spies, mercenaries, priests and merchants to enhance your strength.</p><br/><p>Use real military formations and tactics to conquer on the battlefield.</p><br/><p>Master the skills of siege warfare and watch your troops sack mighty cities.</p><br/><p>Conduct a massive campaign through 22 extraordinary levels made up of over 80 unique quests.</p>	/app/assets/images/warrior-kings-57l62.png,/app/assets/images/warrior-kings-logo-b9egu.png,/app/assets/images/warrior-kings-5ixhb.png,/app/assets/images/warrior-kings-48qr9.png,/app/assets/images/warrior-kings-1bc0f.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	14.00	2023-01-03 07:45:23.911627	\N	策略	Windiows	\N	\N	Black Cactus	Strategy First	2022-12-10 00:00:00
14	Submarine Titans	<h5>Submarine Titans is a real-time strategy video game that takes place in the year 2115 after a comet has struck Earth, driving two human factions, the militant White Sharks and the scientific Black Octopi, to establish underwater bases and fight for dominance over the oceans.</h5><br/><h6>ABOUT THIS GAME</h6><br/><p>In the year 2047, a massive comet ravages Earth's surface and the remnants of mankind descend to the bottom of the ocean in order to survive. A century passes, and humans, resilient and enduring, slowly create new life in their cool blue underwater universe. But even in the still of the deep, one truth remains... where man goes, war soon follows. The craddle of civilization has spawned the seeds of man's destruction and now all the oceans of the world are not big enough for the embattled civilizations of the power-hungry White Sharks, the technologically savvy Black Octopi and the alien Silicons. Deploy armies, research technologies, mine for resources and set in motion a plan to gain control of this spellbinding abyss or find the fate of civilization and mankind dead in the water.</p><br/><h6>Features:</h6><br/><p>Three distinct civilizations to play, each with its own objectives, histories, untis, technologies and strategies to master.</p><br/><p>Innovative all-new units classes and structures along with the ability to hide units and buildings in caves, unders cliffs or above opponents creates new twistes in offensive and defensive strategies.</p><br/><p>A fully realized 3D underwater universe including 5 depth/elevationlevels of iridescent swirling waters, winding mountain ranges, dimly lit caverns, cliffs, and dark tunnels.</p>	/app/assets/images/submarine-titans-ds7h0 (1).png,/app/assets/images/submarine-titans-logo-ksw4l.png,/app/assets/images/submarine-titans-5j6lr.png,/app/assets/images/submarine-titans-1l2ki.png,/app/assets/images/submarine-titans-12ijj.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	14.00	2023-01-03 07:45:23.949189	\N	模拟,策略	Windiows	\N	\N	Ellipse Studios	Strategy First	2020-03-18 00:00:00
15	Seal of Evil	<h5>SEAL OF EVIL is a mythical take on the tumultuous time marking the fall of the Zhou imperial dynasty. Out of this chaos emerges an uncompromising ruler, Ying Zheng, who has vowed to either unify China or bury it in fire.</h5><br/><h3>ABOUT THIS GAME</h3><br/><p>The Seal of Evil story is set in the twilight years of the Warring States period of Chinese history (476 ? 206 BC). This turbulent time marks the disintegration of the longest lived of all imperial dynasties, the Zhou. Out of the strife and chaos emerges a nobleman possessed of an indomitable spirit and an uncompromising vision of the future: Ying Zheng, ruler of the Qin state. He will stop at nothing to reunite the disparate Chinese kingdoms. Combining ancient legends and mythic storytelling with historical fact, Seal of Evil sets the stage for an epic adventure wherein the players struggle to thwart the Qin invasion of their peaceful homeland, East Baiyue. Ferocious beasts, merciless enemy soldiers, wicked bandits, and terrifying supernatural foes are hazards they must face in order to achieve this goal. There is still hope for them, however, for along the way they will also make many friends and acquire powerful weapons and equipment. And armed with mighty elemental magic, they may yet come face to face with the very Gods themselves.</p>	/app/assets/images/download-seal-of-evil-offer-1fvb1.png,/app/assets/images/seal-of-evil-logo-i23sl.png,/app/assets/images/seal-of-evil-1iyci.jpg,/app/assets/images/seal-of-evil-ajy7y.png,/app/assets/images/seal-of-evil-21lwx.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	30.00	2023-01-03 07:45:23.976704	\N	动作冒险,冒险,角色扮演	Windiows	\N	\N	Object Software Limited	Strategy First Inc.	2022-12-09 00:00:00
16	《Them’s Fightin’ Herds》	<h5>《Them’s Fightin’ Herds》是一款 2D 格斗游戏，游戏中可爱的动物角色由知名动画制作人 Lauren Faust 设计。褪去可爱、讨喜的外表，等着您的是一个个认真严肃的斗士！</h5><br/><h6>《Them’s Fightin’ Herds》</h6><br/><p>《Them’s Fightin’ Herds》是一款 2D 格斗游戏，游戏中可爱的动物角色由知名动画制作人 Lauren Faust 设计。褪去可爱、讨喜的外表，等着您的是一个个认真严肃的斗士！</p><br/><p>利用回滚网络代码，您可以在本地或网上与他人对战。游戏采用精简的战斗机制，融合辅助功能和深层战斗设计，建立了一套既能让新人快速上手又能让熟练玩家有施展能力的空间的战斗系统。</p>	/app/assets/images/EGS_ThemsFightinHerds_Mane6Inc_S2_1200x1600-9793ee024c43026c5c2b1612c7a487d0.jpg,/app/assets/images/egs-themsfightinherds-mane6inc-ic2-128x128-0ad8ba9e4844.png,/app/assets/images/egs-themsfightinherds-mane6inc-s1-2560x1440-c2aa6090cc5c.jpg,/app/assets/images/egs-themsfightinherds-mane6inc-g1a-00-1920x1080-fc2a5b287c84.jpg,/app/assets/images/egs-themsfightinherds-mane6inc-g1a-01-1920x1080-56ff1399f948.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	60.00	2023-01-03 07:45:23.992617	\N	格斗,独立	Windiows	\N	\N	Mane6	Modus Games	2022-12-20 00:00:00
17	异星前哨	<h5>《异星前哨》是款融合即时战略的国产科幻生存RTS。你将作为船长前往浩瀚太空，探索未知星球，建设基地，统领英雄与军队粉碎数万虫潮的进攻！活用策略，秀出操作，为人类生存而战！</h5><br/><h6>登陆外星在建家园</h6><br/><p>在未来，人类面临严重的资源匮乏，迫切需要寻找新的出路，探索全新的未知星球。在这里，玩家需要凭借初始资源建立自己的前哨基地，同时不断发展科技和人口，将基地以及周边建设成一片牢不可破的防御带。同时，需要时刻警惕并抵御四周袭来的“异形”，直至最终消灭它们。</p><br/><h6>RTS经典情怀力作</h6><br/><p>本作是一款生存RTS，在游戏中敌人的战斗与其说是掠夺，不如说是生存。生存玩法聚焦了玩家的目的，强调经营与成长，简化了传统硬核RTS玩法，放大游戏中的爽感。初心不灭再叙情怀，游戏延续了RTS经典玩法，也在细分品类和玩法融合的赛道上进行了开拓，是不同于往日RTS游戏的最大亮点。</p>	/app/assets/images/alien-marauder-m31k6 (1).jpg,/app/assets/images/alien-marauder-logo-1w7we.png,/app/assets/images/alien-marauder-1gl4p.jpg,/app/assets/images/alien-marauder-c3jzo.jpg,/app/assets/images/alien-marauder-4ob8u.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	68.00	2023-01-03 07:45:24.012707	\N	城市建设,策略,生存	Windiows	\N	\N	YC Games	YC Games	2022-12-16 00:00:00
18	Space Haste 2	<h5>SPACE HASTE II is an adrenaline pumping, futuristic racing game that puts players in the driver’s seat of the hottest hovercrafts on the planet.</h5><br/><h6>ABOUT THIS GAME</h6><br/><p>SPACE HASTE II is an adrenaline pumping, futuristic racing game that puts players in the driver’s seat of the hottest hovercrafts on the planet. The game continually analyzes the player’s skills and times, building up their hovercraft’s speed throughout the race according to their abilities. But there is no limit to how much speed they can accumulate and the fastest rides through the breathtaking missions and backdrops will undoubtedly be the best ones!</p><br/><p>4 hovercrafts to choose from</p><p>Each hovercraft has 8 levels of enhancement</p><p>The better you are at driving, the quicker your hovercraft will enhance</p><p>Depending on your driving skills, the game keeps adding to the maximum speed of the hovercraft throughout the race</p><p>Hovercrafts actually have no speed limits</p><p>11 pickups: Energy, Cloak, Bounce, Pilot, Blast, Boost, Flash, Stun, Drain, Shield and Haste</p><p>3 race modes: Normal Race, Time Race and Shadow Racer</p>	/app/assets/images/sapce-haste-2-8f4kh.png,/app/assets/images/sapce-haste-2-logo-12doa.png,/app/assets/images/sapce-haste-2-187xo.png,/app/assets/images/sapce-haste-2-1uo7f.png,/app/assets/images/sapce-haste-2-1rknt.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	14.00	2023-01-03 07:45:24.034378	\N	竞速	Windiows	\N	\N	Dreams Interactive	Strategy First	2022-12-14 00:00:00
19	Victorian Admirals	<h5>A steam-ship period naval combat games focusing on fleet-scale battles in real time. The naval combat game allows you to set up battle squadron groups, their formations and management, with realistic ship models and characteristics, as well as advanced ballistic and weapon models</h5><br/><h6>ABOUT THIS GAME</h6><br/><p>A steam-ship period naval combat games focusing on fleet-scale battles in real time. The naval combat game allows you to set up battle squadron groups, their formations and management, with realistic ship models and characteristics, as well as advanced ballistic and weapon models.</p><br/><p>(Alternative History) In the second half of 1880s, the policy of imperialism in the tropical Pacific led to a local naval conflict between the U.S., Chile, the German Empire and the Kingdom of Spain.    None of the contestants wanted a big war. Therefore, only the quick clash of colonial squadrons in tropical waters will decide who will rule Oceania.</p><br/><h6>Panama Crisis with Chile vs USA 1885</h6><br/><p>In 1884 Chile emerged from the War of the Pacific as a potential threat to the hegemony of the United States. The Chilean navy, then the strongest fleet in the Pacific, was able to confront American policy. In 1882 Chile refused US mediation in the War of the Pacific. In 1885, as the United States Navy occupied Colon, then part of Colombia, the Chilean government ordered its navy to occupy Panama City and to force the American squadron to evacuate Colon.</p>	/app/assets/images/victorian-admirals-12x24 (1).png,/app/assets/images/victorian-admirals-logo-oeczy.png,/app/assets/images/victorian-admirals-1uwyq.png,/app/assets/images/victorian-admirals-14tlm.png,/app/assets/images/victorian-admirals-1mbqq.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	60.00	2023-01-03 07:45:24.049929	\N	模拟	Windiows	\N	\N	Totem Games	Strategy First	2022-12-09 00:00:00
20	Steel Fury Kharkov 1942	<h5>Steel Fury: Kharkov 1942 is based on real-life events that took place from May 12 to 28, 1942. During a vicious German counterattack three Soviet Armies were surrounded and were forced to fighting in what has become known as the “meat grinder.”</h5><br/><h6>ABOUT THIS GAME</h6><br/><p>Steel Fury: Kharkov 1942 is based on real-life events that took place from May 12 to 28, 1942. During a vicious German counterattack three Soviet Armies were surrounded and were forced to fighting in what has become known as the “meat grinder.” Through the monstrous roar of tanks and military vehicles, and the blaring sounds of war, players will experience bitterness at the loss of their comrades during battle and elation when they are victorious.</p><br/><p>Historical Authenticity: Missions are based on true historical events recreated from archives and photo references, including the interiors and exteriors of vehicles and tactical markings.</p><br/><p>The player has access to vast battlefields without obstructions from impenetrable forests or other obstacles, allowing them to choose any path available to achieve victory!</p><br/><p>Fear and Fury Filled Missions: Throughout 30 playable missions in three unique single-player campaigns, experience large scale battles with numerous active vehicles.</p><br/><p>Vehicles: Interact with and command all units involved in the advance against the enemy, including: more than 40 different realistically modelled vehicles, with three playable tanks: T-34/76 mod. 1941, Mk.II ‘Matilda’ III, and the Pz. IV Ausf. F2.    Take Full Control: In first and third person views, assume crew positions for Commander, Gunner, Loader, Driver and Hull Gunner.</p>	/app/assets/images/steel-fury-kharkov-1942-17lsy.png,/app/assets/images/steel-fury-kharkov-1942-logo-bemqx.png,/app/assets/images/steel-fury-kharkov-1942-1egt2.png,/app/assets/images/steel-fury-kharkov-1942-1ue1f.png,/app/assets/images/steel-fury-kharkov-1942-m7er4.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	14.00	2023-01-03 07:45:24.080549	\N	模拟	Windiows	\N	\N	Graviteam	Strategy First	2022-12-09 00:00:00
21	伊克西翁IXION	<h5>你将在 DOLOS AEC 的授权下引导 Tiqqun 空间站踏上一段危险旅程，为人类寻找新的家园。你将肩负空间站的基础设施、人口管理、勘探、生存等责任。你能在黑暗中找到希望吗？祝你好运，管理员。</h5><br/><p>IXION将城市建设、生存元素和探索融为一体，让你在探索星空的过程演变成惊心动魄的太空大片。你被推进危险的旅程，你是Tiqqun空间站的管理员，肩负着在地球无法再提供生存家园的情况下为人类寻找新家园的任务。</p><br/><p>保持空间站的信号和飞行将需要一双灵巧的手和策略性思维，因为你会经在保持船体完整性、引进新的资源和管理电力消耗之间进行纠结。</p><br/><p>面对即将到来的灾难，你会做出什么选择？在黑暗中你会发现什么？</p><br/><p>一个需要管理的群体，不是所有自愿的船员，不是所有从最初的发射开始的人，一些刚从冷冻室出来的人……保持对开始这项冒险的公司的信任，否则将面临失败和叛变。空间站内有六个区域可以解锁，每个区域都可以容纳更多的人口，支持新的工作，提供通过数据监听服务监控机组人员的机会。你会给人民带来希望吗？</p><br/><p>谁说你是唯一逃脱地球命运的人？与其他幸存者擦肩而过，从其他人的失败和残骸中继续前行……IXION将带领玩家穿越扣人心弦的故事章节，在那里呈现新的威胁和机遇，所有这些都有助于到达最终目的地，一个新家。</p><br/><p>""DOLOS以他们的创新技术和科学家而闻名，但Tiqqun现在发现自己被切断了。找到你能找到的资源，研究你没有的资源。寻找新的方法来为你的定居点提供条件，建造新的建筑来创造你所需要的东西。改造Tiqqun空间站，完善它，在这个奥德赛中砥砺前行。""</p> 	/app/assets/images/download-ixion-offer-1ge5t (1).jpg,/app/assets/images/ixion-logo-7md6k.png,/app/assets/images/ixion-video-jeegx.png,/app/assets/images/ixion-video-1xzaz.png,/app/assets/images/ixion-video-1ykne.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	129.00	2023-01-03 07:45:24.10027	\N	城市建造,生存,策略	Windiows	\N	\N	Bulwark Studios	Kasedo Games	2022-12-08 00:00:00
22	Togges	<h5>Togges is a charming and colourful 3D Puzzle-Platformer. Go on adventures, stack adorable living blocks and solve puzzles around the Cosmos to save the Galaxy from the threats of the Void.</h5><br/><h6>A game unlike anything you've played before!</h6><br/><p>Plunge into the colourful world of Togges. This unforgettable sandbox adventure is a combination of both something new and totally familiar.</p><br/><p>Solve puzzles by spreading and stacking these cute blocks called Togges around the cosmos to save the galaxy from the threads of the void.</p><br/><h6>Features</h6><br/><p>Non-linear classic Collect-A-Thon 3D Platformer</p><br/><p>7 massive levels, with close to 30 bonus levels</p><br/><p>Huge focus on exploration, with ""Eureka"" moments of discovery</p><br/><p>A wide variety of lovely characters and funny stories</p><br/><p>Rich and vibrant emergent worlds full of creative gameplay mechanics</p><br/><p>Dozens of hours of content within a rich sandbox experience</p>	/app/assets/images/download-togges-offer-tlr0c.png,/app/assets/images/togges-logo-1nl5j.png,/app/assets/images/togges-video-szczk.png,/app/assets/images/togges-moly4.png,/app/assets/images/togges-tifmk.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	70.00	2023-01-03 07:45:24.128555	\N	冒险,独立	Windiows	\N	\N	Regular Studio	Thunderful Publishing	2022-12-08 00:00:00
23	《你好，邻居！2》	<h5>《你好，邻居！2》是一款潜行恐怖游戏，玩家要挖掘出那令人毛骨悚然的邻居背后隐藏的秘密。不过独特的是：邻居是由一个可以向玩家进行学习的 AI 所控制！你能否智胜邻居，抽丝剥茧，查清他所隐藏的秘密？</h5><br/><h6>你觉得邻居们可以信任吗？再想想看。</h6><br/><p>《你好，邻居！2》是一款潜行恐怖游戏，玩家要揭开那令人毛骨悚然的邻居背后隐藏的秘密。你是一名记者，正在设法侦破邻居的案件，因为这个案子没有别人敢接手。你将和一个具有自我学习能力的高级 AI 所控制的复杂对手斗智斗勇，他能从你和所有其他玩家那里进行学习！随着时间的流逝，邻居会对玩家的模式作出相应调整，他自身的行为也会随之改变，令你大吃一惊。你能否智胜邻居，剥茧抽丝，查清他所隐藏的秘密？</p><br/><h6>游戏特色</h6><br/><p>本作就像一个调查记者模拟器那样，你必须隐匿行踪，查明邻居们的秘密。这位小胡子绅士为什么每天晚上都会去游乐园？</p><br/><p>整个城镇都是你的游乐场，你可以进入许多房子，与众多 AI 控制的居民互动。</p><br/><p>你能否智胜 AI？《你好，邻居！2》中的每位角色均由一个神经网络 AI 控制，他们能从玩家身上进行学习，竭尽全力保护他们的封闭社区以及其中的秘密。</p><br/><p>揭开渡鸦溪镇中隐藏的惊天大秘密！</p>	/app/assets/images/EGS_HelloNeighbor2_EerieGuest_S2_1200x1600-0fc602ed536ebbf08ee1645af162b38d.jpg,/app/assets/images/egs-helloneighbor2-eerieguest-ic1-400x246-50ce6d5499a9.png,/app/assets/images/egs-helloneighbor2-eerieguest-g1c-00-1920x1080-0e73f58caa6e.jpg,/app/assets/images/egs-helloneighbor2-eerieguest-g1a-01-1920x1080-3a707e89f239.jpg,/app/assets/images/egs-helloneighbor2-eerieguest-g1a-02-1920x1080-3b3b0e888c27.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	118.00	2023-01-03 07:45:24.153353	\N	策略,冒险,独立	Windiows	\N	\N	Eerie Guest	tinyBuild	2022-12-07 00:00:00
24	《荣誉骑士2：君主（Sovereign）》	<h5>在这款以中世纪为背景的全新大型即时战略游戏中，选择你的王国，成为一国之主，踏上称霸欧洲之路。管理行省、集结军队、拓展外交、以及派遣间谍。广阔的成功前景：成为名副其实的君主，带领人民走向荣耀。</h5><br/><h6>《荣誉骑士2：君主（Sovereign）》</h6><br/><p>在这款全新中世纪背景即时大型战略游戏中，成为国王，踏上称霸欧洲之路。</p><br/><p>作为大型策略游戏的入门游戏，《荣誉骑士2：君主（Sovereign）》将满足所有玩家对深度的渴望，展现一个生动形象的中世界欧洲缩影、栩栩如生的世界，现在加入正是时候。精挑细选王庭成员，决定人民命运，财富、征服、阴谋、贸易或者战败，各色策略，手到拈来！培养军队，保家卫国或出征伐敌——甚至直接参与紧张刺激的 RTS（即时战略）战斗。广阔的成功前景：成为名副其实的君主。</p><br/><h6>组建王庭</h6><br/><p>在《荣誉骑士2：君主（Sovereign）》中，你的王庭是你可支配的最重要的工具之一。你对骑士的选择会大大影响你的能力，并为你的游戏风格定下基调。</p><br/><p>元帅统率你的军队进行战斗，征服你的敌人，保卫你的土地</p><br/><p>使节可以把你最大的敌人变成值得信赖的朋友。使用他们来建立强有力的防御和进攻协议，协商联姻并确保你的朋友会在你需要的时候支援你</p><br/><p>商人不仅可以通过与邻国贸易提高你的收入，还可以进口所需的商品来支持你的经济或者远行寻找新的财富</p><br/><p>教士可以照顾你的王国所有的精神需求，并在人民的教育、幸福和文化方面发挥至关重要的作用</p><br/><p>如果你喜欢以更微妙的方式来统治世界，间谍就非常重要。间谍可以为你带来许多选择：贿赂敌人的骑士、煽动叛乱或者在你的邻居之间挑起战争来实现你的目标</p>	/app/assets/images/EGS_KnightsofHonorIISovereign_BlackSeaGames_S2_1200x1600-cdc323d112cd428cf6f42aa00a101cc8.jpg,/app/assets/images/egs-knightsofhonoriisovereign-blackseagames-ic1-400x400-12167605900e.png,/app/assets/images/e13f7580-a178-4f0a-bd8c-b3b1bdf3e849-1920x1080-ad3a0e5c74fe.jpg,/app/assets/images/egs-knightsofhonoriisovereign-blackseagames-g1a-00-1920x1080-d851b2be9a00.jpg,/app/assets/images/egs-knightsofhonoriisovereign-blackseagames-g1a-01-1920x1080-5f2fa75cea19.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	152.00	2023-01-03 07:45:24.176454	\N	策略	Windiows	\N	\N	Black Sea Games	THQ Nordic	2022-12-07 00:00:00
25	Victorian Admirals	<h5>在市面上绝无仅有的这款第三人称平台跳跃格斗游戏中将神明淘汰出局！扮演 Q 版的神话中的神明，以 3D 视角与好友一起乱斗，将对手打出地图，成为战场上的王者。</h5><br/><p>在市面上绝无仅有的这款第三人称平台跳跃格斗游戏中将神明淘汰出局！扮演 Q 版的神话中的神明，以 3D 视角与好友一起乱斗，将对手打出地图，成为战场上的王者。</p><br/><p>对敌人造成伤害以使其动摇，然后发动强力一击将其打出竞技场！本游戏灵感源于 2D 平台跳跃格斗游戏，不过让玩家能以独特的第三人称视角战个痛快。</p><br/><h6>入手创始者版即可解锁：</h6><br/><p>完整版游戏</p><br/><p>8 位神明</p><br/><p>史诗级生物危害 苏尔皮肤 + 额外外观物品</p><br/><p>另外，你还将获得一份 Epic 版《神之浩劫》里的奖励：</p><br/><p>风暴萌神 须佐之男皮肤</p><br/><p>神明须佐之男以及他的语音包</p>	/app/assets/images/DKO-PortraitOfferImage-1200x1600-Logo-SimpChinese_1200x1600-59d4fadce3724c1f0f06647557200da1.jpg,/app/assets/images/dko-logo-400x400-400x400-ea1dfb6a1374.png,/app/assets/images/dko-launch-thumbnail-1920x1080-4db2a7860afd.jpg,/app/assets/images/5-447135423-dko1-1920x1080-51dfeedffad5.jpg,/app/assets/images/4-447135432-dko2-1920x1080-f1e95b93779c.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	88.00	2023-01-03 07:45:24.19622	\N	动作,格斗	Windiows	\N	\N	Red Beard Games	Hi-Rez	2022-12-06 00:00:00
26	《木卫四协议》	<h5>活着逃离恐怖的木卫四。游戏独具一格，融合了射击与近距离作战，玩家需要调整战术与迅速进化的生物作战，同时从废物中寻找有用物品来解锁新武器和装备，以逃脱木星死亡卫星中越来越可怕的威胁。</h5><br><h6>《木卫四协议》</h6><br/><p>《木卫四协议》是一款剧情推动型第三人称生存恐怖游戏，故事时间背景设定为 300 年后。玩家将扮演雅各布·李，他受命运的捉弄被关进了黑铁监狱，这是一座位于木星卫星木卫四中安全等级最高的监狱。在同狱犯人变成极为可怕的怪异生物那一刻起，整个监狱便陷入了混乱。为了生存下去，雅各布必须不断战斗来保证自身安全，并逃离黑铁监狱，与此同时还要揭开木卫四中暗藏的黑暗可怕秘密。</p><br/><h6>恐怖工程</h6><br/><p>《木卫四协议》是一款次世代级的生存恐怖游戏，由格兰·斯科菲尔德领衔打造。《木卫四协议》将氛围、刺激和残酷与无助的恐怖时刻和人性融合在一起，让玩家沉浸于令人血脉喷张的故事中，极其可怕的恐怖危机潜伏在每一个角落。</p>	/app/assets/images/EGS_TheCallistoProtocol_StrikingDistanceStudios_S2_1200x1600-1e31eacc92833279f5b7a8d07cd3826c.jpg,/app/assets/images/egs-thecallistoprotocol-strikingdistancestudios-ic1-400x400-ee5f43879f4e.png,/app/assets/images/egs-thecallistoprotocol-strikingdistancestudios-g1c-00-1920x1080-acdb8fe758e1.jpg,/app/assets/images/egs-thecallistoprotocol-strikingdistancestudios-g1a-02-1920x1080-7974e6192601.jpg,/app/assets/images/egs-thecallistoprotocol-strikingdistancestudios-g1a-03-1920x1080-7d1298308d57.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	383.00	2023-01-03 07:45:24.21449	\N	恐怖,射击	Windiows	\N	\N	Striking Distance Studios	KRAFTON, Inc.	2022-12-03 00:00:00
27	Wonderputt Forever	<h5>Explore ever-evolving levels with three different gameplay modes in Wonderputt Forever, an adventurous mini-golf game.</h5><br/><h6>A Wonderful World of Golf</h6><br/><p>A world of wonder awaits in Wonderputt Forever, an adventurous mini-golf game with unique evolving levels and three different gameplay modes to explore in this follow-up to the critically acclaimed Wonderputt.</p><br/><p>Look back on the past and witness the world-shaping effects of human ambition and development as the ages of humankind pass from undeveloped jungle to futuristic sky cities as you putt your way to the top for a high score. Earn achievements, discover collectibles, and unlock rewards for even more gameplay.</p>	/app/assets/images/wonderputt-forever-1a8dw (1).png,/app/assets/images/wonderputt-forever-logo-1dgsb.png,/app/assets/images/wonderputt-forever-156ql.jpg,/app/assets/images/wonderputt-forever-rmhfk.jpg,/app/assets/images/wonderputt-forever-video-vgohl.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	30.00	2023-01-03 07:45:24.235664	\N	运动	Windiows	\N	\N	Wonderputt Forever	Rogue Games, Inc.	2022-12-02 00:00:00
28	NEW Joe & Mac - Caveman Ninja	<h5>Back to the past, we're landing in prehistorical time! Dive back into Joe & Mac's adventures, the quirky duet ready to smash everything ontheir way to save their village, even dinosaurs!</h5><br/><h6>欢迎来到史前丛林</h6><br/><p>我们会回到遥远的过去，那时“Rock & Roll”还只表示石头，“快餐”是你赶不上的晚餐。    2个名叫Joe和Mac的穴居人住在安宁而祥和的村庄。这里一直很安宁，直到一群假冒的尼安德特人抢走了村庄的所有女人。</p><br/><p>如今Joe和Mac将去救回所有人，与致命恐龙和食肉植物对战，在这款拥有完全重制画面的疯狂且精彩的动作平台游戏中大展拳脚！</p><p>这款知名街机游戏的高清版仍然秉承着有趣而古怪的特点，并且更长、更好、更快、更强……</p><br/><p>全新设计：对游戏进行全面且忠于原作的重制， 重制版具有新画面、新音效以及 更好的控件，为您带来前所未有的体验</p><p>新模式：菜单中提供2种模式：街机模式 （重制）和+T8:U8将为您带来更长 游戏体验的扩展模式。</p><p>合作模式：一位史前玩家可能还不够， 可以邀请好友一起游戏，体验更精彩的冒险。</p><p>每种模式都会有新功能：训练模式、 头领闯关模式、分数攻击模式，以及 速度最快的快速模式！</p><p>所有这些功能，都只为打造一款有趣、精彩 且古怪的游戏，并为各种类型的玩家提供 充满挑战且内容丰富的游戏</p>	/app/assets/images/new-joe-and-mac-caveman-ninja-5jhes (1).jpg,/app/assets/images/new-joe-and-mac-caveman-ninja-logo-7twvv.png,/app/assets/images/new-joe-and-mac-caveman-ninja-pit57.png,/app/assets/images/new-joe-and-mac-caveman-ninja-h13xu.png,/app/assets/images/new-joe-and-mac-caveman-ninja-video-1q36q.png	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	88.00	2023-01-03 07:45:24.250378	\N	平台游戏	Windiows	\N	\N	Mr. Nutz	Microids	2022-12-01 00:00:00
29	《漫威暗夜之子》	<h5>在这款全新的角色扮演策略游戏中奋起对抗漫威宇宙中的黑暗面，携手钢铁侠、金刚狼、美国队长、恶灵骑士、刀锋及更多经典角色。</h5><br/><h6>《漫威暗夜之子》标准版</h6><br/><p>《漫威暗夜之子》是一款终极跨界游戏，将丰富的故事、复杂的角色关系、角色扮演游戏的个性化和进程与革新性卡牌战术游戏的战术策略和战斗机制结合起来。故事发生在漫威宇宙黑暗的面，你将与传奇的漫威超级英雄和危险的超自然战士建立牢不可破的关系，一同对抗世界上最大的威胁——莉莉丝和上古冥神的恶魔力量。</p><br/><h6>你的漫威冒险</h6><br/><p>你的角色是猎人，是漫威宇宙中第一个完全可个性化定制的原创英雄。随心造型，选择对情况的反应，并与复仇者联盟、X战警、离家童盟等漫威传奇人物成为朋友。决定一起执行任务的盟友、要执行的任务以及诸多其他可选项，以打造独一无二的游戏体验。</p>	/app/assets/images/EGS_MarvelsMidnightSuns_FiraxisGames_S2_1200x1600-2bbbf1249898e7441527c7b5679b1dd2.jpg,/app/assets/images/2kgmkt-coda-std-metadata-epic-offer-logo-200x200-200x200-6848a2b15086.jpg,/app/assets/images/coda-standard-metadata-epic-hero-carousel-1920x1080-1920x1080-7d3aec28cf5a.jpg,/app/assets/images/egs-midnight-suns-accolade-en-1920x1080-45baa0a835e2.jpg,/app/assets/images/egs-marvelsmidnightsuns-firaxisgames-g1a-00-1920x1080-15a676e8e28e.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	199.00	2023-01-03 07:45:24.268956	\N	角色扮演,策略	Windiows	\N	\N	Firaxis Games	2K	2022-12-02 00:00:00
30	Fire: Ungh’s Quest	<h5>FIRE is an exploration-adventure with intuitive puzzle design. Without losing many words it tells a savagely hilarious story. Journey into the Stone Age and face the most challenging task of this era: The search for fire!</h5><br/><h6>ABOUT THIS GAME</h6><br/><p>FIRE is a puzzleventure with intuitive puzzle design. Without losing many words it tells a savagely hilarious story. Journey into the Stone Age and face the most challenging task of this era: The search for fire!</p><br/><p>This story's hero is the lovably chaotic Neanderthal Ungh who dozes off during his very first night watch. The next morning, the catastrophe ensues: the fire's gone out and Ungh is banished from his village. Now you have to help Ungh finding a new flame, searching every corner of the Stone Age world. No matter if he has to search the insides of a dinosaur, smoldering volcanoes or even through time itself, there is no place Ungh wouldn't look for new fire.</p><br/><p>One click or swipe and your environment comes to life. A small dash of logic and you'll be able to solve any puzzle and there will be no limit to your exploratory spirit while interacting with the game's world: fire coconuts from a mammoth's trunk, turn into an animal or save the fair maiden from the Octo-Boss' grasp.</p><br/><h6>FEATURES</h6><br/><p>No text or dialogue at all</p><br/><p>Coherent and intuitive controls</p><br/><p>Explore a lovable, vividly animated Stone Age world</p><p>10 beautifully hand-drawn sceneries</p>	/app/assets/images/download-fire--unghs-quest-offer-1kaeu (3).jpg,/app/assets/images/fire--unghs-quest-logo-15zct.png,/app/assets/images/fire--unghs-quest-nr9oa.jpg,/app/assets/images/fire--unghs-quest-1sbuf.jpg,/app/assets/images/fire--unghs-quest-pefh6.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	36.00	2023-01-03 07:45:24.285321	\N	动作	Windiows	\N	\N	Daedalic Entertainment	Daedalic Entertainment	2022-12-17 00:00:00
\.


--
-- Data for Name: tb_game_dlc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_game_dlc (id, fr_game_id, title, description, price, created_at, deleted_at, cover_urls, download_link, released_at) FROM stdin;
1	16	Them's Fightin' Herds - Texas	<h5>The 8th character to join the TFH roster is Texas the Bull, a big-body grappler who's smashing records on size and power! Note: This item requires the base game (sold separately) to be used.</h5>	14.00	2023-01-04 00:55:22	\N	/app/assets/images/EGS_ThemsFightinHerdsTexas_Mane6Inc_DLC_S2_1200x1600-a4d488ce7db1972b2d81680f48df6745.webp,/app/assets/images/EGS_ThemsFightinHerdsTexas_Mane6Inc_DLC_IC1_128x128-7b318b507803af9e330ca99699e1e062.webp,/app/assets/images/EGS_ThemsFightinHerdsTexas_Mane6Inc_DLC_S1_2560x1440-085f13210522eacfb52e92e8e66a127e.jpg,/app/assets/images/EGS_ThemsFightinHerdsTexas_Mane6Inc_DLC_G1A_00_1920x1080-5be228c4e6588f7a4e49ab4b713da284.jpg,/app/assets/images/EGS_ThemsFightinHerdsTexas_Mane6Inc_DLC_G1A_01_1920x1080-da55a1b040e63004ff00d5ce06c5341d.jpg	https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe	2022-12-20 00:00:00
\.


--
-- Data for Name: tb_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_order (id, sn, fr_game_ids, fr_game_dlc_ids, price, status, created_at, deleted_at, fr_user_id) FROM stdin;
1	16728510553522381273174dff06830c25b327855a32c	1	\N	6.00	0	2023-01-05 00:50:55.402	\N	1
2	16728511626913c951ed77c62b9b561a323151b1e14cb	1	\N	54.00	0	2023-01-05 00:52:42.703	\N	1
3	1672851536066560e7b2731ee8a27b6b44098028c71fe	1	\N	54.00	0	2023-01-05 00:58:56.082	\N	1
4	1672852251246d3e470dca3e2862301f81a6c30d9b4d5	14	\N	2.80	1	2023-01-05 01:10:51.262	\N	1
5	1672852972451addc57fed2fa7ff6faf67483abbe4f8f	1,10	\N	84.00	1	2023-01-05 01:22:52.462	\N	1
6	167285698500408a238b72271968480fd9e7fc2eb893c	15	\N	30.00	1	2023-01-05 02:29:45.009	\N	1
7	1672879093254942807fdc60aff58d6e1f9d81e48be6f	4	\N	45.00	1	2023-01-05 08:38:13.259	\N	9
8	1672879180253e9d5fc54706f39761444bb86b48b3c67	1,14	\N	56.80	1	2023-01-05 08:39:40.255	\N	9
\.


--
-- Data for Name: tb_preordering_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_preordering_game (id, fr_game_id, started_at, finished_at, created_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: tb_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_user (id, username, nickname, password, email, avatar_url, address, birthday, created_at, deleted_at) FROM stdin;
5	longyu2	long2	0b636cc7941a2757a651c59d955ce2c3b032414b7114be89b6116811d9179a5c	2253275075@qq.com	\N	\N	2003-03-25 00:00:00	2023-01-04 11:04:16.451	\N
3	213	213	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	213@com	\N	\N	1234-12-12 00:00:00	2023-01-04 09:38:21.923	\N
6	long123	longyu	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	123456@qq.com	\N	\N	2003-03-25 00:00:00	2023-01-04 12:07:43.908	\N
7	å­¤ç¬çç¼	å¯å¯çç¾	15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225	110120119@qq.com	\N	\N	2000-01-01 00:00:00	2023-01-04 13:52:18.639	\N
4	longyu	long	0b636cc7941a2757a651c59d955ce2c3b032414b7114be89b6116811d9179a5c	2253257075@qq.com	\N	\N	2003-03-25 00:00:00	2023-01-04 11:01:11.676	\N
2	123	123	a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3	123@com	\N	\N	1233-12-12 00:00:00	2023-01-04 09:36:45.028	\N
8	longyu3	longyu3	ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f	12345678@qq.com	\N	\N	2003-03-25 00:00:00	2023-01-04 16:51:15.441	\N
1	test	test	9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08	test@test.com	\N	\N	2000-01-01 00:00:00	2023-01-02 01:37:20.365	\N
9	test2	test3	60303ae22b998861bce3b28f33eec1be758a213c86c93c076dbe9f558c11c752	test2@test.com	\N	\N	2000-01-01 00:00:00	2023-01-05 08:37:10.531	\N
\.


--
-- Data for Name: tb_user_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_user_cart (id, fr_user_id, fr_game_id, created_at, deleted_at) FROM stdin;
4	7	2	2023-01-04 23:55:00.344	2023-01-04 23:57:25.48
5	7	7	2023-01-04 23:56:15.187	2023-01-04 23:57:28.368
6	8	4	2023-01-04 23:58:49.956	\N
7	8	4	2023-01-04 23:58:50.19	\N
8	8	2	2023-01-04 23:59:18.568	\N
9	8	10	2023-01-04 23:59:50.653	\N
10	7	15	2023-01-05 00:01:16.76	\N
11	7	4	2023-01-05 00:02:44.195	\N
12	7	5	2023-01-05 00:03:57.703	\N
13	8	9	2023-01-05 00:04:54.043	\N
14	8	9	2023-01-05 00:04:54.26	\N
17	8	28	2023-01-05 00:08:44.148	\N
15	1	2	2023-01-05 00:08:31.391	2023-01-05 00:08:55.901
18	8	23	2023-01-05 00:09:11.243	\N
19	8	23	2023-01-05 00:09:11.385	\N
20	1	7	2023-01-05 00:11:57.633	2023-01-05 00:12:02.446
2	1	8	2023-01-04 22:36:13.297	2023-01-05 00:24:15.766
16	1	8	2023-01-05 00:08:39.05	2023-01-05 00:24:15.766
25	1	8	2023-01-05 00:24:10.594	2023-01-05 00:24:15.766
1	1	1	2023-01-04 22:31:58.626	2023-01-05 01:24:05.788
3	1	1	2023-01-04 22:38:59.465	2023-01-05 01:24:05.788
21	1	1	2023-01-05 00:13:31.801	2023-01-05 01:24:05.788
22	1	1	2023-01-05 00:13:46.974	2023-01-05 01:24:05.788
23	1	1	2023-01-05 00:15:07.49	2023-01-05 01:24:05.788
24	1	1	2023-01-05 00:15:48.969	2023-01-05 01:24:05.788
26	1	1	2023-01-05 01:21:42.835	2023-01-05 01:24:05.788
27	1	10	2023-01-05 01:22:44.594	2023-01-05 01:24:05.796
28	1	15	2023-01-05 02:29:36.541	2023-01-05 02:30:08.981
29	1	2	2023-01-05 08:36:22.031	\N
31	9	4	2023-01-05 08:37:58.969	2023-01-05 08:39:01.818
32	9	1	2023-01-05 08:39:33.907	2023-01-05 08:40:05.473
30	9	14	2023-01-05 08:37:39.913	2023-01-05 08:40:05.479
\.


--
-- Data for Name: tb_user_game_asset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_user_game_asset (id, fr_user_id, fr_game_id, created_at, deleted_at) FROM stdin;
2	1	4	2023-01-04 08:52:22.164	\N
3	1	16	2023-01-04 08:54:26.884	\N
4	7	1	2023-01-04 14:42:05.461	\N
5	8	8	2023-01-04 23:18:43.252	\N
6	8	15	2023-01-05 00:07:43.04	\N
7	1	14	2023-01-05 01:11:22.071	\N
8	1	1	2023-01-05 01:24:05.786	\N
9	1	10	2023-01-05 01:24:05.794	\N
10	1	15	2023-01-05 02:30:08.978	\N
11	9	4	2023-01-05 08:39:01.79	\N
12	9	1	2023-01-05 08:40:05.472	\N
13	9	14	2023-01-05 08:40:05.477	\N
\.


--
-- Data for Name: tb_user_game_dlc_asset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_user_game_dlc_asset (id, fr_user_id, fr_game_dlc_id, created_at, deleted_at) FROM stdin;
2	1	1	2023-01-04 08:54:43.306	\N
\.


--
-- Data for Name: tb_user_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_user_token (id, fr_user_id, token, is_disabled, expired_at, created_at, deleted_at) FROM stdin;
1	1	39a93571bf62b1e18e68ee798f2fba13d6a9246af6ff8a9f9e4ef98da795b0b5	f	2023-01-03 19:10:17.568	2023-01-02 19:10:17.576	\N
2	1	1d771bb745b96ff4e8c4cd54f00dd696e7e23eb2f15b972f605f172d9c809c3a	f	2023-01-03 19:14:07.64	2023-01-02 19:14:07.645	\N
3	1	d968c4470217815ebd448a5a9f765b43c46fac0216c66967d3f22bfa7d7e25c0	f	2023-01-04 00:11:18.77	2023-01-03 00:11:18.778	\N
4	1	d734f4def1571610d736a7dd23a48d067355931e7db12505150a1ae01aa4978e28d6ed3c5cd658e92fed48472fc6b3eabef898061d516eb0a2b71faa5b2767d9	f	2023-01-04 22:15:04.403	2023-01-03 22:15:04.41	\N
5	1	c1a470864505118fd9143c5ccc0661867e7007fdacbafdc1c5b582fd5ed5ef7c31d66a5eabf00c4fd6490327a8d8a38dcfe47b575408a47f39e259b0899b279e	f	2023-01-04 22:19:08.77	2023-01-03 22:19:08.775	\N
6	1	7243b95d5602f7e970d27df234c3cbefa3bb7142cbfe3593b710306c246bf2768e1bd84bfa4fa681fa3435046ed7832543b330b41a57475037cc307b46ec932c	f	2023-01-05 08:51:29.952	2023-01-04 08:51:29.956	\N
7	1	904f2e8c50a0cd924a180786aa44d7d263b5ba0f3de77e8d40b2aef8ee7bb14e7d25081fcde95420e3421e6ac256b667b477af1c5121caf51d8b8ebed9e1f009	f	2023-01-05 09:07:46.119	2023-01-04 09:07:46.122	\N
8	7	9707b69147c2c42fbe7a1c7c422b2d220e2808954b76349d6f44a086d1eb62e4b7c1176654d8c76ad5bb0b04578a132dcb6e2c3f7aa7349d55d879f5fb67e98a	f	2023-01-05 14:38:45.678	2023-01-04 14:38:45.682	\N
9	7	71c63e25e09730e6a4519ed357a1c6666b280bf3dd703fef369d9a3d8fbd4bae806b995c1003258fb7c65ef505b644c3b81e4f3839fd1ce23bfa375516c5f3a9	f	2023-01-05 15:27:20.694	2023-01-04 15:27:20.694	\N
10	8	462c3d1170ddea33b382fde0c9302715ccc32993ecee4e07b1bd47dcd8223236980ec9943c9b19f5ce7c6a16e793a323991e24cf7c85e1cb506d169a5b685044	f	2023-01-05 16:51:28.857	2023-01-04 16:51:28.857	\N
11	1	ebc188c038c5d0d58da86e5736f300655187353b811994082da0a419b2c6bcd3e81604a560af82829d9e766eccab6d42addfb34fe3bda6baf7e9d45a6073074a	f	2023-01-05 21:34:38.655	2023-01-04 21:34:38.662	\N
12	1	5ffaa36737289fa5fbf418e8d2b1a78e3c18505d810f9e00ef667b0422780309d05283ca874b610b617e3f0be54a22aa191149fa1b91ad2f251f79ebad56b2a6	f	2023-01-05 21:35:41.431	2023-01-04 21:35:41.431	\N
13	8	19e61fc3f4a3977877bf03d1ecf922a691882762d89205e69c880672c64e1e7db91e5bb9ca7a8944f13ef29c95bffd5cac99eaff24b042de6011da44fa08b46f	f	2023-01-05 23:18:14.344	2023-01-04 23:18:14.344	\N
14	8	cec618572249e2d75c35fa72e6faaea2579877d8d9b8dc8b9f11108fb7407852b5331679355f5151c8527fafc851f0d35dd71c50fa13434d811faac343fa5410	f	2023-01-05 23:34:01.183	2023-01-04 23:34:01.183	\N
15	8	41855e1312c98972a3e3d3372c546256e52cee6248225c7d293ea16d47c9beace4976899d17f6cfc1f5d446db2e6bb42113786c15b8dec69e16ae7f893afeb7d	f	2023-01-05 23:34:19.743	2023-01-04 23:34:19.743	\N
16	8	96f11d473802d4007cc1a112abc0d98326380ce8f373cd7ea2e4a3a4132290378c4ed6321aceb2a8fdfe693ce0a97ec019cbba200c857643cc75519c5af14dc0	f	2023-01-05 23:56:01.702	2023-01-04 23:56:01.702	\N
17	1	3a4e87c66edb39e9d71223a14988ac7c55628a1a9a892f966bbda09305e1b06ddf98f3f08ddaf93941fecd4b829438d6b03448df8b5ff7802fb10dd9068d5979	f	2023-01-06 02:21:59.596	2023-01-05 02:21:59.601	\N
18	1	368995d59f3878ca04bb1ebecc002406adb4819b212f7692b15caf5564b92e3c1d5319e5968fb8c788463df7ed61f4711bf4e87160bb1c2c5bd01ccb2b544c0c	f	2023-01-06 02:23:08.428	2023-01-05 02:23:08.428	\N
19	1	d268ef3b79b73f59c667f0b7ce531c38b30e931e65020909e8c46336366d6087104297873a8568cf35f874989cc8a617b6f08ff0e736f499e6e49e6875b82196	f	2023-01-06 02:23:24.652	2023-01-05 02:23:24.652	\N
20	1	401d2e39e6a3f8923a3bcc0481907509ba1a12c7466fe7da53d53327f6e381290e8ef3bd15c973ace2ff5a9c709a775d148214d1416eacd5275a40b17acf41fa	f	2023-01-06 02:23:35.697	2023-01-05 02:23:35.698	\N
21	1	c6dfa24edcc9d88ec0ab4ff534e2339332fca57080a337031750f6809982ca84d9e8924f0ee6befab026bce2414d2160f87ab29d30ec5d84f115e31719b2dee0	f	2023-01-06 02:24:51.194	2023-01-05 02:24:51.194	\N
22	1	67492c4dc6086f6513525e6477ef1692a736ec99caed905b8a0103e4e82d779b97c0a984d671de8ca511571c1c31da64d7e150cf05453b67b01a2b30da30d385	f	2023-01-06 02:26:18.434	2023-01-05 02:26:18.435	\N
23	1	14f8dca68167fc3233b3884312998c05a19121709162f3eb7ccf439617cbc57ab7e2caae6845e924471fd7905c6b41e21b60521f5fa1331213ff8356ebd6b946	f	2023-01-06 02:27:14.071	2023-01-05 02:27:14.076	\N
24	1	292266cf60e71f90f8ce74582fcc2aacf79d2001fdf1602f4a262ceaaa63f6eac832a5a6a18e4247844a7ef19be245d726ff51602fbb10e4557acb16aeaaa8e8	f	2023-01-06 02:29:00.348	2023-01-05 02:29:00.349	\N
25	1	1fda1eb126861d20df5ca9052ed44197fb7e5be9eaa5bdd2bc7d74a81f6601571b9caecf5d931a1d21f25414f669fb3596a53db02b75239fd7905bdbb662bec6	f	2023-01-06 02:29:22.338	2023-01-05 02:29:22.338	\N
26	1	07bc899bb6e0c800ed3ed7332d2b1c1d5543c9c8471dde31e19d7d5ca61888b42004e795db7a7b0a097a8f7999a92a13ec7e142a06a19fa784f63141ad8a6cc4	f	2023-01-06 08:35:54.37	2023-01-05 08:35:54.377	\N
27	9	4fe0cb6c9328f1687cd45de99a5520a41695a29ea0926c3ea007617d6cf28f4925b5a66b74a0b70fd871e13b0d1872f76cbbaa7e07ed9a5e33471f47f90bf752	f	2023-01-06 08:37:24.191	2023-01-05 08:37:24.191	\N
28	3	e42e8bc74efa3538832295892233879c3ffa6db4254c5d4e1ca902b8536e4d3a4216478b635441c8835921f2dc443d8bca006c11806f19a7cca51f6ee3e8f737	f	2023-01-06 08:53:32.367	2023-01-05 08:53:32.367	\N
29	9	d01194019072948b5c7661c85bc23168874242d330f1a9b453a373783ae9622ad2b6463bb16759fb4bb9f17f88391c43ecd64e160f5ea55dc6d95e1da32d1b2f	f	2023-01-06 08:57:31.072	2023-01-05 08:57:31.072	\N
\.


--
-- Data for Name: tb_user_wish_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_user_wish_list (id, fr_user_id, fr_game_id, created_at, deleted_at) FROM stdin;
3	1	3	2023-01-04 20:43:35.522	2023-01-04 20:55:52.336
1	1	7	2023-01-04 20:39:52.512	2023-01-04 20:55:55.482
2	1	12	2023-01-04 20:42:34.122	2023-01-04 20:56:15.899
5	1	8	2023-01-04 21:06:00.046	2023-01-04 21:06:13.098
6	1	2	2023-01-04 21:06:33.795	2023-01-04 21:06:43.146
8	1	3	2023-01-04 21:56:02.853	\N
10	8	4	2023-01-04 23:19:40.649	\N
11	8	4	2023-01-04 23:19:46.928	\N
12	8	2	2023-01-04 23:59:21.821	\N
13	8	2	2023-01-04 23:59:22.109	\N
14	8	10	2023-01-04 23:59:53.793	\N
15	8	10	2023-01-04 23:59:54.126	\N
16	7	4	2023-01-05 00:02:48.358	\N
17	7	5	2023-01-05 00:04:01.53	\N
18	8	28	2023-01-05 00:08:45.465	\N
19	8	28	2023-01-05 00:08:45.786	\N
20	1	8	2023-01-05 00:24:22.749	\N
4	1	1	2023-01-04 20:57:06.073	2023-01-05 01:24:05.79
7	1	1	2023-01-04 21:08:26.083	2023-01-05 01:24:05.79
9	1	1	2023-01-04 21:56:18.012	2023-01-05 01:24:05.79
21	1	15	2023-01-05 02:29:34.912	2023-01-05 02:30:08.982
22	1	2	2023-01-05 08:36:07.091	\N
23	9	14	2023-01-05 08:37:42.924	2023-01-05 08:40:05.48
\.


--
-- Name: tb_discounting_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_discounting_game_id_seq', 2, true);


--
-- Name: tb_game_dlc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_game_dlc_id_seq', 1, true);


--
-- Name: tb_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_game_id_seq', 1, false);


--
-- Name: tb_home_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_home_banner_id_seq', 4, true);


--
-- Name: tb_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_order_id_seq', 8, true);


--
-- Name: tb_preordering_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_preordering_game_id_seq', 1, false);


--
-- Name: tb_user_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_cart_id_seq', 32, true);


--
-- Name: tb_user_game_asset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_game_asset_id_seq', 13, true);


--
-- Name: tb_user_game_dlc_asset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_game_dlc_asset_id_seq', 2, true);


--
-- Name: tb_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_id_seq', 9, true);


--
-- Name: tb_user_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_token_id_seq', 29, true);


--
-- Name: tb_user_wish_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_wish_list_id_seq', 23, true);


--
-- Name: tb_discounting_game tb_discounting_game_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_discounting_game
    ADD CONSTRAINT tb_discounting_game_pk PRIMARY KEY (id);


--
-- Name: tb_discover_banner tb_discover_banner_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_discover_banner
    ADD CONSTRAINT tb_discover_banner_pk PRIMARY KEY (id);


--
-- Name: tb_game_dlc tb_game_dlc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_game_dlc
    ADD CONSTRAINT tb_game_dlc_pk PRIMARY KEY (id);


--
-- Name: tb_game tb_game_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_game
    ADD CONSTRAINT tb_game_pk PRIMARY KEY (id);


--
-- Name: tb_preordering_game tb_preordering_game_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_preordering_game
    ADD CONSTRAINT tb_preordering_game_pk PRIMARY KEY (id);


--
-- Name: tb_user_cart tb_user_cart_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_cart
    ADD CONSTRAINT tb_user_cart_pk PRIMARY KEY (id);


--
-- Name: tb_user_game_asset tb_user_game_asset_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_game_asset
    ADD CONSTRAINT tb_user_game_asset_pk PRIMARY KEY (id);


--
-- Name: tb_user_game_dlc_asset tb_user_game_dlc_asset_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_game_dlc_asset
    ADD CONSTRAINT tb_user_game_dlc_asset_pk PRIMARY KEY (id);


--
-- Name: tb_user tb_user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT tb_user_pk PRIMARY KEY (id);


--
-- Name: tb_user_token tb_user_token_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_token
    ADD CONSTRAINT tb_user_token_pk PRIMARY KEY (id);


--
-- Name: tb_user_wish_list tb_user_wish_list_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user_wish_list
    ADD CONSTRAINT tb_user_wish_list_pk PRIMARY KEY (id);


--
-- Name: tb_game_dlc_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tb_game_dlc_title_index ON public.tb_game_dlc USING hash (title);


--
-- Name: tb_game_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tb_game_title_index ON public.tb_game USING hash (title);


--
-- Name: tb_user_token_token_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tb_user_token_token_index ON public.tb_user_token USING hash (token);


--
-- PostgreSQL database dump complete
--

