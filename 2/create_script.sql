--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.4

-- Started on 2022-11-23 01:46:32 +03

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
-- TOC entry 223 (class 1259 OID 16730)
-- Name: category; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    value text NOT NULL,
    name_id integer NOT NULL,
    text_content_id integer NOT NULL
);


ALTER TABLE public.category OWNER TO burakakkaya;

--
-- TOC entry 222 (class 1259 OID 16729)
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: burakakkaya
--

ALTER TABLE public.category ALTER COLUMN category_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16694)
-- Name: detail; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.detail (
    detail_id integer NOT NULL,
    value text NOT NULL,
    name_id integer NOT NULL,
    text_content_id integer
);


ALTER TABLE public.detail OWNER TO burakakkaya;

--
-- TOC entry 218 (class 1259 OID 16693)
-- Name: detail_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: burakakkaya
--

ALTER TABLE public.detail ALTER COLUMN detail_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.detail_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16712)
-- Name: image_url; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.image_url (
    image_url_id integer NOT NULL,
    value text NOT NULL,
    name_id integer NOT NULL,
    text_content_id integer NOT NULL
);


ALTER TABLE public.image_url OWNER TO burakakkaya;

--
-- TOC entry 220 (class 1259 OID 16711)
-- Name: image_url_image_url_id_seq; Type: SEQUENCE; Schema: public; Owner: burakakkaya
--

ALTER TABLE public.image_url ALTER COLUMN image_url_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.image_url_image_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 210 (class 1259 OID 16640)
-- Name: languages; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.languages (
    language_id integer NOT NULL,
    language_code text NOT NULL
);


ALTER TABLE public.languages OWNER TO burakakkaya;

--
-- TOC entry 209 (class 1259 OID 16639)
-- Name: languages_language_id_seq; Type: SEQUENCE; Schema: public; Owner: burakakkaya
--

ALTER TABLE public.languages ALTER COLUMN language_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.languages_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16668)
-- Name: name; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.name (
    name_id integer NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.name OWNER TO burakakkaya;

--
-- TOC entry 214 (class 1259 OID 16667)
-- Name: name_name_id_seq; Type: SEQUENCE; Schema: public; Owner: burakakkaya
--

ALTER TABLE public.name ALTER COLUMN name_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.name_name_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16648)
-- Name: text_content; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.text_content (
    text_content_id integer NOT NULL,
    original_text text,
    original_language_id integer
);


ALTER TABLE public.text_content OWNER TO burakakkaya;

--
-- TOC entry 211 (class 1259 OID 16647)
-- Name: text_content_text_content_id_seq; Type: SEQUENCE; Schema: public; Owner: burakakkaya
--

ALTER TABLE public.text_content ALTER COLUMN text_content_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.text_content_text_content_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16676)
-- Name: title; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.title (
    title_id integer NOT NULL,
    value text NOT NULL,
    name_id integer NOT NULL,
    text_content_id integer NOT NULL
);


ALTER TABLE public.title OWNER TO burakakkaya;

--
-- TOC entry 216 (class 1259 OID 16675)
-- Name: title_title_id_seq; Type: SEQUENCE; Schema: public; Owner: burakakkaya
--

ALTER TABLE public.title ALTER COLUMN title_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.title_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 16660)
-- Name: translations; Type: TABLE; Schema: public; Owner: burakakkaya
--

CREATE TABLE public.translations (
    text_content_id integer NOT NULL,
    language_id integer NOT NULL,
    translation text NOT NULL,
    name_id integer NOT NULL
);


ALTER TABLE public.translations OWNER TO burakakkaya;

--
-- TOC entry 3482 (class 2606 OID 16736)
-- Name: category category_id_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_id_pkey PRIMARY KEY (category_id);


--
-- TOC entry 3478 (class 2606 OID 16700)
-- Name: detail detail_id_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.detail
    ADD CONSTRAINT detail_id_pkey PRIMARY KEY (detail_id);


--
-- TOC entry 3480 (class 2606 OID 16718)
-- Name: image_url image_url_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.image_url
    ADD CONSTRAINT image_url_pkey PRIMARY KEY (image_url_id);


--
-- TOC entry 3468 (class 2606 OID 16646)
-- Name: languages language_id_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT language_id_pkey PRIMARY KEY (language_id);


--
-- TOC entry 3474 (class 2606 OID 16674)
-- Name: name name_id_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.name
    ADD CONSTRAINT name_id_pkey PRIMARY KEY (name_id);


--
-- TOC entry 3470 (class 2606 OID 16654)
-- Name: text_content text_content_id_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.text_content
    ADD CONSTRAINT text_content_id_pkey PRIMARY KEY (text_content_id);


--
-- TOC entry 3476 (class 2606 OID 16682)
-- Name: title title_id_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.title
    ADD CONSTRAINT title_id_pkey PRIMARY KEY (title_id);


--
-- TOC entry 3472 (class 2606 OID 16666)
-- Name: translations translations_pkey; Type: CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (text_content_id, language_id);


--
-- TOC entry 3484 (class 2606 OID 16747)
-- Name: translations name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT name_fkey FOREIGN KEY (name_id) REFERENCES public.name(name_id) NOT VALID;


--
-- TOC entry 3485 (class 2606 OID 16683)
-- Name: title name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.title
    ADD CONSTRAINT name_id_fkey FOREIGN KEY (name_id) REFERENCES public.name(name_id);


--
-- TOC entry 3487 (class 2606 OID 16701)
-- Name: detail name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.detail
    ADD CONSTRAINT name_id_fkey FOREIGN KEY (name_id) REFERENCES public.name(name_id);


--
-- TOC entry 3489 (class 2606 OID 16719)
-- Name: image_url name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.image_url
    ADD CONSTRAINT name_id_fkey FOREIGN KEY (name_id) REFERENCES public.name(name_id);


--
-- TOC entry 3491 (class 2606 OID 16737)
-- Name: category name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT name_id_fkey FOREIGN KEY (name_id) REFERENCES public.name(name_id);


--
-- TOC entry 3483 (class 2606 OID 16655)
-- Name: text_content original_language_id; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.text_content
    ADD CONSTRAINT original_language_id FOREIGN KEY (original_language_id) REFERENCES public.languages(language_id);


--
-- TOC entry 3486 (class 2606 OID 16688)
-- Name: title text_content_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.title
    ADD CONSTRAINT text_content_id_fkey FOREIGN KEY (text_content_id) REFERENCES public.text_content(text_content_id);


--
-- TOC entry 3488 (class 2606 OID 16706)
-- Name: detail text_content_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.detail
    ADD CONSTRAINT text_content_id_fkey FOREIGN KEY (text_content_id) REFERENCES public.text_content(text_content_id);


--
-- TOC entry 3490 (class 2606 OID 16724)
-- Name: image_url text_content_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.image_url
    ADD CONSTRAINT text_content_id_fkey FOREIGN KEY (text_content_id) REFERENCES public.text_content(text_content_id);


--
-- TOC entry 3492 (class 2606 OID 16742)
-- Name: category text_content_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: burakakkaya
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT text_content_id_fkey FOREIGN KEY (text_content_id) REFERENCES public.text_content(text_content_id);


-- Completed on 2022-11-23 01:46:32 +03

--
-- PostgreSQL database dump complete
--

