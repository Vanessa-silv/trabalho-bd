--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2020-11-11 23:24:00

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
-- TOC entry 200 (class 1259 OID 16440)
-- Name: carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carros (
    id_carros integer NOT NULL,
    id_multa integer
);


ALTER TABLE public.carros OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16508)
-- Name: dep_frotas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dep_frotas (
    id_dep integer NOT NULL,
    num_dep character(4) NOT NULL,
    funcionarios character varying(40) NOT NULL,
    carros character varying(30) NOT NULL
);


ALTER TABLE public.dep_frotas OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16503)
-- Name: estoque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estoque (
    id_estoque integer NOT NULL,
    carro character varying(30) NOT NULL,
    evento character varying(40) NOT NULL,
    qtd_combustivel real NOT NULL
);


ALTER TABLE public.estoque OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16513)
-- Name: eventos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eventos (
    id_evento integer NOT NULL,
    tipo_eventos character varying(10) NOT NULL
);


ALTER TABLE public.eventos OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16465)
-- Name: manutencao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manutencao (
    id_munutencao integer NOT NULL,
    id_carros integer,
    tipo_manutencao character varying(30) NOT NULL,
    quilometragem real NOT NULL,
    causa character varying(30) NOT NULL,
    nome_motorista character varying(200) NOT NULL,
    pecas_trocadas character varying NOT NULL,
    tempo_garantia_peca integer
);


ALTER TABLE public.manutencao OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16478)
-- Name: motorista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.motorista (
    id_cnh integer NOT NULL,
    nome_motorista character varying(200) NOT NULL,
    tipo_habilitacao character(2) NOT NULL,
    vencimento_cnh date NOT NULL
);


ALTER TABLE public.motorista OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16483)
-- Name: multas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.multas (
    id_multas integer NOT NULL,
    local character varying(30) NOT NULL,
    data date NOT NULL,
    hora timestamp without time zone NOT NULL,
    tipo_multa character varying(200) NOT NULL,
    id_cnh integer NOT NULL,
    id_carros integer
);


ALTER TABLE public.multas OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16455)
-- Name: opcional_carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opcional_carros (
    id_carros integer NOT NULL,
    qtd_portas integer NOT NULL,
    farol_neblina integer,
    cambio_automatico integer
);


ALTER TABLE public.opcional_carros OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16523)
-- Name: quilometragem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quilometragem (
    id_quilometragem integer NOT NULL,
    inicio_atendimento timestamp without time zone NOT NULL,
    fim_atendimento timestamp without time zone NOT NULL
);


ALTER TABLE public.quilometragem OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16518)
-- Name: solicitacao_carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicitacao_carros (
    id_solic_de_carros integer NOT NULL,
    nome_func character varying(30) NOT NULL,
    id_evento integer NOT NULL,
    qtd_pessoas character varying(30) NOT NULL,
    data date NOT NULL,
    hora_utilizacao timestamp without time zone NOT NULL,
    mat_func integer NOT NULL,
    dep_func integer NOT NULL
);


ALTER TABLE public.solicitacao_carros OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16445)
-- Name: tipos_carro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_carro (
    id_carros integer NOT NULL,
    marca character varying(30) NOT NULL,
    modelo character varying(30) NOT NULL,
    ano integer NOT NULL,
    num_chassi integer NOT NULL,
    placa character varying(10) NOT NULL,
    tipo_de_combustivel character varying(10) NOT NULL
);


ALTER TABLE public.tipos_carro OWNER TO postgres;

--
-- TOC entry 3047 (class 0 OID 16440)
-- Dependencies: 200
-- Data for Name: carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carros (id_carros, id_multa) FROM stdin;
\.


--
-- TOC entry 3054 (class 0 OID 16508)
-- Dependencies: 207
-- Data for Name: dep_frotas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dep_frotas (id_dep, num_dep, funcionarios, carros) FROM stdin;
\.


--
-- TOC entry 3053 (class 0 OID 16503)
-- Dependencies: 206
-- Data for Name: estoque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estoque (id_estoque, carro, evento, qtd_combustivel) FROM stdin;
\.


--
-- TOC entry 3055 (class 0 OID 16513)
-- Dependencies: 208
-- Data for Name: eventos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eventos (id_evento, tipo_eventos) FROM stdin;
\.


--
-- TOC entry 3050 (class 0 OID 16465)
-- Dependencies: 203
-- Data for Name: manutencao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manutencao (id_munutencao, id_carros, tipo_manutencao, quilometragem, causa, nome_motorista, pecas_trocadas, tempo_garantia_peca) FROM stdin;
\.


--
-- TOC entry 3051 (class 0 OID 16478)
-- Dependencies: 204
-- Data for Name: motorista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.motorista (id_cnh, nome_motorista, tipo_habilitacao, vencimento_cnh) FROM stdin;
\.


--
-- TOC entry 3052 (class 0 OID 16483)
-- Dependencies: 205
-- Data for Name: multas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.multas (id_multas, local, data, hora, tipo_multa, id_cnh, id_carros) FROM stdin;
\.


--
-- TOC entry 3049 (class 0 OID 16455)
-- Dependencies: 202
-- Data for Name: opcional_carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opcional_carros (id_carros, qtd_portas, farol_neblina, cambio_automatico) FROM stdin;
\.


--
-- TOC entry 3057 (class 0 OID 16523)
-- Dependencies: 210
-- Data for Name: quilometragem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quilometragem (id_quilometragem, inicio_atendimento, fim_atendimento) FROM stdin;
\.


--
-- TOC entry 3056 (class 0 OID 16518)
-- Dependencies: 209
-- Data for Name: solicitacao_carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicitacao_carros (id_solic_de_carros, nome_func, id_evento, qtd_pessoas, data, hora_utilizacao, mat_func, dep_func) FROM stdin;
\.


--
-- TOC entry 3048 (class 0 OID 16445)
-- Dependencies: 201
-- Data for Name: tipos_carro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_carro (id_carros, marca, modelo, ano, num_chassi, placa, tipo_de_combustivel) FROM stdin;
\.


--
-- TOC entry 2890 (class 2606 OID 16444)
-- Name: carros carros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (id_carros);


--
-- TOC entry 2896 (class 2606 OID 16472)
-- Name: manutencao manutencao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT manutencao_pkey PRIMARY KEY (id_munutencao);


--
-- TOC entry 2898 (class 2606 OID 16482)
-- Name: motorista motorista_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motorista
    ADD CONSTRAINT motorista_pkey PRIMARY KEY (id_cnh);


--
-- TOC entry 2900 (class 2606 OID 16487)
-- Name: multas multas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multas
    ADD CONSTRAINT multas_pkey PRIMARY KEY (id_multas);


--
-- TOC entry 2894 (class 2606 OID 16459)
-- Name: opcional_carros opcional_carros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opcional_carros
    ADD CONSTRAINT opcional_carros_pkey PRIMARY KEY (id_carros);


--
-- TOC entry 2904 (class 2606 OID 16512)
-- Name: dep_frotas pk_id_dep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dep_frotas
    ADD CONSTRAINT pk_id_dep PRIMARY KEY (id_dep);


--
-- TOC entry 2902 (class 2606 OID 16507)
-- Name: estoque pk_id_estoque; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT pk_id_estoque PRIMARY KEY (id_estoque);


--
-- TOC entry 2906 (class 2606 OID 16517)
-- Name: eventos pk_id_eventos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT pk_id_eventos PRIMARY KEY (id_evento);


--
-- TOC entry 2910 (class 2606 OID 16527)
-- Name: quilometragem pk_id_quilometragem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quilometragem
    ADD CONSTRAINT pk_id_quilometragem PRIMARY KEY (id_quilometragem);


--
-- TOC entry 2908 (class 2606 OID 16522)
-- Name: solicitacao_carros pk_id_solic_de_carros; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_carros
    ADD CONSTRAINT pk_id_solic_de_carros PRIMARY KEY (id_solic_de_carros);


--
-- TOC entry 2892 (class 2606 OID 16449)
-- Name: tipos_carro tipos_carro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_carro
    ADD CONSTRAINT tipos_carro_pkey PRIMARY KEY (id_carros);


--
-- TOC entry 2911 (class 2606 OID 24600)
-- Name: carros carros_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_fk FOREIGN KEY (id_multa) REFERENCES public.multas(id_multas);


--
-- TOC entry 2912 (class 2606 OID 16450)
-- Name: tipos_carro fk_carros; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_carro
    ADD CONSTRAINT fk_carros FOREIGN KEY (id_carros) REFERENCES public.carros(id_carros);


--
-- TOC entry 2913 (class 2606 OID 16460)
-- Name: opcional_carros fk_carros; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opcional_carros
    ADD CONSTRAINT fk_carros FOREIGN KEY (id_carros) REFERENCES public.carros(id_carros);


--
-- TOC entry 2914 (class 2606 OID 16473)
-- Name: manutencao fk_carros; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT fk_carros FOREIGN KEY (id_carros) REFERENCES public.carros(id_carros);


--
-- TOC entry 2916 (class 2606 OID 16498)
-- Name: multas multas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multas
    ADD CONSTRAINT multas_fk FOREIGN KEY (id_carros) REFERENCES public.carros(id_carros);


--
-- TOC entry 2915 (class 2606 OID 16488)
-- Name: multas multas_id_cnh_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multas
    ADD CONSTRAINT multas_id_cnh_fkey FOREIGN KEY (id_cnh) REFERENCES public.motorista(id_cnh);


-- Completed on 2020-11-11 23:24:00

--
-- PostgreSQL database dump complete
--

