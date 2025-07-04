--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-04 10:11:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 543724)
-- Name: datamart_diversity_conditions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datamart_diversity_conditions (
    country text,
    "Gender" text,
    "Ethnicity" text,
    "MentalHealth" text,
    "Accessibility" text,
    "RemoteWork" text,
    survey_year bigint,
    count_respondents bigint,
    avg_salary double precision,
    remote_ratio double precision
);


ALTER TABLE public.datamart_diversity_conditions OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 543714)
-- Name: datamart_rh_market; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datamart_rh_market (
    ville text,
    domaine text,
    salaire_moyen double precision,
    nombre_offres bigint,
    sources text
);


ALTER TABLE public.datamart_rh_market OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 543698)
-- Name: datamart_salary_by_country_seniority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datamart_salary_by_country_seniority (
    country text,
    seniority_level text,
    avg_salary double precision,
    median_salary double precision,
    count bigint
);


ALTER TABLE public.datamart_salary_by_country_seniority OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 543719)
-- Name: datamart_tech_popularity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datamart_tech_popularity (
    tech_type text,
    technology text,
    status text,
    count bigint
);


ALTER TABLE public.datamart_tech_popularity OWNER TO postgres;

--
-- TOC entry 4854 (class 0 OID 543724)
-- Dependencies: 220
-- Data for Name: datamart_diversity_conditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datamart_diversity_conditions (country, "Gender", "Ethnicity", "MentalHealth", "Accessibility", "RemoteWork", survey_year, count_respondents, avg_salary, remote_ratio) FROM stdin;
Austria	Man	Asian	None of the above	None of the above	Full in-person	2022	1	43670.9	0
Austria	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	46581.990000000005	0
Austria	Man	Black;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	32875.57	0
Austria	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	3	42504.28	0
Austria	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	81518.71	0
Austria	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	38427.48	0
Austria	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48037.990000000005	0
Austria	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	4	210491.19	0
Austria	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	40854.753333333334	0
Austria	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Austria	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	56090.125	0
Austria	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	5	61336.912	0
Austria	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34681.92	0
Austria	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Austria	Man	European	None of the above	I am deaf / hard of hearing	Full in-person	2022	1	45416.28	0
Austria	Man	European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	489106.8	0
Austria	Man	European	None of the above	I am unable to / find it difficult to type;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	5241.6	0
Austria	Man	European	None of the above	None of the above	Full in-person	2022	20	63850.969000000005	0
Austria	Man	European	None of the above	None of the above	Fully remote	2022	38	112283.22368421052	0
Austria	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	115	114678.19208695652	0
Austria	Man	European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	87340.89	0
Austria	Man	European	Or, in your own words:	None of the above	Full in-person	2022	1	74530.82	0
Austria	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Austria	Man	European	Prefer not to say	None of the above	Full in-person	2022	3	40369.420000000006	0
Austria	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	33965.75	0
Austria	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	6	50367.43833333333	0
Austria	Man	European	Prefer not to say	Prefer not to say	Fully remote	2022	1	34933.08	0
Austria	Man	European;African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69877.08	0
Austria	Man	European;Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	69189.12	0
Austria	Man	European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	114660	0
Austria	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65020.41	0
Austria	Man	European;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	145569.06	0
Austria	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	78801.45	0
Austria	Man	European;North African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	558983.88	0
Austria	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	49493.08	0
Austria	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Austria	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	62689.44500000001	0
Austria	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	52890.11	0
Austria	Man	Middle Eastern	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
Austria	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	70843.5	0
Austria	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Austria	Man	Middle Eastern;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Austria	Man	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	37269.96	0
Austria	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Austria	Man	Or, in your own words:	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	31678.920000000002	0
Austria	Man	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	58227.26	0
Austria	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	41921.880000000005	0
Austria	Man	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	116454.52	0
Austria	Man	South American	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Austria	Man	South American	None of the above	None of the above	Fully remote	2022	1	104809.25	0
Austria	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	92499.68	0
Austria	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	605568.6	0
Austria	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Austria	Man	White	None of the above	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Austria	Man	White	None of the above	None of the above	Fully remote	2022	4	97045.8125	0
Austria	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	11	63881.25545454546	0
Austria	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	241837.6566666667	0
Austria	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	36101.520000000004	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	47552.05	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	29113.63	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	47552.05	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	41921.880000000005	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	39403	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	41921.880000000005	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Austria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	41921.880000000005	0
Austria	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	2	49490.805	0
Austria	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	51435.475000000006	0
Austria	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	32702.215	0
Austria	Man	White;European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	34605.48	0
Austria	Man	White;European	None of the above	None of the above	Full in-person	2022	6	137059.19499999998	0
Austria	Man	White;European	None of the above	None of the above	Fully remote	2022	20	107109.4115	0
Austria	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	44	78960.8240909091	0
Austria	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Austria	Man	White;European;Indigenous (such as Native American or Indigenous Australian)	None of the above	None of the above	Fully remote	2022	2	58519.37	0
Austria	Man	White;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Austria	Man	White;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	47552.05	0
Austria	Man	White;North American	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	155273.30000000002	0
Austria	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	43090.32	0
Austria	Man	White;Or, in your own words:;European;Black	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	65215.15	0
Austria	Man;Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	19409.39	0
Austria	Man;Or, in your own words:	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	41921.880000000005	0
Belgium	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	2	38037.090000000004	0
Austria	Or, in your own words:	Or, in your own words:	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	43090.32	0
Austria	Prefer not to say	European	None of the above	Prefer not to say	Fully remote	2022	1	50079.12	0
Austria	Prefer not to say	I don't know	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Austria	Prefer not to say	I don't know	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Austria	Prefer not to say	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Austria	Prefer not to say	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	28533.960000000003	0
Austria	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	2	85036.77	0
Austria	Woman	Asian;Southeast Asian	I have an anxiety disorder;Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	42214.9	0
Austria	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Austria	Woman	European	None of the above	None of the above	Full in-person	2022	1	40764.36	0
Austria	Woman	European	None of the above	None of the above	Fully remote	2022	2	127266.685	0
Austria	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	39402.090000000004	0
Austria	Woman	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Austria	Woman	White;Caribbean	None of the above	None of the above	Full in-person	2022	1	30859.920000000002	0
Austria	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	63718.200000000004	0
Belgium	Man	African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	58853.34	0
Belgium	Man	African;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	49493.08	0
Belgium	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	35906.78	0
Belgium	Man	Asian;Southeast Asian;Biracial	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	36571.08	0
Belgium	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	16882.32	0
Belgium	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	33771.92	0
Belgium	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	41084.073333333334	0
Belgium	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	30281.16	0
Belgium	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Belgium	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	I am unable to / find it difficult to type	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Belgium	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Belgium	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	31438.68	0
Belgium	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Belgium	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Belgium	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	1	25618.32	0
Belgium	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	67932.41	0
Belgium	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
Belgium	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	29112.72	0
Belgium	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	64045.8	0
Belgium	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am unable to / find it difficult to type	Fully remote	2022	1	23467.08	0
Belgium	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	48326.46	0
Belgium	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	145554.5	0
Belgium	Man	European	None of the above	I am deaf / hard of hearing	Fully remote	2022	1	145600	0
Belgium	Man	European	None of the above	None of the above	Full in-person	2022	12	59541.90666666667	0
Belgium	Man	European	None of the above	None of the above	Fully remote	2022	17	74108.31235294118	0
Belgium	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	85	79052.64211764706	0
Belgium	Man	European	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	56521.920000000006	0
Romania	Woman	European	None of the above	None of the above	Fully remote	2022	2	46901.4	0
Belgium	Man	European;African;Black	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	145569.06	0
Belgium	Man	European;Asian;East Asian	None of the above	None of the above	Fully remote	2022	1	58227.26	0
Belgium	Man	European;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	121303	0
Belgium	Man	European;South American;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69872.53	0
Belgium	Man	European;Southeast Asian;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	37269.96	0
Belgium	Man	Hispanic or Latino/a	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	71813.56	0
Belgium	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38427.48	0
Belgium	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	39595.92	0
Belgium	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	47360.04	0
Belgium	Man	Or, in your own words:;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	25498.2	0
Belgium	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	49030.8	0
Belgium	Man	Or, in your own words:;Hispanic or Latino/a;South American;Multiracial	Or, in your own words:	None of the above	Fully remote	2022	1	220103.52000000002	0
Belgium	Man	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Belgium	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	57067.920000000006	0
Belgium	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	368772.95000000007	0
Belgium	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	128583	0
Belgium	Man	South American	None of the above	None of the above	Full in-person	2022	1	52405.08	0
Belgium	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Belgium	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am deaf / hard of hearing	Fully remote	2022	1	33965.75	0
Belgium	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	617209.3200000001	0
Belgium	Man	White	None of the above	None of the above	Full in-person	2022	3	45030.44	0
Belgium	Man	White	None of the above	None of the above	Fully remote	2022	1	59546.76	0
Belgium	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	9	44944.293333333335	0
Belgium	Man	White	Or, in your own words:	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	30173.780000000002	0
Belgium	Man	White	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Belgium	Man	White;Asian;Biracial	None of the above	None of the above	Full in-person	2022	1	23292.36	0
Belgium	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	30281.16	0
Belgium	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	6	36975.12	0
Belgium	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	11640.720000000001	0
Belgium	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	50079.12	0
Belgium	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	115680.565	0
Belgium	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	44640.96	0
Belgium	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	84430.70999999999	0
Belgium	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	25421.760000000002	0
Belgium	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Belgium	Man	White;European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Belgium	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Belgium	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	2	27540.24	0
Belgium	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	43226.82	0
Belgium	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	28293.72	0
Belgium	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	45245.655	0
Belgium	Man	White;European	None of the above	None of the above	Full in-person	2022	6	49364.61833333334	0
Belgium	Man	White;European	None of the above	None of the above	Fully remote	2022	10	80441.543	0
Belgium	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	67	63979.75029850747	0
Belgium	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	192148.32	0
Belgium	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	1	29691.48	0
Belgium	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	1	135863.91	0
Belgium	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	36490.545	0
Belgium	Man	White;European;Hispanic or Latino/a	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	37269.96	0
Belgium	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Belgium	Man	White;European;South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	36855	0
Belgium	Man	White;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	94134.04000000001	0
Belgium	Man	White;Indian;European;North American;Middle Eastern;African;Asian;East Asian;Black;Caribbean;Southeast Asian;Central American;North African;Hispanic or Latino/a;South American;South Asian;Multiracial;Biracial;Indigenous (such as Native American or Indigenous Australian);Pacific Islander;Central Asian	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	1397454.24	0
Belgium	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65214.240000000005	0
Belgium	Man	White;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	57952.44	0
Belgium	Man;Or, in your own words:	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Belgium	Man;Or, in your own words:	White;European	None of the above	None of the above	Fully remote	2022	1	97337.24	0
Belgium	Or, in your own words:	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	46192.51	0
Belgium	Or, in your own words:	Or, in your own words:	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	37269.96	0
Belgium	Prefer not to say	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	27944.280000000002	0
Belgium	Prefer not to say	Prefer not to say	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	26786.760000000002	0
Belgium	Prefer not to say	Prefer not to say	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	75695.62	0
Belgium	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Belgium	Prefer not to say	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	57100.68	0
Belgium	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Belgium	Woman	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	25618.32	0
Belgium	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	43090.32	0
Belgium	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	54345.200000000004	0
Belgium	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	42506.100000000006	0
Belgium	Woman	White;European;Multiracial	None of the above	None of the above	Fully remote	2022	1	38817.87	0
Bulgaria	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	53589.899999999994	0
Bulgaria	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	44662.8	0
Bulgaria	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	100633.26	0
Bulgaria	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	29767.920000000002	0
Bulgaria	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	35730.24	0
Bulgaria	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	41681.64	0
Bulgaria	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	51434.11	0
Bulgaria	Man	European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	104204.1	0
Bulgaria	Man	European	None of the above	None of the above	Full in-person	2022	10	31168.319	0
Bulgaria	Man	European	None of the above	None of the above	Fully remote	2022	46	62103.95891304348	0
Bulgaria	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	35	57150.392	0
Bulgaria	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	13104	0
Bulgaria	Man	European	Prefer not to say	I am unable to / find it difficult to type	Hybrid (some remote, some in-person)	2022	1	47633.04	0
Bulgaria	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	145600	0
Bulgaria	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	19099.08	0
Bulgaria	Man	Indian;European;Asian	I have an anxiety disorder	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	20846.280000000002	0
Bulgaria	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	108544.8	0
Bulgaria	Man	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23816.52	0
Bulgaria	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	16674.84	0
Bulgaria	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	29767.920000000002	0
Bulgaria	Man	Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	43472.520000000004	0
Bulgaria	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	59546.76	0
Bulgaria	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	109756.92	0
Bulgaria	Man	White	None of the above	None of the above	Full in-person	2022	1	35730.24	0
Bulgaria	Man	White	None of the above	None of the above	Fully remote	2022	3	45649.24	0
Bulgaria	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	37648.520000000004	0
Bulgaria	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	124053.02	0
Bulgaria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	17865.12	0
Bulgaria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	32749.08	0
Bulgaria	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	31054.66	0
Bulgaria	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	7141.68	0
Bulgaria	Man	White;European	None of the above	None of the above	Full in-person	2022	5	33371.520000000004	0
Bulgaria	Man	White;European	None of the above	None of the above	Fully remote	2022	15	44245.17066666667	0
Bulgaria	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	15	37319.585333333336	0
Bulgaria	Man	White;European	None of the above	Or, in your own words:	Fully remote	2022	1	67081.56	0
Bulgaria	Man	White;European;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23816.52	0
Bulgaria	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	77350	0
Bulgaria	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	17367.350000000002	0
Bulgaria	Man;Or, in your own words:	European	None of the above	None of the above	Full in-person	2022	1	29772.47	0
Bulgaria	Woman	European	None of the above	None of the above	Fully remote	2022	3	19448.52	0
Bulgaria	Woman	White	I have an anxiety disorder	None of the above	Fully remote	2022	1	14883.960000000001	0
Bulgaria	Woman	White	None of the above	None of the above	Fully remote	2022	1	11913.720000000001	0
Bulgaria	Woman	White;European	None of the above	None of the above	Fully remote	2022	1	13104	0
Bulgaria	Woman	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	45853.08	0
Croatia	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	74725.56	0
Croatia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34037.64	0
Croatia	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	38678.64	0
Croatia	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	116450.88	0
Croatia	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	97471.92	0
Croatia	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	20584.2	0
Croatia	Man	European	None of the above	None of the above	Full in-person	2022	6	22125.74	0
Croatia	Man	European	None of the above	None of the above	Fully remote	2022	15	277154.39266666665	0
Croatia	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	18	41143.27388888889	0
Croatia	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am deaf / hard of hearing;I am blind / have difficulty seeing;I am unable to / find it difficult to type;I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	38678.64	0
Croatia	Man	Or, in your own words:	I have an anxiety disorder	None of the above	Fully remote	2022	1	17788.68	0
Croatia	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	18564	0
Croatia	Man	Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	32487	0
Croatia	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	12066.6	0
Croatia	Man	White	None of the above	None of the above	Full in-person	2022	3	22506.12	0
Croatia	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	29655.08	0
Croatia	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	21665.28	0
Croatia	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	13923	0
Croatia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23205	0
Croatia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	33262.32	0
Croatia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	34037.64	0
Croatia	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38165.4	0
Croatia	Man	White;European	None of the above	None of the above	Full in-person	2022	1	13923	0
Croatia	Man	White;European	None of the above	None of the above	Fully remote	2022	11	43122.08727272727	0
Croatia	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	15	30677.859333333334	0
Croatia	Man	White;European	None of the above	Or, in your own words:	Full in-person	2022	1	40229.28	0
Croatia	Man	White;European	None of the above	Or, in your own words:	Fully remote	2022	1	14469	0
Croatia	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	1	205797.41	0
Croatia	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	2	37485.630000000005	0
Croatia	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	10832.640000000001	0
Croatia	Man	White;North American	None of the above	None of the above	Fully remote	2022	1	9691.5	0
Croatia	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	31722.600000000002	0
Croatia	Man	White;Or, in your own words:;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	32487	0
Croatia	Woman	European	None of the above	None of the above	Fully remote	2022	1	38678.64	0
Croatia	Woman	Or, in your own words:	None of the above	None of the above	Full in-person	2022	1	13060.32	0
Croatia	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	20114.64	0
Croatia	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23980.32	0
Cyprus	Man	Central American;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	93158.52	0
Cyprus	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	67932.41	0
Cyprus	Man	European	None of the above	None of the above	Full in-person	2022	4	40757.99	0
Cyprus	Man	European	None of the above	None of the above	Fully remote	2022	6	115987.38666666667	0
Cyprus	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	43929.64333333333	0
Cyprus	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Cyprus	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Cyprus	Man	White	None of the above	None of the above	Full in-person	2022	1	116450.88	0
Cyprus	Man	White	None of the above	None of the above	Fully remote	2022	3	1006170.9233333333	0
Cyprus	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53573.520000000004	0
Cyprus	Man	White;European	None of the above	None of the above	Full in-person	2022	1	52405.08	0
Cyprus	Man	White;European	None of the above	None of the above	Fully remote	2022	2	73756.41	0
Cyprus	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	23048.480000000003	0
Cyprus	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	1	58225.44	0
Cyprus	Man	White;European;Central Asian	None of the above	None of the above	Fully remote	2022	1	97046.04000000001	0
Cyprus	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48910.68	0
Czech Republic	Man	Asian;Southeast Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	26079.235	0
Czech Republic	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	26011.440000000002	0
Czech Republic	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	56270.76	0
Czech Republic	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	61471.41	0
Czech Republic	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	37826.880000000005	0
Czech Republic	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	37826.880000000005	0
Czech Republic	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	11865.945	0
Czech Republic	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	28370.16	0
Czech Republic	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	25296.18	0
Czech Republic	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	37826.880000000005	0
Czech Republic	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40196.520000000004	0
Czech Republic	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	22702.68	0
Czech Republic	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	14185.08	0
Czech Republic	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	1	32159.4	0
Czech Republic	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	26481	0
Czech Republic	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	36407.28	0
Czech Republic	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	70930.86	0
Czech Republic	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	22702.68	0
Czech Republic	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	118219.01000000001	0
Czech Republic	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	2	43740.06	0
Czech Republic	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	44727.41	0
Czech Republic	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	33098.520000000004	0
Czech Republic	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	70936.32	0
Czech Republic	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	38617.67	0
Czech Republic	Man	European	None of the above	I am deaf / hard of hearing	Fully remote	2022	1	37826.880000000005	0
Czech Republic	Man	European	None of the above	None of the above	Full in-person	2022	16	35321.99125	0
Czech Republic	Man	European	None of the above	None of the above	Fully remote	2022	41	53730.68365853659	0
Czech Republic	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	65	67827.228	0
Czech Republic	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	3	42031.38333333333	0
Czech Republic	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	95550	0
Czech Republic	Man	European	Prefer not to say	Prefer not to say	Fully remote	2022	1	47283.6	0
Czech Republic	Man	European;Asian	Prefer not to say	None of the above	Fully remote	2022	1	174682.69	0
Czech Republic	Man	European;Middle Eastern	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	47283.6	0
Czech Republic	Man	European;North African	None of the above	None of the above	Fully remote	2022	1	37435.58	0
Czech Republic	Man	I don't know	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	85121.40000000001	0
Czech Republic	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	87480.12000000001	0
Czech Republic	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	52011.96	0
Czech Republic	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	9489.480000000001	0
Czech Republic	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	42555.24	0
Czech Republic	Man	Or, in your own words:	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	34518.12	0
Czech Republic	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	55563.69	0
Czech Republic	Man	Or, in your own words:;European;Biracial	None of the above	None of the above	Fully remote	2022	1	109200	0
Czech Republic	Man	Or, in your own words:;European;Hispanic or Latino/a	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	106750.28	0
Czech Republic	Man	South American	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	59011.68	0
Czech Republic	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	73453.38	0
Czech Republic	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am unable to / find it difficult to type	Fully remote	2022	1	42555.24	0
Czech Republic	Man	White	None of the above	None of the above	Full in-person	2022	2	37117.08	0
Czech Republic	Man	White	None of the above	None of the above	Fully remote	2022	5	175041.958	0
Czech Republic	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	8	38892.945	0
Czech Republic	Man	White	Prefer not to say	None of the above	Fully remote	2022	2	44919.42	0
Czech Republic	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	53592.630000000005	0
Czech Republic	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	46584.72	0
Czech Republic	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	17496.57	0
Czech Republic	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	31525.13	0
Czech Republic	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	26011.440000000002	0
Czech Republic	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	85121.40000000001	0
Czech Republic	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	17024.28	0
Czech Republic	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	14185.08	0
Czech Republic	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	28370.16	0
Czech Republic	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	16554.72	0
Czech Republic	Man	White;European	I have an anxiety disorder	None of the above	Full in-person	2022	1	56740.32	0
Czech Republic	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	2	28184.975	0
Czech Republic	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	21752.64	0
Czech Republic	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	23641.8	0
Czech Republic	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	43505.28	0
Czech Republic	Man	White;European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	16554.72	0
Czech Republic	Man	White;European	None of the above	I am deaf / hard of hearing	Fully remote	2022	1	52011.96	0
Czech Republic	Man	White;European	None of the above	I am unable to / find it difficult to type;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	23641.8	0
Czech Republic	Man	White;European	None of the above	None of the above	Full in-person	2022	16	31438.281875	0
Czech Republic	Man	White;European	None of the above	None of the above	Fully remote	2022	34	58114.339705882354	0
Czech Republic	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	37	43672.351081081084	0
Czech Republic	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	37826.880000000005	0
Czech Republic	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	1	30739.8	0
Czech Republic	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	1	42555.24	0
Czech Republic	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	25771.2	0
Czech Republic	Man	White;European;Middle Eastern	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	28370.16	0
Czech Republic	Man	White;Middle Eastern;Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23641.8	0
Czech Republic	Man	White;North American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	378301.56	0
Czech Republic	Man	White;Or, in your own words:;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	37826.880000000005	0
Czech Republic	Man	White;Or, in your own words:;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	9926.28	0
Czech Republic	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	37826.880000000005	0
Czech Republic	Man;Non-binary, genderqueer, or gender non-conforming	Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	66197.04000000001	0
Czech Republic	Man;Or, in your own words:	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	20802.600000000002	0
Czech Republic	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	46115.16	0
Czech Republic	Or, in your own words:	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	22222.2	0
Czech Republic	Prefer not to say	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38307.36	0
Czech Republic	Prefer not to say	European	Prefer not to say	None of the above	Full in-person	2022	1	22222.2	0
Czech Republic	Prefer not to say	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	35468.16	0
Czech Republic	Woman	European	None of the above	None of the above	Full in-person	2022	1	42555.24	0
Czech Republic	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	26011.440000000002	0
Czech Republic	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29113.63	0
Czech Republic	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	63838.32	0
Czech Republic	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	37826.880000000005	0
Czech Republic	Woman	White;European	None of the above	None of the above	Fully remote	2022	2	28370.160000000003	0
Czech Republic	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38820.6	0
Denmark	Man	African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	112738.08	0
Denmark	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	81419.52	0
Denmark	Man	Asian;East Asian	None of the above	None of the above	Full in-person	2022	1	64984.920000000006	0
Denmark	Man	Asian;South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	93950.22	0
Denmark	Man	Ethnoreligious group	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	70696.08	0
Denmark	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	87999.00200000001	0
Denmark	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	22835.54	0
Denmark	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	75162.36	0
Denmark	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	6268.08	0
Denmark	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	97078.8	0
Denmark	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	52459.68000000001	0
Denmark	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	156581.88	0
Denmark	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	46977.840000000004	0
Denmark	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	174720	0
Denmark	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	43057.560000000005	0
Denmark	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	156581.88	0
Denmark	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	140922.6	0
Denmark	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	2	75162.36	0
Denmark	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	288113.28	0
Denmark	Man	European	None of the above	I am blind / have difficulty seeing	Full in-person	2022	1	93955.68000000001	0
Denmark	Man	European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	57941.520000000004	0
Denmark	Man	European	None of the above	None of the above	Full in-person	2022	36	78623.16583333333	0
Denmark	Man	European	None of the above	None of the above	Fully remote	2022	8	233032.80000000002	0
Denmark	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	81	99531.67691358025	0
Denmark	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	130486.72	0
Denmark	Man	European	Or, in your own words:	Or, in your own words:	Full in-person	2022	1	62637.12	0
Denmark	Man	European	Prefer not to say	None of the above	Full in-person	2022	2	38067.12	0
Denmark	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	45405.36	0
Denmark	Man	European;East Asian;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	50887.200000000004	0
Denmark	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	92776.32	0
Denmark	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	86126.04000000001	0
Denmark	Man	European;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	86121.49	0
Denmark	Man	European;Southeast Asian	None of the above	None of the above	Full in-person	2022	1	113000.16	0
Denmark	Man	Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	1	68894.28	0
Denmark	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	116450.88	0
Denmark	Man	Middle Eastern	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	118300	0
Denmark	Man	Middle Eastern	None of the above	None of the above	Full in-person	2022	1	72028.32	0
Denmark	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	101777.585	0
Denmark	Man	Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	176156.89	0
Denmark	Man	Or, in your own words:	None of the above	None of the above	Full in-person	2022	2	68113.5	0
Denmark	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	62637.12	0
Denmark	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	143535.21	0
Denmark	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	100212.84	0
Denmark	Man	Prefer not to say	Prefer not to say	None of the above	Full in-person	2022	1	68894.28	0
Denmark	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	141167.39	0
Denmark	Man	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	145569.06	0
Denmark	Man	South American	None of the above	None of the above	Full in-person	2022	1	78296.40000000001	0
Denmark	Man	South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60023.6	0
Denmark	Man	White	I have an anxiety disorder	I am unable to / find it difficult to type	Fully remote	2022	1	78296.40000000001	0
Denmark	Man	White	I have an anxiety disorder	None of the above	Full in-person	2022	1	86126.04000000001	0
Denmark	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	87687.6	0
Denmark	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	105689.22	0
Denmark	Man	White	None of the above	None of the above	Full in-person	2022	10	84136.59800000001	0
Denmark	Man	White	None of the above	None of the above	Fully remote	2022	1	194091.17	0
Denmark	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	10	85666.308	0
Denmark	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	56369.04	0
Denmark	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	127876.84000000001	0
Denmark	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	69941.38666666667	0
Denmark	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	61064.64	0
Denmark	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	78296.40000000001	0
Denmark	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	112851.83	0
Denmark	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	54804.75	0
Denmark	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	39148.200000000004	0
Denmark	Man	White;European	I have an anxiety disorder	None of the above	Full in-person	2022	2	99426.6	0
Denmark	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	39148.200000000004	0
Denmark	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	50498.630000000005	0
Denmark	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	79857.96	0
Denmark	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	37575.72	0
Denmark	Man	White;European	None of the above	None of the above	Full in-person	2022	16	73066.4025	0
Denmark	Man	White;European	None of the above	None of the above	Fully remote	2022	3	66288.04000000001	0
Denmark	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	51	124077.34019607844	0
Denmark	Man	White;European	None of the above	Or, in your own words:	Full in-person	2022	1	95986.8	0
Denmark	Man	White;European	Or, in your own words:	None of the above	Full in-person	2022	1	68894.28	0
Denmark	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	53235	0
Denmark	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	2	58017.96000000001	0
Denmark	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	43843.8	0
Denmark	Man	White;European;Ethnoreligious group	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65760.24	0
Denmark	Man	White;European;North American	I have an anxiety disorder	None of the above	Full in-person	2022	1	17821.440000000002	0
Denmark	Man	White;Or, in your own words:;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	69158.18000000001	0
Denmark	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	208778.57	0
Denmark	Man	White;Or, in your own words:;European	None of the above	None of the above	Full in-person	2022	3	78816.92	0
Denmark	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	75162.36	0
Denmark	Man	White;Or, in your own words:;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	98651.28	0
Denmark	Man	White;South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;Or, in your own words:;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	86121.49	0
Denmark	Man;Or, in your own words:	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	112738.08	0
Denmark	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	51673.44	0
Denmark	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	156581.88	0
Denmark	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	43057.560000000005	0
Denmark	Woman	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	73589.88	0
Denmark	Woman	European	None of the above	None of the above	Full in-person	2022	2	70461.3	0
Denmark	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	74377.03	0
Denmark	Woman	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	128397.36	0
Denmark	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	61328.54	0
Denmark	Woman	White	Or, in your own words:	Or, in your own words:;I am deaf / hard of hearing;I am blind / have difficulty seeing	Fully remote	2022	1	185399.76	0
Denmark	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	18793.32	0
Denmark	Woman	White;European	None of the above	None of the above	Fully remote	2022	1	70466.76000000001	0
Denmark	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	72028.32	0
Estonia	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	58227.26	0
Estonia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	52983.840000000004	0
Estonia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Estonia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Estonia	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	20616.96	0
Estonia	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Estonia	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Estonia	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	54731.04	0
Estonia	Man	European	None of the above	None of the above	Full in-person	2022	4	48424.285	0
Estonia	Man	European	None of the above	None of the above	Fully remote	2022	8	69316.17875	0
Estonia	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	19	54487.54315789474	0
Estonia	Man	European	Prefer not to say	None of the above	Full in-person	2022	1	19797.96	0
Estonia	Man	European;Asian;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	87338.16	0
Estonia	Man	Hispanic or Latino/a	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Estonia	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	45416.28	0
Estonia	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	41343.12	0
Estonia	Man	Middle Eastern;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	33775.56	0
Estonia	Man	Or, in your own words:	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	106743	0
Estonia	Man	South Asian	None of the above	None of the above	Full in-person	2022	1	145569.06	0
Estonia	Man	South Asian	None of the above	None of the above	Fully remote	2022	1	135863.91	0
Estonia	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Estonia	Man	White	None of the above	None of the above	Full in-person	2022	1	51236.64	0
Estonia	Man	White	None of the above	None of the above	Fully remote	2022	1	60551.4	0
Estonia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	35906.78	0
Estonia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	27944.280000000002	0
Estonia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	49105.42	0
Estonia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Estonia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Estonia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	29112.72	0
Estonia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	50079.12	0
Estonia	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	85399.86	0
Estonia	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	29112.72	0
Estonia	Man	White;European	None of the above	None of the above	Full in-person	2022	2	36276.240000000005	0
Estonia	Man	White;European	None of the above	None of the above	Fully remote	2022	6	58243.791666666664	0
Estonia	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	8	50472.695	0
Estonia	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	3	57683.08000000001	0
Estonia	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	74529	0
Estonia	Man;Or, in your own words:	Or, in your own words:	I have an anxiety disorder	None of the above	Fully remote	2022	1	46584.72	0
Estonia	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	65505.44	0
Estonia	Woman	European	None of the above	None of the above	Fully remote	2022	1	67540.2	0
Estonia	Woman	Hispanic or Latino/a;South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	26202.54	0
Estonia	Woman	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	63467.04	0
Estonia	Woman	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	93158.52	0
Estonia	Woman	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Estonia	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	27944.280000000002	0
Estonia	Woman	White;European	Or, in your own words:	None of the above	Full in-person	2022	1	34933.08	0
Estonia	Woman	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Finland	Man	Asian;South Asian	None of the above	None of the above	Fully remote	2022	1	51236.64	0
Finland	Man	Asian;Southeast Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Finland	Man	Caribbean;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	52405.08	0
Finland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	48523.020000000004	0
Finland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	471645.72	0
Finland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Finland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	69877.08	0
Finland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	2	52405.08	0
Finland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	65760.24	0
Finland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	39595.92	0
Finland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	43374.24	0
Finland	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	48523.020000000004	0
Finland	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	46000.5	0
Finland	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	58033.43	0
Finland	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	162456.84	0
Finland	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	500758.44	0
Finland	Man	European	None of the above	None of the above	Full in-person	2022	6	173639.52666666667	0
Finland	Man	European	None of the above	None of the above	Fully remote	2022	17	75573.19823529413	0
Finland	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	49	60802.22571428571	0
Finland	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	59393.880000000005	0
Finland	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	4	37073.4	0
Finland	Man	European;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	61719.840000000004	0
Finland	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	62888.28	0
Finland	Man	I don't know	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Finland	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	139743.24	0
Finland	Man	Indian;South Asian	Prefer not to say	Prefer not to say	Full in-person	2022	1	48523.020000000004	0
Finland	Man	Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	64045.8	0
Finland	Man	Middle Eastern	None of the above	None of the above	Full in-person	2022	1	25618.32	0
Finland	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	49624.12	0
Finland	Man	North African	None of the above	None of the above	Fully remote	2022	1	67932.41	0
Finland	Man	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69877.08	0
Finland	Man	Or, in your own words:	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	59623.200000000004	0
Finland	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	51236.64	0
Finland	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Finland	Man	Or, in your own words:	Prefer not to say	None of the above	Fully remote	2022	1	67932.41	0
Finland	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	61719.840000000004	0
Finland	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53573.520000000004	0
Finland	Man	Prefer not to say	Prefer not to say	Prefer not to say	Full in-person	2022	1	97046.04000000001	0
Finland	Man	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Finland	Man	South Asian	None of the above	None of the above	Fully remote	2022	1	44247.840000000004	0
Finland	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Finland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	78023.40000000001	0
Finland	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	37269.96	0
Finland	Man	White	None of the above	None of the above	Full in-person	2022	2	32257.68	0
Finland	Man	White	None of the above	None of the above	Fully remote	2022	2	67931.04500000001	0
Finland	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	7	50484.46000000001	0
Finland	Man	White	None of the above	Or, in your own words:	Full in-person	2022	1	48523.020000000004	0
Finland	Man	White	Prefer not to say	None of the above	Full in-person	2022	1	53375.14	0
Finland	Man	White;African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	30859.920000000002	0
Finland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	60329.66333333333	0
Finland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	59393.880000000005	0
Finland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	58225.44	0
Finland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	55123.9325	0
Finland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	55462.68	0
Finland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	69877.08	0
Finland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	48132.32666666667	0
Finland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	34933.08	0
Finland	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	3	65410.80000000001	0
Finland	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	43521.66	0
Finland	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	44247.840000000004	0
Finland	Man	White;European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	82686.24	0
Finland	Man	White;European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	2	41517.84	0
Finland	Man	White;European	None of the above	None of the above	Full in-person	2022	1	61719.840000000004	0
Finland	Man	White;European	None of the above	None of the above	Fully remote	2022	19	56113.71315789474	0
Finland	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	39	74246.36333333333	0
Finland	Man	White;European;Asian	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	54501.72	0
Finland	Man	White;European;Asian;East Asian;Biracial	Or, in your own words:	None of the above	Fully remote	2022	1	82488.77	0
Finland	Man	White;North American	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Finland	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	50079.12	0
Finland	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	37521.12	0
Finland	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Finland	Man	White;Or, in your own words:;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	45416.28	0
Finland	Man;Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Fully remote	2022	1	87340.89	0
Finland	Man;Or, in your own words:	White;Or, in your own words:;European;Multiracial	None of the above	None of the above	Fully remote	2022	1	65020.41	0
Finland	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	64195.950000000004	0
Finland	Non-binary, genderqueer, or gender non-conforming	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	64045.8	0
Finland	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Finland	Prefer not to say	Biracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	32607.120000000003	0
Finland	Prefer not to say	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	64045.8	0
Finland	Prefer not to say	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Finland	Prefer not to say	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	640501.68	0
Finland	Prefer not to say	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Finland	Prefer not to say	Prefer not to say	Prefer not to say	None of the above	Full in-person	2022	1	29112.72	0
Finland	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	2	40275.235	0
Finland	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Finland	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Prefer not to say	Fully remote	2022	1	64045.8	0
Finland	Woman	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	47742.240000000005	0
Finland	Woman	European	None of the above	None of the above	Fully remote	2022	1	22320.48	0
Finland	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	45257.94	0
Finland	Woman	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	64045.8	0
Finland	Woman	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	36101.520000000004	0
Finland	Woman	White	None of the above	None of the above	Fully remote	2022	1	58227.26	0
Finland	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	50079.12	0
Finland	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	1281003.36	0
Finland	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53573.520000000004	0
Finland	Woman	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38427.48	0
Finland	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	44952.18	0
Finland	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	698727.12	0
Finland	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	39788.840000000004	0
France	Man	African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	145554.5	0
France	Man	African	None of the above	None of the above	Full in-person	2022	1	42699.93	0
France	Man	African	None of the above	None of the above	Fully remote	2022	1	58227.26	0
France	Man	African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	10	101510.682	0
France	Man	African	Prefer not to say	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	49493.08	0
France	Man	African	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
France	Man	African	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	4192373.64	0
France	Man	African;Black	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	36877.75	0
France	Man	African;Black	None of the above	None of the above	Fully remote	2022	1	53371.5	0
France	Man	African;Black	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	33626.32	0
France	Man	African;North African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	146732.04	0
France	Man	African;North African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	55316.17	0
France	Man	African;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
France	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	775766.3550000001	0
France	Man	Asian;East Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	19797.96	0
France	Man	Asian;East Asian;Southeast Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	42699.93	0
France	Man	Asian;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60168.29	0
France	Man	Biracial	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	121303	0
France	Man	Biracial	None of the above	None of the above	Full in-person	2022	2	25813.515	0
France	Man	Black	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29113.63	0
France	Man	Black	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	11640.720000000001	0
France	Man	Black	None of the above	None of the above	Full in-person	2022	1	41729.87	0
France	Man	Black	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	51510.732	0
France	Man	Black;Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	24286.08	0
France	Man	Caribbean	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	675434.76	0
France	Man	Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	48036.17	0
France	Man	Caribbean;Multiracial	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	41729.87	0
France	Man	Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Man	East Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
France	Man	Ethnoreligious group;Multiracial	None of the above	None of the above	Full in-person	2022	1	27948.83	0
France	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	48523.020000000004	0
France	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	6	62757.08833333334	0
France	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	49918.778000000006	0
France	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Prefer not to say	Fully remote	2022	1	63079.380000000005	0
France	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	30266.600000000002	0
France	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	46584.72	0
France	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	2	39740.155	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	58227.26	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	52161.200000000004	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	80198.3	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	4	185600.415	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	38817.87	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	56286.23	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	43670.59666666667	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	26786.760000000002	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	48523.020000000004	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	35981.4	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	20966.4	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	40758.9	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	582276.24	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
France	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	22713.600000000002	0
France	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	4	31250.309999999998	0
France	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	6	53149.763333333336	0
France	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	7	52958.619999999995	0
France	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Full in-person	2022	2	38230.92	0
France	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	48523.020000000004	0
France	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	34936.72	0
France	Man	European	I have an anxiety disorder;Or, in your own words:	None of the above	Fully remote	2022	1	46581.99	0
France	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	3	37781.07666666667	0
France	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	47553.87	0
France	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	8	41851.01375	0
France	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	23871.120000000003	0
France	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	6	74014.84999999999	0
France	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	9	91761.77111111111	0
France	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	34933.08	0
France	Man	Prefer not to say	Prefer not to say	Prefer not to say	Full in-person	2022	1	48523.020000000004	0
France	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	38817.87	0
France	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	126159.67	0
France	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	3	714898.4266666666	0
France	Man	European	None of the above	I am deaf / hard of hearing	Full in-person	2022	1	21350.420000000002	0
France	Man	European	None of the above	I am unable to / find it difficult to type;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	44247.840000000004	0
France	Man	European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	43670.9	0
France	Man	European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	2	109176.795	0
France	Man	European	None of the above	None of the above	Full in-person	2022	73	51011.88246575343	0
France	Man	European	None of the above	None of the above	Fully remote	2022	127	116459.34228346458	0
France	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	346	77100.01563583815	0
France	Man	European	None of the above	Or, in your own words:	Fully remote	2022	1	32024.72	0
France	Man	European	None of the above	Or, in your own words:;I am blind / have difficulty seeing	Fully remote	2022	1	57257.200000000004	0
France	Man	European	None of the above	Prefer not to say	Fully remote	2022	1	48910.68	0
France	Man	European	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	26202.54	0
France	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	45611.93	0
France	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	4	34208.72	0
France	Man	European	Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
France	Man	European	Prefer not to say	None of the above	Full in-person	2022	4	36306.497500000005	0
France	Man	European	Prefer not to say	None of the above	Fully remote	2022	4	77366.15250000001	0
France	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	7	54952.82	0
France	Man	European	Prefer not to say	Prefer not to say	Full in-person	2022	1	34936.72	0
France	Man	European	Prefer not to say	Prefer not to say	Fully remote	2022	1	29113.63	0
France	Man	European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	3	38625.86	0
France	Man	European;African	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	40758.9	0
France	Man	European;African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	41729.87	0
France	Man	European;African	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	79577.68000000001	0
France	Man	European;African;Biracial	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	82488.77	0
France	Man	European;African;Black;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
France	Man	European;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	55315.86666666667	0
France	Man	European;Asian	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	470673.385	0
France	Man	European;Asian;Biracial	None of the above	None of the above	Fully remote	2022	1	58227.26	0
France	Man	European;Asian;Central American	None of the above	None of the above	Fully remote	2022	1	58227.26	0
France	Man	European;Biracial	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	53375.14	0
France	Man	European;Biracial	None of the above	None of the above	Fully remote	2022	1	69872.53	0
France	Man	European;Black	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60168.29	0
France	Man	European;Hispanic or Latino/a	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	50100.05	0
France	Man	European;Middle Eastern	I have an anxiety disorder	None of the above	Fully remote	2022	1	29112.72	0
France	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40758.9	0
France	Man	European;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	87340.89	0
France	Man	European;Multiracial	None of the above	None of the above	Full in-person	2022	1	31054.66	0
France	Man	European;North African	None of the above	None of the above	Fully remote	2022	1	133451.5	0
France	Man	European;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	67607.54	0
France	Man	European;North African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	43185.415	0
France	Man	European;North African;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	50464.05	0
France	Man	European;Pacific Islander	None of the above	None of the above	Fully remote	2022	1	345694.44	0
France	Man	European;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
France	Man	Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	18629.52	0
France	Man	Hispanic or Latino/a	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
France	Man	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	92193.92	0
France	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	49978.565	0
France	Man	Hispanic or Latino/a;South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	75695.62	0
France	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	64050.350000000006	0
France	Man	I don't know	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	25618.32	0
France	Man	I don't know	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Man	I don't know	None of the above	None of the above	Fully remote	2022	2	71815.38	0
France	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	6	41765.511666666665	0
France	Man	Indian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
France	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	68891.095	0
France	Man	Indian	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
France	Man	Indian;Asian;South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
France	Man	Indian;South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	17468.36	0
France	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	1164527	0
France	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	41277.145000000004	0
France	Man	Middle Eastern;African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
France	Man	Middle Eastern;Ethnoreligious group;African	None of the above	None of the above	Fully remote	2022	1	116454.52	0
France	Man	Middle Eastern;Multiracial;Biracial	None of the above	None of the above	Fully remote	2022	1	30281.16	0
France	Man	Middle Eastern;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
France	Man	Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	86371.285	0
France	Man	North African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	53375.14	0
France	Man	North African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Man	North African	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	45611.93	0
France	Man	North African	None of the above	None of the above	Full in-person	2022	2	27571.635000000002	0
France	Man	North African	None of the above	None of the above	Fully remote	2022	2	56286.685	0
France	Man	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	20	51816.401	0
France	Man	North American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
France	Man	Or, in your own words:	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	67932.41	0
France	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	77636.65000000001	0
France	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	59197.866	0
France	Man	Or, in your own words:	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	29113.63	0
France	Man	Or, in your own words:;European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Man	Or, in your own words:;European;Caribbean;Biracial	None of the above	None of the above	Fully remote	2022	1	77636.65000000001	0
France	Man	Or, in your own words:;European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69872.53	0
France	Man	Or, in your own words:;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	50464.05	0
France	Man	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	31054.66	0
France	Man	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
France	Man	Prefer not to say	None of the above	None of the above	Full in-person	2022	1	33965.75	0
France	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	4	56408.8525	0
France	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	9	51056.25777777778	0
France	Man	Prefer not to say	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
France	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	40758.9	0
France	Man	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	3	85724.12333333334	0
France	Man	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	7	103056.45999999999	0
France	Man	South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23063.04	0
France	Man	South American	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
France	Man	South Asian	None of the above	None of the above	Fully remote	2022	1	183416.87	0
France	Man	South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
France	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	20966.4	0
France	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Fully remote	2022	1	87340.89	0
France	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	63079.380000000005	0
France	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	28533.960000000003	0
France	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	38817.87	0
France	Man	White	I have an anxiety disorder	None of the above	Fully remote	2022	1	605568.6	0
France	Man	White	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	1164552.48	0
France	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	50464.05	0
France	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	465814.44	0
France	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	68902.47	0
France	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	17472	0
France	Man	White	None of the above	None of the above	Full in-person	2022	3	72602.83333333333	0
France	Man	White	None of the above	None of the above	Fully remote	2022	8	158427.70125	0
France	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	23	67305.38043478261	0
France	Man	White	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	87340.89	0
France	Man	White	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	40764.36	0
France	Man	White	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	41921.880000000005	0
France	Man	White;Caribbean;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	30281.16	0
France	Man	White;Central American;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	77470.12000000001	0
France	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	2	22129.38	0
France	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	3	35065.636666666665	0
France	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	45223.178	0
France	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	547343.16	0
France	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am unable to / find it difficult to type;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	2	43184.96	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	2	32025.175000000003	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	2	62109.32000000001	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	6	49105.420000000006	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	Prefer not to say	Fully remote	2022	1	62594.35	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	92001	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	174682.69	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	36100.61	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	31054.66	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	388183.25	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	109200	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	72784.53	0
France	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Man	White;European	I have an anxiety disorder	None of the above	Full in-person	2022	3	33686.683333333334	0
France	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	3	130041.12333333334	0
France	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	3	64244.786666666674	0
France	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	32024.72	0
France	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	104807.43	0
France	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	46905.04	0
France	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	69877.08	0
France	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	52403.26	0
France	Man	White;European	None of the above	I am blind / have difficulty seeing	Full in-person	2022	1	34936.72	0
France	Man	White;European	None of the above	None of the above	Full in-person	2022	28	40989.195	0
France	Man	White;European	None of the above	None of the above	Fully remote	2022	39	73501.81999999999	0
France	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	122	77874.16745901639	0
France	Man	White;European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	45416.28	0
France	Man	White;European	None of the above	Prefer not to say	Fully remote	2022	1	69872.53	0
France	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	4	32704.945	0
France	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	1	131981.85	0
France	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	3	58162.65	0
France	Man	White;European;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48859.72	0
France	Man	White;European;Asian;Biracial	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	29113.63	0
France	Man	White;European;Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Man	White;European;East Asian;Multiracial	None of the above	None of the above	Fully remote	2022	1	174682.69	0
France	Man	White;European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	41729.87	0
France	Man	White;European;Hispanic or Latino/a	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	20540.52	0
France	Man	White;European;Hispanic or Latino/a;South American	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	6643	0
France	Man	White;European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Man	White;European;Middle Eastern;Ethnoreligious group	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	37847.81	0
France	Man	White;European;North African	None of the above	None of the above	Fully remote	2022	1	58227.26	0
France	Man	White;European;North American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
France	Man	White;European;North American	None of the above	None of the above	Fully remote	2022	1	163800	0
France	Man	White;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23696.4	0
France	Man	White;Middle Eastern;Biracial	None of the above	None of the above	Fully remote	2022	1	242614.19	0
France	Man	White;North African	None of the above	None of the above	Full in-person	2022	1	29113.63	0
France	Man	White;Or, in your own words:;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	41729.87	0
France	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	276581.76	0
France	Man	White;Or, in your own words:;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	11640.720000000001	0
France	Man	White;South American	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	38817.87	0
France	Man	White;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	41343.12	0
France	Man;Non-binary, genderqueer, or gender non-conforming	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
France	Man;Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Fully remote	2022	1	139743.24	0
France	Man;Non-binary, genderqueer, or gender non-conforming	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	82488.77	0
France	Man;Non-binary, genderqueer, or gender non-conforming	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	31056.48	0
France	Man;Or, in your own words:	Prefer not to say	None of the above	Or, in your own words:	Fully remote	2022	1	48523.020000000004	0
France	Man;Or, in your own words:	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	42700.385	0
France	Non-binary, genderqueer, or gender non-conforming	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	67932.41	0
France	Non-binary, genderqueer, or gender non-conforming	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
France	Non-binary, genderqueer, or gender non-conforming	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	11645.27	0
France	Non-binary, genderqueer, or gender non-conforming	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32028.36	0
France	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Full in-person	2022	1	42699.93	0
France	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Fully remote	2022	1	60168.29	0
France	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	34935.81	0
France	Non-binary, genderqueer, or gender non-conforming	European	Prefer not to say	None of the above	Fully remote	2022	1	37847.81	0
France	Non-binary, genderqueer, or gender non-conforming	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	18400.2	0
France	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	149240	0
France	Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	33775.56	0
France	Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
France	Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	34807.80333333334	0
France	Or, in your own words:	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	39595.92	0
France	Or, in your own words:	European	Or, in your own words:	Or, in your own words:	Full in-person	2022	1	34933.08	0
France	Or, in your own words:	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	84429.8	0
France	Or, in your own words:	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
France	Or, in your own words:	White;European	Prefer not to say	Prefer not to say	Fully remote	2022	1	47940.62	0
France	Prefer not to say	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	54345.200000000004	0
France	Prefer not to say	Prefer not to say	None of the above	None of the above	Full in-person	2022	1	11640.720000000001	0
France	Prefer not to say	Prefer not to say	None of the above	None of the above	Fully remote	2022	2	57347.29	0
France	Prefer not to say	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	80547.74	0
France	Prefer not to say	Prefer not to say	Prefer not to say	None of the above	Fully remote	2022	1	56286.23	0
France	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	46584.72	0
France	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	3	45934.98	0
France	Prefer not to say	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	60168.29	0
France	Woman	African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	44447.130000000005	0
France	Woman	Biracial	None of the above	None of the above	Fully remote	2022	1	58227.26	0
France	Woman	Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Woman	Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	36877.75	0
France	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	28141.446666666667	0
Germany	Man	European	Or, in your own words:	None of the above	Full in-person	2022	1	23292.36	0
France	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	25847.64	0
France	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	37847.81	0
France	Woman	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	34934.9	0
France	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	70843.5	0
France	Woman	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	17472	0
France	Woman	European	None of the above	None of the above	Full in-person	2022	1	31438.68	0
France	Woman	European	None of the above	None of the above	Fully remote	2022	2	68902.47	0
France	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	7	44267.47000000001	0
France	Woman	European;Asian;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	13977.6	0
France	Woman	European;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Woman	European;North African;Biracial	Prefer not to say	None of the above	Fully remote	2022	1	53375.14	0
France	Woman	Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	1	29113.63	0
France	Woman	Hispanic or Latino/a;South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
France	Woman	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
France	Woman	Prefer not to say	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	55316.17	0
France	Woman	Prefer not to say	Prefer not to say	None of the above	Full in-person	2022	1	31054.66	0
France	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
France	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	40758.9	0
France	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	35577.36	0
France	Woman	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	18629.52	0
France	Woman	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	43670.9	0
France	Woman	White;European	None of the above	None of the above	Full in-person	2022	1	33965.75	0
France	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	34703.76	0
France	Woman	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
France	Woman	White;European;African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60168.29	0
France	Woman	White;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
France	Woman;Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Prefer not to say	Fully remote	2022	1	26786.760000000002	0
France	Woman;Non-binary, genderqueer, or gender non-conforming	White;European;North African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	529871.16	0
Germany	Man	African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	78606.10333333333	0
Germany	Man	African;Black	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69872.53	0
Germany	Man	Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
Germany	Man	Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	96560.1	0
Germany	Man	Asian	None of the above	None of the above	Full in-person	2022	1	5820.360000000001	0
Germany	Man	Asian	None of the above	None of the above	Fully remote	2022	4	75501.335	0
Germany	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	61730.5325	0
Germany	Man	Asian	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Germany	Man	Asian	Prefer not to say	Prefer not to say	Fully remote	2022	1	97046.04000000001	0
Germany	Man	Asian;East Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	87340.89	0
Germany	Man	Asian;East Asian;Southeast Asian;South Asian	None of the above	None of the above	Fully remote	2022	1	58225.44	0
Germany	Man	Asian;South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	82489.225	0
Germany	Man	Asian;Southeast Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Germany	Man	Asian;Southeast Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	454661.48000000004	0
Germany	Man	Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	65990.925	0
Germany	Man	Black;Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	97046.04000000001	0
Germany	Man	Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Germany	Man	Caribbean;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	85399.86	0
Germany	Man	Central American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60168.29	0
Germany	Man	Central American;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	61313.37333333333	0
Germany	Man	Central Asian	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Germany	Man	Central Asian	None of the above	None of the above	Full in-person	2022	1	43670.9	0
Germany	Man	Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	84914.83	0
Germany	Man	East Asian	None of the above	None of the above	Full in-person	2022	1	21370.440000000002	0
Germany	Man	East Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	39852.54	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	51236.64	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	2	40275.235	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	19	89344.75789473683	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	20	114603.853	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Fully remote	2022	2	451264.905	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	89281.92	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	29113.63	0
Germany	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	87340.89	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	10483.2	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	7	45971.25	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	24	56664.67625	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	36	96282.77750000001	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	50079.12	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	Or, in your own words:;I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	45416.28	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	2	36162.945	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	6	246011.37166666667	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	217927.346	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	46583.354999999996	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48037.08	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	2	388107.72	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	49493.08	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	6	59100.86000000001	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	12	116826.255	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	65505.895000000004	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	49429.68333333333	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	72299.04500000001	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	419240.64	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	46584.72	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	40764.36	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	45335.745	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	40764.36	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	41149.29	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Germany	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	36586.55	0
Germany	Man	European	I have an anxiety disorder	I am deaf / hard of hearing;I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	111602.40000000001	0
Germany	Man	European	I have an anxiety disorder	I am unable to / find it difficult to type	Fully remote	2022	1	66961.44	0
Germany	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	3	48264.27666666667	0
Germany	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	9	51886.683333333334	0
Germany	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	16	98100.786875	0
Germany	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Germany	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	95767.945	0
Germany	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Germany	Man	European	I have an anxiety disorder;Or, in your own words:	None of the above	Full in-person	2022	1	41921.880000000005	0
Germany	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	2	32314.555	0
Germany	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	5	275882.516	0
Germany	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	7	178378.46000000002	0
Germany	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	2	60653.77500000001	0
Germany	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	54539.030000000006	0
Germany	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	6	60653.47166666667	0
Germany	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	2	30955.47	0
Germany	Man	European	None of the above	I am blind / have difficulty seeing;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	197968.68	0
Germany	Man	European	None of the above	I am deaf / hard of hearing	Fully remote	2022	2	110632.34	0
Germany	Man	European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	3	70680.91333333333	0
Germany	Man	European	None of the above	I am unable to / find it difficult to type	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Germany	Man	European	None of the above	None of the above	Full in-person	2022	101	70125.55504950495	0
Germany	Man	European	None of the above	None of the above	Fully remote	2022	403	122601.99677419355	0
Germany	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	633	112090.35695102686	0
Germany	Man	European	None of the above	Or, in your own words:	Fully remote	2022	1	65991.38	0
Germany	Man	European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Germany	Man	European	None of the above	Or, in your own words:;I am unable to / find it difficult to type	Fully remote	2022	1	38817.87	0
Germany	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	160125.42	0
Germany	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	2	47552.05	0
Germany	Man	European	Prefer not to say	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	38427.48	0
Germany	Man	European	Prefer not to say	I am deaf / hard of hearing	Fully remote	2022	1	53375.14	0
Germany	Man	European	Prefer not to say	None of the above	Full in-person	2022	4	39156.39	0
Germany	Man	European	Prefer not to say	None of the above	Fully remote	2022	12	74466.74083333333	0
Germany	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	28	145436.46	0
Germany	Man	European	Prefer not to say	Prefer not to say	Full in-person	2022	1	25618.32	0
Germany	Man	European	Prefer not to say	Prefer not to say	Fully remote	2022	4	61139.0325	0
Germany	Man	European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	5	69097.392	0
Germany	Man	European;African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	26786.760000000002	0
Germany	Man	European;African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	95541.81	0
Germany	Man	European;African;Black	None of the above	None of the above	Fully remote	2022	1	81518.71	0
Germany	Man	European;Asian	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	58227.26	0
Germany	Man	European;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	74725.56	0
Germany	Man	European;Caribbean;Central American;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	71813.56	0
Germany	Man	European;Caribbean;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	79577.68000000001	0
Germany	Man	European;East Asian	None of the above	None of the above	Fully remote	2022	1	67932.41	0
Germany	Man	European;East Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	31438.68	0
Germany	Man	European;East Asian;Biracial	None of the above	None of the above	Fully remote	2022	1	62815.48	0
Germany	Man	European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	111602.40000000001	0
Germany	Man	European;Hispanic or Latino/a	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	135863.91	0
Germany	Man	European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	61139.26	0
Germany	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69877.08	0
Germany	Man	European;Middle Eastern	None of the above	None of the above	Fully remote	2022	4	76059.62	0
Germany	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	242905.39	0
Germany	Man	European;Middle Eastern;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Fully remote	2022	1	80547.74	0
Germany	Man	European;Middle Eastern;Multiracial;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	45611.93	0
Germany	Man	European;Multiracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	97046.04000000001	0
Germany	Man	European;Multiracial	None of the above	None of the above	Fully remote	2022	1	77636.65000000001	0
Germany	Man	European;Multiracial	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	61139.26	0
Germany	Man	European;Multiracial;Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Germany	Man	European;North American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Germany	Man	European;North American	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	53375.14	0
Germany	Man	European;Pacific Islander	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	11640.720000000001	0
Germany	Man	European;South American	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	46584.72	0
Germany	Man	European;Southeast Asian	None of the above	None of the above	Fully remote	2022	1	9314.76	0
Germany	Man	European;Southeast Asian;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65995.02	0
Germany	Man	Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	908347.4400000001	0
Germany	Man	Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	1	82488.77	0
Germany	Man	Hispanic or Latino/a	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	63079.380000000005	0
Germany	Man	Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	2	21388.64	0
Germany	Man	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	10	64865.528000000006	0
Germany	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	95832.32750000001	0
Germany	Man	Hispanic or Latino/a;South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Germany	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	82488.77	0
Germany	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Germany	Man	I don't know	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	312167.31	0
Germany	Man	I don't know	None of the above	None of the above	Fully remote	2022	5	70183.022	0
Germany	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	570630.97	0
Germany	Man	I don't know	Prefer not to say	None of the above	Fully remote	2022	1	40758.9	0
Germany	Man	I don't know	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Germany	Man	I don't know	Prefer not to say	Prefer not to say	Fully remote	2022	1	52405.08	0
Germany	Man	Indian	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	106750.28	0
Germany	Man	Indian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	88505.69	0
Germany	Man	Indian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	51434.11	0
Germany	Man	Indian	None of the above	None of the above	Full in-person	2022	3	377442.8233333333	0
Germany	Man	Indian	None of the above	None of the above	Fully remote	2022	4	73512.985	0
Germany	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	22	175758.39272727273	0
Germany	Man	Indian	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	43090.32	0
Germany	Man	Indian;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69877.08	0
Germany	Man	Indian;Asian	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Germany	Man	Indian;Asian;Southeast Asian;South Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Germany	Man	Indian;European;African;Black;Multiracial	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	46775.82	0
Germany	Man	Indian;South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	64049.895000000004	0
Germany	Man	Indian;South Asian	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Germany	Man	Middle Eastern	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	49331.706666666665	0
Germany	Man	Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	268573.9875	0
Germany	Man	Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	60551.4	0
Germany	Man	Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	65991.38	0
Germany	Man	Middle Eastern	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	10483.2	0
Germany	Man	Middle Eastern	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	59198.23	0
Germany	Man	Middle Eastern	None of the above	None of the above	Full in-person	2022	3	54538.12	0
Germany	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	12	63866.7575	0
Germany	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	16	67750.06875	0
Germany	Man	Middle Eastern	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Germany	Man	Middle Eastern;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60168.29	0
Germany	Man	Multiracial	None of the above	None of the above	Fully remote	2022	1	72800	0
Germany	Man	Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	344513.26	0
Germany	Man	North African	I have an anxiety disorder	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Germany	Man	North African	I have an anxiety disorder	None of the above	Fully remote	2022	1	45611.93	0
Germany	Man	North African	None of the above	None of the above	Fully remote	2022	3	252319.6433333333	0
Germany	Man	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	69134.065	0
Germany	Man	North American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
Germany	Man	North American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
Germany	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Germany	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	41729.87	0
Germany	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	69877.08	0
Germany	Man	Or, in your own words:	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Germany	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	5	188461.00000000003	0
Germany	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	7	64757.549999999996	0
Germany	Man	Or, in your own words:	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	95105.01000000001	0
Germany	Man	Or, in your own words:	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	56286.23	0
Germany	Man	Or, in your own words:	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Germany	Man	Or, in your own words:	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	53573.520000000004	0
Germany	Man	Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	64373.4	0
Germany	Man	Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	50079.12	0
Germany	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	81518.71	0
Germany	Man	Or, in your own words:;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	2	67251.73	0
Germany	Man	Or, in your own words:;European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	32024.72	0
Germany	Man	Or, in your own words:;Middle Eastern	None of the above	None of the above	Full in-person	2022	1	50464.05	0
Germany	Man	Or, in your own words:;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	102484.2	0
Germany	Man	Prefer not to say	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	72784.53	0
Germany	Man	Prefer not to say	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Germany	Man	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	77636.65000000001	0
Germany	Man	Prefer not to say	I have an anxiety disorder	None of the above	Fully remote	2022	1	82488.77	0
Germany	Man	Prefer not to say	None of the above	None of the above	Full in-person	2022	1	36295.35	0
Germany	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	5	89475.932	0
Germany	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	6	88667.82166666667	0
Germany	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	47554.78	0
Germany	Man	Prefer not to say	Prefer not to say	Prefer not to say	Full in-person	2022	1	698727.12	0
Germany	Man	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	4	86397.675	0
Germany	Man	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	3	112250.92666666668	0
Germany	Man	South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	72784.53	0
Germany	Man	South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Germany	Man	South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	838470.36	0
Germany	Man	South American	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	64536.745	0
Germany	Man	South American	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Germany	Man	South American	None of the above	None of the above	Fully remote	2022	5	352469.208	0
Germany	Man	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	14	81754.075	0
Germany	Man	South American;Multiracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	90252.89	0
Germany	Man	South American;Multiracial	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	78602.16	0
Germany	Man	South Asian	None of the above	None of the above	Fully remote	2022	1	64050.350000000006	0
Germany	Man	South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	75697.44	0
Germany	Man	Southeast Asian	None of the above	None of the above	Full in-person	2022	1	34936.72	0
Germany	Man	Southeast Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65991.38	0
Germany	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	4	58469.32	0
Germany	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	70520.75333333334	0
Germany	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Germany	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	145569.06	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	2	26398.645	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	55251.256666666675	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	52405.08	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	30278.43	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	3	78931.58	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	73269.56	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	24455.34	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	64050.350000000006	0
Germany	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	37847.81	0
Germany	Man	White	I have an anxiety disorder	None of the above	Fully remote	2022	1	74725.56	0
Germany	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	92193.92	0
Germany	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	681266.04	0
Germany	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	37269.96	0
Germany	Man	White	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	77636.65000000001	0
Germany	Man	White	None of the above	None of the above	Full in-person	2022	6	60135.378333333334	0
Germany	Man	White	None of the above	None of the above	Fully remote	2022	26	170177.73500000002	0
Germany	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	43	84429.37674418605	0
Germany	Man	White	None of the above	Or, in your own words:	Fully remote	2022	1	74725.56	0
Germany	Man	White	Prefer not to say	None of the above	Fully remote	2022	1	106750.28	0
Germany	Man	White	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	60551.4	0
Germany	Man	White;African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	67931.955	0
Germany	Man	White;Black;Multiracial;Biracial	None of the above	None of the above	Fully remote	2022	1	67932.41	0
Germany	Man	White;Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	44247.840000000004	0
Germany	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	3	48894.90666666667	0
Germany	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	10	84805.357	0
Germany	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	13	139371.47	0
Germany	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	57742.23	0
Germany	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	58260.475000000006	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	64050.350000000006	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	9314.76	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	2	37058.84	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	13	59584.49	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	14	55081	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	Or, in your own words:	Fully remote	2022	1	12616.24	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am deaf / hard of hearing;I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	46581.99	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	3	101898.15999999999	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	284585.665	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	50464.05	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	4	57645.0875	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	7	152361.56	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	8157.240000000001	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	3	247141.44000000003	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29691.48	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Fully remote	2022	1	77636.65000000001	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	56632.03	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	37847.81	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	7087.08	0
Germany	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	143221.26	0
Germany	Man	White;European	I have an anxiety disorder	None of the above	Full in-person	2022	1	58227.26	0
Germany	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	3	52728.73666666667	0
Germany	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	6	39594.85833333334	0
Germany	Man	White;European	I have an anxiety disorder	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	780244.92	0
Germany	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	121303	0
Germany	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	76124.23	0
Germany	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Full in-person	2022	1	12809.16	0
Germany	Man	White;European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	13802.880000000001	0
Germany	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am deaf / hard of hearing;I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Germany	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	2	53376.505000000005	0
Germany	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	4	80595.515	0
Germany	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	10	47961.823	0
Germany	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	3	62756.33000000001	0
Germany	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	61876.724	0
Germany	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	2	47356.855	0
Germany	Man	White;European	None of the above	None of the above	Full in-person	2022	37	53026.24108108108	0
Germany	Man	White;European	None of the above	None of the above	Fully remote	2022	173	130445.08092485549	0
Germany	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	235	93399.74744680851	0
Germany	Man	White;European	None of the above	Or, in your own words:	Full in-person	2022	2	34890.31	0
Germany	Man	White;European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	2	77636.65	0
Germany	Man	White;European	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	40109.16	0
Germany	Man	White;European	Or, in your own words:	None of the above	Full in-person	2022	1	56128.8	0
Germany	Man	White;European	Or, in your own words:	None of the above	Fully remote	2022	4	58130.11750000001	0
Germany	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	3	44369.78	0
Germany	Man	White;European	Prefer not to say	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	8736	0
Germany	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	2	50463.595	0
Germany	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	2	1187839.3800000001	0
Germany	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	9	151866.4622222222	0
Germany	Man	White;European	Prefer not to say	Prefer not to say	Full in-person	2022	1	70843.5	0
Germany	Man	White;European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	2	48330.555	0
Germany	Man	White;European;Asian	None of the above	None of the above	Fully remote	2022	1	38817.87	0
Germany	Man	White;European;Asian;Biracial	None of the above	None of the above	Fully remote	2022	1	1164552.48	0
Germany	Man	White;European;Asian;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Germany	Man	White;European;Ethnoreligious group	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	55899.48	0
Germany	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	1	116454.52	0
Germany	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	2	57138.44500000001	0
Germany	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	54345.200000000004	0
Germany	Man	White;European;Hispanic or Latino/a;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Germany	Man	White;European;Middle Eastern	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	55024.97	0
Germany	Man	White;European;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	51919.14	0
Germany	Man	White;European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	388182.79500000004	0
Germany	Man	White;European;Middle Eastern;Biracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	567152.04	0
Germany	Man	White;European;Middle Eastern;Biracial	None of the above	None of the above	Fully remote	2022	1	72784.53	0
Germany	Man	White;European;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	73269.56	0
Germany	Man	White;European;North American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Germany	Man	White;European;North American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	72784.53	0
Germany	Man	White;European;North American	None of the above	None of the above	Full in-person	2022	1	52405.08	0
Germany	Man	White;European;North American	None of the above	None of the above	Fully remote	2022	1	67932.41	0
Germany	Man	White;European;South American	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Germany	Man	White;European;South American	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	87340.89	0
Germany	Man	White;European;South American	None of the above	None of the above	Fully remote	2022	2	57259.020000000004	0
Germany	Man	White;European;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	126159.67	0
Germany	Man	White;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	87340.89	0
Germany	Man	White;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Germany	Man	White;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	87340.89	0
Germany	Man	White;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Germany	Man	White;Middle Eastern	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	69872.53	0
Germany	Man	White;Middle Eastern	None of the above	None of the above	Full in-person	2022	1	43090.32	0
Germany	Man	White;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	815188.92	0
Germany	Man	White;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	67835.04000000001	0
Germany	Man	White;Middle Eastern;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Germany	Man	White;Middle Eastern;Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Germany	Man	White;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	58227.26	0
Germany	Man	White;North American	None of the above	None of the above	Fully remote	2022	3	64439.83000000001	0
Germany	Man	White;Or, in your own words:;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	135863.91	0
Germany	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	40764.36	0
Germany	Man	White;Or, in your own words:;European	None of the above	None of the above	Full in-person	2022	1	67932.41	0
Germany	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	3	79591.93666666666	0
Germany	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	65344.97666666666	0
Germany	Man	White;South American	I have an anxiety disorder	None of the above	Fully remote	2022	1	63079.380000000005	0
Germany	Man	White;South American	None of the above	None of the above	Full in-person	2022	1	145569.06	0
Germany	Man	White;South American;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Germany	Man	White;South American;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	75695.62	0
Germany	Man	White;South Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Germany	Man;Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Fully remote	2022	2	65021.32	0
Germany	Man;Non-binary, genderqueer, or gender non-conforming	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	56335.37	0
Germany	Man;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	139743.24	0
Germany	Man;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	63079.380000000005	0
Germany	Man;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	77636.65000000001	0
Germany	Man;Non-binary, genderqueer, or gender non-conforming	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	70843.5	0
Germany	Man;Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Fully remote	2022	1	33965.75	0
Germany	Man;Or, in your own words:	Or, in your own words:	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	37269.96	0
Germany	Man;Or, in your own words:	Or, in your own words:;European	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	128102.52	0
Germany	Man;Or, in your own words:	White;European	None of the above	None of the above	Fully remote	2022	1	75695.62	0
Germany	Man;Or, in your own words:;Non-binary, genderqueer, or gender non-conforming	I don't know	Prefer not to say	I am blind / have difficulty seeing	Full in-person	2022	1	31766.280000000002	0
Germany	Non-binary, genderqueer, or gender non-conforming	Ethnoreligious group;Multiracial	I have an anxiety disorder	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	160125.42	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	29112.72	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	40764.36	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	30084.600000000002	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	75695.62	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	63079.380000000005	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	45416.28	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	39595.92	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	44155.93	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	77636.65000000001	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Fully remote	2022	1	55316.17	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	55037.71000000001	0
Germany	Non-binary, genderqueer, or gender non-conforming	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	65991.38	0
Germany	Non-binary, genderqueer, or gender non-conforming	European;Asian;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	49493.08	0
Germany	Non-binary, genderqueer, or gender non-conforming	European;North American	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	71813.56	0
Germany	Non-binary, genderqueer, or gender non-conforming	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	70843.5	0
Germany	Non-binary, genderqueer, or gender non-conforming	I don't know	None of the above	None of the above	Fully remote	2022	1	46581.99	0
Germany	Non-binary, genderqueer, or gender non-conforming	Multiracial	None of the above	None of the above	Fully remote	2022	1	79577.68000000001	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	77151.62	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	41244.840000000004	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	12809.16	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	67540.2	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	1	41923.700000000004	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	39595.92	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48329.19	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Full in-person	2022	1	29113.63	0
Germany	Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Germany	Or, in your own words:	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	89281.92	0
Germany	Or, in your own words:	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Germany	Or, in your own words:	European;Black;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
Germany	Or, in your own words:	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Germany	Or, in your own words:	Or, in your own words:	Or, in your own words:	None of the above	Fully remote	2022	1	48523.020000000004	0
Germany	Or, in your own words:	Or, in your own words:	Or, in your own words:	Or, in your own words:	Fully remote	2022	1	72784.53	0
Germany	Or, in your own words:	Or, in your own words:;European	Or, in your own words:	None of the above	Fully remote	2022	1	93158.52	0
Germany	Or, in your own words:	White;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	74725.56	0
Germany	Or, in your own words:;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	39825.24	0
Germany	Prefer not to say	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	698727.12	0
Germany	Prefer not to say	European	None of the above	None of the above	Full in-person	2022	1	67932.41	0
Germany	Prefer not to say	European	None of the above	None of the above	Fully remote	2022	1	48523.020000000004	0
Germany	Prefer not to say	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	24066.315000000002	0
Germany	Prefer not to say	European	Prefer not to say	None of the above	Full in-person	2022	1	58225.44	0
Germany	Prefer not to say	European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	77636.65000000001	0
Germany	Prefer not to say	Multiracial	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	56286.23	0
Germany	Prefer not to say	Prefer not to say	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	69872.53	0
Germany	Prefer not to say	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	873414.36	0
Germany	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	3	394974.88333333336	0
Germany	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	7	55844.229999999996	0
Germany	Prefer not to say	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	26786.760000000002	0
Germany	Prefer not to say	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	26786.760000000002	0
Germany	Woman	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Germany	Woman	Central American;Hispanic or Latino/a	Or, in your own words:	None of the above	Fully remote	2022	1	63079.380000000005	0
Germany	Woman	Central Asian	None of the above	None of the above	Full in-person	2022	1	43670.9	0
Germany	Woman	East Asian;South American;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	73754.59	0
Germany	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	42699.93	0
Germany	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	75697.44	0
Greece	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	75697.44	0
Germany	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	53930.9225	0
Germany	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	47163.48	0
Germany	Woman	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Germany	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	58225.44	0
Germany	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	77636.65000000001	0
Germany	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	31880.940000000002	0
Germany	Woman	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	53375.14	0
Germany	Woman	European	None of the above	None of the above	Full in-person	2022	1	16303.560000000001	0
Germany	Woman	European	None of the above	None of the above	Fully remote	2022	8	128052.35625000001	0
Germany	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	18	93962.6061111111	0
Germany	Woman	European	Prefer not to say	None of the above	Fully remote	2022	1	42699.93	0
Germany	Woman	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	54830.685	0
Germany	Woman	European;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	50464.05	0
Germany	Woman	Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Germany	Woman	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Germany	Woman	Hispanic or Latino/a;South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40758.9	0
Germany	Woman	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48331.92	0
Germany	Woman	I don't know	Prefer not to say	None of the above	Fully remote	2022	1	64923.950000000004	0
Germany	Woman	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	58550.916666666664	0
Germany	Woman	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	96269.81	0
Germany	Woman	South Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	77636.65000000001	0
Germany	Woman	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	82488.77	0
Germany	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	45416.28	0
Germany	Woman	White	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	34933.08	0
Germany	Woman	White	None of the above	None of the above	Fully remote	2022	4	86127.86	0
Germany	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	59154.095	0
Germany	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	169851.5	0
Germany	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	61374.04	0
Germany	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	87340.89	0
Germany	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Germany	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	24455.34	0
Germany	Woman	White;European	I have an anxiety disorder	None of the above	Full in-person	2022	1	36391.81	0
Germany	Woman	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	77636.65000000001	0
Germany	Woman	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	52503.815	0
Germany	Woman	White;European	None of the above	None of the above	Fully remote	2022	4	45631.495	0
Germany	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	9	64481.083333333336	0
Germany	Woman	White;European	None of the above	Prefer not to say	Fully remote	2022	1	46584.72	0
Germany	Woman	White;European	Prefer not to say	None of the above	Fully remote	2022	1	46581.99	0
Germany	Woman	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
Germany	Woman	White;European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Germany	Woman	White;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32752.72	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	34933.08	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	40758.9	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	37265.41	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	44160.48	0
Germany	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	47742.240000000005	0
Greece	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	14557.27	0
Greece	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	18051.215	0
Greece	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Greece	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	8157.240000000001	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	9314.76	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	83144.88	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	1	33965.75	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	6988.8	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	576455.88	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	17472	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Greece	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	8151.780000000001	0
Greece	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	1	17472	0
Greece	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	2	22901.06	0
Greece	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	22014.72	0
Greece	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	46584.72	0
Greece	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	2	16692.13	0
Greece	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	2	16157.050000000001	0
Greece	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	4	146232.45	0
Greece	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Greece	Man	European	None of the above	None of the above	Full in-person	2022	12	21213.2375	0
Greece	Man	European	None of the above	None of the above	Fully remote	2022	68	71555.9630882353	0
Greece	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	58	64430.71431034483	0
Greece	Man	European	Or, in your own words:	None of the above	Fully remote	2022	3	28466.620000000006	0
Greece	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	2	8037.12	0
Greece	Man	European	Prefer not to say	None of the above	Full in-person	2022	1	15135.12	0
Greece	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	106750.28	0
Greece	Man	European;African	None of the above	None of the above	Fully remote	2022	1	58227.26	0
Greece	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	116454.52	0
Greece	Man	European;Multiracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Greece	Man	Multiracial	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Greece	Man	Or, in your own words:	None of the above	None of the above	Full in-person	2022	1	18629.52	0
Greece	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	11640.720000000001	0
Greece	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	51885.925	0
Greece	Man	Or, in your own words:	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	20966.4	0
Greece	Man	Prefer not to say	None of the above	None of the above	Full in-person	2022	1	38817.87	0
Greece	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	69872.53	0
Greece	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	97046.04000000001	0
Greece	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	19797.96	0
Greece	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	40758.9	0
Greece	Man	White	None of the above	None of the above	Full in-person	2022	2	261536.275	0
Greece	Man	White	None of the above	None of the above	Fully remote	2022	3	278309.85000000003	0
Greece	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	82813.33666666667	0
Greece	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	116450.88	0
Greece	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	15527.33	0
Greece	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	111600.58	0
Greece	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	37362.78	0
Greece	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	20966.4	0
Greece	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	20966.4	0
Greece	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	25231.57	0
Greece	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Greece	Man	White;European	None of the above	None of the above	Full in-person	2022	5	25941.188000000002	0
Greece	Man	White;European	None of the above	None of the above	Fully remote	2022	23	48008.395217391306	0
Greece	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	14	121341.285	0
Greece	Man	White;European	Or, in your own words:	None of the above	Fully remote	2022	1	53375.14	0
Greece	Man	White;European;Ethnoreligious group	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	7218.12	0
Greece	Man	White;European;Ethnoreligious group;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	11548.81	0
Greece	Man	White;European;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
Greece	Man	White;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	7917	0
Greece	Man	White;North American	None of the above	Or, in your own words:	Fully remote	2022	1	145569.06	0
Greece	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	19409.39	0
Greece	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	116454.52	0
Greece	Prefer not to say	White;European	Prefer not to say	None of the above	Fully remote	2022	1	32024.72	0
Greece	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
Greece	Woman	European	I have an anxiety disorder	None of the above	Full in-person	2022	2	14266.98	0
Greece	Woman	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Greece	Woman	European	None of the above	None of the above	Fully remote	2022	4	16982.6475	0
Greece	Woman	Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	6639.360000000001	0
Greece	Woman	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	17759.56	0
Greece	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	20966.4	0
Greece	Woman	White;European	None of the above	None of the above	Fully remote	2022	2	28044.835	0
Greece	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	21738.08	0
Hungary	Man	White;European	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	30466.8	0
Hungary	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	36560.16	0
Greece	Woman;Non-binary, genderqueer, or gender non-conforming	Or, in your own words:;European;Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	104810.16	0
Hungary	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	50772.54	0
Hungary	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	873411.63	0
Hungary	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	2	38418.38	0
Hungary	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	40365.78	0
Hungary	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	30463.16	0
Hungary	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	24067.68	0
Hungary	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	6093.360000000001	0
Hungary	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	21326.760000000002	0
Hungary	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	32749.08	0
Hungary	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	47429.200000000004	0
Hungary	Man	European	I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	14774.76	0
Hungary	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	6346.34	0
Hungary	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	28179.06	0
Hungary	Man	European	None of the above	None of the above	Full in-person	2022	8	22751.82	0
Hungary	Man	European	None of the above	None of the above	Fully remote	2022	52	66150.28	0
Hungary	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	53	36679.40433962265	0
Hungary	Man	European	None of the above	Or, in your own words:	Fully remote	2022	1	21021	0
Hungary	Man	European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	23150.4	0
Hungary	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	23456.16	0
Hungary	Man	European	Prefer not to say	None of the above	Full in-person	2022	1	81517.8	0
Hungary	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	126931.35	0
Hungary	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	31242.120000000003	0
Hungary	Man	European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	127400	0
Hungary	Man	Hispanic or Latino/a;Multiracial	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	25891.32	0
Hungary	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	39606.840000000004	0
Hungary	Man	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	27420.120000000003	0
Hungary	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	22844.64	0
Hungary	Man	Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	28916.16	0
Hungary	Man	Prefer not to say	None of the above	None of the above	Full in-person	2022	1	42653.520000000004	0
Hungary	Man	White	None of the above	None of the above	Fully remote	2022	2	111453.61499999999	0
Hungary	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60922.68	0
Hungary	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	5820.360000000001	0
Hungary	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	21632.52	0
Hungary	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	13704.6	0
Hungary	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	21326.760000000002	0
Hungary	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	4	30403.555	0
Hungary	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	3	27824.160000000003	0
Hungary	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	9140.04	0
Hungary	Man	White;European	None of the above	None of the above	Full in-person	2022	3	23863.84	0
Hungary	Man	White;European	None of the above	None of the above	Fully remote	2022	22	40460.25454545455	0
Hungary	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	29	29382.613448275864	0
Hungary	Man	White;South American	None of the above	None of the above	Fully remote	2022	1	43156.75	0
Hungary	Man	White;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	60922.68	0
Hungary	Man;Or, in your own words:	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	13398.84	0
Hungary	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	45700.200000000004	0
Hungary	Or, in your own words:	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	91000	0
Hungary	Or, in your own words:	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	31067.4	0
Hungary	Or, in your own words:	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	38811.5	0
Hungary	Prefer not to say	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	22844.64	0
Hungary	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	58225.44	0
Hungary	Woman	European	None of the above	None of the above	Full in-person	2022	1	11269.44	0
Hungary	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	24984.96	0
Ireland	Man	Asian	None of the above	None of the above	Fully remote	2022	2	640503.5	0
Ireland	Man	Asian;East Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Ireland	Man	Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	32995.69	0
Ireland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	54588.17	0
Ireland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	25231.57	0
Ireland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	1281003.36	0
Ireland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	118395.55	0
Ireland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	538603.065	0
Ireland	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	69872.53	0
Ireland	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	791891.1000000001	0
Ireland	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	1222777.92	0
Ireland	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	135863.91	0
Ireland	Man	European	None of the above	None of the above	Full in-person	2022	1	43670.9	0
Ireland	Man	European	None of the above	None of the above	Fully remote	2022	22	147295.12318181817	0
Ireland	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	13	280923.93	0
Ireland	Man	European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	1222777.92	0
Ireland	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Ireland	Man	Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	391285.44	0
Ireland	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	71814.01500000001	0
Ireland	Man	Indian	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	73948.875	0
Ireland	Man	Indian	None of the above	None of the above	Fully remote	2022	1	72784.53	0
Ireland	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	121307.55	0
Ireland	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	2	647781.68	0
Ireland	Man	Or, in your own words:;South Asian	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	213500.56	0
Ireland	Man	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Ireland	Man	South American	None of the above	None of the above	Fully remote	2022	2	643124.2999999999	0
Ireland	Man	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	6	65489.363333333335	0
Ireland	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	65990.925	0
Ireland	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Ireland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	3	64995.536666666674	0
Ireland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	63079.380000000005	0
Ireland	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	32995.69	0
Ireland	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	140716.03	0
Ireland	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	131011.79000000001	0
Ireland	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Ireland	Man	White	None of the above	None of the above	Full in-person	2022	3	44014.880000000005	0
Ireland	Man	White	None of the above	None of the above	Fully remote	2022	9	219803.92777777778	0
Ireland	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	18	205175.3238888889	0
Ireland	Man	White;African	None of the above	None of the above	Fully remote	2022	1	145569.06	0
Ireland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	40758.9	0
Ireland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	501234.37	0
Ireland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	51434.11	0
Ireland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	49493.08	0
Ireland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	2	72784.075	0
Ireland	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	45611.93	0
Ireland	Man	White;European	I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Ireland	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	1059742.32	0
Ireland	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	81518.71	0
Ireland	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	1164552.48	0
Ireland	Man	White;European	None of the above	None of the above	Full in-person	2022	2	328012.23	0
Ireland	Man	White;European	None of the above	None of the above	Fully remote	2022	21	268241.3066666667	0
Ireland	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	18	162594.25	0
Ireland	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	81518.71	0
Ireland	Man	White;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Ireland	Man	White;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	72784.53	0
Ireland	Man	White;Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	493911.60000000003	0
Ireland	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	2	111602.85500000001	0
Ireland	Man;Or, in your own words:	White;Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	39788.840000000004	0
Ireland	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	2	50949.08	0
Ireland	Woman	White	None of the above	None of the above	Full in-person	2022	1	33965.75	0
Ireland	Woman	White	None of the above	None of the above	Fully remote	2022	1	169829.66	0
Ireland	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	107720.34	0
Ireland	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am deaf / hard of hearing	Fully remote	2022	1	99957.13	0
Ireland	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	97046.04000000001	0
Ireland	Woman	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	79577.68000000001	0
Ireland	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	1281003.36	0
Italy	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	209620.32	0
Italy	Man	Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Italy	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	2	17077.515	0
Italy	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	4	179802.80500000002	0
Italy	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	30569.175	0
Italy	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	489106.8	0
Italy	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Italy	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	63079.380000000005	0
Italy	Man	European;Central American	None of the above	None of the above	Fully remote	2022	1	16303.560000000001	0
Italy	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	29113.63	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	2	53375.14000000001	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	8	119608.125	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	13158.6	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	2	32413.29	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	38817.87	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	4	97968.0975	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	53375.14	0
Italy	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	29113.63	0
Italy	Man	European	I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	1	39788.840000000004	0
Italy	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	1	27172.600000000002	0
Italy	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	6	31240.755	0
Italy	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	9	65776.82222222222	0
Italy	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	17468.36	0
Italy	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	21835.45	0
Italy	Man	European	I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Italy	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	524050.80000000005	0
Italy	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	6988.8	0
Italy	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	709279.935	0
Italy	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	51627.485	0
Italy	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	2	66961.44	0
Italy	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	45611.93	0
Italy	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	31346.77	0
Italy	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	8736	0
Italy	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	21350.420000000002	0
Italy	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	2	31539.690000000002	0
Italy	Man	European	None of the above	I am deaf / hard of hearing	Fully remote	2022	2	22612.135000000002	0
Italy	Man	European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	279486.48	0
Italy	Man	European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	407589	0
Italy	Man	European	None of the above	None of the above	Full in-person	2022	70	84462.729	0
Italy	Man	European	None of the above	None of the above	Fully remote	2022	132	178782.17106060608	0
Italy	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	206	96529.57966019417	0
Italy	Man	European	None of the above	Or, in your own words:	Fully remote	2022	1	39595.92	0
Italy	Man	European	None of the above	Prefer not to say	Full in-person	2022	2	27850.095	0
Italy	Man	European	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	37847.81	0
Italy	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	3	33318.43666666667	0
Italy	Man	European	Prefer not to say	None of the above	Full in-person	2022	2	24939.005	0
Italy	Man	European	Prefer not to say	None of the above	Fully remote	2022	2	50464.05	0
Italy	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	4	125575.67749999999	0
Italy	Man	European	Prefer not to say	Prefer not to say	Full in-person	2022	2	21929.635000000002	0
Italy	Man	European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	2	39595.92	0
Italy	Man	European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	10483.2	0
Italy	Man	European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	19409.39	0
Italy	Man	European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	2	27171.690000000002	0
Italy	Man	European;Hispanic or Latino/a;Multiracial;Indigenous (such as Native American or Indigenous Australian)	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	32024.72	0
Italy	Man	European;North African	None of the above	None of the above	Fully remote	2022	1	70843.5	0
Italy	Man	European;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	25377.17	0
Italy	Man	Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	1	34936.72	0
Italy	Man	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	20966.4	0
Italy	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	22997.975	0
Italy	Man	Hispanic or Latino/a	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Italy	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	23292.36	0
Italy	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	649816.4400000001	0
Italy	Man	I don't know	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Italy	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	58225.44	0
Italy	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	38979.85	0
Italy	Man	North African	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Prefer not to say	Full in-person	2022	1	15724.800000000001	0
Italy	Man	Or, in your own words:	None of the above	None of the above	Full in-person	2022	1	16303.560000000001	0
Italy	Man	Or, in your own words:;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	45611.93	0
Italy	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	19797.96	0
Italy	Man	Or, in your own words:;European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Italy	Man	Prefer not to say	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	58907.03	0
Italy	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	2	47067.020000000004	0
Italy	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	55316.17	0
Italy	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Italy	Man	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	145569.06	0
Italy	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Italy	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	17472	0
Italy	Man	White	None of the above	None of the above	Full in-person	2022	4	44351.3525	0
Italy	Man	White	None of the above	None of the above	Fully remote	2022	6	260570.765	0
Italy	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	13	87507	0
Italy	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	27172.600000000002	0
Italy	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	2	17272.255	0
Italy	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	27172.600000000002	0
Italy	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Fully remote	2022	1	34936.72	0
Italy	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	39788.840000000004	0
Italy	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Italy	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	42699.93	0
Italy	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	29850.730000000003	0
Italy	Man	White;European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	291138.12	0
Italy	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	41729.87	0
Italy	Man	White;European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	407589	0
Italy	Man	White;European	None of the above	None of the above	Full in-person	2022	26	62758.22	0
Italy	Man	White;European	None of the above	None of the above	Fully remote	2022	49	118409.86857142858	0
Italy	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	47	106635.89106382978	0
Italy	Man	White;European	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	31054.66	0
Italy	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	19409.39	0
Italy	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	2	40759.354999999996	0
Italy	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	18629.52	0
Italy	Man	White;European;Asian;Multiracial	None of the above	None of the above	Fully remote	2022	1	59683.26	0
Italy	Man	White;European;Biracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Italy	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	2	157215.24	0
Italy	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	1456	0
Italy	Man	White;European;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Full in-person	2022	1	55899.48	0
Italy	Man	White;European;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23619.96	0
Italy	Man	White;European;Hispanic or Latino/a;South American	Prefer not to say	I am blind / have difficulty seeing	Fully remote	2022	1	33965.75	0
Italy	Man	White;European;Middle Eastern	None of the above	None of the above	Full in-person	2022	1	19797.96	0
Italy	Man	White;European;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	28533.960000000003	0
Italy	Man	White;European;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Italy	Man	White;European;North American	None of the above	None of the above	Fully remote	2022	2	79771.51000000001	0
Italy	Man	White;European;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Italy	Man	White;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	1	22364.16	0
Italy	Man	White;Indian;European;North American;Middle Eastern;Ethnoreligious group;African;Asian;East Asian;Black;Caribbean;Southeast Asian;Central American;North African;Hispanic or Latino/a;South American;South Asian;Multiracial;Biracial;Indigenous (such as Native American or Indigenous Australian);Pacific Islander;Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	27949.74	0
Italy	Man	White;Multiracial	None of the above	Prefer not to say	Fully remote	2022	1	38817.87	0
Italy	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	35713.86	0
Italy	Man	White;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Italy	Man;Or, in your own words:	White;European	None of the above	None of the above	Full in-person	2022	1	23290.54	0
Italy	Man;Or, in your own words:	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	12809.16	0
Italy	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	29113.63	0
Italy	Non-binary, genderqueer, or gender non-conforming	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	18050.760000000002	0
Italy	Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Full in-person	2022	1	33965.75	0
Italy	Non-binary, genderqueer, or gender non-conforming	Or, in your own words:;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	372655.92	0
Italy	Or, in your own words:	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	15724.800000000001	0
Italy	Or, in your own words:	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	349363.56	0
Italy	Or, in your own words:	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	116450.88	0
Italy	Prefer not to say	European	None of the above	Prefer not to say	Fully remote	2022	1	384296.64	0
Italy	Prefer not to say	Or, in your own words:	Prefer not to say	Prefer not to say	Fully remote	2022	1	242606	0
Italy	Prefer not to say	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	59198.23	0
Italy	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Full in-person	2022	1	29112.72	0
Italy	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	71813.56	0
Italy	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	2	59680.53	0
Italy	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	40764.36	0
Italy	Woman	European	None of the above	None of the above	Full in-person	2022	1	29113.63	0
Italy	Woman	European	None of the above	None of the above	Fully remote	2022	3	33201.04666666667	0
Italy	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	7	28670.07	0
Italy	Woman	European;Asian;Biracial	None of the above	None of the above	Fully remote	2022	1	27172.600000000002	0
Italy	Woman	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	45611.93	0
Italy	Woman	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	21350.420000000002	0
Italy	Woman	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	25231.57	0
Italy	Woman	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	45611.93	0
Italy	Woman	White	None of the above	None of the above	Fully remote	2022	1	121303	0
Italy	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	28143.57	0
Italy	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29113.63	0
Italy	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	27172.600000000002	0
Italy	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	13977.6	0
Italy	Woman	White;European	None of the above	I am unable to / find it difficult to type;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	29112.72	0
Italy	Woman	White;European	None of the above	None of the above	Fully remote	2022	1	34936.72	0
Italy	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	32348.680000000004	0
Italy	Woman	White;European	Prefer not to say	None of the above	Fully remote	2022	1	19797.96	0
Latvia	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	41113.8	0
Latvia	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
Latvia	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	54807.48	0
Latvia	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	242614.19	0
Latvia	Man	European	None of the above	None of the above	Full in-person	2022	4	47744.97	0
Latvia	Man	European	None of the above	None of the above	Fully remote	2022	8	51325.25125	0
Latvia	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	6	49691.15666666667	0
Latvia	Man	European	Or, in your own words:	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	11640.720000000001	0
Latvia	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	47742.240000000005	0
Latvia	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Latvia	Man	White	None of the above	None of the above	Fully remote	2022	1	22713.600000000002	0
Latvia	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	37792.3	0
Latvia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	29724.24	0
Latvia	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	34933.08	0
Latvia	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	41533.765	0
Latvia	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	20966.4	0
Latvia	Man	White;European	None of the above	None of the above	Fully remote	2022	5	55568.96800000001	0
Latvia	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	8	40861.5025	0
Latvia	Man	White;European	None of the above	Or, in your own words:	Fully remote	2022	1	37580.270000000004	0
Lithuania	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	23292.36	0
Lithuania	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	116454.52	0
Lithuania	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	13387.92	0
Lithuania	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	32028.36	0
Lithuania	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Lithuania	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	55899.48	0
Lithuania	Man	European	None of the above	None of the above	Full in-person	2022	9	39195.52	0
Lithuania	Man	European	None of the above	None of the above	Fully remote	2022	16	90749.124375	0
Lithuania	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	41	63918.71073170732	0
Lithuania	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	55899.48	0
Lithuania	Man	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	48331.92	0
Lithuania	Man	European	Prefer not to say	None of the above	Full in-person	2022	2	34743.345	0
Lithuania	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	14557.27	0
Lithuania	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	65117.325000000004	0
Lithuania	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	40764.36	0
Lithuania	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	46202.520000000004	0
Lithuania	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Lithuania	Man	White	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	19797.96	0
Lithuania	Man	White	None of the above	None of the above	Full in-person	2022	2	378477.19	0
Lithuania	Man	White	None of the above	None of the above	Fully remote	2022	4	234678.7625	0
Lithuania	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	37071.125	0
Lithuania	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	46846.8	0
Lithuania	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Lithuania	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	13977.6	0
Lithuania	Man	White;European	None of the above	None of the above	Full in-person	2022	3	41572.44	0
Lithuania	Man	White;European	None of the above	None of the above	Fully remote	2022	6	121511.54166666667	0
Lithuania	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	9	49623.21	0
Lithuania	Man;Or, in your own words:	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	34933.08	0
Lithuania	Prefer not to say	White;European;Ethnoreligious group	None of the above	None of the above	Fully remote	2022	1	69877.08	0
Lithuania	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	81517.8	0
Lithuania	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	27944.280000000002	0
Lithuania	Woman	European	Prefer not to say	None of the above	Fully remote	2022	1	42446.04	0
Lithuania	Woman	White;European	None of the above	None of the above	Fully remote	2022	2	22708.14	0
Lithuania	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Lithuania	Woman	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Luxembourg	Man	Central Asian	None of the above	None of the above	Fully remote	2022	1	65020.41	0
Luxembourg	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	2	47067.020000000004	0
Luxembourg	Man	European	None of the above	None of the above	Full in-person	2022	2	49006.23	0
Luxembourg	Man	European	None of the above	None of the above	Fully remote	2022	2	81516.435	0
Luxembourg	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	8	67878.37875	0
Luxembourg	Man	European;Ethnoreligious group	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	75695.62	0
Luxembourg	Man	European;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Luxembourg	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	10559.640000000001	0
Luxembourg	Man	North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Luxembourg	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	69877.08	0
Luxembourg	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	135863.91	0
Luxembourg	Man	White	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Luxembourg	Man	White;European	None of the above	None of the above	Full in-person	2022	1	112573.37000000001	0
Luxembourg	Man	White;European	None of the above	None of the above	Fully remote	2022	1	68417.44	0
Luxembourg	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	69627.74	0
Luxembourg	Man	White;European;Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	93163.98	0
Luxembourg	Prefer not to say	European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	116454.52	0
Malta	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	82488.77	0
Malta	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	45902.22	0
Malta	Man	European	None of the above	None of the above	Fully remote	2022	4	90977.0225	0
Malta	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	56286.685000000005	0
Malta	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	40758.9	0
Malta	Man	South American	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	582276.24	0
Malta	Man	White	None of the above	None of the above	Fully remote	2022	1	43670.9	0
Malta	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	54345.200000000004	0
Malta	Man	White;European	None of the above	None of the above	Full in-person	2022	1	244553.4	0
Malta	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	33966.205	0
Malta	Man	White;Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Malta	Woman	Multiracial	Or, in your own words:	None of the above	Fully remote	2022	1	116450.88	0
Malta	Woman	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	41729.87	0
Malta	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Netherlands	Man	African	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	111798.96	0
Netherlands	Man	African	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	59537.66	0
Netherlands	Man	African;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	30281.16	0
Netherlands	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	56286.23	0
Netherlands	Man	Asian	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	51880.92	0
Netherlands	Man	Asian;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	46581.99	0
Netherlands	Man	Asian;South Asian	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Netherlands	Man	Caribbean	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Netherlands	Man	Caribbean	None of the above	None of the above	Fully remote	2022	1	58227.26	0
Netherlands	Man	Caribbean	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Netherlands	Man	Caribbean	Prefer not to say	None of the above	Full in-person	2022	1	44155.93	0
Netherlands	Man	Central American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	145569.06	0
Netherlands	Man	Central American;Hispanic or Latino/a	I have an anxiety disorder	Or, in your own words:	Fully remote	2022	1	46581.99	0
Netherlands	Man	Central American;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	54731.04	0
Netherlands	Man	Central Asian	None of the above	None of the above	Fully remote	2022	1	82488.77	0
Netherlands	Man	Central Asian	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Netherlands	Man	East Asian;Southeast Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	850122	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	41938.26	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	38809.68	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	13	99247.68000000001	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	93158.52	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	3	30667	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	63079.380000000005	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	63954.345	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Netherlands	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	32028.36	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	4	89766.7225	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	42697.200000000004	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	69872.53	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	3	89929.23333333334	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	64050.350000000006	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	698727.12	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	32028.36	0
Netherlands	Man	European;Black;Multiracial;Biracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	579950.28	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	35495.46	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	57657.6	0
Netherlands	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	60168.29	0
Netherlands	Man	European	I have an anxiety disorder	I am deaf / hard of hearing	Fully remote	2022	1	52405.08	0
Netherlands	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	2	42070.21	0
Netherlands	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	3	125511.14333333336	0
Netherlands	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	3	330924.83666666667	0
Netherlands	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	242614.19	0
Netherlands	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Netherlands	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	36877.75	0
Netherlands	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	43090.32	0
Netherlands	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	4	46117.89	0
Netherlands	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	5	69679.61000000002	0
Netherlands	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	7	103344.41	0
Netherlands	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	3	52274.64666666667	0
Netherlands	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	10483.2	0
Netherlands	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	8	158161.8675	0
Netherlands	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	108107.54500000001	0
Netherlands	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	77636.65000000001	0
Netherlands	Man	European	None of the above	I am deaf / hard of hearing	Fully remote	2022	1	75697.44	0
Netherlands	Man	European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	3	54601.82000000001	0
Netherlands	Man	European	None of the above	None of the above	Full in-person	2022	31	76697.73548387097	0
Netherlands	Man	European	None of the above	None of the above	Fully remote	2022	44	126066.53977272728	0
Netherlands	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	177	95733.13107344632	0
Netherlands	Man	European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Netherlands	Man	European	Or, in your own words:	None of the above	Full in-person	2022	1	50308.44	0
Netherlands	Man	European	Prefer not to say	None of the above	Full in-person	2022	2	27070.68	0
Netherlands	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	95105.01000000001	0
Netherlands	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	5	72590.15400000001	0
Netherlands	Man	European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	1688592.36	0
Netherlands	Man	European;African	None of the above	None of the above	Full in-person	2022	1	30859.920000000002	0
Netherlands	Man	European;Asian	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	44640.96	0
Netherlands	Man	European;Asian	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29113.63	0
Netherlands	Man	European;Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	38427.48	0
Netherlands	Man	European;Asian	None of the above	None of the above	Fully remote	2022	1	37269.96	0
Netherlands	Man	European;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	57711.29	0
Netherlands	Man	European;Asian;Multiracial;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	75695.62	0
Netherlands	Man	European;Biracial	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Netherlands	Man	European;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	52984.75	0
Netherlands	Man	European;Black;Multiracial;Biracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	47940.62	0
Netherlands	Man	European;Caribbean;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Netherlands	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	43090.32	0
Netherlands	Man	European;Hispanic or Latino/a;South American;Multiracial	I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	1	194091.17	0
Netherlands	Man	European;Middle Eastern	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	84429.8	0
Netherlands	Man	European;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	82488.77	0
Netherlands	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	68746.678	0
Netherlands	Man	European;Multiracial	None of the above	None of the above	Fully remote	2022	1	93158.52	0
Netherlands	Man	European;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Netherlands	Man	European;North African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	50952.72	0
Netherlands	Man	European;North American	None of the above	None of the above	Fully remote	2022	1	1164552.48	0
Netherlands	Man	European;North American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Netherlands	Man	European;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Netherlands	Man	European;South American;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65214.240000000005	0
Netherlands	Man	European;Southeast Asian	I have an anxiety disorder	None of the above	Fully remote	2022	1	67932.41	0
Netherlands	Man	Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	126159.67	0
Netherlands	Man	Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	116454.52	0
Netherlands	Man	Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	62109.32	0
Netherlands	Man	Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	1	97046.04000000001	0
Netherlands	Man	Hispanic or Latino/a	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Netherlands	Man	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	116454.52	0
Netherlands	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	77636.65000000001	0
Netherlands	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	82488.77	0
Netherlands	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Netherlands	Man	I don't know	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	50464.05	0
Netherlands	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	40758.9	0
Netherlands	Man	Indian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	87340.89	0
Netherlands	Man	Indian	None of the above	None of the above	Fully remote	2022	2	92193.92000000001	0
Netherlands	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	7	71414.45999999999	0
Netherlands	Man	Indian;Asian;Black;South American	None of the above	None of the above	Fully remote	2022	1	145569.06	0
Netherlands	Man	Indian;South Asian	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	4367060.88	0
Netherlands	Man	Middle Eastern	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	756952.56	0
Netherlands	Man	Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	75695.62	0
Netherlands	Man	Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	61139.26	0
Netherlands	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	2	116454.975	0
Netherlands	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	15	118282.28533333333	0
Netherlands	Man	Middle Eastern	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	58226.350000000006	0
Netherlands	Man	Middle Eastern;African;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	135863.91	0
Netherlands	Man	Middle Eastern;North African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	65991.38	0
Netherlands	Man	Multiracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Netherlands	Man	Multiracial;Biracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Fully remote	2022	1	116454.52	0
Netherlands	Man	North African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	74725.56	0
Netherlands	Man	Or, in your own words:	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	70358.47	0
Netherlands	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	72299.5	0
Netherlands	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	54731.04	0
Netherlands	Man	Or, in your own words:;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Netherlands	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	29113.63	0
Netherlands	Man	Prefer not to say	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	77636.65000000001	0
Netherlands	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	266875.7	0
Netherlands	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Netherlands	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Netherlands	Man	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	2	55801.200000000004	0
Netherlands	Man	South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	64050.350000000006	0
Netherlands	Man	South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	116450.88	0
Netherlands	Man	South American	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	82488.77	0
Netherlands	Man	South American	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	72784.53	0
Netherlands	Man	South American	None of the above	None of the above	Full in-person	2022	1	58227.26	0
Netherlands	Man	South American	None of the above	None of the above	Fully remote	2022	3	86694.48666666668	0
Netherlands	Man	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	6	201046.45166666666	0
Netherlands	Man	South Asian	None of the above	None of the above	Fully remote	2022	2	686113.155	0
Netherlands	Man	South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	82197.57	0
Netherlands	Man	Southeast Asian	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Netherlands	Man	Southeast Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	815188.92	0
Netherlands	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Netherlands	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Netherlands	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Netherlands	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Netherlands	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	97046.04000000001	0
Netherlands	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	67932.41	0
Netherlands	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	40758.9	0
Netherlands	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	145569.06	0
Netherlands	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	49493.08	0
Netherlands	Man	White	I have an anxiety disorder	None of the above	Fully remote	2022	1	109200	0
Netherlands	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	32995.69	0
Netherlands	Man	White	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Netherlands	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	1941.03	0
Netherlands	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	55908.88333333334	0
Netherlands	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	116454.52	0
Netherlands	Man	White	None of the above	None of the above	Full in-person	2022	7	142871.04	0
Netherlands	Man	White	None of the above	None of the above	Fully remote	2022	7	119782.65000000001	0
Netherlands	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	24	78431.42125	0
Netherlands	Man	White	Prefer not to say	None of the above	Full in-person	2022	1	32801.86	0
Netherlands	Man	White	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	77636.65000000001	0
Netherlands	Man	White;African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	111602.40000000001	0
Netherlands	Man	White;African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	126159.67	0
Netherlands	Man	White;African	None of the above	None of the above	Fully remote	2022	1	652142.4	0
Netherlands	Man	White;Caribbean;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40904.5	0
Netherlands	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	24460.8	0
Netherlands	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	83843.76000000001	0
Netherlands	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	8	58372.6325	0
Netherlands	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	3	33215	0
Netherlands	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	77636.65000000001	0
Netherlands	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	36779.925	0
Netherlands	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	34125	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	2	60655.14	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	41532.4	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	29113.63	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	40758.9	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	2	112815.88500000001	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	46581.99	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	81035.5	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	77854.14	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	55316.17	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	34936.72	0
Netherlands	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	30281.16	0
Netherlands	Man	White;European	I have an anxiety disorder	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	47552.05	0
Netherlands	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	2	79820.195	0
Netherlands	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	39568.62	0
Netherlands	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	145569.06	0
Netherlands	Man	White;European	I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	29691.48	0
Netherlands	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	3	42188.81333333333	0
Netherlands	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	70747.04000000001	0
Netherlands	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	11	46693.42363636364	0
Netherlands	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	44247.840000000004	0
Netherlands	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	31438.68	0
Netherlands	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	6	263059.00833333336	0
Netherlands	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	40764.36	0
Netherlands	Man	White;European	None of the above	I am deaf / hard of hearing	Full in-person	2022	1	27485.64	0
Netherlands	Man	White;European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	26786.760000000002	0
Netherlands	Man	White;European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Netherlands	Man	White;European	None of the above	None of the above	Full in-person	2022	12	40983.06333333333	0
Netherlands	Man	White;European	None of the above	None of the above	Fully remote	2022	23	79203.2743478261	0
Netherlands	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	93	75487.23000000001	0
Netherlands	Man	White;European	Or, in your own words:;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Full in-person	2022	1	30278.43	0
Netherlands	Man	White;European	Or, in your own words:;I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	44499	0
Netherlands	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	2	32022.9	0
Netherlands	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	33306	0
Netherlands	Man	White;European;African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58809.66	0
Netherlands	Man	White;European;African	None of the above	None of the above	Fully remote	2022	1	69877.08	0
Netherlands	Man	White;European;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Netherlands	Man	White;European;East Asian;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	81517.8	0
Netherlands	Man	White;European;East Asian;Multiracial;Biracial	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	37269.96	0
Netherlands	Man	White;European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	1	82488.77	0
Netherlands	Man	White;European;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	108691.31	0
Netherlands	Man	White;European;Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Netherlands	Man	White;European;Middle Eastern;Asian;Multiracial;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	49489.44	0
Netherlands	Man	White;European;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65020.41	0
Netherlands	Man	White;European;North American	None of the above	None of the above	Full in-person	2022	2	60653.775	0
Netherlands	Man	White;European;North American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	586156.025	0
Netherlands	Man	White;European;South American	None of the above	None of the above	Fully remote	2022	1	87340.89	0
Netherlands	Man	White;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	86370.83	0
Netherlands	Man	White;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	46241.19500000001	0
Netherlands	Man	White;Hispanic or Latino/a;South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Netherlands	Man	White;Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	84931.21	0
Netherlands	Man	White;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	126159.67	0
Netherlands	Man	White;Middle Eastern	I have an anxiety disorder	None of the above	Full in-person	2022	1	61139.26	0
Netherlands	Man	White;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	67932.41	0
Netherlands	Man	White;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Netherlands	Man	White;Multiracial	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Netherlands	Man	White;Or, in your own words:;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	69877.08	0
Netherlands	Man	White;Or, in your own words:;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	69877.08	0
Netherlands	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	576455.88	0
Netherlands	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	31263.960000000003	0
Netherlands	Man	White;Or, in your own words:;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	51675.26	0
Netherlands	Man	White;Or, in your own words:;European;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Netherlands	Man	White;South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	82488.77	0
Netherlands	Man	White;South American	None of the above	I am deaf / hard of hearing	Fully remote	2022	1	61139.26	0
Netherlands	Man	White;South American	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Netherlands	Man	White;South American	None of the above	None of the above	Fully remote	2022	1	1397454.24	0
Netherlands	Man	White;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	30281.16	0
Netherlands	Man	White;South American;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	64050.350000000006	0
Netherlands	Man;Non-binary, genderqueer, or gender non-conforming	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Netherlands	Man;Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	57067.920000000006	0
Netherlands	Man;Non-binary, genderqueer, or gender non-conforming	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	35402.64	0
Netherlands	Man;Non-binary, genderqueer, or gender non-conforming	White;Hispanic or Latino/a;Multiracial;Biracial;Indigenous (such as Native American or Indigenous Australian)	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	126159.67	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	47097.96	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	European;African;Biracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	43670.9	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	Hispanic or Latino/a;South American	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	87340.89	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	35271.6	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	47940.62	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	55899.48	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	76854.96	0
Netherlands	Non-binary, genderqueer, or gender non-conforming	White;European	Prefer not to say	None of the above	Fully remote	2022	1	17351.88	0
Netherlands	Prefer not to say	European	None of the above	None of the above	Fully remote	2022	1	46584.72	0
Netherlands	Prefer not to say	Indian	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	67932.41	0
Netherlands	Prefer not to say	Or, in your own words:	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	25736.620000000003	0
Netherlands	Prefer not to say	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	174682.69	0
Netherlands	Prefer not to say	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Netherlands	Prefer not to say	Prefer not to say	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	155273.30000000002	0
Netherlands	Prefer not to say	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	20966.4	0
Netherlands	Prefer not to say	White;Or, in your own words:;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	155291.5	0
Netherlands	Woman	Biracial	None of the above	None of the above	Fully remote	2022	1	82488.77	0
Netherlands	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	53472.51	0
Netherlands	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	43670.9	0
Netherlands	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	43953	0
Netherlands	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	31438.68	0
Netherlands	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	26786.760000000002	0
Netherlands	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	45121.44	0
Netherlands	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Netherlands	Woman	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Poland	Man	I don't know	Or, in your own words:	None of the above	Fully remote	2022	1	30303	0
Netherlands	Woman	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	37228.1	0
Netherlands	Woman	European	None of the above	None of the above	Full in-person	2022	1	34933.08	0
Netherlands	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	10	197030.743	0
Netherlands	Woman	European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Netherlands	Woman	European	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	44640.96	0
Netherlands	Woman	European;Black	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	44155.93	0
Netherlands	Woman	Hispanic or Latino/a	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	1863279.6	0
Netherlands	Woman	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Netherlands	Woman	Middle Eastern	None of the above	None of the above	Full in-person	2022	1	27172.600000000002	0
Netherlands	Woman	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53573.520000000004	0
Netherlands	Woman	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Netherlands	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	44247.840000000004	0
Netherlands	Woman	White	None of the above	None of the above	Fully remote	2022	1	67540.2	0
Netherlands	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	126158.30500000001	0
Netherlands	Woman	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	67540.2	0
Netherlands	Woman	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	33775.56	0
Netherlands	Woman	White;European	None of the above	None of the above	Fully remote	2022	2	67932.41	0
Netherlands	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	43994.253333333334	0
Netherlands	Woman	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Netherlands	Woman;Non-binary, genderqueer, or gender non-conforming	East Asian	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	97046.04000000001	0
Poland	Man	African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	12623.52	0
Poland	Man	Asian	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am unable to / find it difficult to walk or stand without assistance	Full in-person	2022	1	25257.96	0
Poland	Man	Biracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	25257.96	0
Poland	Man	Biracial	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	26513.760000000002	0
Poland	Man	Biracial	None of the above	None of the above	Fully remote	2022	1	37881.48	0
Poland	Man	East Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	36614.76	0
Poland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	3	54856.31666666667	0
Poland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	34514.48	0
Poland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	2020200	0
Poland	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	14643.720000000001	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Full in-person	2022	1	45459.96	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	58225.44	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	25880.4	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	8	57248.896250000005	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	6	40151.02	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	25257.96	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	51053.73	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	37881.48	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	14643.720000000001	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	2	35981.4	0
Poland	Man	I don't know	Prefer not to say	None of the above	Fully remote	2022	1	32825.520000000004	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	45006.78	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	60606	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	30303	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Full in-person	2022	1	7578.4800000000005	0
Poland	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	63128.520000000004	0
Poland	Man	European	I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	1	70707	0
Poland	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	9	64074.717777777776	0
Poland	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	5	37538.592000000004	0
Poland	Man	European	I have an anxiety disorder	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	10101	0
Poland	Man	European	I have an anxiety disorder	Prefer not to say	Full in-person	2022	1	39137.28	0
Poland	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	31569.72	0
Poland	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	17679.48	0
Poland	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am blind / have difficulty seeing	Full in-person	2022	1	27780.48	0
Poland	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	3	37531.736666666664	0
Poland	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	47982.48	0
Poland	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	41162.03	0
Poland	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Prefer not to say	Fully remote	2022	1	31569.72	0
Poland	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	25935	0
Poland	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	7	63980.280000000006	0
Poland	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	33670	0
Poland	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	31569.72	0
Poland	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	32825.520000000004	0
Poland	Man	European	None of the above	None of the above	Full in-person	2022	20	52251.199	0
Poland	Man	European	None of the above	None of the above	Fully remote	2022	177	66620.64757062147	0
Poland	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	116	54892.10215517241	0
Poland	Man	European	None of the above	Or, in your own words:	Fully remote	2022	2	32830.98	0
Poland	Man	European	None of the above	Prefer not to say	Fully remote	2022	1	42926.520000000004	0
Poland	Man	European	None of the above	Prefer not to say	Hybrid (some remote, some in-person)	2022	2	27147.120000000003	0
Poland	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	91000	0
Poland	Man	European	Or, in your own words:;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	88386.48	0
Poland	Man	European	Prefer not to say	None of the above	Full in-person	2022	1	22724.52	0
Poland	Man	European	Prefer not to say	None of the above	Fully remote	2022	5	55405.714	0
Poland	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	4	41037.36	0
Poland	Man	European	Prefer not to say	Prefer not to say	Fully remote	2022	1	17679.48	0
Poland	Man	European;Biracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	93158.52	0
Poland	Man	European;Hispanic or Latino/a;Biracial	None of the above	Prefer not to say	Fully remote	2022	1	45459.96	0
Poland	Man	European;Middle Eastern	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	96460	0
Poland	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	42926.520000000004	0
Poland	Man	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	2	548275	0
Poland	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	56420	0
Poland	Man	Hispanic or Latino/a;Multiracial	None of the above	None of the above	Full in-person	2022	1	42087.5	0
Poland	Man	I don't know	None of the above	None of the above	Fully remote	2022	1	71970.08	0
Poland	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	40404	0
Poland	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	73281.39	0
Poland	Man	North American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38930.71	0
Poland	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	25257.96	0
Poland	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	25252.5	0
Poland	Man	Or, in your own words:	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	36826.79	0
Poland	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	92353.17	0
Poland	Man	Or, in your own words:	None of the above	Or, in your own words:	Fully remote	2022	1	40404	0
Poland	Man	Or, in your own words:;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	29484	0
Poland	Man	Or, in your own words:;European	None of the above	I am unable to / find it difficult to type	Hybrid (some remote, some in-person)	2022	1	23991.24	0
Poland	Man	Or, in your own words:;European	None of the above	None of the above	Full in-person	2022	1	25252.5	0
Poland	Man	Or, in your own words:;European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	22724.52	0
Poland	Man	Or, in your own words:;European;Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	50505	0
Poland	Man	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	1	44728.32	0
Poland	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	32825.520000000004	0
Poland	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	58083.48	0
Poland	Man	Prefer not to say	Prefer not to say	Prefer not to say	Full in-person	2022	1	30303	0
Poland	Man	South Asian	None of the above	None of the above	Fully remote	2022	1	87360	0
Poland	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	55560.96	0
Poland	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	47731.32	0
Poland	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	63131.25	0
Poland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	49696.92	0
Poland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	3	57670.340000000004	0
Poland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	40409.46	0
Poland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	108527.51000000001	0
Poland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	82318.6	0
Poland	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	68184.48	0
Poland	Man	White	I have an anxiety disorder	None of the above	Full in-person	2022	1	45459.96	0
Poland	Man	White	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	42931.979999999996	0
Poland	Man	White	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32825.520000000004	0
Poland	Man	White	I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	13677.3	0
Poland	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	49140	0
Poland	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	63131.25	0
Poland	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	5	48569.612	0
Poland	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	11689.86	0
Poland	Man	White	None of the above	None of the above	Full in-person	2022	4	25634.7	0
Poland	Man	White	None of the above	None of the above	Fully remote	2022	40	95194.099	0
Poland	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	21	35344.35666666667	0
Poland	Man	White	Prefer not to say	None of the above	Fully remote	2022	1	21468.72	0
Poland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	4	74495.55750000001	0
Poland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	55229.265	0
Poland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	116450.88	0
Poland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	23106.72	0
Poland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	70252	0
Poland	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	42926.520000000004	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	40404	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	14	53572.479999999996	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	40409.46	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	35555.520000000004	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	3	60609.64000000001	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	12205.83	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	4	55485.43	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	60606	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	32825.520000000004	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	33247.76	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	19950.84	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	37881.48	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	27780.48	0
Poland	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	60606	0
Poland	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	3	43774.64000000001	0
Poland	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	7	41697.76	0
Poland	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	18181.8	0
Poland	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23991.24	0
Poland	Man	White;European	I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	46715.76	0
Poland	Man	White;European	I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	12623.52	0
Poland	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	32825.520000000004	0
Poland	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	7	59769.840000000004	0
Poland	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	10101	0
Poland	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	9	53591.72	0
Poland	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	27897.142000000003	0
Poland	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	5307.12	0
Poland	Man	White;European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	2	37881.479999999996	0
Poland	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	2	34720.14	0
Poland	Man	White;European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	2	55554.135	0
Poland	Man	White;European	None of the above	None of the above	Full in-person	2022	17	21653.824705882354	0
Poland	Man	White;European	None of the above	None of the above	Fully remote	2022	136	65433.630294117655	0
Poland	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	74	43124.887702702705	0
Poland	Man	White;European	Or, in your own words:	None of the above	Fully remote	2022	2	28239.120000000003	0
Poland	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	1	10101	0
Poland	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	7	58891.69	0
Poland	Man	White;European;Biracial	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	40404	0
Poland	Man	White;European;Ethnoreligious group	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	11367.720000000001	0
Poland	Man	White;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	47982.48	0
Poland	Man	White;Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	53027.520000000004	0
Poland	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);Or, in your own words:	None of the above	Fully remote	2022	1	50505	0
Poland	Man	White;Or, in your own words:;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	73653.58	0
Poland	Man	White;Or, in your own words:;European	None of the above	None of the above	Full in-person	2022	1	30303	0
Poland	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	3	78030.68000000001	0
Poland	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	30101.89	0
Poland	Man	White;Or, in your own words:;European;Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	30303	0
Poland	Man;Non-binary, genderqueer, or gender non-conforming	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	27357.33	0
Poland	Man;Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	44193.24	0
Poland	Man;Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Fully remote	2022	1	55560.96	0
Poland	Man;Or, in your own words:	Prefer not to say	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	37881.48	0
Poland	Man;Or, in your own words:	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	20202	0
Poland	Man;Or, in your own words:	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	40404	0
Poland	Man;Or, in your own words:	White;European	None of the above	None of the above	Full in-person	2022	1	25257.96	0
Poland	Non-binary, genderqueer, or gender non-conforming	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	10101	0
Poland	Non-binary, genderqueer, or gender non-conforming	European	Or, in your own words:	None of the above	Fully remote	2022	1	151515	0
Poland	Non-binary, genderqueer, or gender non-conforming	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	92820	0
Poland	Non-binary, genderqueer, or gender non-conforming	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	126262.5	0
Poland	Non-binary, genderqueer, or gender non-conforming	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	7600.320000000001	0
Poland	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	26513.760000000002	0
Poland	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	17679.48	0
Poland	Or, in your own words:	African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	25257.96	0
Poland	Or, in your own words:	White;Indian;European;North American;Middle Eastern;Ethnoreligious group;African;Asian;East Asian;Black;Caribbean;Southeast Asian;Central American;North African;Hispanic or Latino/a;South American;South Asian;Multiracial;Biracial;Indigenous (such as Native American or Indigenous Australian);Pacific Islander;Central Asian	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	8834.28	0
Poland	Prefer not to say	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	31569.72	0
Poland	Prefer not to say	Or, in your own words:;European;Indigenous (such as Native American or Indigenous Australian)	Prefer not to say	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	35358.96	0
Poland	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Full in-person	2022	1	16412.760000000002	0
Poland	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	21217.56	0
Portugal	Man	European;Hispanic or Latino/a;South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	76440	0
Poland	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	46715.76	0
Poland	Woman	European	I have an anxiety disorder	None of the above	Full in-person	2022	1	16161.6	0
Poland	Woman	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	30303	0
Poland	Woman	European	None of the above	None of the above	Fully remote	2022	2	28413.84	0
Poland	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	35354.592	0
Poland	Woman	European	Prefer not to say	None of the above	Fully remote	2022	1	78023.40000000001	0
Poland	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	8834.28	0
Poland	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	328287.96	0
Poland	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	15156.960000000001	0
Poland	Woman	White	None of the above	None of the above	Fully remote	2022	3	76269.83	0
Poland	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	25885.86	0
Poland	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	17679.48	0
Poland	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	30111.9	0
Poland	Woman	White;European	None of the above	None of the above	Fully remote	2022	1	126267.96	0
Poland	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	40404	0
Poland	Woman	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	63128.520000000004	0
Portugal	Man	African	None of the above	None of the above	Fully remote	2022	1	230968.92	0
Portugal	Man	African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	24261.510000000002	0
Portugal	Man	Asian	None of the above	None of the above	Fully remote	2022	1	62888.28	0
Portugal	Man	Biracial	None of the above	None of the above	Fully remote	2022	1	126159.67	0
Portugal	Man	Biracial	Prefer not to say	I am blind / have difficulty seeing	Fully remote	2022	1	48523.020000000004	0
Portugal	Man	Black;South American	None of the above	None of the above	Fully remote	2022	1	97046.04000000001	0
Portugal	Man	Black;South American;Multiracial;Biracial	None of the above	None of the above	Fully remote	2022	1	36156.12	0
Portugal	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	50369.41	0
Portugal	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	14851.2	0
Portugal	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	46146.100000000006	0
Portugal	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	17472	0
Portugal	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	1	17472	0
Portugal	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	5	72979.99799999999	0
Portugal	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Portugal	Man	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	26202.54	0
Portugal	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	57451.94	0
Portugal	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	65991.38	0
Portugal	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	48523.020000000004	0
Portugal	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	37806.405	0
Portugal	Man	European	None of the above	None of the above	Full in-person	2022	12	22752.9575	0
Portugal	Man	European	None of the above	None of the above	Fully remote	2022	58	103695.23741379312	0
Portugal	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	57	35933.37754385965	0
Portugal	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	17472	0
Portugal	Man	European	Prefer not to say	Prefer not to say	Fully remote	2022	1	17472	0
Portugal	Man	European;Biracial	None of the above	None of the above	Fully remote	2022	1	76854.96	0
Portugal	Man	European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	1	50232	0
Portugal	Man	European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	25231.57	0
Portugal	Man	European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	5	47827.416000000005	0
Portugal	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	33117.32666666667	0
Portugal	Man	European;Middle Eastern;Ethnoreligious group	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Fully remote	2022	1	116450.88	0
Portugal	Man	Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	70641.48	0
Portugal	Man	Hispanic or Latino/a	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	38039.82	0
Portugal	Man	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	4	188385.015	0
Portugal	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	48911.59	0
Portugal	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	38817.87	0
Portugal	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Portugal	Man	Indian;Asian	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Portugal	Man	Multiracial	None of the above	None of the above	Fully remote	2022	2	65505.895000000004	0
Portugal	Man	Or, in your own words:	None of the above	None of the above	Full in-person	2022	1	12266.800000000001	0
Portugal	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	63079.380000000005	0
Portugal	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	18989.88	0
Portugal	Man	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	69877.08	0
Portugal	Man	South American	I have an anxiety disorder	None of the above	Fully remote	2022	2	40275.69	0
Portugal	Man	South American	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	44489.9	0
Portugal	Man	South American	None of the above	I am unable to / find it difficult to type	Fully remote	2022	1	232912.68000000002	0
Portugal	Man	South American	None of the above	None of the above	Fully remote	2022	3	37977.333333333336	0
Portugal	Man	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	25038.65	0
Portugal	Man	South American;Biracial	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Portugal	Man	South American;Multiracial	I have an anxiety disorder	None of the above	Fully remote	2022	1	815188.92	0
Portugal	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	70980	0
Portugal	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	10483.2	0
Portugal	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	252319.34	0
Portugal	Man	White	None of the above	None of the above	Full in-person	2022	1	9893.52	0
Portugal	Man	White	None of the above	None of the above	Fully remote	2022	11	104266.97272727272	0
Portugal	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	34935.355	0
Portugal	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am deaf / hard of hearing	Fully remote	2022	1	92193.92	0
Portugal	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	92193.92	0
Portugal	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	14556.36	0
Portugal	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	29113.63	0
Portugal	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	48523.020000000004	0
Portugal	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Portugal	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	4	37531.8125	0
Portugal	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	19426.68	0
Portugal	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	43670.9	0
Portugal	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	104810.16	0
Portugal	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	27948.83	0
Portugal	Man	White;European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	69872.53	0
Portugal	Man	White;European	None of the above	None of the above	Full in-person	2022	2	60168.29	0
Portugal	Man	White;European	None of the above	None of the above	Fully remote	2022	20	85869.147	0
Portugal	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	19	54468.3852631579	0
Portugal	Man	White;European;Hispanic or Latino/a	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	72784.53	0
Portugal	Man	White;European;Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	22320.48	0
Portugal	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	14557.27	0
Portugal	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	46339.475000000006	0
Portugal	Man	White;European;Hispanic or Latino/a	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	39788.840000000004	0
Portugal	Man	White;European;South Asian;Biracial	None of the above	None of the above	Fully remote	2022	1	82488.77	0
Portugal	Man	White;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	29112.72	0
Portugal	Man	White;Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	46584.72	0
Portugal	Man	White;Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	24455.34	0
Portugal	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	25618.32	0
Portugal	Man	White;South American	I have an anxiety disorder	None of the above	Fully remote	2022	2	33409.740000000005	0
Portugal	Man	White;South American	None of the above	None of the above	Fully remote	2022	1	16882.32	0
Portugal	Man	White;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Portugal	Man	White;South American;Multiracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46096.96	0
Portugal	Man;Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Fully remote	2022	1	55316.17	0
Portugal	Non-binary, genderqueer, or gender non-conforming	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	12616.24	0
Portugal	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	34933.08	0
Portugal	Or, in your own words:;Woman;Non-binary, genderqueer, or gender non-conforming	White;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	147420	0
Portugal	Prefer not to say	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	77636.65000000001	0
Portugal	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Full in-person	2022	1	23292.36	0
Portugal	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	11640.720000000001	0
Portugal	Woman	European	None of the above	None of the above	Fully remote	2022	2	24744.72	0
Portugal	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	34450.598000000005	0
Portugal	Woman	European;East Asian;Biracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	41729.87	0
Portugal	Woman	European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	21396.83	0
Portugal	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Portugal	Woman	White	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	10057.32	0
Portugal	Woman	White;African;North African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	21350.420000000002	0
Portugal	Woman	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	47163.48	0
Portugal	Woman	White;European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	40759260.36	0
Romania	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	8244.6	0
Romania	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	70051.8	0
Romania	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	273000	0
Romania	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	37684.92	0
Romania	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Romania	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	400425.48000000004	0
Romania	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	21195.72	0
Romania	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	10603.32	0
Romania	Man	European	I have an anxiety disorder	I am blind / have difficulty seeing	Fully remote	2022	1	44640.96	0
Romania	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	2	47698.560000000005	0
Romania	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	3	181759.76	0
Romania	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	81615.17	0
Romania	Man	European	None of the above	None of the above	Full in-person	2022	8	35536.41	0
Romania	Man	European	None of the above	None of the above	Fully remote	2022	86	58269.278720930226	0
Romania	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	46	50609.88739130434	0
Romania	Man	European	None of the above	Or, in your own words:	Fully remote	2022	1	54960.36	0
Romania	Man	European	Or, in your own words:	None of the above	Fully remote	2022	2	45045	0
Romania	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	21195.72	0
Romania	Man	European;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	31209.36	0
Romania	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	47108.880000000005	0
Romania	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	68599.44	0
Romania	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	149240	0
Romania	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58885.19	0
Romania	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	58227.26	0
Romania	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	63079.380000000005	0
Romania	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	34157.76	0
Romania	Man	White	I have an anxiety disorder	None of the above	Fully remote	2022	1	10603.32	0
Romania	Man	White	None of the above	None of the above	Fully remote	2022	9	41023.40666666667	0
Romania	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	36680.644	0
Romania	Man	White	Prefer not to say	None of the above	Fully remote	2022	1	139743.24	0
Romania	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	18847.920000000002	0
Romania	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	58880.64	0
Romania	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	21790.86	0
Romania	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	66703	0
Romania	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	6	65295.07833333333	0
Romania	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Romania	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	41217.54000000001	0
Romania	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	47092.5	0
Romania	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	47108.880000000005	0
Romania	Man	White;European	None of the above	None of the above	Full in-person	2022	3	16016	0
Romania	Man	White;European	None of the above	None of the above	Fully remote	2022	24	68411.71458333333	0
Romania	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	19	50078.545263157896	0
Romania	Man	White;European	Or, in your own words:	Or, in your own words:;I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	52525.200000000004	0
Romania	Man	White;European;Ethnoreligious group	None of the above	None of the above	Fully remote	2022	1	23554.440000000002	0
Romania	Man	White;European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	5460	0
Romania	Man	White;Indian;European;North American;Middle Eastern;Ethnoreligious group;African;Asian;East Asian;Black;Caribbean;Southeast Asian;Central American;North African;Hispanic or Latino/a;South American;South Asian;Multiracial;Biracial;Indigenous (such as Native American or Indigenous Australian);Pacific Islander;Central Asian	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23554.440000000002	0
Romania	Man	White;Or, in your own words:;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	26175.24	0
Romania	Man	White;Or, in your own words:;European	None of the above	Or, in your own words:	Fully remote	2022	1	68304.6	0
Romania	Prefer not to say	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	35326.200000000004	0
Romania	Prefer not to say	I don't know	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	35326.200000000004	0
Romania	Woman	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	11771.76	0
Romania	Woman	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	29112.72	0
Romania	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	185095.5925	0
Romania	Woman	I don't know	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	11302.2	0
Romania	Woman	Or, in your own words:	I have an anxiety disorder	None of the above	Fully remote	2022	1	44280.6	0
Romania	Woman	White	None of the above	None of the above	Fully remote	2022	1	40043.64	0
Romania	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	37294.53	0
Romania	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	47108.880000000005	0
Slovakia	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	29112.72	0
Slovakia	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	55899.48	0
Slovakia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	27365.52	0
Slovakia	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	1	29112.72	0
Slovakia	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Slovakia	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	20960.940000000002	0
Slovakia	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	65020.41	0
Slovakia	Man	European	None of the above	None of the above	Full in-person	2022	6	38820.6	0
Slovakia	Man	European	None of the above	None of the above	Fully remote	2022	18	54662.08222222222	0
Slovakia	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	24	41665.715000000004	0
Slovakia	Man	European	Prefer not to say	None of the above	Fully remote	2022	1	23292.36	0
Slovakia	Man	Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	54345.200000000004	0
Slovakia	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	99957.13	0
Slovakia	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	58227.26	0
Slovakia	Man	White	I have an anxiety disorder	None of the above	Fully remote	2022	1	23292.36	0
Slovakia	Man	White	None of the above	None of the above	Fully remote	2022	3	84251.44	0
Slovakia	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	13977.6	0
Slovakia	Man	White	Or, in your own words:	None of the above	Fully remote	2022	1	55899.48	0
Slovakia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	1747.2	0
Slovakia	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	24251.5	0
Slovakia	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38427.48	0
Slovakia	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	39595.92	0
Slovakia	Man	White;European	None of the above	None of the above	Full in-person	2022	2	29112.72	0
Slovakia	Man	White;European	None of the above	None of the above	Fully remote	2022	16	49977.200000000004	0
Slovakia	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	10	33325.11	0
Slovakia	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	23292.36	0
Slovakia	Man;Or, in your own words:	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	23871.120000000003	0
Slovakia	Or, in your own words:	White;Or, in your own words:;European	Or, in your own words:	None of the above	Fully remote	2022	1	32607.120000000003	0
Slovakia	Woman	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	31054.66	0
Slovakia	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	25618.32	0
Slovakia	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	28533.960000000003	0
Slovenia	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	58225.44	0
Slovenia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	40328.166666666664	0
Slovenia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	38667.72	0
Slovenia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	24460.8	0
Slovenia	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	33965.75	0
Slovenia	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	4	42627.8125	0
Slovenia	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32607.120000000003	0
Slovenia	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	25618.32	0
Slovenia	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	69872.53	0
Slovenia	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Slovenia	Man	European	None of the above	I am deaf / hard of hearing	Full in-person	2022	1	58225.44	0
Slovenia	Man	European	None of the above	None of the above	Full in-person	2022	7	97754.8	0
Slovenia	Man	European	None of the above	None of the above	Fully remote	2022	24	85519.22166666666	0
Slovenia	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	44	70677.05272727273	0
Slovenia	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	66961.44	0
Slovenia	Man	European	Prefer not to say	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Slovenia	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	2	43670.445	0
Slovenia	Man	North African	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	69877.08	0
Slovenia	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	14557.27	0
Slovenia	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	17472	0
Slovenia	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Slovenia	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	33185.880000000005	0
Slovenia	Man	White	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Slovenia	Man	White	None of the above	None of the above	Full in-person	2022	2	27753.635000000002	0
Slovenia	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	68967.38333333335	0
Slovenia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	24261.510000000002	0
Slovenia	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	36680.28	0
Slovenia	Man	White;European	I have an anxiety disorder	None of the above	Full in-person	2022	1	15135.12	0
Slovenia	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	61719.840000000004	0
Slovenia	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	38817.87	0
Slovenia	Man	White;European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	42216.72	0
Slovenia	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Full in-person	2022	1	12809.16	0
Slovenia	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	17472	0
Slovenia	Man	White;European	None of the above	I am deaf / hard of hearing	Full in-person	2022	1	58225.44	0
Slovenia	Man	White;European	None of the above	I am deaf / hard of hearing	Fully remote	2022	1	32443.32	0
Slovenia	Man	White;European	None of the above	None of the above	Full in-person	2022	7	97823.95999999999	0
Slovenia	Man	White;European	None of the above	None of the above	Fully remote	2022	10	71311.513	0
Slovenia	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	22	113640.34500000002	0
Slovenia	Man	White;European;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	93158.52	0
Slovenia	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34933.08	0
Slovenia	Man;Or, in your own words:	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	55899.48	0
Slovenia	Prefer not to say	Prefer not to say	Prefer not to say	None of the above	Fully remote	2022	1	97046.04000000001	0
Slovenia	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	29112.72	0
Slovenia	Woman	European	None of the above	None of the above	Fully remote	2022	1	44247.840000000004	0
Slovenia	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	19219.2	0
Slovenia	Woman	White;European	None of the above	None of the above	Full in-person	2022	1	17472	0
Spain	Man	African;North African;Multiracial	None of the above	None of the above	Fully remote	2022	1	87340.89	0
Spain	Man	Asian	None of the above	None of the above	Fully remote	2022	1	29113.63	0
Spain	Man	Black;Caribbean	None of the above	None of the above	Fully remote	2022	1	80032.68000000001	0
Spain	Man	Black;Caribbean;Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	64045.8	0
Spain	Man	Black;Caribbean;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	53375.14	0
Spain	Man	Caribbean	None of the above	None of the above	Fully remote	2022	2	36392.265	0
Spain	Man	Caribbean	Prefer not to say	None of the above	Fully remote	2022	1	64050.350000000006	0
Spain	Man	Caribbean;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	16303.560000000001	0
Spain	Man	Caribbean;Hispanic or Latino/a;South American;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	35906.78	0
Spain	Man	Central American	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Spain	Man	Central American;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	36877.75	0
Spain	Man	East Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	337722.84	0
Spain	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	2	22318.205	0
Spain	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	9	125189.5088888889	0
Spain	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	11	105709.81909090909	0
Spain	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	2	39063.57	0
Spain	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	72784.53	0
Spain	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	17472	0
Spain	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	3	31054.963333333333	0
Spain	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	150160.31333333332	0
Spain	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	3	63079.98666666667	0
Spain	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	29620.045	0
Spain	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am unable to / find it difficult to type	Fully remote	2022	1	92193.92	0
Spain	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	3	37524.153333333335	0
Spain	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	8	127493.27500000001	0
Spain	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	6	198231.67	0
Spain	Man	European	I have an anxiety disorder	Or, in your own words:	Fully remote	2022	1	70843.5	0
Spain	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	100734.725	0
Spain	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	40764.36	0
Spain	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58225.44	0
Spain	Man	European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	2	12150.320000000002	0
Spain	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Spain	Man	European	None of the above	I am deaf / hard of hearing	Fully remote	2022	2	37155.3	0
Spain	Man	European	None of the above	None of the above	Full in-person	2022	35	91614.172	0
Spain	Man	European	None of the above	None of the above	Fully remote	2022	162	112986.59425925926	0
Spain	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	112	91957.91312499999	0
Spain	Man	European	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	3	50787.1	0
Spain	Man	European	None of the above	Prefer not to say	Full in-person	2022	1	27172.600000000002	0
Spain	Man	European	None of the above	Prefer not to say	Fully remote	2022	1	58225.44	0
Spain	Man	European	Or, in your own words:	Or, in your own words:	Fully remote	2022	1	19409.39	0
Spain	Man	European	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	61.88	0
Spain	Man	European	Prefer not to say	I am deaf / hard of hearing	Fully remote	2022	1	36877.75	0
Spain	Man	European	Prefer not to say	None of the above	Full in-person	2022	2	34449.415	0
Spain	Man	European	Prefer not to say	None of the above	Fully remote	2022	3	43670.293333333335	0
Spain	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	13977.6	0
Spain	Man	European	Prefer not to say	Prefer not to say	Fully remote	2022	1	279486.48	0
Spain	Man	European;African;Biracial	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Spain	Man	European;African;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	48523.020000000004	0
Spain	Man	European;Black;Multiracial	None of the above	None of the above	Fully remote	2022	1	157215.24000000002	0
Spain	Man	European;Caribbean;Biracial	None of the above	None of the above	Fully remote	2022	1	58225.44	0
Spain	Man	European;Caribbean;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	32995.69	0
Spain	Man	European;Caribbean;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	38817.87	0
Spain	Man	European;Central American;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	989865.24	0
Spain	Man	European;Central American;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Fully remote	2022	1	29113.63	0
Spain	Man	European;Central Asian	None of the above	None of the above	Fully remote	2022	1	48523.020000000004	0
Spain	Man	European;Central Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	41729.87	0
Spain	Man	European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	30080.050000000003	0
Spain	Man	European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	24359.79	0
Spain	Man	European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	27172.600000000002	0
Spain	Man	European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	2	32995.69	0
Spain	Man	European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	314430.48000000004	0
Spain	Man	European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	38817.87	0
Spain	Man	European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Full in-person	2022	1	14557.27	0
Spain	Man	European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	4	50997.537500000006	0
Spain	Man	European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	213404.1	0
Spain	Man	European;Hispanic or Latino/a	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	77636.65000000001	0
Spain	Man	European;Hispanic or Latino/a	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	21350.420000000002	0
Spain	Man	European;Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	36391.81	0
Spain	Man	European;Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	5	40952.366	0
Spain	Man	European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	41	80675.42853658537	0
Spain	Man	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	32	106213.835	0
Spain	Man	European;Hispanic or Latino/a	Prefer not to say	None of the above	Full in-person	2022	1	17701.32	0
Spain	Man	European;Hispanic or Latino/a	Prefer not to say	None of the above	Fully remote	2022	2	41244.385	0
Spain	Man	European;Hispanic or Latino/a	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	15527.33	0
Spain	Man	European;Hispanic or Latino/a	Prefer not to say	Prefer not to say	Fully remote	2022	1	97.37	0
Spain	Man	European;Hispanic or Latino/a;Biracial	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	38817.87	0
Spain	Man	European;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	75695.62	0
Spain	Man	European;Hispanic or Latino/a;Multiracial;Indigenous (such as Native American or Indigenous Australian)	None of the above	None of the above	Fully remote	2022	1	63079.380000000005	0
Spain	Man	European;Hispanic or Latino/a;South American	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	30859.920000000002	0
Spain	Man	European;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	163036.81333333332	0
Spain	Man	European;Middle Eastern	I have an anxiety disorder	None of the above	Fully remote	2022	1	34933.08	0
Spain	Man	European;North American;Hispanic or Latino/a;Multiracial	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23776.48	0
Spain	Man	European;South American	None of the above	Prefer not to say	Fully remote	2022	1	21315.84	0
Spain	Man	Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	2	29113.63	0
Spain	Man	Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	20379.45	0
Spain	Man	Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	2	80062.70999999999	0
Spain	Man	Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	Or, in your own words:	Fully remote	2022	1	43670.9	0
Spain	Man	Hispanic or Latino/a	None of the above	I am blind / have difficulty seeing	Full in-person	2022	1	186327.96	0
Spain	Man	Hispanic or Latino/a	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	28143.57	0
Spain	Man	Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	4	44156.385	0
Spain	Man	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	31	103839.71838709677	0
Spain	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	25	115954.16560000001	0
Spain	Man	Hispanic or Latino/a	None of the above	Prefer not to say	Full in-person	2022	1	24261.510000000002	0
Spain	Man	Hispanic or Latino/a	Prefer not to say	None of the above	Fully remote	2022	1	19409.39	0
Spain	Man	Hispanic or Latino/a;Biracial	None of the above	None of the above	Full in-person	2022	1	19409.39	0
Spain	Man	White;North African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	29113.63	0
Spain	Man	Hispanic or Latino/a;Multiracial	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	15724.800000000001	0
Spain	Man	Hispanic or Latino/a;Multiracial	None of the above	None of the above	Fully remote	2022	1	232909.95	0
Spain	Man	Hispanic or Latino/a;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	77636.65000000001	0
Spain	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	3	57256.89666666667	0
Spain	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	12579.84	0
Spain	Man	I don't know	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	63128.520000000004	0
Spain	Man	I don't know	I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	26202.54	0
Spain	Man	I don't know	None of the above	None of the above	Full in-person	2022	2	23387.455	0
Spain	Man	I don't know	None of the above	None of the above	Fully remote	2022	3	39206.136666666665	0
Spain	Man	Indian	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	58227.26	0
Spain	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65991.38	0
Spain	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	43670.9	0
Spain	Man	North African	None of the above	None of the above	Full in-person	2022	1	31054.66	0
Spain	Man	Or, in your own words:	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	50464.05	0
Spain	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	3	128231.73999999999	0
Spain	Man	Or, in your own words:;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	82488.77	0
Spain	Man	Or, in your own words:;European;Indigenous (such as Native American or Indigenous Australian)	None of the above	None of the above	Full in-person	2022	1	17472	0
Spain	Man	Or, in your own words:;Hispanic or Latino/a;South American	None of the above	Or, in your own words:	Fully remote	2022	1	110632.34	0
Spain	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	3	450495.1966666667	0
Spain	Man	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	43670.9	0
Spain	Man	South American	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	24261.510000000002	0
Spain	Man	South American	None of the above	None of the above	Fully remote	2022	5	64050.35	0
Spain	Man	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	15550.080000000002	0
Spain	Man	South American;Indigenous (such as Native American or Indigenous Australian)	Prefer not to say	None of the above	Fully remote	2022	1	45611.93	0
Spain	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	45611.93	0
Spain	Man	White	I have an anxiety disorder	None of the above	Fully remote	2022	2	36683.465000000004	0
Spain	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	46581.99	0
Spain	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am blind / have difficulty seeing;I am unable to / find it difficult to type	Hybrid (some remote, some in-person)	2022	1	44651.880000000005	0
Spain	Man	White	None of the above	None of the above	Full in-person	2022	2	29113.63	0
Spain	Man	White	None of the above	None of the above	Fully remote	2022	10	87640.73500000002	0
Spain	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	49299.25	0
Spain	Man	White	Or, in your own words:	None of the above	Fully remote	2022	1	50464.05	0
Spain	Man	White;Asian;Biracial;Pacific Islander	None of the above	None of the above	Fully remote	2022	1	127400	0
Spain	Man	White;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	51434.11	0
Spain	Man	White;Caribbean;Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	63079.380000000005	0
Spain	Man	White;Caribbean;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	1676951.6400000001	0
Spain	Man	White;Caribbean;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	32024.72	0
Spain	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	33965.75	0
Spain	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	34936.72	0
Spain	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	32995.69	0
Spain	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	41729.415	0
Spain	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	21350.420000000002	0
Spain	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	294.84000000000003	0
Spain	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	63079.380000000005	0
Spain	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Spain	Man	White;European	I have an anxiety disorder	None of the above	Full in-person	2022	1	43670.9	0
Spain	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	52890.11	0
Spain	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	2	65020.41	0
Spain	Man	White;European	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	45611.93	0
Spain	Man	White;European	None of the above	None of the above	Full in-person	2022	8	55115.85625	0
Spain	Man	White;European	None of the above	None of the above	Fully remote	2022	44	78615.54113636364	0
Spain	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	41	103252.19560975609	0
Spain	Man	White;European	None of the above	Prefer not to say	Fully remote	2022	1	13977.6	0
Spain	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Spain	Man	White;European	Prefer not to say	None of the above	Full in-person	2022	1	17472	0
Spain	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	2	55801.2	0
Spain	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	722019.48	0
Spain	Man	White;European;Caribbean;Central American;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	42699.93	0
Spain	Man	White;European;Caribbean;Hispanic or Latino/a;Multiracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	32024.72	0
Spain	Man	White;European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	3	281269.17000000004	0
Spain	Man	White;European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	39788.840000000004	0
Spain	Man	White;European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	21545.16	0
Spain	Man	White;European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	43670.9	0
Spain	Man	White;European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	32995.69	0
Spain	Man	White;European;Hispanic or Latino/a	I have an anxiety disorder	None of the above	Fully remote	2022	2	41729.87	0
Spain	Man	White;European;Hispanic or Latino/a	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Spain	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	3	32673.853333333333	0
Spain	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	25	52039.9516	0
Spain	Man	White;European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	10	153437.648	0
Spain	Man	White;European;Hispanic or Latino/a	None of the above	Or, in your own words:;I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	77636.65000000001	0
Spain	Man	White;European;Hispanic or Latino/a	Or, in your own words:	None of the above	Full in-person	2022	1	14557.27	0
Spain	Man	White;European;Hispanic or Latino/a	Prefer not to say	None of the above	Fully remote	2022	1	64050.350000000006	0
Spain	Man	White;European;Hispanic or Latino/a	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	43670.9	0
Spain	Man	White;European;Hispanic or Latino/a;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	18629.52	0
Spain	Man	White;European;Hispanic or Latino/a;South American	None of the above	None of the above	Fully remote	2022	1	60398.520000000004	0
Spain	Man	White;European;Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	106750.28	0
Spain	Man	White;European;Hispanic or Latino/a;South American;Multiracial	None of the above	None of the above	Fully remote	2022	1	97046.04000000001	0
Spain	Man	White;European;Multiracial	None of the above	None of the above	Fully remote	2022	1	113543.43000000001	0
Spain	Man	White;European;North American	None of the above	None of the above	Fully remote	2022	1	194091.17	0
Spain	Man	White;European;South American	None of the above	None of the above	Fully remote	2022	1	48523.020000000004	0
Spain	Man	White;Hispanic or Latino/a	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	35906.78	0
Spain	Man	White;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	2	33965.75	0
Spain	Man	White;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52405.08	0
Spain	Man	White;Hispanic or Latino/a;South American;Multiracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	640501.68	0
Spain	Man	White;Middle Eastern	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	76666.59	0
Spain	Man	White;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	151394.88	0
Spain	Man	White;Middle Eastern;North African	None of the above	None of the above	Fully remote	2022	1	194091.17	0
Sweden	Man	European	None of the above	None of the above	Full in-person	2022	20	50820.042	0
Spain	Man	White;Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	67932.41	0
Spain	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	30881.760000000002	0
Spain	Man	White;South American	None of the above	None of the above	Fully remote	2022	1	42699.93	0
Spain	Man;Non-binary, genderqueer, or gender non-conforming	White;European;Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	186327.96	0
Spain	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	1	40613.3	0
Spain	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	26202.54	0
Spain	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	145569.06	0
Spain	Non-binary, genderqueer, or gender non-conforming	European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	24261.510000000002	0
Spain	Non-binary, genderqueer, or gender non-conforming	European;South American	None of the above	None of the above	Fully remote	2022	1	50464.05	0
Spain	Non-binary, genderqueer, or gender non-conforming	Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	326071.2	0
Spain	Non-binary, genderqueer, or gender non-conforming	Multiracial	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	I am blind / have difficulty seeing	Fully remote	2022	1	174682.69	0
Spain	Or, in your own words:	European	None of the above	None of the above	Fully remote	2022	1	53375.14	0
Spain	Or, in your own words:	European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	29113.63	0
Spain	Or, in your own words:	I don't know	I have an anxiety disorder	None of the above	Fully remote	2022	1	29113.63	0
Spain	Or, in your own words:	Or, in your own words:	Or, in your own words:	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	51434.11	0
Spain	Or, in your own words:	White;Or, in your own words:	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Spain	Or, in your own words:;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	33965.75	0
Spain	Or, in your own words:;Woman	European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	27172.600000000002	0
Spain	Prefer not to say	Central American	None of the above	None of the above	Fully remote	2022	1	77636.65000000001	0
Spain	Prefer not to say	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	30569.63	0
Spain	Prefer not to say	Hispanic or Latino/a	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	126159.67	0
Spain	Prefer not to say	I don't know	None of the above	None of the above	Fully remote	2022	1	67932.41	0
Spain	Prefer not to say	Or, in your own words:;Caribbean;Hispanic or Latino/a;South American;Multiracial	Prefer not to say	Prefer not to say	Fully remote	2022	1	121307.55	0
Spain	Prefer not to say	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	106750.28	0
Spain	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	2	35906.78	0
Spain	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	3	49169.72666666666	0
Spain	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	21835.45	0
Spain	Woman	European	I have an anxiety disorder	None of the above	Fully remote	2022	2	65020.41	0
Spain	Woman	European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	55316.17	0
Spain	Woman	European	None of the above	None of the above	Full in-person	2022	3	145890.29	0
Spain	Woman	European	None of the above	None of the above	Fully remote	2022	6	251833.55166666667	0
Spain	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	9	96852.00777777778	0
Spain	Woman	European	Prefer not to say	None of the above	Fully remote	2022	2	23776.480000000003	0
Spain	Woman	European;Caribbean;Hispanic or Latino/a;Biracial	I have an anxiety disorder	I am deaf / hard of hearing	Fully remote	2022	1	27172.600000000002	0
Spain	Woman	European;Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	Or, in your own words:	Fully remote	2022	1	46581.99	0
Spain	Woman	European;Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	1	20379.45	0
Spain	Woman	European;Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	21395.92	0
Spain	Woman	European;Hispanic or Latino/a;South American	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	23290.54	0
Sweden	Man	European	None of the above	None of the above	Fully remote	2022	24	63008.47583333333	0
Spain	Woman	Hispanic or Latino/a	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	58227.26	0
Spain	Woman	Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	3	52857.04666666667	0
Spain	Woman	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	23776.480000000003	0
Spain	Woman	Hispanic or Latino/a;South American	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	39788.840000000004	0
Spain	Woman	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48523.020000000004	0
Spain	Woman	White	None of the above	None of the above	Fully remote	2022	2	92259.895	0
Spain	Woman	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	41729.87	0
Spain	Woman	White;European	None of the above	None of the above	Fully remote	2022	3	185679.13	0
Spain	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65991.38	0
Spain	Woman	White;European	Prefer not to say	None of the above	Fully remote	2022	1	53375.14	0
Spain	Woman	White;European;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	1	63079.380000000005	0
Spain	Woman	White;Hispanic or Latino/a	Prefer not to say	None of the above	Fully remote	2022	1	24261.510000000002	0
Spain	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	32024.72	0
Spain	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	32024.72	0
Sweden	Man	African	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	3	57683.08000000001	0
Sweden	Man	Asian	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	66557.40000000001	0
Sweden	Man	Asian	None of the above	None of the above	Fully remote	2022	1	110925.36	0
Sweden	Man	Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	65443.560000000005	0
Sweden	Man	Asian;Southeast Asian;South Asian	Or, in your own words:	Prefer not to say	Hybrid (some remote, some in-person)	2022	1	43260.49	0
Sweden	Man	Biracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	138638.5	0
Sweden	Man	Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	62003.76	0
Sweden	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	68774.16	0
Sweden	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	2	52132.08	0
Sweden	Man	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	50620.57000000001	0
Sweden	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	49915.32	0
Sweden	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Fully remote	2022	2	107043.3	0
Sweden	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	5	47427.744	0
Sweden	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	47141.64	0
Sweden	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	69327.44	0
Sweden	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Full in-person	2022	1	43265.04	0
Sweden	Man	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	49915.32	0
Sweden	Man	European	I have an anxiety disorder	None of the above	Full in-person	2022	1	64340.64	0
Sweden	Man	European	I have an anxiety disorder	None of the above	Fully remote	2022	2	39655.98	0
Sweden	Man	European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	2	38269.14	0
Sweden	Man	European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	51029.16	0
Sweden	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	53245.92	0
Sweden	Man	European	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	36236.200000000004	0
Sweden	Man	European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	3	45849.44	0
Sweden	Man	European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	1	53245.92	0
Sweden	Man	European	None of the above	I am deaf / hard of hearing	Fully remote	2022	1	52132.08	0
Sweden	Man	European	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	65443.560000000005	0
Sweden	Man	European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	64340.64	0
Sweden	Man	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	136	97485.24213235294	0
Sweden	Man	European	Or, in your own words:	None of the above	Full in-person	2022	1	46584.72	0
Sweden	Man	European	Or, in your own words:	None of the above	Fully remote	2022	1	134217.72	0
Sweden	Man	European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	42151.200000000004	0
Sweden	Man	European;African;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	51640.68	0
Sweden	Man	European;Asian;Southeast Asian;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	51029.16	0
Sweden	Man	European;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	732098.64	0
Sweden	Man	European;Central Asian	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	73949.33	0
Sweden	Man	European;Hispanic or Latino/a;Biracial	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	42708.12	0
Sweden	Man	European;Middle Eastern	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	77641.2	0
Sweden	Man	European;Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	52132.08	0
Sweden	Man	European;North American	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	39595.92	0
Sweden	Man	Hispanic or Latino/a	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	56019.6	0
Sweden	Man	Hispanic or Latino/a	None of the above	None of the above	Full in-person	2022	1	63226.8	0
Sweden	Man	Hispanic or Latino/a	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	166393.5	0
Sweden	Man	Hispanic or Latino/a;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	69602.715	0
Sweden	Man	I don't know	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	32170.32	0
Sweden	Man	I don't know	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	42424.200000000004	0
Sweden	Man	I don't know	None of the above	None of the above	Full in-person	2022	1	35217	0
Sweden	Man	I don't know	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	28654.99	0
Sweden	Man	Indian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	62254.92	0
Sweden	Man	Indian	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	55462.68	0
Sweden	Man	Indian;European;Biracial	None of the above	None of the above	Full in-person	2022	1	66557.40000000001	0
Sweden	Man	Indian;South Asian	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	110923.54000000001	0
Sweden	Man	Middle Eastern	None of the above	None of the above	Full in-person	2022	2	47977.020000000004	0
Sweden	Man	Middle Eastern	None of the above	None of the above	Fully remote	2022	1	48801.48	0
Sweden	Man	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	5	202251.13999999998	0
Sweden	Man	Multiracial	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	34387.08	0
Sweden	Man	Or, in your own words:	None of the above	None of the above	Fully remote	2022	1	44586.36	0
Sweden	Man	Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	8	66436.1425	0
Sweden	Man	Or, in your own words:;European	None of the above	None of the above	Fully remote	2022	1	38711.4	0
Sweden	Man	Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	63436.55500000001	0
Sweden	Man	Prefer not to say	None of the above	None of the above	Full in-person	2022	2	43259.58	0
Sweden	Man	Prefer not to say	None of the above	None of the above	Fully remote	2022	1	83188.56	0
Sweden	Man	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	6	60299.48166666667	0
Sweden	Man	Prefer not to say	None of the above	Prefer not to say	Full in-person	2022	1	55462.68	0
Sweden	Man	Prefer not to say	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	44367.96	0
Sweden	Man	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	52132.08	0
Sweden	Man	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	3	56274.4	0
Sweden	Man	South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	88741.38	0
Sweden	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am deaf / hard of hearing	Fully remote	2022	1	63783.72	0
Sweden	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	120685.11	0
Sweden	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	55462.68	0
Sweden	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	35500.92	0
Sweden	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	66557.40000000001	0
Sweden	Man	White	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have learning differences (e.g., Dyslexic, Dyslexia, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	52132.08	0
Sweden	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Full in-person	2022	1	37160.76	0
Sweden	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38820.6	0
Sweden	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	48801.48	0
Sweden	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	83193.11	0
Sweden	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	46584.72	0
Sweden	Man	White	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	49915.32	0
Sweden	Man	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	66557.40000000001	0
Sweden	Man	White	I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Full in-person	2022	1	35500.92	0
Sweden	Man	White	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	69877.08	0
Sweden	Man	White	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	43.68	0
Sweden	Man	White	None of the above	None of the above	Full in-person	2022	4	48558.51	0
Sweden	Man	White	None of the above	None of the above	Fully remote	2022	6	90432.00833333335	0
Sweden	Man	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	41	98222.00414634147	0
Sweden	Man	White	None of the above	Or, in your own words:	Hybrid (some remote, some in-person)	2022	1	61010.04	0
Sweden	Man	White	Prefer not to say	None of the above	Fully remote	2022	1	68774.16	0
Sweden	Man	White	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	231090.86000000002	0
Sweden	Man	White;Ethnoreligious group	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	44369.78	0
Sweden	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Full in-person	2022	1	48529.39	0
Sweden	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	66557.40000000001	0
Sweden	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	6	54536.30000000001	0
Sweden	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	552846.84	0
Sweden	Man	White;European	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	23292.36	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	2	65507.715000000004	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	55462.68	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	184872.87	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	4	43538.04	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	66557.40000000001	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	2	50581.44	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	65443.560000000005	0
Sweden	Man	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	60453.12	0
Sweden	Man	White;European	I have an anxiety disorder	None of the above	Fully remote	2022	1	18487.56	0
Sweden	Man	White;European	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	4	52478.79	0
Sweden	Man	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Fully remote	2022	1	69327.44	0
Sweden	Man	White;European	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	59898.93	0
Sweden	Man	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Fully remote	2022	1	38820.6	0
Sweden	Man	White;European	None of the above	I am blind / have difficulty seeing	Hybrid (some remote, some in-person)	2022	2	43816.5	0
Sweden	Man	White;European	None of the above	I am unable to / find it difficult to walk or stand without assistance	Fully remote	2022	1	55462.68	0
Sweden	Man	White;European	None of the above	None of the above	Full in-person	2022	16	63202.11625000001	0
Sweden	Man	White;European	None of the above	None of the above	Fully remote	2022	25	126608.26359999999	0
Sweden	Man	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	110	76868.72581818182	0
Sweden	Man	White;European	None of the above	Or, in your own words:	Fully remote	2022	1	48255.48	0
Sweden	Man	White;European	Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	3	53086.670000000006	0
Sweden	Man	White;European	Prefer not to say	None of the above	Fully remote	2022	2	67660.32	0
Sweden	Man	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	55462.68	0
Sweden	Man	White;European	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	3	53427.920000000006	0
Sweden	Man	White;European;Asian;Southeast Asian;Biracial	None of the above	None of the above	Fully remote	2022	1	40302.08	0
Sweden	Man	White;European;Hispanic or Latino/a	None of the above	I am blind / have difficulty seeing	Fully remote	2022	1	77641.2	0
Sweden	Man	White;European;Indigenous (such as Native American or Indigenous Australian)	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	58793.28	0
Sweden	Man	White;European;North American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	58793.28	0
Sweden	Man	White;European;South American	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	63226.8	0
Sweden	Man	White;Hispanic or Latino/a	None of the above	None of the above	Fully remote	2022	2	88175.36	0
Sweden	Man	White;Indigenous (such as Native American or Indigenous Australian)	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	61010.04	0
Sweden	Man	White;Middle Eastern	None of the above	None of the above	Fully remote	2022	1	61010.04	0
Sweden	Man	White;North American	None of the above	None of the above	Fully remote	2022	1	113750	0
Sweden	Man	White;Or, in your own words:	None of the above	None of the above	Full in-person	2022	1	32170.32	0
Sweden	Man	White;Or, in your own words:	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	1331082.48	0
Sweden	Man	White;Or, in your own words:;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);Or, in your own words:	None of the above	Hybrid (some remote, some in-person)	2022	1	39934.44	0
Sweden	Man	White;Or, in your own words:;European	None of the above	None of the above	Full in-person	2022	1	27725.88	0
Sweden	Man	White;Or, in your own words:;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	4	80650.3425	0
Sweden	Man;Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	53573.520000000004	0
Sweden	Man;Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	63892.920000000006	0
Sweden	Man;Or, in your own words:	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	1016788.5	0
Sweden	Man;Woman;Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	48801.48	0
Sweden	Non-binary, genderqueer, or gender non-conforming	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	44369.78	0
Sweden	Non-binary, genderqueer, or gender non-conforming	Or, in your own words:	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	30030	0
Sweden	Non-binary, genderqueer, or gender non-conforming	White	None of the above	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	52689	0
Sweden	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	62451.48	0
Sweden	Non-binary, genderqueer, or gender non-conforming	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	44367.96	0
Sweden	Non-binary, genderqueer, or gender non-conforming	White;European	None of the above	None of the above	Fully remote	2022	1	52132.08	0
Sweden	Non-binary, genderqueer, or gender non-conforming	White;European	Or, in your own words:	None of the above	Fully remote	2022	1	41037.36	0
Sweden	Non-binary, genderqueer, or gender non-conforming	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	43265.04	0
Sweden	Non-binary, genderqueer, or gender non-conforming	White;Indigenous (such as Native American or Indigenous Australian)	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	51029.16	0
Sweden	Or, in your own words:;Woman;Non-binary, genderqueer, or gender non-conforming	White;European	I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	36188.880000000005	0
Sweden	Prefer not to say	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	55461.770000000004	0
Sweden	Prefer not to say	European	None of the above	None of the above	Full in-person	2022	1	36974.21	0
Sweden	Prefer not to say	Prefer not to say	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	47698.560000000005	0
Sweden	Prefer not to say	Prefer not to say	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	57729.035	0
Sweden	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Fully remote	2022	1	49915.32	0
Sweden	Prefer not to say	Prefer not to say	Prefer not to say	Prefer not to say	Hybrid (some remote, some in-person)	2022	3	59048.08000000001	0
Sweden	Woman	African	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	41485.08	0
Sweden	Woman	African	None of the above	None of the above	Full in-person	2022	1	46680.270000000004	0
Sweden	Woman	Asian;South Asian	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	54348.840000000004	0
Sweden	Woman	European	I have a concentration and/or memory disorder (e.g., ADHD, etc.)	I am deaf / hard of hearing	Hybrid (some remote, some in-person)	2022	1	41037.36	0
Sweden	Woman	European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Fully remote	2022	1	64340.64	0
Sweden	Woman	European	None of the above	None of the above	Fully remote	2022	1	61010.04	0
Sweden	Woman	European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	43259.58	0
Sweden	Woman	Middle Eastern	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	59896.200000000004	0
Sweden	Woman	North African	I have a concentration and/or memory disorder (e.g., ADHD, etc.);I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Fully remote	2022	1	63609	0
Sweden	Woman	South Asian	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	94283.28	0
Sweden	Woman	White	I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	86519.16	0
Sweden	Woman	White	I have an anxiety disorder;I have autism / an autism spectrum disorder (e.g. Asperger's, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	52132.08	0
Sweden	Woman	White	None of the above	None of the above	Fully remote	2022	1	74321.52	0
Sweden	Woman	White	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	1	50839.880000000005	0
Sweden	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder	None of the above	Hybrid (some remote, some in-person)	2022	1	36603.840000000004	0
Sweden	Woman	White;European	I have a mood or emotional disorder (e.g., depression, bipolar disorder, etc.);I have an anxiety disorder;I have a concentration and/or memory disorder (e.g., ADHD, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	38820.6	0
Sweden	Woman	White;European	I have learning differences (e.g., Dyslexic, Dyslexia, etc.)	None of the above	Hybrid (some remote, some in-person)	2022	1	59251.920000000006	0
Sweden	Woman	White;European	None of the above	None of the above	Full in-person	2022	1	42151.200000000004	0
Sweden	Woman	White;European	None of the above	None of the above	Hybrid (some remote, some in-person)	2022	2	47747.7	0
Sweden	Woman;Non-binary, genderqueer, or gender non-conforming	White;European	Prefer not to say	None of the above	Hybrid (some remote, some in-person)	2022	1	70990.92	0
\.


--
-- TOC entry 4852 (class 0 OID 543714)
-- Dependencies: 218
-- Data for Name: datamart_rh_market; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datamart_rh_market (ville, domaine, salaire_moyen, nombre_offres, sources) FROM stdin;
Agen	commerce	37500	1	{jobs_tous}
Ahuy	infra	40000	1	{adzuna}
Aix	autre	47500	1	{jobs_tous}
Aix	commerce	30000	1	{jobs_tous}
Aix	data	42500	1	{jobs_tous}
Aix	développement	32000	2	{jobs_tous}
Aix	infra	42500	1	{jobs_tous}
Aix-en-Provence	cybersécurité	57948	3	{adzuna}
Aix-en-Provence	data	68667	3	{adzuna}
Aix-en-Provence	développement	49902	7	{adzuna}
Alfortville	autre	24300	2	{meteojob}
Alfortville	data	24000	1	{jobs_tous}
Alzonne	développement	47000	1	{adzuna}
Alès	data	48500	1	{adzuna}
Alès	développement	37000	3	{adzuna}
Ambérieu	développement	28000	1	{jobs_tous}
Amiens	autre	42500	1	{jobs_tous}
Amiens	développement	30000	2	{jobs_tous}
Amiens	infra	65000	1	{jobs_tous}
Angers	data	47500	2	{jobs_tous}
Angers	développement	40000	5	{jobs_tous}
Anglet	développement	42500	2	{jobs_tous}
Angoulême	cybersécurité	57500	1	{jobs_tous}
Annéville-la-Prairie	data	25811	1	{adzuna}
Antibes	développement	46250	2	{jobs_tous}
Antony	data	51500	2	{meteojob,jobs_tous}
Aragon	développement	47000	1	{adzuna}
Arcueil	autre	24300	1	{meteojob}
Arcueil	data	39000	1	{meteojob}
Argenteuil	autre	60000	1	{meteojob}
Argenteuil	data	50800	4	{meteojob,jobs_tous}
Argonay	développement	41500	1	{adzuna}
Asnières-sur-Seine	autre	50000	1	{jobs_tous}
Asnières-sur-Seine	cybersécurité	70000	1	{adzuna}
Asnières-sur-Seine	data	37333	3	{adzuna,jobs_tous}
Asnières-sur-Seine	développement	36000	1	{jobs_tous}
Athis-Mons	infra	50500	1	{meteojob}
Aubervilliers	autre	24300	1	{meteojob}
Aubervilliers	cybersécurité	70000	1	{adzuna}
Aubervilliers	data	34100	3	{meteojob,jobs_tous}
Aubière	commerce	22000	1	{jobs_tous}
Aulnay-sous-Bois	autre	44000	1	{meteojob}
Aumale	cybersécurité	48000	1	{jobs_tous}
Auzeville	autre	42000	1	{jobs_tous}
Avelin	développement	37000	1	{adzuna}
Badens	développement	47000	1	{adzuna}
Bagneux	data	65000	1	{jobs_tous}
Bailleau-le-Pin	data	25811	1	{adzuna}
Bain	data	24000	1	{jobs_tous}
Balma	data	35000	1	{adzuna}
Bar	développement	42500	2	{jobs_tous}
Barran	data	27000	1	{adzuna}
Bartenheim	développement	62500	1	{jobs_tous}
Baâlons	data	25811	1	{adzuna}
Beaumont	développement	50000	1	{jobs_tous}
Beauvais	développement	50000	1	{jobs_tous}
Belfort	développement	30500	1	{adzuna}
Belleville	data	25811	1	{adzuna}
Belleville	développement	40000	1	{adzuna}
Besançon	support	34250	2	{jobs_tous}
Bezons	data	32500	1	{adzuna}
Bidart	développement	15461	1	{adzuna}
Biot	développement	50000	1	{jobs_tous}
Bobigny	data	33906	2	{adzuna,meteojob}
Bois-Colombes	data	135000	2	{meteojob}
Bois-Colombes	développement	108600	2	{meteojob}
Bois-d'Ennebourg	data	28000	1	{adzuna}
Boissy	développement	65000	1	{jobs_tous}
Bondy	commerce	90000	1	{meteojob}
Bonneuil	autre	35000	1	{jobs_tous}
Bonneuil-en-France	développement	65000	1	{adzuna}
Bonneuil-sur-Marne	autre	24300	1	{meteojob}
Bordeaux	commerce	37500	1	{jobs_tous}
Bordeaux	cybersécurité	42156	4	{adzuna,jobs_tous}
Bordeaux	data	40071	7	{adzuna,jobs_tous}
Bordeaux	développement	47438	8	{adzuna,jobs_tous}
Bornel	support	28000	1	{jobs_tous}
Boulogne-Billancourt	autre	98333	3	{adzuna,meteojob}
Boulogne-Billancourt	cybersécurité	90560	15	{adzuna,meteojob,jobs_tous}
Boulogne-Billancourt	data	83926	30	{adzuna,meteojob,jobs_tous}
Boulogne-Billancourt	design	108600	9	{meteojob}
Boulogne-Billancourt	développement	85195	21	{adzuna,meteojob,jobs_tous}
Boulogne-Billancourt	support	32500	1	{jobs_tous}
Bourg	infra	80000	1	{jobs_tous}
Bourges	autre	30000	1	{jobs_tous}
Bourges	data	40500	1	{jobs_tous}
Bouxières-aux-Bois	data	22604	3	{adzuna}
Bouzigues	data	42000	1	{adzuna}
Bressols	développement	41250	2	{jobs_tous}
Brest	data	27500	1	{adzuna}
Brest	développement	29000	1	{adzuna}
Brignais	data	38000	1	{jobs_tous}
Bron	data	50000	1	{jobs_tous}
Bron	développement	56000	1	{jobs_tous}
Bruges	cybersécurité	42500	1	{jobs_tous}
Bruz	développement	59000	1	{jobs_tous}
Buc	data	60000	2	{meteojob}
Bussy-Saint-Georges	autre	40000	1	{jobs_tous}
Bussy-Saint-Georges	data	47000	1	{jobs_tous}
Bègles	data	47500	1	{adzuna}
Cachan	data	115746	1	{adzuna}
Caen	data	37000	1	{jobs_tous}
Caen	développement	46500	3	{jobs_tous}
Caixas	data	27000	1	{adzuna}
Camors	data	25811	1	{adzuna}
Carquefou	développement	24000	1	{jobs_tous}
Carros	développement	53750	2	{adzuna}
Castelnau	data	40000	1	{jobs_tous}
Castries	développement	35000	1	{jobs_tous}
Caudan	data	26500	1	{jobs_tous}
Cavanac	développement	47000	1	{adzuna}
Cergy	autre	42500	1	{jobs_tous}
Cergy	data	35500	2	{jobs_tous}
Cernay	support	55000	1	{jobs_tous}
Cesson-Sévigné	développement	40000	1	{jobs_tous}
Challans	autre	39000	1	{jobs_tous}
Chalon	design	37500	1	{jobs_tous}
Chalon	infra	37500	1	{jobs_tous}
Chamalières	data	36000	1	{jobs_tous}
Chambéry	développement	42500	1	{jobs_tous}
Champigny-sur-Marne	autre	24300	1	{meteojob}
Champs	data	38000	1	{jobs_tous}
Champs-sur-Marne	développement	108600	2	{meteojob}
Chantilly	développement	48000	1	{jobs_tous}
Charenton	développement	57500	1	{jobs_tous}
Chasseneuil-du-Poitou	data	60000	1	{adzuna}
Chaumes-en-Brie	data	25811	1	{adzuna}
Cherbourg-Octeville	autre	24000	1	{jobs_tous}
Cholet	cybersécurité	44750	4	{adzuna,jobs_tous}
Châlons-en-Champagne	infra	42500	1	{jobs_tous}
Châteaudun	autre	36000	1	{jobs_tous}
Châtenois	développement	36000	1	{jobs_tous}
Châtillon	autre	57000	2	{adzuna,jobs_tous}
Châtillon	cybersécurité	67500	1	{jobs_tous}
Châtillon	data	51143	7	{adzuna,meteojob,jobs_tous}
Civrieux	cybersécurité	55000	2	{adzuna}
Clamart	autre	24300	2	{meteojob}
Clamart	commerce	29700	1	{meteojob}
Clamart	cybersécurité	30000	1	{jobs_tous}
Clermont-Ferrand	autre	40500	1	{jobs_tous}
Clermont-Ferrand	développement	42000	1	{adzuna}
Clichy	autre	46250	4	{meteojob}
Clichy	cybersécurité	77925	4	{meteojob,jobs_tous}
Clichy	data	64809	11	{adzuna,meteojob,jobs_tous}
Clichy	développement	42167	3	{meteojob,jobs_tous}
Colombes	data	52500	1	{jobs_tous}
Colombes	développement	42500	1	{jobs_tous}
Colombier-Saugnieu	data	41667	9	{adzuna}
Colombier-Saugnieu	développement	41250	2	{adzuna}
Commercy	data	42500	1	{jobs_tous}
Compiègne	autre	37500	1	{jobs_tous}
Compiègne	support	30000	1	{jobs_tous}
Condom	autre	95000	3	{jobs_tous}
Cormeilles-en-Parisis	autre	110000	1	{meteojob}
Courbevoie	autre	69268	11	{adzuna,meteojob,jobs_tous}
Courbevoie	cybersécurité	63721	19	{adzuna,meteojob,jobs_tous}
Courbevoie	data	44392	16	{adzuna,meteojob,jobs_tous}
Courbevoie	design	43000	1	{jobs_tous}
Courbevoie	développement	49667	3	{jobs_tous}
Courbevoie	support	30000	1	{jobs_tous}
Coutiches	autre	103125	4	{adzuna}
Coutiches	data	84620	5	{adzuna}
Coutiches	développement	71550	8	{adzuna}
Créteil	autre	37500	1	{meteojob}
Créteil	data	50667	3	{meteojob,jobs_tous}
Daours	data	25811	1	{adzuna}
Dax	data	45000	1	{jobs_tous}
Denée	data	25811	1	{adzuna}
Dijon	développement	24000	1	{jobs_tous}
Dijon	support	30000	1	{jobs_tous}
Domérat	cybersécurité	35000	1	{jobs_tous}
Dreux	cybersécurité	24000	1	{jobs_tous}
Décines-Charpieu	développement	38500	1	{jobs_tous}
Eaubonne	autre	83649	1	{meteojob}
Ennery	autre	76500	2	{jobs_tous}
Ermont	data	108600	2	{meteojob}
Erny-Saint-Julien	data	25811	1	{adzuna}
Estrées-Saint-Denis	développement	39000	1	{jobs_tous}
Figeac	support	24000	1	{jobs_tous}
Fontaine	développement	40000	1	{jobs_tous}
Fontenay	cybersécurité	75000	2	{jobs_tous}
Fontenay	data	37000	2	{jobs_tous}
Fontenay	infra	22000	1	{jobs_tous}
Fontenay-Trésigny	commerce	55000	1	{jobs_tous}
Fos-sur-Mer	développement	45000	1	{adzuna}
Fourqueux	data	50000	1	{meteojob}
France	autre	48900	5	{jobs_tous}
France	cybersécurité	54250	4	{jobs_tous}
France	data	43500	4	{jobs_tous}
France	design	108833	3	{meteojob,jobs_tous}
France	développement	47917	6	{jobs_tous}
France	infra	67500	2	{jobs_tous}
France	support	36000	1	{jobs_tous}
Gallargues-le-Montueux	développement	30000	1	{jobs_tous}
Genlis	développement	25000	1	{jobs_tous}
Gennevilliers	autre	24000	1	{jobs_tous}
Gennevilliers	data	79500	2	{adzuna}
Gennevilliers	développement	44000	1	{adzuna}
Gentilly	data	41000	1	{adzuna}
Gentilly	infra	33000	1	{jobs_tous}
Golfech	data	29500	1	{jobs_tous}
Gonesse	autre	73500	1	{meteojob}
Grammond	développement	24000	1	{jobs_tous}
Granville	data	24000	1	{jobs_tous}
Grenoble	autre	62500	1	{jobs_tous}
Grenoble	cybersécurité	47500	3	{adzuna}
Grenoble	data	41500	2	{adzuna,jobs_tous}
Grenoble	design	52500	1	{adzuna}
Grenoble	développement	38500	4	{adzuna,jobs_tous}
Grenoble	infra	65000	1	{jobs_tous}
Grigny	infra	38000	1	{jobs_tous}
Guipavas	cybersécurité	36500	1	{adzuna}
Guipavas	développement	33000	1	{adzuna}
Guyancourt	autre	67500	1	{jobs_tous}
Guyancourt	cybersécurité	56250	2	{jobs_tous}
Guyancourt	data	59583	6	{jobs_tous}
Guyancourt	développement	36500	1	{jobs_tous}
Guérande	développement	30000	1	{jobs_tous}
Haut Valromey	développement	42500	1	{adzuna}
Haute-Vigneulles	data	25811	1	{adzuna}
Herblay	autre	52500	1	{jobs_tous}
Hulluch	développement	85800	2	{adzuna}
Hyères	développement	41667	3	{jobs_tous}
Ile-de-France	marketing	75000	1	{jobs_tous}
Illkirch-Graffenstaden	autre	24000	1	{jobs_tous}
Isneauville	data	50000	1	{jobs_tous}
Issy-les-Moulineaux	autre	84800	2	{adzuna,meteojob}
Issy-les-Moulineaux	cybersécurité	67500	2	{adzuna,jobs_tous}
Issy-les-Moulineaux	data	12000	1	{jobs_tous}
Issy-les-Moulineaux	design	42000	1	{meteojob}
Issy-les-Moulineaux	développement	45000	2	{meteojob,jobs_tous}
Istres	commerce	22000	1	{jobs_tous}
Ivry	autre	45000	1	{jobs_tous}
Ivry	développement	32500	1	{jobs_tous}
Ivry-sur-Seine	autre	24300	2	{meteojob}
Ivry-sur-Seine	data	37150	2	{meteojob}
Ivry-sur-Seine	développement	73000	3	{adzuna,meteojob}
Jouars	autre	48000	1	{jobs_tous}
La Colle-sur-Loup	data	86933	8	{adzuna}
La Colle-sur-Loup	développement	46100	5	{adzuna}
La Courneuve	autre	24300	1	{meteojob}
La Courneuve	data	36333	3	{meteojob,jobs_tous}
La Courneuve	design	30000	1	{jobs_tous}
La Ferté-Bernard	développement	45500	2	{jobs_tous}
La Gaubretière	développement	37500	1	{jobs_tous}
La Madeleine	data	40000	1	{jobs_tous}
La Madeleine	développement	38000	2	{jobs_tous}
La Mézière	data	25811	1	{adzuna}
La Plaine-Saint-Denis	data	55000	2	{meteojob}
La Roche-sur-Yon	data	35000	1	{jobs_tous}
La Rochelle	data	55000	1	{jobs_tous}
Labège	data	36000	1	{jobs_tous}
Lagord	autre	41000	1	{jobs_tous}
Lannion	développement	47500	1	{jobs_tous}
Lattes	data	45000	1	{jobs_tous}
Laval	développement	46125	4	{jobs_tous}
Le Blanc-Mesnil	autre	80000	1	{meteojob}
Le Havre	autre	40000	1	{jobs_tous}
Le Kremlin-Bicêtre	cybersécurité	64000	1	{adzuna}
Le Kremlin-Bicêtre	data	81786	7	{adzuna}
Le Kremlin-Bicêtre	développement	75892	13	{adzuna}
Le Luc	data	43500	1	{jobs_tous}
Le Mans	cybersécurité	42500	1	{jobs_tous}
Le Mans	data	26656	2	{adzuna}
Le Mans	développement	36750	2	{adzuna,jobs_tous}
Le Pecq	autre	50000	1	{jobs_tous}
Le Pecq	cybersécurité	82500	1	{meteojob}
Le Pecq	design	52500	1	{jobs_tous}
Le Plessis-Bouchard	data	143000	1	{adzuna}
Le Plessis-Robinson	data	102250	2	{adzuna,jobs_tous}
Le Poinçonnet	data	25811	1	{adzuna}
Le Pontet	data	27750	2	{jobs_tous}
Le Taillan-Médoc	autre	49000	1	{adzuna}
Le Taillan-Médoc	data	50000	1	{adzuna}
Le Taillan-Médoc	développement	41000	1	{adzuna}
Le Vésinet	data	35000	1	{jobs_tous}
Les Angles	développement	45000	1	{adzuna}
Les Lilas	data	58500	1	{jobs_tous}
Les Lilas	développement	30000	1	{jobs_tous}
Les Lilas	infra	62500	2	{meteojob,jobs_tous}
Les Pennes-Mirabeau	commerce	50000	1	{jobs_tous}
Les Ponts-de-Cé	développement	40000	1	{jobs_tous}
Lesquin	développement	36000	1	{jobs_tous}
Lesquin	infra	35000	1	{jobs_tous}
Leuville-sur-Orge	développement	126500	1	{adzuna}
Levallois-Perret	autre	57500	2	{meteojob,jobs_tous}
Levallois-Perret	cybersécurité	52333	3	{adzuna,meteojob,jobs_tous}
Levallois-Perret	data	63314	7	{adzuna,meteojob,jobs_tous}
Levallois-Perret	design	45000	1	{meteojob}
Lille	autre	41000	1	{jobs_tous}
Lille	cybersécurité	98812	1	{adzuna}
Lille	data	44667	12	{adzuna,jobs_tous}
Lille	développement	37045	11	{adzuna,jobs_tous}
Lille	infra	60000	1	{jobs_tous}
Lille	support	30000	1	{jobs_tous}
Limoges	data	53000	1	{adzuna}
Limoges	développement	36000	1	{jobs_tous}
Livry-Gargan	autre	24300	1	{meteojob}
Livry-Gargan	design	24300	2	{meteojob}
Lognes	data	30000	1	{jobs_tous}
Loos	data	34000	1	{jobs_tous}
Lorient	cybersécurité	42500	1	{adzuna}
Lorient	data	47500	1	{jobs_tous}
Lyon	autre	47500	5	{jobs_tous}
Lyon	cybersécurité	46300	5	{jobs_tous}
Lyon	data	45286	7	{adzuna,jobs_tous}
Lyon	design	31000	1	{jobs_tous}
Lyon	développement	46184	19	{adzuna,jobs_tous}
Lyon	infra	47500	3	{jobs_tous}
Maisons-Alfort	autre	60000	1	{jobs_tous}
Maisons-Alfort	data	37906	2	{adzuna,jobs_tous}
Maisons-Alfort	développement	46000	1	{jobs_tous}
Maisons-Laffitte	data	37500	1	{jobs_tous}
Malakoff	commerce	49167	3	{meteojob,jobs_tous}
Malakoff	cybersécurité	83283	6	{adzuna,meteojob,jobs_tous}
Marne-la-Vallée	développement	47500	1	{jobs_tous}
Marseille	autre	47500	1	{jobs_tous}
Marseille	cybersécurité	38500	1	{adzuna}
Marseille	data	48000	2	{adzuna}
Marseille	développement	72500	1	{jobs_tous}
Martillac	développement	37500	1	{jobs_tous}
Massy	autre	51667	6	{adzuna,meteojob,jobs_tous}
Massy	data	108600	9	{meteojob}
Massy	design	36000	1	{meteojob}
Massy	développement	43500	1	{adzuna}
Mayenne	data	25811	1	{adzuna}
Mayenne	développement	40000	1	{adzuna}
Meaux	data	40000	1	{jobs_tous}
Melun	support	50000	1	{jobs_tous}
Metz	cybersécurité	46500	1	{jobs_tous}
Metz	data	46500	1	{jobs_tous}
Metz	infra	32500	1	{jobs_tous}
Meudon	développement	61600	5	{adzuna,meteojob,jobs_tous}
Meulan-en-Yvelines	autre	40000	3	{jobs_tous}
Meylan	data	37500	1	{jobs_tous}
Miribel	cybersécurité	19294	4	{adzuna}
Miribel	data	71486	7	{adzuna}
Miribel	développement	45607	14	{adzuna}
Moirans	autre	37000	1	{adzuna}
Montaigu-Vendée	data	30000	1	{adzuna}
Montbonnot-Saint-Martin	infra	43750	2	{jobs_tous}
Montigny	autre	41500	1	{jobs_tous}
Montigny	développement	46375	4	{jobs_tous}
Montigny	infra	45000	1	{jobs_tous}
Montigny	support	35000	1	{jobs_tous}
Montigny-le-Bretonneux	autre	36000	1	{adzuna}
Montmorency	autre	112500	1	{meteojob}
Montpellier	data	42700	5	{adzuna,jobs_tous}
Montpellier	développement	41929	7	{jobs_tous}
Montreuil	autre	47500	1	{jobs_tous}
Montreuil	cybersécurité	71553	5	{adzuna,jobs_tous}
Montreuil	data	71007	9	{adzuna,meteojob,jobs_tous}
Montreuil	développement	46750	2	{meteojob,jobs_tous}
Montrouge	autre	41250	2	{meteojob,jobs_tous}
Montrouge	cybersécurité	41250	2	{adzuna,meteojob}
Montrouge	data	48611	9	{meteojob,jobs_tous}
Montrouge	design	108600	2	{meteojob}
Montrouge	développement	90733	3	{meteojob}
Montrouge	infra	40000	1	{meteojob}
Monze	data	27000	1	{adzuna}
Monze	développement	47000	1	{adzuna}
Mouans-Sartoux	développement	36000	1	{jobs_tous}
Mouguerre	développement	32500	1	{jobs_tous}
Mérignac	data	26000	1	{jobs_tous}
Mérignac	développement	55000	1	{adzuna}
Nancy	autre	50000	7	{jobs_tous}
Nancy	commerce	40000	2	{jobs_tous}
Nancy	développement	67650	2	{adzuna,jobs_tous}
Nanterre	autre	34767	3	{meteojob,jobs_tous}
Nanterre	commerce	90000	1	{meteojob}
Nanterre	cybersécurité	47500	1	{jobs_tous}
Nanterre	data	48605	6	{meteojob,jobs_tous}
Nanterre	design	80500	3	{meteojob}
Nanterre	développement	49600	5	{adzuna,meteojob,jobs_tous}
Nanterre	support	32500	1	{meteojob}
Nantes	autre	52500	2	{jobs_tous}
Nantes	commerce	45000	1	{jobs_tous}
Nantes	cybersécurité	50000	1	{adzuna}
Nantes	data	40000	5	{adzuna,jobs_tous}
Nantes	développement	48773	12	{adzuna,jobs_tous}
Neauphe-sous-Essai	data	25811	1	{adzuna}
Neuilly	data	45000	4	{jobs_tous}
Neuilly	développement	52500	1	{jobs_tous}
Neuilly-Plaisance	autre	29000	2	{meteojob}
Neuilly-Plaisance	cybersécurité	28000	2	{meteojob}
Neuilly-sur-Seine	autre	68369	3	{meteojob}
Neuilly-sur-Seine	cybersécurité	36200	1	{meteojob}
Neuilly-sur-Seine	data	63750	2	{adzuna}
Neuilly-sur-Seine	développement	62500	2	{meteojob}
Neuilly-sur-Seine	infra	77500	2	{meteojob}
Neuville-de-Poitou	développement	35000	1	{jobs_tous}
Nibelle	développement	37000	1	{adzuna}
Nice	autre	50000	1	{jobs_tous}
Nice	data	46833	3	{adzuna,jobs_tous}
Nice	développement	42125	4	{adzuna,jobs_tous}
Niort	autre	45000	1	{jobs_tous}
Niort	data	36200	5	{adzuna,jobs_tous}
Niort	développement	45000	2	{jobs_tous}
Noisy	infra	35000	1	{jobs_tous}
Noisy-le-Grand	data	65833	3	{adzuna,meteojob}
Noisy-le-Grand	design	50000	1	{adzuna}
Noisy-le-Grand	développement	60700	2	{adzuna}
Nort-sur-Erdre	data	42750	1	{adzuna}
Nort-sur-Erdre	développement	35000	1	{adzuna}
Nouméa	autre	40000	1	{adzuna}
Nîmes	autre	35000	1	{jobs_tous}
Olivet	data	50000	2	{jobs_tous}
Olivet	développement	39000	1	{jobs_tous}
Orange	développement	31000	1	{jobs_tous}
Orly	autre	85000	1	{meteojob}
Orly	data	49000	1	{meteojob}
Orly	design	52500	1	{meteojob}
Orléans	cybersécurité	24000	1	{jobs_tous}
Orléans	data	24000	1	{jobs_tous}
Orléans	design	24000	1	{jobs_tous}
Orléans	développement	24000	1	{jobs_tous}
Orléans	support	30000	1	{jobs_tous}
Orsay	design	39000	1	{jobs_tous}
Orvault	autre	54000	1	{jobs_tous}
Orvault	cybersécurité	36000	2	{jobs_tous}
Pacé	infra	35000	1	{jobs_tous}
Palaiseau	data	75000	1	{jobs_tous}
Palaiseau	infra	45000	1	{meteojob}
Pantin	data	45000	1	{adzuna}
Pantin	développement	37500	1	{adzuna}
Paris	autre	56090	83	{adzuna,meteojob,jobs_tous}
Paris	commerce	54567	6	{meteojob}
Paris	cybersécurité	61343	80	{adzuna,meteojob,jobs_tous}
Paris	data	63754	214	{adzuna,meteojob,jobs_tous}
Paris	design	100936	11	{meteojob}
Paris	développement	65497	116	{adzuna,meteojob,jobs_tous}
Paris	infra	60625	8	{meteojob,jobs_tous}
Paris	support	32932	5	{meteojob,jobs_tous}
Paris 01	autre	68333	3	{meteojob}
Paris 01	cybersécurité	67500	1	{meteojob}
Paris 01	data	57500	1	{meteojob}
Paris 01	design	53750	2	{meteojob}
Paris 01	développement	53750	2	{meteojob}
Paris 03	data	50000	1	{meteojob}
Paris 06	infra	75000	1	{meteojob}
Paris 07	autre	56000	1	{meteojob}
Paris 08	autre	57000	5	{meteojob}
Paris 08	data	40000	1	{meteojob}
Paris 08	développement	73750	2	{meteojob}
Paris 09	autre	67500	1	{meteojob}
Paris 11	cybersécurité	70500	1	{meteojob}
Paris 11	data	52500	1	{meteojob}
Paris 13	autre	110000	1	{meteojob}
Paris 13	data	42500	1	{meteojob}
Paris 13	design	70500	1	{meteojob}
Paris 13	développement	77500	1	{meteojob}
Paris 14	autre	45000	1	{meteojob}
Paris 15	autre	80000	1	{meteojob}
Paris 15	développement	75000	1	{meteojob}
Paris 17	autre	69000	2	{meteojob}
Paris 17	data	48380	5	{meteojob}
Paris 19	cybersécurité	108600	1	{meteojob}
Paris 19	data	52750	2	{meteojob}
Pau	développement	42500	1	{jobs_tous}
Pernes-les-Fontaines	data	27000	1	{adzuna}
Pierrelatte	cybersécurité	47500	1	{jobs_tous}
Plaisir	autre	48125	4	{jobs_tous}
Polynésie Française	cybersécurité	35200	1	{adzuna}
Puilacher	data	44750	2	{adzuna}
Puilacher	développement	49875	4	{adzuna}
Puteaux	autre	62625	4	{meteojob,jobs_tous}
Puteaux	cybersécurité	44667	3	{adzuna,meteojob,jobs_tous}
Puteaux	data	37667	9	{meteojob,jobs_tous}
Puteaux	design	24500	1	{jobs_tous}
Puteaux	développement	22000	4	{jobs_tous}
Pérols	autre	24000	1	{jobs_tous}
Ramonville-Saint-Agne	cybersécurité	50000	1	{adzuna}
Ramonville-Saint-Agne	data	64272	1	{adzuna}
Recy	data	25811	1	{adzuna}
Reims	data	37000	1	{jobs_tous}
Rennes	commerce	52000	1	{jobs_tous}
Rennes	cybersécurité	100000	3	{adzuna,jobs_tous}
Rennes	data	44000	2	{adzuna,jobs_tous}
Rennes	développement	53863	5	{adzuna,jobs_tous}
Rieumes	cybersécurité	43000	1	{adzuna}
Rieumes	data	101200	1	{adzuna}
Rieumes	développement	90750	2	{adzuna}
Rillieux-la-Pape	développement	36000	1	{adzuna}
Rivesaltes	data	36000	1	{jobs_tous}
Roche-la-Molière	cybersécurité	55000	1	{adzuna}
Roche-la-Molière	développement	37500	1	{adzuna}
Roissy	autre	25500	1	{jobs_tous}
Romans	autre	45000	1	{jobs_tous}
Roncq	développement	55000	1	{jobs_tous}
Roubaix	data	41500	1	{jobs_tous}
Roubaix	développement	32000	1	{jobs_tous}
Rouen	cybersécurité	40000	1	{adzuna}
Rouen	data	43400	5	{adzuna,jobs_tous}
Rouen	design	36000	3	{jobs_tous}
Rouen	développement	39833	3	{jobs_tous}
Rozérieulles	support	26000	1	{jobs_tous}
Rueil-Malmaison	commerce	31830	1	{meteojob}
Rueil-Malmaison	cybersécurité	85400	3	{meteojob,jobs_tous}
Rueil-Malmaison	data	37750	2	{meteojob,jobs_tous}
Rueil-Malmaison	design	41500	1	{jobs_tous}
Rueil-Malmaison	développement	49500	2	{meteojob,jobs_tous}
Rugles	autre	45000	1	{jobs_tous}
Rugles	data	30000	1	{jobs_tous}
Rungis	autre	60000	2	{meteojob,jobs_tous}
Rungis	cybersécurité	44167	3	{adzuna}
Rungis	data	47500	3	{adzuna}
Rupt-devant-Saint-Mihiel	data	25811	1	{adzuna}
Réalmont	data	27000	1	{adzuna}
Saint-André-lez-Lille	data	37214	7	{adzuna}
Saint-Avertin	autre	36000	1	{jobs_tous}
Saint-Avé	autre	24000	1	{jobs_tous}
Saint-Branchs	data	36000	1	{jobs_tous}
Saint-Branchs	développement	36000	1	{jobs_tous}
Saint-Chamas	cybersécurité	45500	2	{adzuna}
Saint-Chamas	data	27000	1	{adzuna}
Saint-Cloud	cybersécurité	53750	6	{adzuna}
Saint-Cloud	data	49500	2	{adzuna,meteojob}
Saint-Cloud	design	32500	1	{jobs_tous}
Saint-Denis	autre	42035	6	{meteojob,jobs_tous}
Saint-Denis	commerce	48500	1	{meteojob}
Saint-Denis	cybersécurité	84612	16	{adzuna,meteojob,jobs_tous}
Saint-Denis	data	98167	15	{meteojob}
Saint-Denis	design	90870	10	{meteojob}
Saint-Denis	développement	85812	18	{adzuna,meteojob,jobs_tous}
Saint-Denis	infra	50000	3	{meteojob}
Saint-Dizier	autre	65000	1	{jobs_tous}
Saint-Gratien	développement	45000	1	{jobs_tous}
Saint-Herblain	cybersécurité	45000	1	{jobs_tous}
Saint-Herblain	data	43750	2	{adzuna,jobs_tous}
Saint-Herblain	développement	43000	3	{jobs_tous}
Saint-Jean-de-Crieulon	data	27000	1	{adzuna}
Saint-Maurice	support	34500	1	{jobs_tous}
Saint-Nazaire	développement	47500	1	{adzuna}
Saint-Ouen	data	52500	3	{meteojob}
Saint-Ouen	développement	50000	1	{jobs_tous}
Saint-Ouen	support	27500	1	{jobs_tous}
Saint-Priest	autre	42500	1	{jobs_tous}
Saint-Rémy	autre	70000	1	{jobs_tous}
Saint-Sauveur	data	65000	1	{jobs_tous}
Saint-Sébastien	cybersécurité	26000	1	{jobs_tous}
Saint-Sébastien	support	23000	1	{jobs_tous}
Saint-Étienne	autre	104500	1	{adzuna}
Saint-Étienne	support	24000	1	{jobs_tous}
Sainte-Luce	développement	55000	1	{jobs_tous}
Sainte-Marie-des-Champs	data	25811	1	{adzuna}
Saintes	commerce	35000	1	{jobs_tous}
Schiltigheim	cybersécurité	35000	1	{jobs_tous}
Schiltigheim	développement	45000	1	{jobs_tous}
Secondigny	data	68500	2	{adzuna}
Seine-Saint-Denis	autre	56000	1	{jobs_tous}
Senonches	autre	52500	1	{jobs_tous}
Serris	commerce	47500	1	{jobs_tous}
Serris	support	30000	1	{jobs_tous}
Sevran	data	46200	1	{meteojob}
Sombernon	data	57500	1	{adzuna}
Stains	design	39500	1	{jobs_tous}
Strasbourg	autre	34500	1	{jobs_tous}
Strasbourg	cybersécurité	37500	5	{jobs_tous}
Strasbourg	data	41115	13	{adzuna,jobs_tous}
Strasbourg	développement	45000	2	{jobs_tous}
Strasbourg	support	32500	1	{jobs_tous}
Sucy	autre	37500	1	{jobs_tous}
Sucy	support	24000	1	{jobs_tous}
Sucy-en-Brie	autre	60000	1	{meteojob}
Suresnes	cybersécurité	43500	1	{jobs_tous}
Suresnes	data	64272	1	{adzuna}
Sète	data	47500	1	{adzuna}
Sèvres	cybersécurité	115000	1	{jobs_tous}
Sèvres	développement	57500	1	{meteojob}
Sénaillac-Lauzès	data	27000	1	{adzuna}
Tassin	infra	55000	1	{jobs_tous}
Thiverval-Grignon	data	25811	1	{adzuna}
Thonon	commerce	35000	2	{jobs_tous}
Toulon	autre	50000	1	{jobs_tous}
Toulon	cybersécurité	38500	1	{adzuna}
Toulouse	autre	48375	8	{adzuna,jobs_tous}
Toulouse	cybersécurité	50417	6	{adzuna,jobs_tous}
Toulouse	data	39812	8	{adzuna,jobs_tous}
Toulouse	développement	48446	8	{adzuna,jobs_tous}
Toulouse	infra	46000	1	{jobs_tous}
Tourcoing	data	42500	2	{adzuna,jobs_tous}
Tourcoing	développement	36333	3	{adzuna,jobs_tous}
Tours	cybersécurité	44000	2	{adzuna,jobs_tous}
Tours	développement	40500	1	{jobs_tous}
Trappes	data	35500	1	{jobs_tous}
Trappes	développement	47500	1	{jobs_tous}
Truchtersheim	data	40000	1	{adzuna}
Truchtersheim	développement	38250	2	{adzuna}
Télétravail	cybersécurité	70000	1	{jobs_tous}
Télétravail	data	62500	1	{jobs_tous}
Télétravail	design	35500	1	{jobs_tous}
Télétravail	développement	47500	10	{jobs_tous}
Télétravail	infra	50000	2	{jobs_tous}
Valbonne	data	39500	1	{jobs_tous}
Valbonne	développement	50000	1	{adzuna}
Valence	développement	31000	2	{jobs_tous}
Valence	infra	50000	1	{jobs_tous}
Vallauris	développement	47083	6	{adzuna,jobs_tous}
Vannes	data	30000	1	{jobs_tous}
Vannes	développement	42000	1	{adzuna}
Vaulx-Milieu	développement	39000	1	{adzuna}
Ventenac-Cabardès	développement	47000	1	{adzuna}
Vergt	autre	25000	1	{jobs_tous}
Verlinghem	data	50500	2	{jobs_tous}
Verlinghem	développement	42500	1	{jobs_tous}
Versailles	autre	56000	25	{meteojob,jobs_tous}
Versailles	commerce	90000	1	{meteojob}
Versailles	cybersécurité	51250	2	{adzuna,meteojob}
Versailles	data	55250	8	{meteojob}
Versailles	développement	35500	1	{meteojob}
Versailles	infra	52500	2	{meteojob}
Vert-le-Grand	développement	25000	1	{jobs_tous}
Viellenave-de-Navarrenx	développement	37500	1	{adzuna}
Vieux	data	34156	2	{adzuna}
Villebon	développement	38000	1	{jobs_tous}
Villebon-sur-Yvette	data	45000	1	{meteojob}
Villejuif	data	48750	2	{adzuna,jobs_tous}
Villejuif	développement	47500	1	{jobs_tous}
Villemomble	commerce	29700	1	{meteojob}
Villemomble	data	28200	1	{meteojob}
Villeneuve-d'Ascq	data	44500	4	{jobs_tous}
Villeneuve-d'Ascq	design	30000	1	{jobs_tous}
Villeneuve-d'Ascq	développement	45250	2	{adzuna}
Villeneuve-la-Garenne	commerce	29700	1	{meteojob}
Villeneuve-la-Garenne	design	24300	1	{meteojob}
Villeperdue	data	25811	1	{adzuna}
Villeperdue	développement	37000	1	{adzuna}
Villepinte	design	93000	1	{jobs_tous}
Villepinte	développement	57500	2	{meteojob}
Villers-lès-Nancy	développement	29000	1	{adzuna}
Villeurbanne	autre	39250	2	{adzuna,jobs_tous}
Villeurbanne	cybersécurité	45833	3	{adzuna}
Villeurbanne	data	41500	2	{adzuna,jobs_tous}
Villeurbanne	développement	64272	3	{adzuna}
Vincennes	design	108600	2	{meteojob}
Vineuil	data	25811	1	{adzuna}
Vineuil	développement	41000	1	{jobs_tous}
Vitrolles	autre	42500	1	{jobs_tous}
Vitrolles	data	50000	1	{jobs_tous}
Vitry-sur-Seine	autre	41000	1	{meteojob}
Vitry-sur-Seine	commerce	90000	1	{meteojob}
Vitry-sur-Seine	cybersécurité	81250	2	{adzuna,meteojob}
Vitry-sur-Seine	data	80250	2	{meteojob}
Voglans	développement	37500	1	{jobs_tous}
Vélizy	autre	39500	2	{jobs_tous}
Vélizy	data	45000	1	{jobs_tous}
Vélizy-Villacoublay	data	61250	2	{adzuna,meteojob}
Vézénobres	développement	40000	4	{jobs_tous}
Wambrechies	développement	45333	3	{adzuna}
Wasquehal	data	55000	1	{jobs_tous}
Échirolles	cybersécurité	50000	1	{adzuna}
Écully	développement	31750	2	{adzuna,jobs_tous}
Élancourt	cybersécurité	46000	1	{jobs_tous}
Élancourt	développement	43500	1	{jobs_tous}
Élincourt-Sainte-Marguerite	data	41500	1	{adzuna}
Île-de-France	data	68750	2	{jobs_tous}
Île-de-France	design	30500	1	{jobs_tous}
сельское поселение Шалушка	data	36000	1	{adzuna}
\.


--
-- TOC entry 4851 (class 0 OID 543698)
-- Dependencies: 217
-- Data for Name: datamart_salary_by_country_seniority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datamart_salary_by_country_seniority (country, seniority_level, avg_salary, median_salary, count) FROM stdin;
Austria	Expert	90852.41783333333	68858.79000000001	780
Austria	Intermediate	58255.759545454544	48119.435000000005	440
Austria	Junior	36898.05040697674	37906.96	172
Austria	Senior	68780.473125	58783.725000000006	352
Belgium	Expert	157981.79698205547	64045.8	613
Belgium	Intermediate	58626.25291907515	42559.335	346
Belgium	Junior	38867.459829545456	33120.36	176
Belgium	Senior	64452.72482638889	55457.675	288
Bulgaria	Expert	54762.294796511625	45615.115000000005	344
Bulgaria	Intermediate	34206.8775308642	28302.365	162
Bulgaria	Junior	23569.051704545454	17985.239999999998	88
Bulgaria	Senior	45798.73	42454.23	182
Croatia	Expert	70967.49453608248	47230.365000000005	194
Croatia	Intermediate	32826.573684210525	28523.04	133
Croatia	Junior	24447.066	18564	65
Croatia	Senior	47717.02504854369	40229.28	103
Cyprus	Expert	145608.6514084507	78191.75	71
Cyprus	Intermediate	45885.775	39095.42	28
Cyprus	Junior	39696.93	21439.600000000002	9
Cyprus	Senior	65503.90241379311	51648.87	29
Czech Republic	Expert	58548.029272727275	49678.72	715
Czech Republic	Intermediate	37741.147826086955	33098.520000000004	322
Czech Republic	Junior	28497.469752066118	23641.8	121
Czech Republic	Senior	48363.18014457832	43477.98	415
Denmark	Expert	112300.16287812042	97078.8	681
Denmark	Intermediate	78702.50869565217	71964.62	322
Denmark	Junior	56377.61541176471	60562.32	170
Denmark	Senior	86631.49678807947	81419.52	302
Estonia	Expert	65413.13732876713	58226.350000000006	146
Estonia	Intermediate	42840.6979	41120.17	100
Estonia	Junior	29816.306896551723	29235.57	29
Estonia	Senior	55393.832525252525	55429.920000000006	99
Finland	Expert	73239.35436170214	64317.89	658
Finland	Intermediate	66913.63154411766	49576.8	272
Finland	Junior	41445.88	37521.12	117
Finland	Senior	71545.44925438597	59022.145000000004	228
France	Expert	82974.92242411287	58644.04	2339
France	Intermediate	64655.56777251185	41904.590000000004	1477
France	Junior	46139.09733333333	35412.65	735
France	Senior	71592.19980541455	50988.21000000001	1182
Germany	Expert	99180.10342076702	75744.76000000001	5528
Germany	Intermediate	72848.26083129585	54103.14	2863
Germany	Junior	55925.93601469238	46584.72	1089
Germany	Senior	86465.08187708256	63940.240000000005	2701
Greece	Expert	60729.83903755868	40929.98	426
Greece	Intermediate	34511.242736486485	24312.015	296
Greece	Junior	25694.95060810811	15342.6	148
Greece	Senior	69032.78277777777	37380.07	234
Hungary	Expert	53530.35846335697	40859	423
Hungary	Intermediate	32153.630129310346	28104.440000000002	232
Hungary	Junior	19469.863636363636	19003.53	99
Hungary	Senior	44898.35264150943	35575.994999999995	212
Ireland	Expert	166384.2714130435	97739.46	460
Ireland	Intermediate	97501.63269736842	62855.975000000006	152
Ireland	Junior	102901.09916666667	44352.035	84
Ireland	Senior	186201.59840490797	83613.53	163
Italy	Expert	86649.78771653544	43983.03	1651
Italy	Intermediate	48248.085249266864	31054.66	682
Italy	Junior	36351.113352272725	23533.055	352
Italy	Senior	64215.351437908495	38980.76	612
Latvia	Expert	65949.39624	50675.17	125
Latvia	Intermediate	38654.44586956522	33586.28	46
Latvia	Junior	23742.11666666667	20966.4	21
Latvia	Senior	49802.652586206896	45609.2	58
Lithuania	Expert	70068.2619	60889.01	200
Lithuania	Intermediate	51452.59324503312	43319.64	151
Lithuania	Junior	29153.893508771933	29112.72	57
Lithuania	Senior	67168.62909836066	58471.14	122
Luxembourg	Expert	92858.178	84990.36	65
Luxembourg	Intermediate	77322.26666666668	63079.380000000005	21
Luxembourg	Junior	47963.37	47066.565	14
Luxembourg	Senior	99212.35434782608	84597.24	23
Malta	Expert	86965.06000000001	56521.920000000006	47
Malta	Intermediate	111195.73111111112	41817.23	18
Malta	Junior	48901.579999999994	28438.864999999998	12
Malta	Senior	58141.821111111116	51486.435	18
Netherlands	Expert	99694.50843902439	73576.23	1845
Netherlands	Intermediate	68324.94810301508	48523.020000000004	796
Netherlands	Junior	44835.59742774567	38362.869999999995	346
Netherlands	Senior	82603.24168903804	63841.96000000001	894
Poland	Expert	68133.27942528736	58050.72	1479
Poland	Intermediate	42743.53409311348	35937.72	1031
Poland	Junior	24911.330563380285	21618.87	497
Poland	Senior	59015.14265175719	50505	939
Portugal	Expert	81083.26880952381	53247.285	588
Portugal	Intermediate	44800.79690553746	32024.72	307
Portugal	Junior	30413.392413793106	21641.62	145
Portugal	Senior	204540.5850526316	44640.96	285
Romania	Expert	65845.2072972973	50938.16	518
Romania	Intermediate	39402.25453874539	32870.11	271
Romania	Junior	22912.188662420383	17672.2	157
Romania	Senior	77060.1549632353	46849.985	272
Slovakia	Expert	51768.0462962963	47751.340000000004	243
Slovakia	Intermediate	34910.874375	30248.4	112
Slovakia	Junior	21547.39166666667	21250.32	42
Slovakia	Senior	45934.03915254238	40764.36	118
Slovenia	Expert	68508.62675373134	54337.92	268
Slovenia	Intermediate	43583.45952380952	35413.56	147
Slovenia	Junior	27223.283043478263	26570.18	46
Slovenia	Senior	65028.834838709685	45722.04	124
Spain	Expert	80080.15653207964	50675.17	1808
Spain	Intermediate	52823.66261146497	33965.75	785
Spain	Junior	39616.42390588235	24362.52	425
Spain	Senior	76874.31199445984	46679.36	722
Sweden	Expert	72332.07719519899	59568.6	1583
Sweden	Intermediate	65916.4980068143	46680.270000000004	587
Sweden	Junior	48699.012110726646	39093.6	289
Sweden	Senior	61183.06477148081	52120.25	547
\.


--
-- TOC entry 4853 (class 0 OID 543719)
-- Dependencies: 219
-- Data for Name: datamart_tech_popularity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datamart_tech_popularity (tech_type, technology, status, count) FROM stdin;
Database	BigQuery	used	1036
Database	BigQuery	wanted	920
Database	Cassandra	used	1273
Database	Cassandra	wanted	1871
Database	Clickhouse	used	314
Database	Clickhouse	wanted	434
Database	Cloud Firestore	used	1578
Database	Cloud Firestore	wanted	1209
Database	Cockroachdb	used	184
Database	Cockroachdb	wanted	439
Database	Cosmos DB	used	896
Database	Cosmos DB	wanted	811
Database	Couch DB	used	304
Database	Couch DB	wanted	251
Database	CouchDB	used	153
Database	CouchDB	wanted	189
Database	Couchbase	used	482
Database	Couchbase	wanted	431
Database	Databricks SQL	used	116
Database	Databricks SQL	wanted	121
Database	Datomic	used	61
Database	Datomic	wanted	158
Database	DuckDB	used	180
Database	DuckDB	wanted	411
Database	DynamoDB	used	1694
Database	DynamoDB	wanted	1590
Database	Dynamodb	used	1785
Database	Dynamodb	wanted	1345
Database	Elasticsearch	used	8156
Database	Elasticsearch	wanted	7757
Database	EventStoreDB	used	21
Database	EventStoreDB	wanted	60
Database	Firebase	used	1517
Database	Firebase	wanted	1259
Database	Firebase Realtime Database	used	1560
Database	Firebase Realtime Database	wanted	1312
Database	Firebird	used	325
Database	Firebird	wanted	235
Database	H2	used	1267
Database	H2	wanted	606
Database	IBM DB2	used	1075
Database	IBM DB2	wanted	327
Database	InfluxDB	used	954
Database	InfluxDB	wanted	705
Database	MariaDB	used	10087
Database	MariaDB	wanted	6253
Database	Microsoft Access	used	680
Database	Microsoft Access	wanted	131
Database	Microsoft SQL Server	used	12431
Database	Microsoft SQL Server	wanted	7433
Database	MongoDB	used	11162
Database	MongoDB	wanted	9713
Database	MySQL	used	18480
Database	MySQL	wanted	9725
Database	Neo4J	used	428
Database	Neo4J	wanted	638
Database	Neo4j	used	237
Database	Neo4j	wanted	432
Database	Oracle	used	5748
Database	Oracle	wanted	2184
Database	PostgreSQL	used	23173
Database	PostgreSQL	wanted	21126
Database	Presto	used	38
Database	Presto	wanted	39
Database	RavenDB	used	74
Database	RavenDB	wanted	85
Database	Redis	used	10812
Database	Redis	wanted	11419
Database	SQLite	used	14340
Database	SQLite	wanted	10295
Database	Snowflake	used	406
Database	Snowflake	wanted	535
Database	Solr	used	483
Database	Solr	wanted	278
Database	Supabase	used	568
Database	Supabase	wanted	927
Database	TiDB	used	26
Database	TiDB	wanted	75
Language	APL	used	84
Language	APL	wanted	116
Language	Ada	used	130
Language	Ada	wanted	128
Language	Apex	used	152
Language	Apex	wanted	96
Language	Assembly	used	1922
Language	Assembly	wanted	1303
Language	Bash/Shell	used	8667
Language	Bash/Shell	wanted	5253
Language	Bash/Shell (all shells)	used	9063
Language	Bash/Shell (all shells)	wanted	5806
Language	C	used	7877
Language	C	wanted	4355
Language	C#	used	14587
Language	C#	wanted	11446
Language	C++	used	9618
Language	C++	wanted	6761
Language	COBOL	used	147
Language	COBOL	wanted	43
Language	Clojure	used	895
Language	Clojure	wanted	1358
Language	Cobol	used	140
Language	Cobol	wanted	86
Language	Crystal	used	150
Language	Crystal	wanted	287
Language	Dart	used	2407
Language	Dart	wanted	2876
Language	Delphi	used	1665
Language	Delphi	wanted	1016
Language	Elixir	used	1315
Language	Elixir	wanted	2559
Language	Erlang	used	546
Language	Erlang	wanted	943
Language	F#	used	524
Language	F#	wanted	1399
Language	Flow	used	31
Language	Flow	wanted	11
Language	Fortran	used	312
Language	Fortran	wanted	116
Language	GDScript	used	358
Language	GDScript	wanted	423
Language	Go	used	6284
Language	Go	wanted	10187
Language	Groovy	used	2433
Language	Groovy	wanted	895
Language	HTML/CSS	used	27011
Language	HTML/CSS	wanted	18098
Language	Haskell	used	858
Language	Haskell	wanted	1757
Language	Java	used	16887
Language	Java	wanted	9399
Language	JavaScript	used	32580
Language	JavaScript	wanted	20748
Language	Julia	used	522
Language	Julia	wanted	1168
Language	Kotlin	used	5268
Language	Kotlin	wanted	6964
Language	LISP	used	290
Language	LISP	wanted	380
Language	Lisp	used	283
Language	Lisp	wanted	349
Language	Lua	used	1667
Language	Lua	wanted	1300
Language	MATLAB	used	1099
Language	MATLAB	wanted	246
Language	Matlab	used	513
Language	Matlab	wanted	116
Language	MicroPython	used	98
Language	MicroPython	wanted	92
Language	Nim	used	60
Language	Nim	wanted	158
Language	Node.js	used	4690
Language	Node.js	wanted	3722
Language	OCaml	used	225
Language	OCaml	wanted	401
Language	Objective-C	used	1236
Language	Objective-C	wanted	394
Language	PHP	used	10958
Language	PHP	wanted	5198
Language	Perl	used	1267
Language	Perl	wanted	518
Language	PowerShell	used	6833
Language	PowerShell	wanted	3426
Language	Prolog	used	160
Language	Prolog	wanted	115
Language	Python	used	22440
Language	Python	wanted	18768
Language	R	used	2004
Language	R	wanted	1393
Language	Raku	used	20
Language	Raku	wanted	28
Language	Ruby	used	3234
Language	Ruby	wanted	2287
Language	Rust	used	5196
Language	Rust	wanted	13558
Language	SAS	used	89
Language	SAS	wanted	60
Language	SQL	used	26561
Language	SQL	wanted	18647
Language	Scala	used	1839
Language	Scala	wanted	1979
Language	Solidity	used	321
Language	Solidity	wanted	577
Language	Swift	used	2435
Language	Swift	wanted	2775
Language	TypeScript	used	21187
Language	TypeScript	wanted	19648
Language	VBA	used	2126
Language	VBA	wanted	448
Language	Visual Basic (.Net)	used	790
Language	Visual Basic (.Net)	wanted	197
Language	Zephyr	used	22
Language	Zephyr	wanted	32
Language	Zig	used	160
Language	Zig	wanted	1026
ToolsTech	APT	used	1979
ToolsTech	APT	wanted	1452
ToolsTech	Ansible	used	5749
ToolsTech	Ansible	wanted	5122
ToolsTech	Ant	used	680
ToolsTech	Ant	wanted	174
ToolsTech	Boost.Test	used	52
ToolsTech	Boost.Test	wanted	38
ToolsTech	Bun	used	331
ToolsTech	Bun	wanted	849
ToolsTech	CMake	used	2050
ToolsTech	CMake	wanted	1152
ToolsTech	CUTE	used	1
ToolsTech	Cargo	used	1747
ToolsTech	Cargo	wanted	2163
ToolsTech	Catch2	used	166
ToolsTech	Catch2	wanted	145
ToolsTech	Chef	used	454
ToolsTech	Chef	wanted	341
ToolsTech	Chocolatey	used	1823
ToolsTech	Chocolatey	wanted	994
ToolsTech	Composer	used	2386
ToolsTech	Composer	wanted	1538
ToolsTech	Dagger	used	302
ToolsTech	Dagger	wanted	263
ToolsTech	Deno	used	169
ToolsTech	Deno	wanted	799
ToolsTech	Docker	used	30721
ToolsTech	Docker	wanted	27699
ToolsTech	ELFspy	used	5
ToolsTech	ELFspy	wanted	3
ToolsTech	Flow	used	211
ToolsTech	Flow	wanted	174
ToolsTech	GNU GCC	used	1533
ToolsTech	GNU GCC	wanted	1102
ToolsTech	Git	used	12816
ToolsTech	Git	wanted	11489
ToolsTech	Godot	used	637
ToolsTech	Godot	wanted	1042
ToolsTech	Google Test	used	748
ToolsTech	Google Test	wanted	613
ToolsTech	Gradle	used	3774
ToolsTech	Gradle	wanted	2406
ToolsTech	Homebrew	used	8176
ToolsTech	Homebrew	wanted	6104
ToolsTech	Kubernetes	used	11932
ToolsTech	Kubernetes	wanted	15102
ToolsTech	LLVM's Clang	used	991
ToolsTech	LLVM's Clang	wanted	864
ToolsTech	MSBuild	used	2826
ToolsTech	MSBuild	wanted	1810
ToolsTech	MSVC	used	714
ToolsTech	MSVC	wanted	388
ToolsTech	Make	used	4905
ToolsTech	Make	wanted	3010
ToolsTech	Maven (build tool)	used	4337
ToolsTech	Maven (build tool)	wanted	2536
ToolsTech	Meson	used	165
ToolsTech	Meson	wanted	166
ToolsTech	Ninja	used	979
ToolsTech	Ninja	wanted	753
ToolsTech	Nix	used	502
ToolsTech	Nix	wanted	793
ToolsTech	NuGet	used	3955
ToolsTech	NuGet	wanted	2904
ToolsTech	Pacman	used	1311
ToolsTech	Pacman	wanted	1031
ToolsTech	Pip	used	6210
ToolsTech	Pip	wanted	3841
ToolsTech	Podman	used	1356
ToolsTech	Podman	wanted	1727
ToolsTech	Pulumi	used	386
ToolsTech	Pulumi	wanted	830
ToolsTech	Puppet	used	776
ToolsTech	Puppet	wanted	577
ToolsTech	QMake	used	215
ToolsTech	QMake	wanted	72
ToolsTech	SCons	used	66
ToolsTech	SCons	wanted	29
ToolsTech	Terraform	used	5955
ToolsTech	Terraform	wanted	7161
ToolsTech	Unity 3D	used	2779
ToolsTech	Unity 3D	wanted	3060
ToolsTech	Unreal Engine	used	1096
ToolsTech	Unreal Engine	wanted	2430
ToolsTech	Visual Studio Solution	used	3233
ToolsTech	Visual Studio Solution	wanted	2410
ToolsTech	Vite	used	3748
ToolsTech	Vite	wanted	3988
ToolsTech	Wasmer	used	78
ToolsTech	Wasmer	wanted	214
ToolsTech	Webpack	used	5138
ToolsTech	Webpack	wanted	2110
ToolsTech	Xamarin	used	540
ToolsTech	Xamarin	wanted	485
ToolsTech	Yarn	used	10444
ToolsTech	Yarn	wanted	6739
ToolsTech	bandit	used	87
ToolsTech	bandit	wanted	67
ToolsTech	build2	used	16
ToolsTech	build2	wanted	13
ToolsTech	cppunit	used	73
ToolsTech	cppunit	wanted	54
ToolsTech	doctest	used	77
ToolsTech	doctest	wanted	68
ToolsTech	lest	used	5
ToolsTech	lest	wanted	6
ToolsTech	liblittletest	used	2
ToolsTech	liblittletest	wanted	2
ToolsTech	npm	used	17949
ToolsTech	npm	wanted	11292
ToolsTech	pnpm	used	1624
ToolsTech	pnpm	wanted	1717
ToolsTech	snitch	used	7
ToolsTech	snitch	wanted	4
ToolsTech	tunit	used	3
ToolsTech	tunit	wanted	3
\.


-- Completed on 2025-07-04 10:11:08

--
-- PostgreSQL database dump complete
--

