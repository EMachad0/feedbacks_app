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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results (
    id bigint NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
)
PARTITION BY HASH (organization_id);


--
-- Name: feedback_results_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.feedback_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feedback_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.feedback_results_id_seq OWNED BY public.feedback_results.id;


--
-- Name: feedback_results_p000; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p000 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p001 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p002; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p002 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p003; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p003 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p004; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p004 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p005; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p005 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p006; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p006 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p007; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p007 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p008; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p008 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p009; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p009 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p010; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p010 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p011; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p011 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p012; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p012 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p013; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p013 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p014; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p014 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p015 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p016; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p016 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p017; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p017 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p018 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p019 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p020; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p020 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p021; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p021 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p022; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p022 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p023; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p023 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p024; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p024 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p025; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p025 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p026; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p026 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p027; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p027 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p028; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p028 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p029; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p029 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p030; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p030 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p031; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p031 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p032; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p032 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p033; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p033 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p034; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p034 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p035; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p035 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p036; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p036 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p037; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p037 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p038; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p038 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p039; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p039 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p040; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p040 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p041; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p041 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p042; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p042 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p043; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p043 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p044; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p044 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p045; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p045 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p046; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p046 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p047; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p047 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p048; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p048 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p049; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p049 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p050; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p050 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p051; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p051 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p052; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p052 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p053; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p053 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p054; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p054 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p055; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p055 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p056; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p056 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p057; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p057 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p058; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p058 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p059; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p059 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p060; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p060 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p061; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p061 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p062; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p062 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p063; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p063 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p064; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p064 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p065; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p065 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p066; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p066 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p067; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p067 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p068; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p068 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p069; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p069 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p070; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p070 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p071; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p071 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p072; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p072 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p073; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p073 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p074; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p074 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p075; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p075 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p076; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p076 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p077; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p077 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p078; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p078 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p079; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p079 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p080; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p080 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p081; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p081 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p082; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p082 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p083; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p083 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p084; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p084 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p085; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p085 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p086; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p086 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p087; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p087 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p088; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p088 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p089; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p089 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p090; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p090 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p091; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p091 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p092; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p092 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p093; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p093 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p094; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p094 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p095; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p095 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p096; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p096 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p097; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p097 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p098; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p098 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p099; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p099 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p100; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p100 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p101; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p101 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p102; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p102 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p103; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p103 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p104; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p104 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p105; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p105 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p106; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p106 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p107; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p107 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p108; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p108 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p109; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p109 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p110; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p110 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p111; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p111 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p112; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p112 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p113; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p113 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p114; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p114 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p115; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p115 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p116; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p116 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p117; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p117 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p118; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p118 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p119; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p119 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p120; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p120 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p121; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p121 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p122; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p122 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p123; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p123 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p124; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p124 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p125; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p125 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p126; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p126 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p127; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedback_results_p127 (
    id bigint DEFAULT nextval('public.feedback_results_id_seq'::regclass) NOT NULL,
    feedback_id bigint NOT NULL,
    organization_id bigint NOT NULL,
    affected_devices integer,
    estimated_affected_accounts integer,
    processed_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feedbacks (
    id bigint NOT NULL,
    organization_id bigint,
    reported_by_user_id uuid,
    account_id uuid,
    installation_id uuid,
    encoded_installation_id character varying,
    feedback_type character varying,
    feedback_time timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: feedback_results_p000; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p000 FOR VALUES WITH (modulus 128, remainder 0);


--
-- Name: feedback_results_p001; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p001 FOR VALUES WITH (modulus 128, remainder 1);


--
-- Name: feedback_results_p002; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p002 FOR VALUES WITH (modulus 128, remainder 2);


--
-- Name: feedback_results_p003; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p003 FOR VALUES WITH (modulus 128, remainder 3);


--
-- Name: feedback_results_p004; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p004 FOR VALUES WITH (modulus 128, remainder 4);


--
-- Name: feedback_results_p005; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p005 FOR VALUES WITH (modulus 128, remainder 5);


--
-- Name: feedback_results_p006; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p006 FOR VALUES WITH (modulus 128, remainder 6);


--
-- Name: feedback_results_p007; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p007 FOR VALUES WITH (modulus 128, remainder 7);


--
-- Name: feedback_results_p008; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p008 FOR VALUES WITH (modulus 128, remainder 8);


--
-- Name: feedback_results_p009; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p009 FOR VALUES WITH (modulus 128, remainder 9);


--
-- Name: feedback_results_p010; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p010 FOR VALUES WITH (modulus 128, remainder 10);


--
-- Name: feedback_results_p011; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p011 FOR VALUES WITH (modulus 128, remainder 11);


--
-- Name: feedback_results_p012; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p012 FOR VALUES WITH (modulus 128, remainder 12);


--
-- Name: feedback_results_p013; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p013 FOR VALUES WITH (modulus 128, remainder 13);


--
-- Name: feedback_results_p014; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p014 FOR VALUES WITH (modulus 128, remainder 14);


--
-- Name: feedback_results_p015; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p015 FOR VALUES WITH (modulus 128, remainder 15);


--
-- Name: feedback_results_p016; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p016 FOR VALUES WITH (modulus 128, remainder 16);


--
-- Name: feedback_results_p017; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p017 FOR VALUES WITH (modulus 128, remainder 17);


--
-- Name: feedback_results_p018; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p018 FOR VALUES WITH (modulus 128, remainder 18);


--
-- Name: feedback_results_p019; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p019 FOR VALUES WITH (modulus 128, remainder 19);


--
-- Name: feedback_results_p020; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p020 FOR VALUES WITH (modulus 128, remainder 20);


--
-- Name: feedback_results_p021; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p021 FOR VALUES WITH (modulus 128, remainder 21);


--
-- Name: feedback_results_p022; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p022 FOR VALUES WITH (modulus 128, remainder 22);


--
-- Name: feedback_results_p023; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p023 FOR VALUES WITH (modulus 128, remainder 23);


--
-- Name: feedback_results_p024; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p024 FOR VALUES WITH (modulus 128, remainder 24);


--
-- Name: feedback_results_p025; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p025 FOR VALUES WITH (modulus 128, remainder 25);


--
-- Name: feedback_results_p026; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p026 FOR VALUES WITH (modulus 128, remainder 26);


--
-- Name: feedback_results_p027; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p027 FOR VALUES WITH (modulus 128, remainder 27);


--
-- Name: feedback_results_p028; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p028 FOR VALUES WITH (modulus 128, remainder 28);


--
-- Name: feedback_results_p029; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p029 FOR VALUES WITH (modulus 128, remainder 29);


--
-- Name: feedback_results_p030; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p030 FOR VALUES WITH (modulus 128, remainder 30);


--
-- Name: feedback_results_p031; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p031 FOR VALUES WITH (modulus 128, remainder 31);


--
-- Name: feedback_results_p032; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p032 FOR VALUES WITH (modulus 128, remainder 32);


--
-- Name: feedback_results_p033; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p033 FOR VALUES WITH (modulus 128, remainder 33);


--
-- Name: feedback_results_p034; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p034 FOR VALUES WITH (modulus 128, remainder 34);


--
-- Name: feedback_results_p035; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p035 FOR VALUES WITH (modulus 128, remainder 35);


--
-- Name: feedback_results_p036; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p036 FOR VALUES WITH (modulus 128, remainder 36);


--
-- Name: feedback_results_p037; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p037 FOR VALUES WITH (modulus 128, remainder 37);


--
-- Name: feedback_results_p038; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p038 FOR VALUES WITH (modulus 128, remainder 38);


--
-- Name: feedback_results_p039; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p039 FOR VALUES WITH (modulus 128, remainder 39);


--
-- Name: feedback_results_p040; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p040 FOR VALUES WITH (modulus 128, remainder 40);


--
-- Name: feedback_results_p041; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p041 FOR VALUES WITH (modulus 128, remainder 41);


--
-- Name: feedback_results_p042; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p042 FOR VALUES WITH (modulus 128, remainder 42);


--
-- Name: feedback_results_p043; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p043 FOR VALUES WITH (modulus 128, remainder 43);


--
-- Name: feedback_results_p044; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p044 FOR VALUES WITH (modulus 128, remainder 44);


--
-- Name: feedback_results_p045; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p045 FOR VALUES WITH (modulus 128, remainder 45);


--
-- Name: feedback_results_p046; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p046 FOR VALUES WITH (modulus 128, remainder 46);


--
-- Name: feedback_results_p047; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p047 FOR VALUES WITH (modulus 128, remainder 47);


--
-- Name: feedback_results_p048; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p048 FOR VALUES WITH (modulus 128, remainder 48);


--
-- Name: feedback_results_p049; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p049 FOR VALUES WITH (modulus 128, remainder 49);


--
-- Name: feedback_results_p050; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p050 FOR VALUES WITH (modulus 128, remainder 50);


--
-- Name: feedback_results_p051; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p051 FOR VALUES WITH (modulus 128, remainder 51);


--
-- Name: feedback_results_p052; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p052 FOR VALUES WITH (modulus 128, remainder 52);


--
-- Name: feedback_results_p053; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p053 FOR VALUES WITH (modulus 128, remainder 53);


--
-- Name: feedback_results_p054; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p054 FOR VALUES WITH (modulus 128, remainder 54);


--
-- Name: feedback_results_p055; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p055 FOR VALUES WITH (modulus 128, remainder 55);


--
-- Name: feedback_results_p056; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p056 FOR VALUES WITH (modulus 128, remainder 56);


--
-- Name: feedback_results_p057; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p057 FOR VALUES WITH (modulus 128, remainder 57);


--
-- Name: feedback_results_p058; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p058 FOR VALUES WITH (modulus 128, remainder 58);


--
-- Name: feedback_results_p059; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p059 FOR VALUES WITH (modulus 128, remainder 59);


--
-- Name: feedback_results_p060; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p060 FOR VALUES WITH (modulus 128, remainder 60);


--
-- Name: feedback_results_p061; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p061 FOR VALUES WITH (modulus 128, remainder 61);


--
-- Name: feedback_results_p062; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p062 FOR VALUES WITH (modulus 128, remainder 62);


--
-- Name: feedback_results_p063; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p063 FOR VALUES WITH (modulus 128, remainder 63);


--
-- Name: feedback_results_p064; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p064 FOR VALUES WITH (modulus 128, remainder 64);


--
-- Name: feedback_results_p065; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p065 FOR VALUES WITH (modulus 128, remainder 65);


--
-- Name: feedback_results_p066; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p066 FOR VALUES WITH (modulus 128, remainder 66);


--
-- Name: feedback_results_p067; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p067 FOR VALUES WITH (modulus 128, remainder 67);


--
-- Name: feedback_results_p068; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p068 FOR VALUES WITH (modulus 128, remainder 68);


--
-- Name: feedback_results_p069; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p069 FOR VALUES WITH (modulus 128, remainder 69);


--
-- Name: feedback_results_p070; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p070 FOR VALUES WITH (modulus 128, remainder 70);


--
-- Name: feedback_results_p071; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p071 FOR VALUES WITH (modulus 128, remainder 71);


--
-- Name: feedback_results_p072; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p072 FOR VALUES WITH (modulus 128, remainder 72);


--
-- Name: feedback_results_p073; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p073 FOR VALUES WITH (modulus 128, remainder 73);


--
-- Name: feedback_results_p074; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p074 FOR VALUES WITH (modulus 128, remainder 74);


--
-- Name: feedback_results_p075; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p075 FOR VALUES WITH (modulus 128, remainder 75);


--
-- Name: feedback_results_p076; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p076 FOR VALUES WITH (modulus 128, remainder 76);


--
-- Name: feedback_results_p077; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p077 FOR VALUES WITH (modulus 128, remainder 77);


--
-- Name: feedback_results_p078; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p078 FOR VALUES WITH (modulus 128, remainder 78);


--
-- Name: feedback_results_p079; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p079 FOR VALUES WITH (modulus 128, remainder 79);


--
-- Name: feedback_results_p080; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p080 FOR VALUES WITH (modulus 128, remainder 80);


--
-- Name: feedback_results_p081; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p081 FOR VALUES WITH (modulus 128, remainder 81);


--
-- Name: feedback_results_p082; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p082 FOR VALUES WITH (modulus 128, remainder 82);


--
-- Name: feedback_results_p083; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p083 FOR VALUES WITH (modulus 128, remainder 83);


--
-- Name: feedback_results_p084; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p084 FOR VALUES WITH (modulus 128, remainder 84);


--
-- Name: feedback_results_p085; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p085 FOR VALUES WITH (modulus 128, remainder 85);


--
-- Name: feedback_results_p086; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p086 FOR VALUES WITH (modulus 128, remainder 86);


--
-- Name: feedback_results_p087; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p087 FOR VALUES WITH (modulus 128, remainder 87);


--
-- Name: feedback_results_p088; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p088 FOR VALUES WITH (modulus 128, remainder 88);


--
-- Name: feedback_results_p089; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p089 FOR VALUES WITH (modulus 128, remainder 89);


--
-- Name: feedback_results_p090; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p090 FOR VALUES WITH (modulus 128, remainder 90);


--
-- Name: feedback_results_p091; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p091 FOR VALUES WITH (modulus 128, remainder 91);


--
-- Name: feedback_results_p092; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p092 FOR VALUES WITH (modulus 128, remainder 92);


--
-- Name: feedback_results_p093; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p093 FOR VALUES WITH (modulus 128, remainder 93);


--
-- Name: feedback_results_p094; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p094 FOR VALUES WITH (modulus 128, remainder 94);


--
-- Name: feedback_results_p095; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p095 FOR VALUES WITH (modulus 128, remainder 95);


--
-- Name: feedback_results_p096; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p096 FOR VALUES WITH (modulus 128, remainder 96);


--
-- Name: feedback_results_p097; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p097 FOR VALUES WITH (modulus 128, remainder 97);


--
-- Name: feedback_results_p098; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p098 FOR VALUES WITH (modulus 128, remainder 98);


--
-- Name: feedback_results_p099; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p099 FOR VALUES WITH (modulus 128, remainder 99);


--
-- Name: feedback_results_p100; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p100 FOR VALUES WITH (modulus 128, remainder 100);


--
-- Name: feedback_results_p101; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p101 FOR VALUES WITH (modulus 128, remainder 101);


--
-- Name: feedback_results_p102; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p102 FOR VALUES WITH (modulus 128, remainder 102);


--
-- Name: feedback_results_p103; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p103 FOR VALUES WITH (modulus 128, remainder 103);


--
-- Name: feedback_results_p104; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p104 FOR VALUES WITH (modulus 128, remainder 104);


--
-- Name: feedback_results_p105; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p105 FOR VALUES WITH (modulus 128, remainder 105);


--
-- Name: feedback_results_p106; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p106 FOR VALUES WITH (modulus 128, remainder 106);


--
-- Name: feedback_results_p107; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p107 FOR VALUES WITH (modulus 128, remainder 107);


--
-- Name: feedback_results_p108; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p108 FOR VALUES WITH (modulus 128, remainder 108);


--
-- Name: feedback_results_p109; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p109 FOR VALUES WITH (modulus 128, remainder 109);


--
-- Name: feedback_results_p110; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p110 FOR VALUES WITH (modulus 128, remainder 110);


--
-- Name: feedback_results_p111; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p111 FOR VALUES WITH (modulus 128, remainder 111);


--
-- Name: feedback_results_p112; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p112 FOR VALUES WITH (modulus 128, remainder 112);


--
-- Name: feedback_results_p113; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p113 FOR VALUES WITH (modulus 128, remainder 113);


--
-- Name: feedback_results_p114; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p114 FOR VALUES WITH (modulus 128, remainder 114);


--
-- Name: feedback_results_p115; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p115 FOR VALUES WITH (modulus 128, remainder 115);


--
-- Name: feedback_results_p116; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p116 FOR VALUES WITH (modulus 128, remainder 116);


--
-- Name: feedback_results_p117; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p117 FOR VALUES WITH (modulus 128, remainder 117);


--
-- Name: feedback_results_p118; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p118 FOR VALUES WITH (modulus 128, remainder 118);


--
-- Name: feedback_results_p119; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p119 FOR VALUES WITH (modulus 128, remainder 119);


--
-- Name: feedback_results_p120; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p120 FOR VALUES WITH (modulus 128, remainder 120);


--
-- Name: feedback_results_p121; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p121 FOR VALUES WITH (modulus 128, remainder 121);


--
-- Name: feedback_results_p122; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p122 FOR VALUES WITH (modulus 128, remainder 122);


--
-- Name: feedback_results_p123; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p123 FOR VALUES WITH (modulus 128, remainder 123);


--
-- Name: feedback_results_p124; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p124 FOR VALUES WITH (modulus 128, remainder 124);


--
-- Name: feedback_results_p125; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p125 FOR VALUES WITH (modulus 128, remainder 125);


--
-- Name: feedback_results_p126; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p126 FOR VALUES WITH (modulus 128, remainder 126);


--
-- Name: feedback_results_p127; Type: TABLE ATTACH; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ATTACH PARTITION public.feedback_results_p127 FOR VALUES WITH (modulus 128, remainder 127);


--
-- Name: feedback_results id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedback_results ALTER COLUMN id SET DEFAULT nextval('public.feedback_results_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_feedback_results_on_feedback_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_feedback_results_on_feedback_id ON ONLY public.feedback_results USING btree (feedback_id);


--
-- Name: feedback_results_p000_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p000_feedback_id_idx ON public.feedback_results_p000 USING btree (feedback_id);


--
-- Name: index_feedback_results_on_organization_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_feedback_results_on_organization_id ON ONLY public.feedback_results USING btree (organization_id);


--
-- Name: feedback_results_p000_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p000_organization_id_idx ON public.feedback_results_p000 USING btree (organization_id);


--
-- Name: index_feedback_results_on_processed_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_feedback_results_on_processed_time ON ONLY public.feedback_results USING btree (processed_time);


--
-- Name: feedback_results_p000_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p000_processed_time_idx ON public.feedback_results_p000 USING btree (processed_time);


--
-- Name: feedback_results_p001_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p001_feedback_id_idx ON public.feedback_results_p001 USING btree (feedback_id);


--
-- Name: feedback_results_p001_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p001_organization_id_idx ON public.feedback_results_p001 USING btree (organization_id);


--
-- Name: feedback_results_p001_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p001_processed_time_idx ON public.feedback_results_p001 USING btree (processed_time);


--
-- Name: feedback_results_p002_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p002_feedback_id_idx ON public.feedback_results_p002 USING btree (feedback_id);


--
-- Name: feedback_results_p002_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p002_organization_id_idx ON public.feedback_results_p002 USING btree (organization_id);


--
-- Name: feedback_results_p002_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p002_processed_time_idx ON public.feedback_results_p002 USING btree (processed_time);


--
-- Name: feedback_results_p003_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p003_feedback_id_idx ON public.feedback_results_p003 USING btree (feedback_id);


--
-- Name: feedback_results_p003_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p003_organization_id_idx ON public.feedback_results_p003 USING btree (organization_id);


--
-- Name: feedback_results_p003_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p003_processed_time_idx ON public.feedback_results_p003 USING btree (processed_time);


--
-- Name: feedback_results_p004_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p004_feedback_id_idx ON public.feedback_results_p004 USING btree (feedback_id);


--
-- Name: feedback_results_p004_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p004_organization_id_idx ON public.feedback_results_p004 USING btree (organization_id);


--
-- Name: feedback_results_p004_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p004_processed_time_idx ON public.feedback_results_p004 USING btree (processed_time);


--
-- Name: feedback_results_p005_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p005_feedback_id_idx ON public.feedback_results_p005 USING btree (feedback_id);


--
-- Name: feedback_results_p005_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p005_organization_id_idx ON public.feedback_results_p005 USING btree (organization_id);


--
-- Name: feedback_results_p005_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p005_processed_time_idx ON public.feedback_results_p005 USING btree (processed_time);


--
-- Name: feedback_results_p006_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p006_feedback_id_idx ON public.feedback_results_p006 USING btree (feedback_id);


--
-- Name: feedback_results_p006_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p006_organization_id_idx ON public.feedback_results_p006 USING btree (organization_id);


--
-- Name: feedback_results_p006_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p006_processed_time_idx ON public.feedback_results_p006 USING btree (processed_time);


--
-- Name: feedback_results_p007_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p007_feedback_id_idx ON public.feedback_results_p007 USING btree (feedback_id);


--
-- Name: feedback_results_p007_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p007_organization_id_idx ON public.feedback_results_p007 USING btree (organization_id);


--
-- Name: feedback_results_p007_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p007_processed_time_idx ON public.feedback_results_p007 USING btree (processed_time);


--
-- Name: feedback_results_p008_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p008_feedback_id_idx ON public.feedback_results_p008 USING btree (feedback_id);


--
-- Name: feedback_results_p008_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p008_organization_id_idx ON public.feedback_results_p008 USING btree (organization_id);


--
-- Name: feedback_results_p008_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p008_processed_time_idx ON public.feedback_results_p008 USING btree (processed_time);


--
-- Name: feedback_results_p009_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p009_feedback_id_idx ON public.feedback_results_p009 USING btree (feedback_id);


--
-- Name: feedback_results_p009_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p009_organization_id_idx ON public.feedback_results_p009 USING btree (organization_id);


--
-- Name: feedback_results_p009_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p009_processed_time_idx ON public.feedback_results_p009 USING btree (processed_time);


--
-- Name: feedback_results_p010_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p010_feedback_id_idx ON public.feedback_results_p010 USING btree (feedback_id);


--
-- Name: feedback_results_p010_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p010_organization_id_idx ON public.feedback_results_p010 USING btree (organization_id);


--
-- Name: feedback_results_p010_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p010_processed_time_idx ON public.feedback_results_p010 USING btree (processed_time);


--
-- Name: feedback_results_p011_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p011_feedback_id_idx ON public.feedback_results_p011 USING btree (feedback_id);


--
-- Name: feedback_results_p011_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p011_organization_id_idx ON public.feedback_results_p011 USING btree (organization_id);


--
-- Name: feedback_results_p011_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p011_processed_time_idx ON public.feedback_results_p011 USING btree (processed_time);


--
-- Name: feedback_results_p012_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p012_feedback_id_idx ON public.feedback_results_p012 USING btree (feedback_id);


--
-- Name: feedback_results_p012_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p012_organization_id_idx ON public.feedback_results_p012 USING btree (organization_id);


--
-- Name: feedback_results_p012_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p012_processed_time_idx ON public.feedback_results_p012 USING btree (processed_time);


--
-- Name: feedback_results_p013_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p013_feedback_id_idx ON public.feedback_results_p013 USING btree (feedback_id);


--
-- Name: feedback_results_p013_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p013_organization_id_idx ON public.feedback_results_p013 USING btree (organization_id);


--
-- Name: feedback_results_p013_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p013_processed_time_idx ON public.feedback_results_p013 USING btree (processed_time);


--
-- Name: feedback_results_p014_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p014_feedback_id_idx ON public.feedback_results_p014 USING btree (feedback_id);


--
-- Name: feedback_results_p014_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p014_organization_id_idx ON public.feedback_results_p014 USING btree (organization_id);


--
-- Name: feedback_results_p014_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p014_processed_time_idx ON public.feedback_results_p014 USING btree (processed_time);


--
-- Name: feedback_results_p015_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p015_feedback_id_idx ON public.feedback_results_p015 USING btree (feedback_id);


--
-- Name: feedback_results_p015_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p015_organization_id_idx ON public.feedback_results_p015 USING btree (organization_id);


--
-- Name: feedback_results_p015_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p015_processed_time_idx ON public.feedback_results_p015 USING btree (processed_time);


--
-- Name: feedback_results_p016_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p016_feedback_id_idx ON public.feedback_results_p016 USING btree (feedback_id);


--
-- Name: feedback_results_p016_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p016_organization_id_idx ON public.feedback_results_p016 USING btree (organization_id);


--
-- Name: feedback_results_p016_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p016_processed_time_idx ON public.feedback_results_p016 USING btree (processed_time);


--
-- Name: feedback_results_p017_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p017_feedback_id_idx ON public.feedback_results_p017 USING btree (feedback_id);


--
-- Name: feedback_results_p017_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p017_organization_id_idx ON public.feedback_results_p017 USING btree (organization_id);


--
-- Name: feedback_results_p017_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p017_processed_time_idx ON public.feedback_results_p017 USING btree (processed_time);


--
-- Name: feedback_results_p018_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p018_feedback_id_idx ON public.feedback_results_p018 USING btree (feedback_id);


--
-- Name: feedback_results_p018_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p018_organization_id_idx ON public.feedback_results_p018 USING btree (organization_id);


--
-- Name: feedback_results_p018_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p018_processed_time_idx ON public.feedback_results_p018 USING btree (processed_time);


--
-- Name: feedback_results_p019_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p019_feedback_id_idx ON public.feedback_results_p019 USING btree (feedback_id);


--
-- Name: feedback_results_p019_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p019_organization_id_idx ON public.feedback_results_p019 USING btree (organization_id);


--
-- Name: feedback_results_p019_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p019_processed_time_idx ON public.feedback_results_p019 USING btree (processed_time);


--
-- Name: feedback_results_p020_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p020_feedback_id_idx ON public.feedback_results_p020 USING btree (feedback_id);


--
-- Name: feedback_results_p020_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p020_organization_id_idx ON public.feedback_results_p020 USING btree (organization_id);


--
-- Name: feedback_results_p020_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p020_processed_time_idx ON public.feedback_results_p020 USING btree (processed_time);


--
-- Name: feedback_results_p021_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p021_feedback_id_idx ON public.feedback_results_p021 USING btree (feedback_id);


--
-- Name: feedback_results_p021_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p021_organization_id_idx ON public.feedback_results_p021 USING btree (organization_id);


--
-- Name: feedback_results_p021_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p021_processed_time_idx ON public.feedback_results_p021 USING btree (processed_time);


--
-- Name: feedback_results_p022_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p022_feedback_id_idx ON public.feedback_results_p022 USING btree (feedback_id);


--
-- Name: feedback_results_p022_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p022_organization_id_idx ON public.feedback_results_p022 USING btree (organization_id);


--
-- Name: feedback_results_p022_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p022_processed_time_idx ON public.feedback_results_p022 USING btree (processed_time);


--
-- Name: feedback_results_p023_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p023_feedback_id_idx ON public.feedback_results_p023 USING btree (feedback_id);


--
-- Name: feedback_results_p023_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p023_organization_id_idx ON public.feedback_results_p023 USING btree (organization_id);


--
-- Name: feedback_results_p023_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p023_processed_time_idx ON public.feedback_results_p023 USING btree (processed_time);


--
-- Name: feedback_results_p024_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p024_feedback_id_idx ON public.feedback_results_p024 USING btree (feedback_id);


--
-- Name: feedback_results_p024_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p024_organization_id_idx ON public.feedback_results_p024 USING btree (organization_id);


--
-- Name: feedback_results_p024_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p024_processed_time_idx ON public.feedback_results_p024 USING btree (processed_time);


--
-- Name: feedback_results_p025_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p025_feedback_id_idx ON public.feedback_results_p025 USING btree (feedback_id);


--
-- Name: feedback_results_p025_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p025_organization_id_idx ON public.feedback_results_p025 USING btree (organization_id);


--
-- Name: feedback_results_p025_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p025_processed_time_idx ON public.feedback_results_p025 USING btree (processed_time);


--
-- Name: feedback_results_p026_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p026_feedback_id_idx ON public.feedback_results_p026 USING btree (feedback_id);


--
-- Name: feedback_results_p026_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p026_organization_id_idx ON public.feedback_results_p026 USING btree (organization_id);


--
-- Name: feedback_results_p026_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p026_processed_time_idx ON public.feedback_results_p026 USING btree (processed_time);


--
-- Name: feedback_results_p027_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p027_feedback_id_idx ON public.feedback_results_p027 USING btree (feedback_id);


--
-- Name: feedback_results_p027_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p027_organization_id_idx ON public.feedback_results_p027 USING btree (organization_id);


--
-- Name: feedback_results_p027_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p027_processed_time_idx ON public.feedback_results_p027 USING btree (processed_time);


--
-- Name: feedback_results_p028_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p028_feedback_id_idx ON public.feedback_results_p028 USING btree (feedback_id);


--
-- Name: feedback_results_p028_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p028_organization_id_idx ON public.feedback_results_p028 USING btree (organization_id);


--
-- Name: feedback_results_p028_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p028_processed_time_idx ON public.feedback_results_p028 USING btree (processed_time);


--
-- Name: feedback_results_p029_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p029_feedback_id_idx ON public.feedback_results_p029 USING btree (feedback_id);


--
-- Name: feedback_results_p029_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p029_organization_id_idx ON public.feedback_results_p029 USING btree (organization_id);


--
-- Name: feedback_results_p029_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p029_processed_time_idx ON public.feedback_results_p029 USING btree (processed_time);


--
-- Name: feedback_results_p030_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p030_feedback_id_idx ON public.feedback_results_p030 USING btree (feedback_id);


--
-- Name: feedback_results_p030_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p030_organization_id_idx ON public.feedback_results_p030 USING btree (organization_id);


--
-- Name: feedback_results_p030_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p030_processed_time_idx ON public.feedback_results_p030 USING btree (processed_time);


--
-- Name: feedback_results_p031_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p031_feedback_id_idx ON public.feedback_results_p031 USING btree (feedback_id);


--
-- Name: feedback_results_p031_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p031_organization_id_idx ON public.feedback_results_p031 USING btree (organization_id);


--
-- Name: feedback_results_p031_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p031_processed_time_idx ON public.feedback_results_p031 USING btree (processed_time);


--
-- Name: feedback_results_p032_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p032_feedback_id_idx ON public.feedback_results_p032 USING btree (feedback_id);


--
-- Name: feedback_results_p032_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p032_organization_id_idx ON public.feedback_results_p032 USING btree (organization_id);


--
-- Name: feedback_results_p032_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p032_processed_time_idx ON public.feedback_results_p032 USING btree (processed_time);


--
-- Name: feedback_results_p033_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p033_feedback_id_idx ON public.feedback_results_p033 USING btree (feedback_id);


--
-- Name: feedback_results_p033_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p033_organization_id_idx ON public.feedback_results_p033 USING btree (organization_id);


--
-- Name: feedback_results_p033_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p033_processed_time_idx ON public.feedback_results_p033 USING btree (processed_time);


--
-- Name: feedback_results_p034_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p034_feedback_id_idx ON public.feedback_results_p034 USING btree (feedback_id);


--
-- Name: feedback_results_p034_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p034_organization_id_idx ON public.feedback_results_p034 USING btree (organization_id);


--
-- Name: feedback_results_p034_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p034_processed_time_idx ON public.feedback_results_p034 USING btree (processed_time);


--
-- Name: feedback_results_p035_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p035_feedback_id_idx ON public.feedback_results_p035 USING btree (feedback_id);


--
-- Name: feedback_results_p035_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p035_organization_id_idx ON public.feedback_results_p035 USING btree (organization_id);


--
-- Name: feedback_results_p035_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p035_processed_time_idx ON public.feedback_results_p035 USING btree (processed_time);


--
-- Name: feedback_results_p036_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p036_feedback_id_idx ON public.feedback_results_p036 USING btree (feedback_id);


--
-- Name: feedback_results_p036_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p036_organization_id_idx ON public.feedback_results_p036 USING btree (organization_id);


--
-- Name: feedback_results_p036_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p036_processed_time_idx ON public.feedback_results_p036 USING btree (processed_time);


--
-- Name: feedback_results_p037_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p037_feedback_id_idx ON public.feedback_results_p037 USING btree (feedback_id);


--
-- Name: feedback_results_p037_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p037_organization_id_idx ON public.feedback_results_p037 USING btree (organization_id);


--
-- Name: feedback_results_p037_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p037_processed_time_idx ON public.feedback_results_p037 USING btree (processed_time);


--
-- Name: feedback_results_p038_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p038_feedback_id_idx ON public.feedback_results_p038 USING btree (feedback_id);


--
-- Name: feedback_results_p038_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p038_organization_id_idx ON public.feedback_results_p038 USING btree (organization_id);


--
-- Name: feedback_results_p038_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p038_processed_time_idx ON public.feedback_results_p038 USING btree (processed_time);


--
-- Name: feedback_results_p039_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p039_feedback_id_idx ON public.feedback_results_p039 USING btree (feedback_id);


--
-- Name: feedback_results_p039_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p039_organization_id_idx ON public.feedback_results_p039 USING btree (organization_id);


--
-- Name: feedback_results_p039_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p039_processed_time_idx ON public.feedback_results_p039 USING btree (processed_time);


--
-- Name: feedback_results_p040_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p040_feedback_id_idx ON public.feedback_results_p040 USING btree (feedback_id);


--
-- Name: feedback_results_p040_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p040_organization_id_idx ON public.feedback_results_p040 USING btree (organization_id);


--
-- Name: feedback_results_p040_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p040_processed_time_idx ON public.feedback_results_p040 USING btree (processed_time);


--
-- Name: feedback_results_p041_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p041_feedback_id_idx ON public.feedback_results_p041 USING btree (feedback_id);


--
-- Name: feedback_results_p041_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p041_organization_id_idx ON public.feedback_results_p041 USING btree (organization_id);


--
-- Name: feedback_results_p041_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p041_processed_time_idx ON public.feedback_results_p041 USING btree (processed_time);


--
-- Name: feedback_results_p042_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p042_feedback_id_idx ON public.feedback_results_p042 USING btree (feedback_id);


--
-- Name: feedback_results_p042_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p042_organization_id_idx ON public.feedback_results_p042 USING btree (organization_id);


--
-- Name: feedback_results_p042_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p042_processed_time_idx ON public.feedback_results_p042 USING btree (processed_time);


--
-- Name: feedback_results_p043_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p043_feedback_id_idx ON public.feedback_results_p043 USING btree (feedback_id);


--
-- Name: feedback_results_p043_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p043_organization_id_idx ON public.feedback_results_p043 USING btree (organization_id);


--
-- Name: feedback_results_p043_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p043_processed_time_idx ON public.feedback_results_p043 USING btree (processed_time);


--
-- Name: feedback_results_p044_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p044_feedback_id_idx ON public.feedback_results_p044 USING btree (feedback_id);


--
-- Name: feedback_results_p044_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p044_organization_id_idx ON public.feedback_results_p044 USING btree (organization_id);


--
-- Name: feedback_results_p044_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p044_processed_time_idx ON public.feedback_results_p044 USING btree (processed_time);


--
-- Name: feedback_results_p045_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p045_feedback_id_idx ON public.feedback_results_p045 USING btree (feedback_id);


--
-- Name: feedback_results_p045_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p045_organization_id_idx ON public.feedback_results_p045 USING btree (organization_id);


--
-- Name: feedback_results_p045_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p045_processed_time_idx ON public.feedback_results_p045 USING btree (processed_time);


--
-- Name: feedback_results_p046_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p046_feedback_id_idx ON public.feedback_results_p046 USING btree (feedback_id);


--
-- Name: feedback_results_p046_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p046_organization_id_idx ON public.feedback_results_p046 USING btree (organization_id);


--
-- Name: feedback_results_p046_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p046_processed_time_idx ON public.feedback_results_p046 USING btree (processed_time);


--
-- Name: feedback_results_p047_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p047_feedback_id_idx ON public.feedback_results_p047 USING btree (feedback_id);


--
-- Name: feedback_results_p047_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p047_organization_id_idx ON public.feedback_results_p047 USING btree (organization_id);


--
-- Name: feedback_results_p047_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p047_processed_time_idx ON public.feedback_results_p047 USING btree (processed_time);


--
-- Name: feedback_results_p048_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p048_feedback_id_idx ON public.feedback_results_p048 USING btree (feedback_id);


--
-- Name: feedback_results_p048_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p048_organization_id_idx ON public.feedback_results_p048 USING btree (organization_id);


--
-- Name: feedback_results_p048_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p048_processed_time_idx ON public.feedback_results_p048 USING btree (processed_time);


--
-- Name: feedback_results_p049_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p049_feedback_id_idx ON public.feedback_results_p049 USING btree (feedback_id);


--
-- Name: feedback_results_p049_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p049_organization_id_idx ON public.feedback_results_p049 USING btree (organization_id);


--
-- Name: feedback_results_p049_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p049_processed_time_idx ON public.feedback_results_p049 USING btree (processed_time);


--
-- Name: feedback_results_p050_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p050_feedback_id_idx ON public.feedback_results_p050 USING btree (feedback_id);


--
-- Name: feedback_results_p050_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p050_organization_id_idx ON public.feedback_results_p050 USING btree (organization_id);


--
-- Name: feedback_results_p050_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p050_processed_time_idx ON public.feedback_results_p050 USING btree (processed_time);


--
-- Name: feedback_results_p051_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p051_feedback_id_idx ON public.feedback_results_p051 USING btree (feedback_id);


--
-- Name: feedback_results_p051_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p051_organization_id_idx ON public.feedback_results_p051 USING btree (organization_id);


--
-- Name: feedback_results_p051_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p051_processed_time_idx ON public.feedback_results_p051 USING btree (processed_time);


--
-- Name: feedback_results_p052_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p052_feedback_id_idx ON public.feedback_results_p052 USING btree (feedback_id);


--
-- Name: feedback_results_p052_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p052_organization_id_idx ON public.feedback_results_p052 USING btree (organization_id);


--
-- Name: feedback_results_p052_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p052_processed_time_idx ON public.feedback_results_p052 USING btree (processed_time);


--
-- Name: feedback_results_p053_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p053_feedback_id_idx ON public.feedback_results_p053 USING btree (feedback_id);


--
-- Name: feedback_results_p053_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p053_organization_id_idx ON public.feedback_results_p053 USING btree (organization_id);


--
-- Name: feedback_results_p053_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p053_processed_time_idx ON public.feedback_results_p053 USING btree (processed_time);


--
-- Name: feedback_results_p054_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p054_feedback_id_idx ON public.feedback_results_p054 USING btree (feedback_id);


--
-- Name: feedback_results_p054_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p054_organization_id_idx ON public.feedback_results_p054 USING btree (organization_id);


--
-- Name: feedback_results_p054_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p054_processed_time_idx ON public.feedback_results_p054 USING btree (processed_time);


--
-- Name: feedback_results_p055_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p055_feedback_id_idx ON public.feedback_results_p055 USING btree (feedback_id);


--
-- Name: feedback_results_p055_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p055_organization_id_idx ON public.feedback_results_p055 USING btree (organization_id);


--
-- Name: feedback_results_p055_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p055_processed_time_idx ON public.feedback_results_p055 USING btree (processed_time);


--
-- Name: feedback_results_p056_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p056_feedback_id_idx ON public.feedback_results_p056 USING btree (feedback_id);


--
-- Name: feedback_results_p056_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p056_organization_id_idx ON public.feedback_results_p056 USING btree (organization_id);


--
-- Name: feedback_results_p056_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p056_processed_time_idx ON public.feedback_results_p056 USING btree (processed_time);


--
-- Name: feedback_results_p057_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p057_feedback_id_idx ON public.feedback_results_p057 USING btree (feedback_id);


--
-- Name: feedback_results_p057_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p057_organization_id_idx ON public.feedback_results_p057 USING btree (organization_id);


--
-- Name: feedback_results_p057_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p057_processed_time_idx ON public.feedback_results_p057 USING btree (processed_time);


--
-- Name: feedback_results_p058_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p058_feedback_id_idx ON public.feedback_results_p058 USING btree (feedback_id);


--
-- Name: feedback_results_p058_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p058_organization_id_idx ON public.feedback_results_p058 USING btree (organization_id);


--
-- Name: feedback_results_p058_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p058_processed_time_idx ON public.feedback_results_p058 USING btree (processed_time);


--
-- Name: feedback_results_p059_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p059_feedback_id_idx ON public.feedback_results_p059 USING btree (feedback_id);


--
-- Name: feedback_results_p059_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p059_organization_id_idx ON public.feedback_results_p059 USING btree (organization_id);


--
-- Name: feedback_results_p059_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p059_processed_time_idx ON public.feedback_results_p059 USING btree (processed_time);


--
-- Name: feedback_results_p060_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p060_feedback_id_idx ON public.feedback_results_p060 USING btree (feedback_id);


--
-- Name: feedback_results_p060_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p060_organization_id_idx ON public.feedback_results_p060 USING btree (organization_id);


--
-- Name: feedback_results_p060_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p060_processed_time_idx ON public.feedback_results_p060 USING btree (processed_time);


--
-- Name: feedback_results_p061_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p061_feedback_id_idx ON public.feedback_results_p061 USING btree (feedback_id);


--
-- Name: feedback_results_p061_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p061_organization_id_idx ON public.feedback_results_p061 USING btree (organization_id);


--
-- Name: feedback_results_p061_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p061_processed_time_idx ON public.feedback_results_p061 USING btree (processed_time);


--
-- Name: feedback_results_p062_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p062_feedback_id_idx ON public.feedback_results_p062 USING btree (feedback_id);


--
-- Name: feedback_results_p062_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p062_organization_id_idx ON public.feedback_results_p062 USING btree (organization_id);


--
-- Name: feedback_results_p062_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p062_processed_time_idx ON public.feedback_results_p062 USING btree (processed_time);


--
-- Name: feedback_results_p063_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p063_feedback_id_idx ON public.feedback_results_p063 USING btree (feedback_id);


--
-- Name: feedback_results_p063_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p063_organization_id_idx ON public.feedback_results_p063 USING btree (organization_id);


--
-- Name: feedback_results_p063_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p063_processed_time_idx ON public.feedback_results_p063 USING btree (processed_time);


--
-- Name: feedback_results_p064_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p064_feedback_id_idx ON public.feedback_results_p064 USING btree (feedback_id);


--
-- Name: feedback_results_p064_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p064_organization_id_idx ON public.feedback_results_p064 USING btree (organization_id);


--
-- Name: feedback_results_p064_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p064_processed_time_idx ON public.feedback_results_p064 USING btree (processed_time);


--
-- Name: feedback_results_p065_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p065_feedback_id_idx ON public.feedback_results_p065 USING btree (feedback_id);


--
-- Name: feedback_results_p065_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p065_organization_id_idx ON public.feedback_results_p065 USING btree (organization_id);


--
-- Name: feedback_results_p065_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p065_processed_time_idx ON public.feedback_results_p065 USING btree (processed_time);


--
-- Name: feedback_results_p066_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p066_feedback_id_idx ON public.feedback_results_p066 USING btree (feedback_id);


--
-- Name: feedback_results_p066_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p066_organization_id_idx ON public.feedback_results_p066 USING btree (organization_id);


--
-- Name: feedback_results_p066_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p066_processed_time_idx ON public.feedback_results_p066 USING btree (processed_time);


--
-- Name: feedback_results_p067_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p067_feedback_id_idx ON public.feedback_results_p067 USING btree (feedback_id);


--
-- Name: feedback_results_p067_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p067_organization_id_idx ON public.feedback_results_p067 USING btree (organization_id);


--
-- Name: feedback_results_p067_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p067_processed_time_idx ON public.feedback_results_p067 USING btree (processed_time);


--
-- Name: feedback_results_p068_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p068_feedback_id_idx ON public.feedback_results_p068 USING btree (feedback_id);


--
-- Name: feedback_results_p068_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p068_organization_id_idx ON public.feedback_results_p068 USING btree (organization_id);


--
-- Name: feedback_results_p068_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p068_processed_time_idx ON public.feedback_results_p068 USING btree (processed_time);


--
-- Name: feedback_results_p069_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p069_feedback_id_idx ON public.feedback_results_p069 USING btree (feedback_id);


--
-- Name: feedback_results_p069_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p069_organization_id_idx ON public.feedback_results_p069 USING btree (organization_id);


--
-- Name: feedback_results_p069_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p069_processed_time_idx ON public.feedback_results_p069 USING btree (processed_time);


--
-- Name: feedback_results_p070_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p070_feedback_id_idx ON public.feedback_results_p070 USING btree (feedback_id);


--
-- Name: feedback_results_p070_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p070_organization_id_idx ON public.feedback_results_p070 USING btree (organization_id);


--
-- Name: feedback_results_p070_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p070_processed_time_idx ON public.feedback_results_p070 USING btree (processed_time);


--
-- Name: feedback_results_p071_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p071_feedback_id_idx ON public.feedback_results_p071 USING btree (feedback_id);


--
-- Name: feedback_results_p071_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p071_organization_id_idx ON public.feedback_results_p071 USING btree (organization_id);


--
-- Name: feedback_results_p071_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p071_processed_time_idx ON public.feedback_results_p071 USING btree (processed_time);


--
-- Name: feedback_results_p072_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p072_feedback_id_idx ON public.feedback_results_p072 USING btree (feedback_id);


--
-- Name: feedback_results_p072_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p072_organization_id_idx ON public.feedback_results_p072 USING btree (organization_id);


--
-- Name: feedback_results_p072_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p072_processed_time_idx ON public.feedback_results_p072 USING btree (processed_time);


--
-- Name: feedback_results_p073_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p073_feedback_id_idx ON public.feedback_results_p073 USING btree (feedback_id);


--
-- Name: feedback_results_p073_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p073_organization_id_idx ON public.feedback_results_p073 USING btree (organization_id);


--
-- Name: feedback_results_p073_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p073_processed_time_idx ON public.feedback_results_p073 USING btree (processed_time);


--
-- Name: feedback_results_p074_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p074_feedback_id_idx ON public.feedback_results_p074 USING btree (feedback_id);


--
-- Name: feedback_results_p074_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p074_organization_id_idx ON public.feedback_results_p074 USING btree (organization_id);


--
-- Name: feedback_results_p074_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p074_processed_time_idx ON public.feedback_results_p074 USING btree (processed_time);


--
-- Name: feedback_results_p075_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p075_feedback_id_idx ON public.feedback_results_p075 USING btree (feedback_id);


--
-- Name: feedback_results_p075_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p075_organization_id_idx ON public.feedback_results_p075 USING btree (organization_id);


--
-- Name: feedback_results_p075_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p075_processed_time_idx ON public.feedback_results_p075 USING btree (processed_time);


--
-- Name: feedback_results_p076_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p076_feedback_id_idx ON public.feedback_results_p076 USING btree (feedback_id);


--
-- Name: feedback_results_p076_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p076_organization_id_idx ON public.feedback_results_p076 USING btree (organization_id);


--
-- Name: feedback_results_p076_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p076_processed_time_idx ON public.feedback_results_p076 USING btree (processed_time);


--
-- Name: feedback_results_p077_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p077_feedback_id_idx ON public.feedback_results_p077 USING btree (feedback_id);


--
-- Name: feedback_results_p077_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p077_organization_id_idx ON public.feedback_results_p077 USING btree (organization_id);


--
-- Name: feedback_results_p077_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p077_processed_time_idx ON public.feedback_results_p077 USING btree (processed_time);


--
-- Name: feedback_results_p078_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p078_feedback_id_idx ON public.feedback_results_p078 USING btree (feedback_id);


--
-- Name: feedback_results_p078_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p078_organization_id_idx ON public.feedback_results_p078 USING btree (organization_id);


--
-- Name: feedback_results_p078_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p078_processed_time_idx ON public.feedback_results_p078 USING btree (processed_time);


--
-- Name: feedback_results_p079_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p079_feedback_id_idx ON public.feedback_results_p079 USING btree (feedback_id);


--
-- Name: feedback_results_p079_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p079_organization_id_idx ON public.feedback_results_p079 USING btree (organization_id);


--
-- Name: feedback_results_p079_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p079_processed_time_idx ON public.feedback_results_p079 USING btree (processed_time);


--
-- Name: feedback_results_p080_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p080_feedback_id_idx ON public.feedback_results_p080 USING btree (feedback_id);


--
-- Name: feedback_results_p080_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p080_organization_id_idx ON public.feedback_results_p080 USING btree (organization_id);


--
-- Name: feedback_results_p080_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p080_processed_time_idx ON public.feedback_results_p080 USING btree (processed_time);


--
-- Name: feedback_results_p081_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p081_feedback_id_idx ON public.feedback_results_p081 USING btree (feedback_id);


--
-- Name: feedback_results_p081_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p081_organization_id_idx ON public.feedback_results_p081 USING btree (organization_id);


--
-- Name: feedback_results_p081_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p081_processed_time_idx ON public.feedback_results_p081 USING btree (processed_time);


--
-- Name: feedback_results_p082_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p082_feedback_id_idx ON public.feedback_results_p082 USING btree (feedback_id);


--
-- Name: feedback_results_p082_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p082_organization_id_idx ON public.feedback_results_p082 USING btree (organization_id);


--
-- Name: feedback_results_p082_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p082_processed_time_idx ON public.feedback_results_p082 USING btree (processed_time);


--
-- Name: feedback_results_p083_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p083_feedback_id_idx ON public.feedback_results_p083 USING btree (feedback_id);


--
-- Name: feedback_results_p083_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p083_organization_id_idx ON public.feedback_results_p083 USING btree (organization_id);


--
-- Name: feedback_results_p083_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p083_processed_time_idx ON public.feedback_results_p083 USING btree (processed_time);


--
-- Name: feedback_results_p084_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p084_feedback_id_idx ON public.feedback_results_p084 USING btree (feedback_id);


--
-- Name: feedback_results_p084_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p084_organization_id_idx ON public.feedback_results_p084 USING btree (organization_id);


--
-- Name: feedback_results_p084_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p084_processed_time_idx ON public.feedback_results_p084 USING btree (processed_time);


--
-- Name: feedback_results_p085_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p085_feedback_id_idx ON public.feedback_results_p085 USING btree (feedback_id);


--
-- Name: feedback_results_p085_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p085_organization_id_idx ON public.feedback_results_p085 USING btree (organization_id);


--
-- Name: feedback_results_p085_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p085_processed_time_idx ON public.feedback_results_p085 USING btree (processed_time);


--
-- Name: feedback_results_p086_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p086_feedback_id_idx ON public.feedback_results_p086 USING btree (feedback_id);


--
-- Name: feedback_results_p086_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p086_organization_id_idx ON public.feedback_results_p086 USING btree (organization_id);


--
-- Name: feedback_results_p086_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p086_processed_time_idx ON public.feedback_results_p086 USING btree (processed_time);


--
-- Name: feedback_results_p087_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p087_feedback_id_idx ON public.feedback_results_p087 USING btree (feedback_id);


--
-- Name: feedback_results_p087_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p087_organization_id_idx ON public.feedback_results_p087 USING btree (organization_id);


--
-- Name: feedback_results_p087_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p087_processed_time_idx ON public.feedback_results_p087 USING btree (processed_time);


--
-- Name: feedback_results_p088_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p088_feedback_id_idx ON public.feedback_results_p088 USING btree (feedback_id);


--
-- Name: feedback_results_p088_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p088_organization_id_idx ON public.feedback_results_p088 USING btree (organization_id);


--
-- Name: feedback_results_p088_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p088_processed_time_idx ON public.feedback_results_p088 USING btree (processed_time);


--
-- Name: feedback_results_p089_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p089_feedback_id_idx ON public.feedback_results_p089 USING btree (feedback_id);


--
-- Name: feedback_results_p089_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p089_organization_id_idx ON public.feedback_results_p089 USING btree (organization_id);


--
-- Name: feedback_results_p089_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p089_processed_time_idx ON public.feedback_results_p089 USING btree (processed_time);


--
-- Name: feedback_results_p090_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p090_feedback_id_idx ON public.feedback_results_p090 USING btree (feedback_id);


--
-- Name: feedback_results_p090_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p090_organization_id_idx ON public.feedback_results_p090 USING btree (organization_id);


--
-- Name: feedback_results_p090_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p090_processed_time_idx ON public.feedback_results_p090 USING btree (processed_time);


--
-- Name: feedback_results_p091_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p091_feedback_id_idx ON public.feedback_results_p091 USING btree (feedback_id);


--
-- Name: feedback_results_p091_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p091_organization_id_idx ON public.feedback_results_p091 USING btree (organization_id);


--
-- Name: feedback_results_p091_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p091_processed_time_idx ON public.feedback_results_p091 USING btree (processed_time);


--
-- Name: feedback_results_p092_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p092_feedback_id_idx ON public.feedback_results_p092 USING btree (feedback_id);


--
-- Name: feedback_results_p092_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p092_organization_id_idx ON public.feedback_results_p092 USING btree (organization_id);


--
-- Name: feedback_results_p092_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p092_processed_time_idx ON public.feedback_results_p092 USING btree (processed_time);


--
-- Name: feedback_results_p093_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p093_feedback_id_idx ON public.feedback_results_p093 USING btree (feedback_id);


--
-- Name: feedback_results_p093_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p093_organization_id_idx ON public.feedback_results_p093 USING btree (organization_id);


--
-- Name: feedback_results_p093_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p093_processed_time_idx ON public.feedback_results_p093 USING btree (processed_time);


--
-- Name: feedback_results_p094_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p094_feedback_id_idx ON public.feedback_results_p094 USING btree (feedback_id);


--
-- Name: feedback_results_p094_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p094_organization_id_idx ON public.feedback_results_p094 USING btree (organization_id);


--
-- Name: feedback_results_p094_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p094_processed_time_idx ON public.feedback_results_p094 USING btree (processed_time);


--
-- Name: feedback_results_p095_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p095_feedback_id_idx ON public.feedback_results_p095 USING btree (feedback_id);


--
-- Name: feedback_results_p095_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p095_organization_id_idx ON public.feedback_results_p095 USING btree (organization_id);


--
-- Name: feedback_results_p095_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p095_processed_time_idx ON public.feedback_results_p095 USING btree (processed_time);


--
-- Name: feedback_results_p096_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p096_feedback_id_idx ON public.feedback_results_p096 USING btree (feedback_id);


--
-- Name: feedback_results_p096_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p096_organization_id_idx ON public.feedback_results_p096 USING btree (organization_id);


--
-- Name: feedback_results_p096_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p096_processed_time_idx ON public.feedback_results_p096 USING btree (processed_time);


--
-- Name: feedback_results_p097_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p097_feedback_id_idx ON public.feedback_results_p097 USING btree (feedback_id);


--
-- Name: feedback_results_p097_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p097_organization_id_idx ON public.feedback_results_p097 USING btree (organization_id);


--
-- Name: feedback_results_p097_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p097_processed_time_idx ON public.feedback_results_p097 USING btree (processed_time);


--
-- Name: feedback_results_p098_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p098_feedback_id_idx ON public.feedback_results_p098 USING btree (feedback_id);


--
-- Name: feedback_results_p098_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p098_organization_id_idx ON public.feedback_results_p098 USING btree (organization_id);


--
-- Name: feedback_results_p098_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p098_processed_time_idx ON public.feedback_results_p098 USING btree (processed_time);


--
-- Name: feedback_results_p099_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p099_feedback_id_idx ON public.feedback_results_p099 USING btree (feedback_id);


--
-- Name: feedback_results_p099_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p099_organization_id_idx ON public.feedback_results_p099 USING btree (organization_id);


--
-- Name: feedback_results_p099_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p099_processed_time_idx ON public.feedback_results_p099 USING btree (processed_time);


--
-- Name: feedback_results_p100_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p100_feedback_id_idx ON public.feedback_results_p100 USING btree (feedback_id);


--
-- Name: feedback_results_p100_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p100_organization_id_idx ON public.feedback_results_p100 USING btree (organization_id);


--
-- Name: feedback_results_p100_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p100_processed_time_idx ON public.feedback_results_p100 USING btree (processed_time);


--
-- Name: feedback_results_p101_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p101_feedback_id_idx ON public.feedback_results_p101 USING btree (feedback_id);


--
-- Name: feedback_results_p101_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p101_organization_id_idx ON public.feedback_results_p101 USING btree (organization_id);


--
-- Name: feedback_results_p101_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p101_processed_time_idx ON public.feedback_results_p101 USING btree (processed_time);


--
-- Name: feedback_results_p102_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p102_feedback_id_idx ON public.feedback_results_p102 USING btree (feedback_id);


--
-- Name: feedback_results_p102_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p102_organization_id_idx ON public.feedback_results_p102 USING btree (organization_id);


--
-- Name: feedback_results_p102_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p102_processed_time_idx ON public.feedback_results_p102 USING btree (processed_time);


--
-- Name: feedback_results_p103_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p103_feedback_id_idx ON public.feedback_results_p103 USING btree (feedback_id);


--
-- Name: feedback_results_p103_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p103_organization_id_idx ON public.feedback_results_p103 USING btree (organization_id);


--
-- Name: feedback_results_p103_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p103_processed_time_idx ON public.feedback_results_p103 USING btree (processed_time);


--
-- Name: feedback_results_p104_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p104_feedback_id_idx ON public.feedback_results_p104 USING btree (feedback_id);


--
-- Name: feedback_results_p104_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p104_organization_id_idx ON public.feedback_results_p104 USING btree (organization_id);


--
-- Name: feedback_results_p104_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p104_processed_time_idx ON public.feedback_results_p104 USING btree (processed_time);


--
-- Name: feedback_results_p105_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p105_feedback_id_idx ON public.feedback_results_p105 USING btree (feedback_id);


--
-- Name: feedback_results_p105_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p105_organization_id_idx ON public.feedback_results_p105 USING btree (organization_id);


--
-- Name: feedback_results_p105_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p105_processed_time_idx ON public.feedback_results_p105 USING btree (processed_time);


--
-- Name: feedback_results_p106_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p106_feedback_id_idx ON public.feedback_results_p106 USING btree (feedback_id);


--
-- Name: feedback_results_p106_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p106_organization_id_idx ON public.feedback_results_p106 USING btree (organization_id);


--
-- Name: feedback_results_p106_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p106_processed_time_idx ON public.feedback_results_p106 USING btree (processed_time);


--
-- Name: feedback_results_p107_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p107_feedback_id_idx ON public.feedback_results_p107 USING btree (feedback_id);


--
-- Name: feedback_results_p107_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p107_organization_id_idx ON public.feedback_results_p107 USING btree (organization_id);


--
-- Name: feedback_results_p107_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p107_processed_time_idx ON public.feedback_results_p107 USING btree (processed_time);


--
-- Name: feedback_results_p108_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p108_feedback_id_idx ON public.feedback_results_p108 USING btree (feedback_id);


--
-- Name: feedback_results_p108_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p108_organization_id_idx ON public.feedback_results_p108 USING btree (organization_id);


--
-- Name: feedback_results_p108_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p108_processed_time_idx ON public.feedback_results_p108 USING btree (processed_time);


--
-- Name: feedback_results_p109_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p109_feedback_id_idx ON public.feedback_results_p109 USING btree (feedback_id);


--
-- Name: feedback_results_p109_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p109_organization_id_idx ON public.feedback_results_p109 USING btree (organization_id);


--
-- Name: feedback_results_p109_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p109_processed_time_idx ON public.feedback_results_p109 USING btree (processed_time);


--
-- Name: feedback_results_p110_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p110_feedback_id_idx ON public.feedback_results_p110 USING btree (feedback_id);


--
-- Name: feedback_results_p110_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p110_organization_id_idx ON public.feedback_results_p110 USING btree (organization_id);


--
-- Name: feedback_results_p110_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p110_processed_time_idx ON public.feedback_results_p110 USING btree (processed_time);


--
-- Name: feedback_results_p111_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p111_feedback_id_idx ON public.feedback_results_p111 USING btree (feedback_id);


--
-- Name: feedback_results_p111_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p111_organization_id_idx ON public.feedback_results_p111 USING btree (organization_id);


--
-- Name: feedback_results_p111_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p111_processed_time_idx ON public.feedback_results_p111 USING btree (processed_time);


--
-- Name: feedback_results_p112_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p112_feedback_id_idx ON public.feedback_results_p112 USING btree (feedback_id);


--
-- Name: feedback_results_p112_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p112_organization_id_idx ON public.feedback_results_p112 USING btree (organization_id);


--
-- Name: feedback_results_p112_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p112_processed_time_idx ON public.feedback_results_p112 USING btree (processed_time);


--
-- Name: feedback_results_p113_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p113_feedback_id_idx ON public.feedback_results_p113 USING btree (feedback_id);


--
-- Name: feedback_results_p113_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p113_organization_id_idx ON public.feedback_results_p113 USING btree (organization_id);


--
-- Name: feedback_results_p113_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p113_processed_time_idx ON public.feedback_results_p113 USING btree (processed_time);


--
-- Name: feedback_results_p114_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p114_feedback_id_idx ON public.feedback_results_p114 USING btree (feedback_id);


--
-- Name: feedback_results_p114_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p114_organization_id_idx ON public.feedback_results_p114 USING btree (organization_id);


--
-- Name: feedback_results_p114_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p114_processed_time_idx ON public.feedback_results_p114 USING btree (processed_time);


--
-- Name: feedback_results_p115_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p115_feedback_id_idx ON public.feedback_results_p115 USING btree (feedback_id);


--
-- Name: feedback_results_p115_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p115_organization_id_idx ON public.feedback_results_p115 USING btree (organization_id);


--
-- Name: feedback_results_p115_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p115_processed_time_idx ON public.feedback_results_p115 USING btree (processed_time);


--
-- Name: feedback_results_p116_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p116_feedback_id_idx ON public.feedback_results_p116 USING btree (feedback_id);


--
-- Name: feedback_results_p116_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p116_organization_id_idx ON public.feedback_results_p116 USING btree (organization_id);


--
-- Name: feedback_results_p116_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p116_processed_time_idx ON public.feedback_results_p116 USING btree (processed_time);


--
-- Name: feedback_results_p117_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p117_feedback_id_idx ON public.feedback_results_p117 USING btree (feedback_id);


--
-- Name: feedback_results_p117_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p117_organization_id_idx ON public.feedback_results_p117 USING btree (organization_id);


--
-- Name: feedback_results_p117_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p117_processed_time_idx ON public.feedback_results_p117 USING btree (processed_time);


--
-- Name: feedback_results_p118_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p118_feedback_id_idx ON public.feedback_results_p118 USING btree (feedback_id);


--
-- Name: feedback_results_p118_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p118_organization_id_idx ON public.feedback_results_p118 USING btree (organization_id);


--
-- Name: feedback_results_p118_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p118_processed_time_idx ON public.feedback_results_p118 USING btree (processed_time);


--
-- Name: feedback_results_p119_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p119_feedback_id_idx ON public.feedback_results_p119 USING btree (feedback_id);


--
-- Name: feedback_results_p119_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p119_organization_id_idx ON public.feedback_results_p119 USING btree (organization_id);


--
-- Name: feedback_results_p119_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p119_processed_time_idx ON public.feedback_results_p119 USING btree (processed_time);


--
-- Name: feedback_results_p120_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p120_feedback_id_idx ON public.feedback_results_p120 USING btree (feedback_id);


--
-- Name: feedback_results_p120_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p120_organization_id_idx ON public.feedback_results_p120 USING btree (organization_id);


--
-- Name: feedback_results_p120_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p120_processed_time_idx ON public.feedback_results_p120 USING btree (processed_time);


--
-- Name: feedback_results_p121_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p121_feedback_id_idx ON public.feedback_results_p121 USING btree (feedback_id);


--
-- Name: feedback_results_p121_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p121_organization_id_idx ON public.feedback_results_p121 USING btree (organization_id);


--
-- Name: feedback_results_p121_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p121_processed_time_idx ON public.feedback_results_p121 USING btree (processed_time);


--
-- Name: feedback_results_p122_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p122_feedback_id_idx ON public.feedback_results_p122 USING btree (feedback_id);


--
-- Name: feedback_results_p122_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p122_organization_id_idx ON public.feedback_results_p122 USING btree (organization_id);


--
-- Name: feedback_results_p122_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p122_processed_time_idx ON public.feedback_results_p122 USING btree (processed_time);


--
-- Name: feedback_results_p123_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p123_feedback_id_idx ON public.feedback_results_p123 USING btree (feedback_id);


--
-- Name: feedback_results_p123_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p123_organization_id_idx ON public.feedback_results_p123 USING btree (organization_id);


--
-- Name: feedback_results_p123_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p123_processed_time_idx ON public.feedback_results_p123 USING btree (processed_time);


--
-- Name: feedback_results_p124_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p124_feedback_id_idx ON public.feedback_results_p124 USING btree (feedback_id);


--
-- Name: feedback_results_p124_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p124_organization_id_idx ON public.feedback_results_p124 USING btree (organization_id);


--
-- Name: feedback_results_p124_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p124_processed_time_idx ON public.feedback_results_p124 USING btree (processed_time);


--
-- Name: feedback_results_p125_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p125_feedback_id_idx ON public.feedback_results_p125 USING btree (feedback_id);


--
-- Name: feedback_results_p125_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p125_organization_id_idx ON public.feedback_results_p125 USING btree (organization_id);


--
-- Name: feedback_results_p125_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p125_processed_time_idx ON public.feedback_results_p125 USING btree (processed_time);


--
-- Name: feedback_results_p126_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p126_feedback_id_idx ON public.feedback_results_p126 USING btree (feedback_id);


--
-- Name: feedback_results_p126_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p126_organization_id_idx ON public.feedback_results_p126 USING btree (organization_id);


--
-- Name: feedback_results_p126_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p126_processed_time_idx ON public.feedback_results_p126 USING btree (processed_time);


--
-- Name: feedback_results_p127_feedback_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p127_feedback_id_idx ON public.feedback_results_p127 USING btree (feedback_id);


--
-- Name: feedback_results_p127_organization_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p127_organization_id_idx ON public.feedback_results_p127 USING btree (organization_id);


--
-- Name: feedback_results_p127_processed_time_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX feedback_results_p127_processed_time_idx ON public.feedback_results_p127 USING btree (processed_time);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: feedback_results_p000_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p000_feedback_id_idx;


--
-- Name: feedback_results_p000_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p000_organization_id_idx;


--
-- Name: feedback_results_p000_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p000_processed_time_idx;


--
-- Name: feedback_results_p001_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p001_feedback_id_idx;


--
-- Name: feedback_results_p001_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p001_organization_id_idx;


--
-- Name: feedback_results_p001_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p001_processed_time_idx;


--
-- Name: feedback_results_p002_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p002_feedback_id_idx;


--
-- Name: feedback_results_p002_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p002_organization_id_idx;


--
-- Name: feedback_results_p002_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p002_processed_time_idx;


--
-- Name: feedback_results_p003_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p003_feedback_id_idx;


--
-- Name: feedback_results_p003_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p003_organization_id_idx;


--
-- Name: feedback_results_p003_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p003_processed_time_idx;


--
-- Name: feedback_results_p004_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p004_feedback_id_idx;


--
-- Name: feedback_results_p004_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p004_organization_id_idx;


--
-- Name: feedback_results_p004_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p004_processed_time_idx;


--
-- Name: feedback_results_p005_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p005_feedback_id_idx;


--
-- Name: feedback_results_p005_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p005_organization_id_idx;


--
-- Name: feedback_results_p005_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p005_processed_time_idx;


--
-- Name: feedback_results_p006_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p006_feedback_id_idx;


--
-- Name: feedback_results_p006_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p006_organization_id_idx;


--
-- Name: feedback_results_p006_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p006_processed_time_idx;


--
-- Name: feedback_results_p007_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p007_feedback_id_idx;


--
-- Name: feedback_results_p007_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p007_organization_id_idx;


--
-- Name: feedback_results_p007_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p007_processed_time_idx;


--
-- Name: feedback_results_p008_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p008_feedback_id_idx;


--
-- Name: feedback_results_p008_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p008_organization_id_idx;


--
-- Name: feedback_results_p008_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p008_processed_time_idx;


--
-- Name: feedback_results_p009_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p009_feedback_id_idx;


--
-- Name: feedback_results_p009_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p009_organization_id_idx;


--
-- Name: feedback_results_p009_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p009_processed_time_idx;


--
-- Name: feedback_results_p010_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p010_feedback_id_idx;


--
-- Name: feedback_results_p010_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p010_organization_id_idx;


--
-- Name: feedback_results_p010_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p010_processed_time_idx;


--
-- Name: feedback_results_p011_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p011_feedback_id_idx;


--
-- Name: feedback_results_p011_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p011_organization_id_idx;


--
-- Name: feedback_results_p011_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p011_processed_time_idx;


--
-- Name: feedback_results_p012_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p012_feedback_id_idx;


--
-- Name: feedback_results_p012_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p012_organization_id_idx;


--
-- Name: feedback_results_p012_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p012_processed_time_idx;


--
-- Name: feedback_results_p013_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p013_feedback_id_idx;


--
-- Name: feedback_results_p013_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p013_organization_id_idx;


--
-- Name: feedback_results_p013_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p013_processed_time_idx;


--
-- Name: feedback_results_p014_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p014_feedback_id_idx;


--
-- Name: feedback_results_p014_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p014_organization_id_idx;


--
-- Name: feedback_results_p014_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p014_processed_time_idx;


--
-- Name: feedback_results_p015_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p015_feedback_id_idx;


--
-- Name: feedback_results_p015_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p015_organization_id_idx;


--
-- Name: feedback_results_p015_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p015_processed_time_idx;


--
-- Name: feedback_results_p016_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p016_feedback_id_idx;


--
-- Name: feedback_results_p016_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p016_organization_id_idx;


--
-- Name: feedback_results_p016_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p016_processed_time_idx;


--
-- Name: feedback_results_p017_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p017_feedback_id_idx;


--
-- Name: feedback_results_p017_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p017_organization_id_idx;


--
-- Name: feedback_results_p017_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p017_processed_time_idx;


--
-- Name: feedback_results_p018_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p018_feedback_id_idx;


--
-- Name: feedback_results_p018_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p018_organization_id_idx;


--
-- Name: feedback_results_p018_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p018_processed_time_idx;


--
-- Name: feedback_results_p019_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p019_feedback_id_idx;


--
-- Name: feedback_results_p019_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p019_organization_id_idx;


--
-- Name: feedback_results_p019_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p019_processed_time_idx;


--
-- Name: feedback_results_p020_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p020_feedback_id_idx;


--
-- Name: feedback_results_p020_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p020_organization_id_idx;


--
-- Name: feedback_results_p020_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p020_processed_time_idx;


--
-- Name: feedback_results_p021_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p021_feedback_id_idx;


--
-- Name: feedback_results_p021_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p021_organization_id_idx;


--
-- Name: feedback_results_p021_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p021_processed_time_idx;


--
-- Name: feedback_results_p022_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p022_feedback_id_idx;


--
-- Name: feedback_results_p022_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p022_organization_id_idx;


--
-- Name: feedback_results_p022_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p022_processed_time_idx;


--
-- Name: feedback_results_p023_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p023_feedback_id_idx;


--
-- Name: feedback_results_p023_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p023_organization_id_idx;


--
-- Name: feedback_results_p023_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p023_processed_time_idx;


--
-- Name: feedback_results_p024_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p024_feedback_id_idx;


--
-- Name: feedback_results_p024_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p024_organization_id_idx;


--
-- Name: feedback_results_p024_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p024_processed_time_idx;


--
-- Name: feedback_results_p025_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p025_feedback_id_idx;


--
-- Name: feedback_results_p025_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p025_organization_id_idx;


--
-- Name: feedback_results_p025_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p025_processed_time_idx;


--
-- Name: feedback_results_p026_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p026_feedback_id_idx;


--
-- Name: feedback_results_p026_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p026_organization_id_idx;


--
-- Name: feedback_results_p026_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p026_processed_time_idx;


--
-- Name: feedback_results_p027_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p027_feedback_id_idx;


--
-- Name: feedback_results_p027_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p027_organization_id_idx;


--
-- Name: feedback_results_p027_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p027_processed_time_idx;


--
-- Name: feedback_results_p028_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p028_feedback_id_idx;


--
-- Name: feedback_results_p028_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p028_organization_id_idx;


--
-- Name: feedback_results_p028_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p028_processed_time_idx;


--
-- Name: feedback_results_p029_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p029_feedback_id_idx;


--
-- Name: feedback_results_p029_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p029_organization_id_idx;


--
-- Name: feedback_results_p029_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p029_processed_time_idx;


--
-- Name: feedback_results_p030_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p030_feedback_id_idx;


--
-- Name: feedback_results_p030_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p030_organization_id_idx;


--
-- Name: feedback_results_p030_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p030_processed_time_idx;


--
-- Name: feedback_results_p031_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p031_feedback_id_idx;


--
-- Name: feedback_results_p031_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p031_organization_id_idx;


--
-- Name: feedback_results_p031_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p031_processed_time_idx;


--
-- Name: feedback_results_p032_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p032_feedback_id_idx;


--
-- Name: feedback_results_p032_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p032_organization_id_idx;


--
-- Name: feedback_results_p032_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p032_processed_time_idx;


--
-- Name: feedback_results_p033_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p033_feedback_id_idx;


--
-- Name: feedback_results_p033_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p033_organization_id_idx;


--
-- Name: feedback_results_p033_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p033_processed_time_idx;


--
-- Name: feedback_results_p034_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p034_feedback_id_idx;


--
-- Name: feedback_results_p034_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p034_organization_id_idx;


--
-- Name: feedback_results_p034_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p034_processed_time_idx;


--
-- Name: feedback_results_p035_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p035_feedback_id_idx;


--
-- Name: feedback_results_p035_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p035_organization_id_idx;


--
-- Name: feedback_results_p035_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p035_processed_time_idx;


--
-- Name: feedback_results_p036_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p036_feedback_id_idx;


--
-- Name: feedback_results_p036_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p036_organization_id_idx;


--
-- Name: feedback_results_p036_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p036_processed_time_idx;


--
-- Name: feedback_results_p037_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p037_feedback_id_idx;


--
-- Name: feedback_results_p037_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p037_organization_id_idx;


--
-- Name: feedback_results_p037_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p037_processed_time_idx;


--
-- Name: feedback_results_p038_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p038_feedback_id_idx;


--
-- Name: feedback_results_p038_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p038_organization_id_idx;


--
-- Name: feedback_results_p038_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p038_processed_time_idx;


--
-- Name: feedback_results_p039_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p039_feedback_id_idx;


--
-- Name: feedback_results_p039_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p039_organization_id_idx;


--
-- Name: feedback_results_p039_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p039_processed_time_idx;


--
-- Name: feedback_results_p040_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p040_feedback_id_idx;


--
-- Name: feedback_results_p040_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p040_organization_id_idx;


--
-- Name: feedback_results_p040_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p040_processed_time_idx;


--
-- Name: feedback_results_p041_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p041_feedback_id_idx;


--
-- Name: feedback_results_p041_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p041_organization_id_idx;


--
-- Name: feedback_results_p041_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p041_processed_time_idx;


--
-- Name: feedback_results_p042_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p042_feedback_id_idx;


--
-- Name: feedback_results_p042_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p042_organization_id_idx;


--
-- Name: feedback_results_p042_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p042_processed_time_idx;


--
-- Name: feedback_results_p043_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p043_feedback_id_idx;


--
-- Name: feedback_results_p043_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p043_organization_id_idx;


--
-- Name: feedback_results_p043_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p043_processed_time_idx;


--
-- Name: feedback_results_p044_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p044_feedback_id_idx;


--
-- Name: feedback_results_p044_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p044_organization_id_idx;


--
-- Name: feedback_results_p044_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p044_processed_time_idx;


--
-- Name: feedback_results_p045_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p045_feedback_id_idx;


--
-- Name: feedback_results_p045_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p045_organization_id_idx;


--
-- Name: feedback_results_p045_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p045_processed_time_idx;


--
-- Name: feedback_results_p046_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p046_feedback_id_idx;


--
-- Name: feedback_results_p046_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p046_organization_id_idx;


--
-- Name: feedback_results_p046_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p046_processed_time_idx;


--
-- Name: feedback_results_p047_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p047_feedback_id_idx;


--
-- Name: feedback_results_p047_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p047_organization_id_idx;


--
-- Name: feedback_results_p047_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p047_processed_time_idx;


--
-- Name: feedback_results_p048_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p048_feedback_id_idx;


--
-- Name: feedback_results_p048_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p048_organization_id_idx;


--
-- Name: feedback_results_p048_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p048_processed_time_idx;


--
-- Name: feedback_results_p049_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p049_feedback_id_idx;


--
-- Name: feedback_results_p049_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p049_organization_id_idx;


--
-- Name: feedback_results_p049_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p049_processed_time_idx;


--
-- Name: feedback_results_p050_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p050_feedback_id_idx;


--
-- Name: feedback_results_p050_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p050_organization_id_idx;


--
-- Name: feedback_results_p050_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p050_processed_time_idx;


--
-- Name: feedback_results_p051_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p051_feedback_id_idx;


--
-- Name: feedback_results_p051_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p051_organization_id_idx;


--
-- Name: feedback_results_p051_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p051_processed_time_idx;


--
-- Name: feedback_results_p052_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p052_feedback_id_idx;


--
-- Name: feedback_results_p052_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p052_organization_id_idx;


--
-- Name: feedback_results_p052_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p052_processed_time_idx;


--
-- Name: feedback_results_p053_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p053_feedback_id_idx;


--
-- Name: feedback_results_p053_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p053_organization_id_idx;


--
-- Name: feedback_results_p053_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p053_processed_time_idx;


--
-- Name: feedback_results_p054_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p054_feedback_id_idx;


--
-- Name: feedback_results_p054_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p054_organization_id_idx;


--
-- Name: feedback_results_p054_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p054_processed_time_idx;


--
-- Name: feedback_results_p055_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p055_feedback_id_idx;


--
-- Name: feedback_results_p055_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p055_organization_id_idx;


--
-- Name: feedback_results_p055_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p055_processed_time_idx;


--
-- Name: feedback_results_p056_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p056_feedback_id_idx;


--
-- Name: feedback_results_p056_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p056_organization_id_idx;


--
-- Name: feedback_results_p056_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p056_processed_time_idx;


--
-- Name: feedback_results_p057_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p057_feedback_id_idx;


--
-- Name: feedback_results_p057_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p057_organization_id_idx;


--
-- Name: feedback_results_p057_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p057_processed_time_idx;


--
-- Name: feedback_results_p058_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p058_feedback_id_idx;


--
-- Name: feedback_results_p058_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p058_organization_id_idx;


--
-- Name: feedback_results_p058_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p058_processed_time_idx;


--
-- Name: feedback_results_p059_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p059_feedback_id_idx;


--
-- Name: feedback_results_p059_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p059_organization_id_idx;


--
-- Name: feedback_results_p059_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p059_processed_time_idx;


--
-- Name: feedback_results_p060_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p060_feedback_id_idx;


--
-- Name: feedback_results_p060_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p060_organization_id_idx;


--
-- Name: feedback_results_p060_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p060_processed_time_idx;


--
-- Name: feedback_results_p061_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p061_feedback_id_idx;


--
-- Name: feedback_results_p061_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p061_organization_id_idx;


--
-- Name: feedback_results_p061_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p061_processed_time_idx;


--
-- Name: feedback_results_p062_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p062_feedback_id_idx;


--
-- Name: feedback_results_p062_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p062_organization_id_idx;


--
-- Name: feedback_results_p062_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p062_processed_time_idx;


--
-- Name: feedback_results_p063_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p063_feedback_id_idx;


--
-- Name: feedback_results_p063_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p063_organization_id_idx;


--
-- Name: feedback_results_p063_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p063_processed_time_idx;


--
-- Name: feedback_results_p064_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p064_feedback_id_idx;


--
-- Name: feedback_results_p064_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p064_organization_id_idx;


--
-- Name: feedback_results_p064_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p064_processed_time_idx;


--
-- Name: feedback_results_p065_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p065_feedback_id_idx;


--
-- Name: feedback_results_p065_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p065_organization_id_idx;


--
-- Name: feedback_results_p065_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p065_processed_time_idx;


--
-- Name: feedback_results_p066_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p066_feedback_id_idx;


--
-- Name: feedback_results_p066_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p066_organization_id_idx;


--
-- Name: feedback_results_p066_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p066_processed_time_idx;


--
-- Name: feedback_results_p067_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p067_feedback_id_idx;


--
-- Name: feedback_results_p067_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p067_organization_id_idx;


--
-- Name: feedback_results_p067_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p067_processed_time_idx;


--
-- Name: feedback_results_p068_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p068_feedback_id_idx;


--
-- Name: feedback_results_p068_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p068_organization_id_idx;


--
-- Name: feedback_results_p068_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p068_processed_time_idx;


--
-- Name: feedback_results_p069_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p069_feedback_id_idx;


--
-- Name: feedback_results_p069_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p069_organization_id_idx;


--
-- Name: feedback_results_p069_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p069_processed_time_idx;


--
-- Name: feedback_results_p070_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p070_feedback_id_idx;


--
-- Name: feedback_results_p070_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p070_organization_id_idx;


--
-- Name: feedback_results_p070_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p070_processed_time_idx;


--
-- Name: feedback_results_p071_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p071_feedback_id_idx;


--
-- Name: feedback_results_p071_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p071_organization_id_idx;


--
-- Name: feedback_results_p071_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p071_processed_time_idx;


--
-- Name: feedback_results_p072_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p072_feedback_id_idx;


--
-- Name: feedback_results_p072_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p072_organization_id_idx;


--
-- Name: feedback_results_p072_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p072_processed_time_idx;


--
-- Name: feedback_results_p073_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p073_feedback_id_idx;


--
-- Name: feedback_results_p073_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p073_organization_id_idx;


--
-- Name: feedback_results_p073_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p073_processed_time_idx;


--
-- Name: feedback_results_p074_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p074_feedback_id_idx;


--
-- Name: feedback_results_p074_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p074_organization_id_idx;


--
-- Name: feedback_results_p074_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p074_processed_time_idx;


--
-- Name: feedback_results_p075_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p075_feedback_id_idx;


--
-- Name: feedback_results_p075_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p075_organization_id_idx;


--
-- Name: feedback_results_p075_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p075_processed_time_idx;


--
-- Name: feedback_results_p076_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p076_feedback_id_idx;


--
-- Name: feedback_results_p076_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p076_organization_id_idx;


--
-- Name: feedback_results_p076_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p076_processed_time_idx;


--
-- Name: feedback_results_p077_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p077_feedback_id_idx;


--
-- Name: feedback_results_p077_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p077_organization_id_idx;


--
-- Name: feedback_results_p077_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p077_processed_time_idx;


--
-- Name: feedback_results_p078_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p078_feedback_id_idx;


--
-- Name: feedback_results_p078_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p078_organization_id_idx;


--
-- Name: feedback_results_p078_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p078_processed_time_idx;


--
-- Name: feedback_results_p079_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p079_feedback_id_idx;


--
-- Name: feedback_results_p079_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p079_organization_id_idx;


--
-- Name: feedback_results_p079_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p079_processed_time_idx;


--
-- Name: feedback_results_p080_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p080_feedback_id_idx;


--
-- Name: feedback_results_p080_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p080_organization_id_idx;


--
-- Name: feedback_results_p080_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p080_processed_time_idx;


--
-- Name: feedback_results_p081_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p081_feedback_id_idx;


--
-- Name: feedback_results_p081_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p081_organization_id_idx;


--
-- Name: feedback_results_p081_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p081_processed_time_idx;


--
-- Name: feedback_results_p082_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p082_feedback_id_idx;


--
-- Name: feedback_results_p082_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p082_organization_id_idx;


--
-- Name: feedback_results_p082_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p082_processed_time_idx;


--
-- Name: feedback_results_p083_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p083_feedback_id_idx;


--
-- Name: feedback_results_p083_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p083_organization_id_idx;


--
-- Name: feedback_results_p083_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p083_processed_time_idx;


--
-- Name: feedback_results_p084_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p084_feedback_id_idx;


--
-- Name: feedback_results_p084_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p084_organization_id_idx;


--
-- Name: feedback_results_p084_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p084_processed_time_idx;


--
-- Name: feedback_results_p085_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p085_feedback_id_idx;


--
-- Name: feedback_results_p085_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p085_organization_id_idx;


--
-- Name: feedback_results_p085_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p085_processed_time_idx;


--
-- Name: feedback_results_p086_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p086_feedback_id_idx;


--
-- Name: feedback_results_p086_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p086_organization_id_idx;


--
-- Name: feedback_results_p086_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p086_processed_time_idx;


--
-- Name: feedback_results_p087_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p087_feedback_id_idx;


--
-- Name: feedback_results_p087_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p087_organization_id_idx;


--
-- Name: feedback_results_p087_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p087_processed_time_idx;


--
-- Name: feedback_results_p088_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p088_feedback_id_idx;


--
-- Name: feedback_results_p088_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p088_organization_id_idx;


--
-- Name: feedback_results_p088_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p088_processed_time_idx;


--
-- Name: feedback_results_p089_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p089_feedback_id_idx;


--
-- Name: feedback_results_p089_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p089_organization_id_idx;


--
-- Name: feedback_results_p089_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p089_processed_time_idx;


--
-- Name: feedback_results_p090_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p090_feedback_id_idx;


--
-- Name: feedback_results_p090_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p090_organization_id_idx;


--
-- Name: feedback_results_p090_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p090_processed_time_idx;


--
-- Name: feedback_results_p091_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p091_feedback_id_idx;


--
-- Name: feedback_results_p091_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p091_organization_id_idx;


--
-- Name: feedback_results_p091_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p091_processed_time_idx;


--
-- Name: feedback_results_p092_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p092_feedback_id_idx;


--
-- Name: feedback_results_p092_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p092_organization_id_idx;


--
-- Name: feedback_results_p092_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p092_processed_time_idx;


--
-- Name: feedback_results_p093_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p093_feedback_id_idx;


--
-- Name: feedback_results_p093_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p093_organization_id_idx;


--
-- Name: feedback_results_p093_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p093_processed_time_idx;


--
-- Name: feedback_results_p094_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p094_feedback_id_idx;


--
-- Name: feedback_results_p094_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p094_organization_id_idx;


--
-- Name: feedback_results_p094_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p094_processed_time_idx;


--
-- Name: feedback_results_p095_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p095_feedback_id_idx;


--
-- Name: feedback_results_p095_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p095_organization_id_idx;


--
-- Name: feedback_results_p095_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p095_processed_time_idx;


--
-- Name: feedback_results_p096_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p096_feedback_id_idx;


--
-- Name: feedback_results_p096_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p096_organization_id_idx;


--
-- Name: feedback_results_p096_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p096_processed_time_idx;


--
-- Name: feedback_results_p097_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p097_feedback_id_idx;


--
-- Name: feedback_results_p097_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p097_organization_id_idx;


--
-- Name: feedback_results_p097_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p097_processed_time_idx;


--
-- Name: feedback_results_p098_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p098_feedback_id_idx;


--
-- Name: feedback_results_p098_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p098_organization_id_idx;


--
-- Name: feedback_results_p098_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p098_processed_time_idx;


--
-- Name: feedback_results_p099_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p099_feedback_id_idx;


--
-- Name: feedback_results_p099_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p099_organization_id_idx;


--
-- Name: feedback_results_p099_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p099_processed_time_idx;


--
-- Name: feedback_results_p100_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p100_feedback_id_idx;


--
-- Name: feedback_results_p100_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p100_organization_id_idx;


--
-- Name: feedback_results_p100_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p100_processed_time_idx;


--
-- Name: feedback_results_p101_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p101_feedback_id_idx;


--
-- Name: feedback_results_p101_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p101_organization_id_idx;


--
-- Name: feedback_results_p101_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p101_processed_time_idx;


--
-- Name: feedback_results_p102_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p102_feedback_id_idx;


--
-- Name: feedback_results_p102_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p102_organization_id_idx;


--
-- Name: feedback_results_p102_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p102_processed_time_idx;


--
-- Name: feedback_results_p103_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p103_feedback_id_idx;


--
-- Name: feedback_results_p103_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p103_organization_id_idx;


--
-- Name: feedback_results_p103_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p103_processed_time_idx;


--
-- Name: feedback_results_p104_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p104_feedback_id_idx;


--
-- Name: feedback_results_p104_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p104_organization_id_idx;


--
-- Name: feedback_results_p104_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p104_processed_time_idx;


--
-- Name: feedback_results_p105_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p105_feedback_id_idx;


--
-- Name: feedback_results_p105_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p105_organization_id_idx;


--
-- Name: feedback_results_p105_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p105_processed_time_idx;


--
-- Name: feedback_results_p106_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p106_feedback_id_idx;


--
-- Name: feedback_results_p106_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p106_organization_id_idx;


--
-- Name: feedback_results_p106_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p106_processed_time_idx;


--
-- Name: feedback_results_p107_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p107_feedback_id_idx;


--
-- Name: feedback_results_p107_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p107_organization_id_idx;


--
-- Name: feedback_results_p107_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p107_processed_time_idx;


--
-- Name: feedback_results_p108_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p108_feedback_id_idx;


--
-- Name: feedback_results_p108_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p108_organization_id_idx;


--
-- Name: feedback_results_p108_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p108_processed_time_idx;


--
-- Name: feedback_results_p109_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p109_feedback_id_idx;


--
-- Name: feedback_results_p109_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p109_organization_id_idx;


--
-- Name: feedback_results_p109_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p109_processed_time_idx;


--
-- Name: feedback_results_p110_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p110_feedback_id_idx;


--
-- Name: feedback_results_p110_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p110_organization_id_idx;


--
-- Name: feedback_results_p110_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p110_processed_time_idx;


--
-- Name: feedback_results_p111_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p111_feedback_id_idx;


--
-- Name: feedback_results_p111_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p111_organization_id_idx;


--
-- Name: feedback_results_p111_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p111_processed_time_idx;


--
-- Name: feedback_results_p112_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p112_feedback_id_idx;


--
-- Name: feedback_results_p112_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p112_organization_id_idx;


--
-- Name: feedback_results_p112_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p112_processed_time_idx;


--
-- Name: feedback_results_p113_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p113_feedback_id_idx;


--
-- Name: feedback_results_p113_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p113_organization_id_idx;


--
-- Name: feedback_results_p113_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p113_processed_time_idx;


--
-- Name: feedback_results_p114_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p114_feedback_id_idx;


--
-- Name: feedback_results_p114_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p114_organization_id_idx;


--
-- Name: feedback_results_p114_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p114_processed_time_idx;


--
-- Name: feedback_results_p115_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p115_feedback_id_idx;


--
-- Name: feedback_results_p115_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p115_organization_id_idx;


--
-- Name: feedback_results_p115_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p115_processed_time_idx;


--
-- Name: feedback_results_p116_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p116_feedback_id_idx;


--
-- Name: feedback_results_p116_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p116_organization_id_idx;


--
-- Name: feedback_results_p116_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p116_processed_time_idx;


--
-- Name: feedback_results_p117_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p117_feedback_id_idx;


--
-- Name: feedback_results_p117_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p117_organization_id_idx;


--
-- Name: feedback_results_p117_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p117_processed_time_idx;


--
-- Name: feedback_results_p118_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p118_feedback_id_idx;


--
-- Name: feedback_results_p118_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p118_organization_id_idx;


--
-- Name: feedback_results_p118_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p118_processed_time_idx;


--
-- Name: feedback_results_p119_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p119_feedback_id_idx;


--
-- Name: feedback_results_p119_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p119_organization_id_idx;


--
-- Name: feedback_results_p119_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p119_processed_time_idx;


--
-- Name: feedback_results_p120_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p120_feedback_id_idx;


--
-- Name: feedback_results_p120_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p120_organization_id_idx;


--
-- Name: feedback_results_p120_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p120_processed_time_idx;


--
-- Name: feedback_results_p121_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p121_feedback_id_idx;


--
-- Name: feedback_results_p121_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p121_organization_id_idx;


--
-- Name: feedback_results_p121_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p121_processed_time_idx;


--
-- Name: feedback_results_p122_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p122_feedback_id_idx;


--
-- Name: feedback_results_p122_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p122_organization_id_idx;


--
-- Name: feedback_results_p122_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p122_processed_time_idx;


--
-- Name: feedback_results_p123_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p123_feedback_id_idx;


--
-- Name: feedback_results_p123_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p123_organization_id_idx;


--
-- Name: feedback_results_p123_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p123_processed_time_idx;


--
-- Name: feedback_results_p124_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p124_feedback_id_idx;


--
-- Name: feedback_results_p124_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p124_organization_id_idx;


--
-- Name: feedback_results_p124_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p124_processed_time_idx;


--
-- Name: feedback_results_p125_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p125_feedback_id_idx;


--
-- Name: feedback_results_p125_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p125_organization_id_idx;


--
-- Name: feedback_results_p125_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p125_processed_time_idx;


--
-- Name: feedback_results_p126_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p126_feedback_id_idx;


--
-- Name: feedback_results_p126_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p126_organization_id_idx;


--
-- Name: feedback_results_p126_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p126_processed_time_idx;


--
-- Name: feedback_results_p127_feedback_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_feedback_id ATTACH PARTITION public.feedback_results_p127_feedback_id_idx;


--
-- Name: feedback_results_p127_organization_id_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_organization_id ATTACH PARTITION public.feedback_results_p127_organization_id_idx;


--
-- Name: feedback_results_p127_processed_time_idx; Type: INDEX ATTACH; Schema: public; Owner: -
--

ALTER INDEX public.index_feedback_results_on_processed_time ATTACH PARTITION public.feedback_results_p127_processed_time_idx;


--
-- Name: feedbacks fk_rails_4ef31a96ce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fk_rails_4ef31a96ce FOREIGN KEY (reported_by_user_id) REFERENCES public.users(id);


--
-- Name: feedback_results fk_rails_79c5176376; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE public.feedback_results
    ADD CONSTRAINT fk_rails_79c5176376 FOREIGN KEY (feedback_id) REFERENCES public.feedbacks(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20250526184054'),
('20250526184028'),
('20250526183957');

