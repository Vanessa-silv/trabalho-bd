--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2020-11-16 21:12:31

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
-- TOC entry 204 (class 1259 OID 33040)
-- Name: carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carros (
    id_carro integer NOT NULL,
    id_multas integer NOT NULL,
    id_manutencao integer NOT NULL,
    id_tipo_carro integer NOT NULL,
    id_opcional_carros integer NOT NULL
);


ALTER TABLE public.carros OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 33015)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    id_dep integer NOT NULL,
    nome_dep character varying(200) NOT NULL
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 33090)
-- Name: estoque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estoque (
    id_estoque integer NOT NULL,
    id_carro integer NOT NULL,
    id_evento integer NOT NULL,
    qtd_combustivel integer NOT NULL
);


ALTER TABLE public.estoque OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 33030)
-- Name: eventos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eventos (
    id_evento integer NOT NULL,
    tipo_evento character varying(200) NOT NULL
);


ALTER TABLE public.eventos OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 33020)
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
    id_mat_func integer NOT NULL,
    id_dep integer NOT NULL,
    nome_func character varying(200) NOT NULL
);


ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 33105)
-- Name: manutencao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manutencao (
    id_manutencao integer NOT NULL,
    id_carro integer NOT NULL,
    id_cnh integer NOT NULL,
    id_pecas_trocadas integer NOT NULL,
    quilometragem real NOT NULL,
    tipo_manutencao character varying(30) NOT NULL,
    causa character varying(30) NOT NULL
);


ALTER TABLE public.manutencao OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 33050)
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
-- TOC entry 207 (class 1259 OID 33055)
-- Name: multas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.multas (
    id_multas integer NOT NULL,
    id_cnh integer NOT NULL,
    id_carro integer NOT NULL,
    local character varying(30) NOT NULL,
    data date NOT NULL,
    hora time without time zone NOT NULL,
    tipo_multa character varying(200) NOT NULL
);


ALTER TABLE public.multas OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 33070)
-- Name: opcional_carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opcional_carros (
    id_opcional_carros integer NOT NULL,
    id_carro integer NOT NULL,
    qtd_portas integer NOT NULL,
    farol_neblina integer,
    cambio_automatico integer
);


ALTER TABLE public.opcional_carros OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 33045)
-- Name: pecas_trocadas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pecas_trocadas (
    id_pecas_trocadas integer NOT NULL,
    nome_peca_trocada character varying(200) NOT NULL,
    tempo_garantia time without time zone NOT NULL
);


ALTER TABLE public.pecas_trocadas OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 33035)
-- Name: quilometragem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quilometragem (
    id_quilometragem integer NOT NULL,
    inicio_atendimento integer NOT NULL,
    fim_atendimento integer NOT NULL
);


ALTER TABLE public.quilometragem OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 33130)
-- Name: solicitacao_carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicitacao_carros (
    id_solic_de_carros integer NOT NULL,
    id_evento integer NOT NULL,
    id_quilometragem integer NOT NULL,
    id_estoque integer NOT NULL,
    id_carro integer NOT NULL,
    id_mat_func integer NOT NULL,
    qtd_pessoas integer NOT NULL,
    data_utilizacao date NOT NULL,
    hora_utilizacao time without time zone NOT NULL
);


ALTER TABLE public.solicitacao_carros OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 33080)
-- Name: tipos_carro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_carro (
    id_tipo_carro integer NOT NULL,
    id_carro integer NOT NULL,
    marca character varying(30) NOT NULL,
    modelo character varying(30) NOT NULL,
    ano integer NOT NULL,
    num_chassi integer NOT NULL,
    placa character varying(10) NOT NULL,
    tipo_de_combustivel character varying(10) NOT NULL
);


ALTER TABLE public.tipos_carro OWNER TO postgres;

--
-- TOC entry 3075 (class 0 OID 33040)
-- Dependencies: 204
-- Data for Name: carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carros (id_carro, id_multas, id_manutencao, id_tipo_carro, id_opcional_carros) FROM stdin;
\.


--
-- TOC entry 3071 (class 0 OID 33015)
-- Dependencies: 200
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamento (id_dep, nome_dep) FROM stdin;
\.


--
-- TOC entry 3081 (class 0 OID 33090)
-- Dependencies: 210
-- Data for Name: estoque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estoque (id_estoque, id_carro, id_evento, qtd_combustivel) FROM stdin;
\.


--
-- TOC entry 3073 (class 0 OID 33030)
-- Dependencies: 202
-- Data for Name: eventos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eventos (id_evento, tipo_evento) FROM stdin;
\.


--
-- TOC entry 3072 (class 0 OID 33020)
-- Dependencies: 201
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionarios (id_mat_func, id_dep, nome_func) FROM stdin;
\.


--
-- TOC entry 3082 (class 0 OID 33105)
-- Dependencies: 211
-- Data for Name: manutencao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manutencao (id_manutencao, id_carro, id_cnh, id_pecas_trocadas, quilometragem, tipo_manutencao, causa) FROM stdin;
\.


--
-- TOC entry 3077 (class 0 OID 33050)
-- Dependencies: 206
-- Data for Name: motorista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.motorista (id_cnh, nome_motorista, tipo_habilitacao, vencimento_cnh) FROM stdin;
\.


--
-- TOC entry 3078 (class 0 OID 33055)
-- Dependencies: 207
-- Data for Name: multas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.multas (id_multas, id_cnh, id_carro, local, data, hora, tipo_multa) FROM stdin;
\.


--
-- TOC entry 3079 (class 0 OID 33070)
-- Dependencies: 208
-- Data for Name: opcional_carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opcional_carros (id_opcional_carros, id_carro, qtd_portas, farol_neblina, cambio_automatico) FROM stdin;
\.


--
-- TOC entry 3076 (class 0 OID 33045)
-- Dependencies: 205
-- Data for Name: pecas_trocadas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pecas_trocadas (id_pecas_trocadas, nome_peca_trocada, tempo_garantia) FROM stdin;
\.


--
-- TOC entry 3074 (class 0 OID 33035)
-- Dependencies: 203
-- Data for Name: quilometragem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quilometragem (id_quilometragem, inicio_atendimento, fim_atendimento) FROM stdin;
\.


--
-- TOC entry 3083 (class 0 OID 33130)
-- Dependencies: 212
-- Data for Name: solicitacao_carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicitacao_carros (id_solic_de_carros, id_evento, id_quilometragem, id_estoque, id_carro, id_mat_func, qtd_pessoas, data_utilizacao, hora_utilizacao) FROM stdin;
\.


--
-- TOC entry 3080 (class 0 OID 33080)
-- Dependencies: 209
-- Data for Name: tipos_carro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_carro (id_tipo_carro, id_carro, marca, modelo, ano, num_chassi, placa, tipo_de_combustivel) FROM stdin;
\.


--
-- TOC entry 2905 (class 2606 OID 33044)
-- Name: carros carros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (id_carro);


--
-- TOC entry 2897 (class 2606 OID 33019)
-- Name: departamento departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id_dep);


--
-- TOC entry 2917 (class 2606 OID 33094)
-- Name: estoque estoque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (id_estoque);


--
-- TOC entry 2901 (class 2606 OID 33034)
-- Name: eventos eventos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_pkey PRIMARY KEY (id_evento);


--
-- TOC entry 2899 (class 2606 OID 33024)
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id_mat_func);


--
-- TOC entry 2919 (class 2606 OID 33109)
-- Name: manutencao manutencao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT manutencao_pkey PRIMARY KEY (id_manutencao);


--
-- TOC entry 2909 (class 2606 OID 33054)
-- Name: motorista motorista_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motorista
    ADD CONSTRAINT motorista_pkey PRIMARY KEY (id_cnh);


--
-- TOC entry 2911 (class 2606 OID 33059)
-- Name: multas multas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multas
    ADD CONSTRAINT multas_pkey PRIMARY KEY (id_multas);


--
-- TOC entry 2913 (class 2606 OID 33074)
-- Name: opcional_carros opcional_carros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opcional_carros
    ADD CONSTRAINT opcional_carros_pkey PRIMARY KEY (id_opcional_carros);


--
-- TOC entry 2907 (class 2606 OID 33049)
-- Name: pecas_trocadas pecas_trocadas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pecas_trocadas
    ADD CONSTRAINT pecas_trocadas_pkey PRIMARY KEY (id_pecas_trocadas);


--
-- TOC entry 2903 (class 2606 OID 33039)
-- Name: quilometragem quilometragem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quilometragem
    ADD CONSTRAINT quilometragem_pkey PRIMARY KEY (id_quilometragem);


--
-- TOC entry 2921 (class 2606 OID 33134)
-- Name: solicitacao_carros solicitacao_carros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_carros
    ADD CONSTRAINT solicitacao_carros_pkey PRIMARY KEY (id_solic_de_carros);


--
-- TOC entry 2915 (class 2606 OID 33084)
-- Name: tipos_carro tipos_carro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_carro
    ADD CONSTRAINT tipos_carro_pkey PRIMARY KEY (id_tipo_carro);


--
-- TOC entry 2928 (class 2606 OID 33065)
-- Name: multas fk_id_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multas
    ADD CONSTRAINT fk_id_carro FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro);


--
-- TOC entry 2929 (class 2606 OID 33075)
-- Name: opcional_carros fk_id_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opcional_carros
    ADD CONSTRAINT fk_id_carro FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro);


--
-- TOC entry 2930 (class 2606 OID 33085)
-- Name: tipos_carro fk_id_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_carro
    ADD CONSTRAINT fk_id_carro FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro);


--
-- TOC entry 2931 (class 2606 OID 33095)
-- Name: estoque fk_id_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT fk_id_carro FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro);


--
-- TOC entry 2933 (class 2606 OID 33110)
-- Name: manutencao fk_id_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT fk_id_carro FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro);


--
-- TOC entry 2939 (class 2606 OID 33150)
-- Name: solicitacao_carros fk_id_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_carros
    ADD CONSTRAINT fk_id_carro FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro);


--
-- TOC entry 2927 (class 2606 OID 33060)
-- Name: multas fk_id_cnh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multas
    ADD CONSTRAINT fk_id_cnh FOREIGN KEY (id_cnh) REFERENCES public.motorista(id_cnh);


--
-- TOC entry 2934 (class 2606 OID 33115)
-- Name: manutencao fk_id_cnh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT fk_id_cnh FOREIGN KEY (id_cnh) REFERENCES public.motorista(id_cnh);


--
-- TOC entry 2922 (class 2606 OID 33025)
-- Name: funcionarios fk_id_dep; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT fk_id_dep FOREIGN KEY (id_dep) REFERENCES public.departamento(id_dep);


--
-- TOC entry 2938 (class 2606 OID 33145)
-- Name: solicitacao_carros fk_id_estoque; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_carros
    ADD CONSTRAINT fk_id_estoque FOREIGN KEY (id_estoque) REFERENCES public.estoque(id_estoque);


--
-- TOC entry 2932 (class 2606 OID 33100)
-- Name: estoque fk_id_evento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT fk_id_evento FOREIGN KEY (id_evento) REFERENCES public.eventos(id_evento);


--
-- TOC entry 2936 (class 2606 OID 33135)
-- Name: solicitacao_carros fk_id_evento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_carros
    ADD CONSTRAINT fk_id_evento FOREIGN KEY (id_evento) REFERENCES public.eventos(id_evento);


--
-- TOC entry 2924 (class 2606 OID 33160)
-- Name: carros fk_id_manutencao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT fk_id_manutencao FOREIGN KEY (id_manutencao) REFERENCES public.manutencao(id_manutencao);


--
-- TOC entry 2940 (class 2606 OID 33155)
-- Name: solicitacao_carros fk_id_mat_func; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_carros
    ADD CONSTRAINT fk_id_mat_func FOREIGN KEY (id_mat_func) REFERENCES public.funcionarios(id_mat_func);


--
-- TOC entry 2923 (class 2606 OID 33125)
-- Name: carros fk_id_multas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT fk_id_multas FOREIGN KEY (id_multas) REFERENCES public.multas(id_multas);


--
-- TOC entry 2926 (class 2606 OID 33170)
-- Name: carros fk_id_opcional_carros; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT fk_id_opcional_carros FOREIGN KEY (id_opcional_carros) REFERENCES public.opcional_carros(id_opcional_carros);


--
-- TOC entry 2937 (class 2606 OID 33140)
-- Name: solicitacao_carros fk_id_quilometragem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_carros
    ADD CONSTRAINT fk_id_quilometragem FOREIGN KEY (id_quilometragem) REFERENCES public.quilometragem(id_quilometragem);


--
-- TOC entry 2925 (class 2606 OID 33165)
-- Name: carros fk_id_tipo_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT fk_id_tipo_carro FOREIGN KEY (id_tipo_carro) REFERENCES public.tipos_carro(id_tipo_carro);


--
-- TOC entry 2935 (class 2606 OID 33120)
-- Name: manutencao fk_pecas_trocadas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT fk_pecas_trocadas FOREIGN KEY (id_pecas_trocadas) REFERENCES public.pecas_trocadas(id_pecas_trocadas);


-- Completed on 2020-11-16 21:12:32

--
-- PostgreSQL database dump complete
--

