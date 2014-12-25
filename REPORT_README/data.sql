--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AnimeSeason; Type: TABLE; Schema: public; Owner: minhnh; Tablespace: 
--

CREATE TABLE "AnimeSeason" (
    anime_id integer NOT NULL,
    season_id integer NOT NULL
);


ALTER TABLE public."AnimeSeason" OWNER TO minhnh;

--
-- Name: Anime_; Type: TABLE; Schema: public; Owner: minhnh; Tablespace: 
--

CREATE TABLE "Anime_" (
    id integer NOT NULL,
    english_title character varying(1000),
    romaji_title character varying(1000),
    producer character varying(200),
    description text,
    release_date character varying(30)
);


ALTER TABLE public."Anime_" OWNER TO minhnh;

--
-- Name: Bookmarks; Type: TABLE; Schema: public; Owner: minhnh; Tablespace: 
--

CREATE TABLE "Bookmarks" (
    anime_id integer NOT NULL,
    note character varying
);


ALTER TABLE public."Bookmarks" OWNER TO minhnh;

--
-- Name: Characters; Type: TABLE; Schema: public; Owner: minhnh; Tablespace: 
--

CREATE TABLE "Characters" (
    id integer NOT NULL,
    anime_id integer,
    name character varying(200)
);


ALTER TABLE public."Characters" OWNER TO minhnh;

--
-- Name: genre_id_seq; Type: SEQUENCE; Schema: public; Owner: minhnh
--

CREATE SEQUENCE genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_id_seq OWNER TO minhnh;

--
-- Name: Genre; Type: TABLE; Schema: public; Owner: minhnh; Tablespace: 
--

CREATE TABLE "Genre" (
    id integer DEFAULT nextval('genre_id_seq'::regclass) NOT NULL,
    anime_id integer NOT NULL,
    tag character varying(100) NOT NULL
);


ALTER TABLE public."Genre" OWNER TO minhnh;

--
-- Name: Season; Type: TABLE; Schema: public; Owner: minhnh; Tablespace: 
--

CREATE TABLE "Season" (
    year integer,
    season_in_year text,
    id integer NOT NULL
);


ALTER TABLE public."Season" OWNER TO minhnh;

--
-- Name: Season_id_seq; Type: SEQUENCE; Schema: public; Owner: minhnh
--

CREATE SEQUENCE "Season_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Season_id_seq" OWNER TO minhnh;

--
-- Name: Season_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: minhnh
--

ALTER SEQUENCE "Season_id_seq" OWNED BY "Season".id;


--
-- Name: anime_id_seq; Type: SEQUENCE; Schema: public; Owner: minhnh
--

CREATE SEQUENCE anime_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anime_id_seq OWNER TO minhnh;

--
-- Name: character_id_seq; Type: SEQUENCE; Schema: public; Owner: minhnh
--

CREATE SEQUENCE character_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.character_id_seq OWNER TO minhnh;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: minhnh
--

ALTER TABLE ONLY "Season" ALTER COLUMN id SET DEFAULT nextval('"Season_id_seq"'::regclass);


--
-- Data for Name: AnimeSeason; Type: TABLE DATA; Schema: public; Owner: minhnh
--

COPY "AnimeSeason" (anime_id, season_id) FROM stdin;
1	2
2	2
3	1
4	3
5	3
6	3
7	4
8	5
9	5
10	6
11	9
12	9
13	7
14	8
15	8
16	8
17	13
18	13
19	13
20	13
21	13
22	13
23	13
24	13
25	13
26	13
27	13
28	12
29	12
30	12
31	12
32	12
33	10
34	10
35	10
36	10
37	10
38	10
39	10
40	10
41	10
42	10
43	11
44	11
45	11
46	14
47	14
48	14
49	14
50	14
51	14
52	14
53	14
54	14
55	16
56	16
57	16
58	17
59	17
60	17
61	17
62	17
63	15
64	15
65	15
66	15
67	18
68	18
69	18
70	18
71	18
72	20
73	20
74	21
75	21
76	19
77	19
78	19
79	24
80	24
81	25
82	25
83	25
84	25
85	22
86	22
87	22
88	22
89	22
90	22
113	31
146	39
147	39
148	39
91	23
92	23
93	29
94	29
95	29
96	27
97	27
98	27
99	28
100	28
101	28
102	28
103	28
104	28
105	26
106	33
107	33
108	33
109	33
110	31
111	31
112	31
114	32
115	30
116	30
117	34
118	34
119	34
120	34
121	34
122	34
123	34
124	34
125	36
126	36
127	36
128	37
129	37
130	37
131	37
132	37
133	37
134	37
135	35
136	35
137	39
138	39
139	39
140	39
141	39
142	39
143	39
144	39
145	39
149	39
150	39
151	39
152	39
153	39
154	39
155	40
156	40
157	40
158	40
159	40
160	40
161	40
162	40
243	49
244	49
268	52
269	52
163	41
164	41
165	41
166	41
167	38
168	38
169	42
170	42
171	42
172	42
173	42
174	42
175	42
176	42
177	42
178	44
179	44
180	44
181	44
182	43
183	43
184	43
262	52
263	52
264	52
265	52
185	43
186	43
187	43
188	43
189	43
190	43
191	43
192	43
193	45
194	45
195	45
196	45
172	45
198	45
199	45
200	45
201	45
202	45
203	45
204	46
205	46
206	46
207	46
208	46
209	46
210	46
211	47
212	47
266	52
267	52
213	47
214	47
215	47
216	47
217	47
218	47
219	48
220	48
221	48
222	48
223	48
224	48
225	48
226	48
227	48
228	48
229	48
230	48
231	48
232	48
233	48
234	48
235	48
236	48
237	48
238	49
239	49
240	49
241	49
242	49
245	53
246	53
247	53
248	53
249	53
250	53
251	53
252	53
253	53
254	53
255	53
256	51
257	51
258	51
259	51
260	51
261	51
270	50
271	50
272	50
273	50
274	50
275	50
276	50
302	57
303	57
304	57
305	57
306	57
307	57
308	57
309	57
310	57
311	57
312	57
313	57
314	57
315	57
316	57
317	57
318	57
319	57
320	57
321	57
322	57
323	57
324	57
325	57
326	57
327	57
328	57
329	57
330	57
331	57
332	57
333	57
334	57
335	57
336	57
337	57
338	57
339	54
340	54
341	54
342	55
343	55
344	55
345	55
346	55
347	55
348	55
349	55
350	55
351	55
352	55
353	55
354	55
355	55
356	55
392	58
393	58
428	61
429	61
713	74
357	55
358	55
359	55
360	55
361	56
362	56
339	56
364	56
365	56
366	56
367	56
368	60
369	60
370	60
371	60
372	60
339	60
374	60
375	60
376	60
377	60
378	60
379	60
380	60
381	60
382	60
383	60
384	60
385	60
386	60
387	60
388	60
389	58
390	58
391	58
427	61
394	58
395	58
396	58
397	58
398	58
399	58
400	59
401	59
402	59
403	59
404	59
405	59
406	59
407	59
408	59
409	59
410	59
411	59
412	59
413	59
414	59
415	61
416	61
417	61
418	61
419	61
420	61
421	61
422	61
423	61
424	61
425	61
426	61
430	61
431	61
432	64
433	64
434	64
435	64
436	64
437	64
438	64
439	64
440	64
441	64
442	64
443	64
444	64
445	64
446	64
447	64
448	64
449	65
450	65
451	65
452	65
453	65
454	65
455	65
456	65
457	62
458	62
459	62
460	62
461	62
492	67
493	67
494	67
462	62
463	62
339	62
465	62
466	62
467	62
468	62
469	62
470	62
471	62
472	62
473	62
474	62
475	62
476	62
477	63
339	63
479	63
480	63
481	63
482	63
483	63
484	63
485	63
486	63
487	67
488	67
489	67
490	67
491	67
495	67
496	67
497	67
498	67
499	67
500	67
501	67
502	67
503	67
504	67
505	67
506	67
507	67
508	67
509	67
510	67
511	67
512	67
513	67
514	67
515	67
516	67
517	67
518	67
519	67
584	68
585	68
586	68
587	68
588	68
679	73
520	66
221	66
522	66
523	66
524	66
525	66
526	66
339	66
528	66
529	66
530	66
531	66
423	66
533	66
534	66
535	66
536	66
537	66
538	66
539	66
540	66
541	66
542	66
543	69
544	69
545	69
488	69
547	69
548	69
221	69
550	69
551	69
552	69
553	69
554	69
641	70
555	69
556	69
557	69
558	69
559	69
560	69
561	69
423	69
563	69
564	69
565	69
566	69
567	69
568	69
569	69
570	69
571	69
572	69
573	69
574	69
575	69
576	69
577	69
578	68
579	68
580	68
339	68
582	68
583	68
589	71
590	71
591	71
592	71
593	71
594	71
595	71
596	71
597	71
598	71
599	71
600	71
601	71
602	71
503	71
604	71
605	71
606	71
607	71
642	70
680	73
712	74
608	71
609	71
610	71
611	71
612	71
613	71
614	71
615	72
616	72
617	72
618	72
619	72
552	72
621	72
622	72
623	72
530	72
625	72
626	72
423	72
628	72
629	72
630	72
631	72
632	72
633	72
455	72
635	72
636	72
637	72
638	72
639	72
640	70
643	70
221	70
645	70
646	70
647	70
648	70
649	70
650	70
651	70
652	70
653	70
654	70
655	70
656	70
657	70
423	70
628	70
660	70
661	70
662	70
663	70
664	70
665	70
666	70
667	70
668	70
669	70
670	70
671	70
672	73
221	73
674	73
675	73
676	73
677	73
552	73
681	73
558	73
683	73
423	73
685	73
686	73
687	73
688	73
689	73
690	74
691	74
692	74
693	74
694	74
695	74
696	74
697	74
698	74
699	74
700	74
701	74
621	74
703	74
704	74
705	74
706	74
707	74
708	74
423	74
710	74
711	74
714	74
715	74
716	74
717	76
718	76
719	76
720	76
721	76
722	76
339	76
724	76
725	76
726	76
727	76
728	76
729	76
730	76
731	76
732	76
733	76
734	76
735	76
736	76
737	76
738	76
739	76
740	77
741	77
800	80
423	80
742	77
743	77
744	77
745	77
746	77
747	77
748	77
749	77
750	77
751	77
752	77
753	77
754	77
755	77
756	77
757	77
758	77
759	77
760	77
761	77
762	77
763	77
764	77
765	77
766	77
767	75
672	75
769	75
770	75
221	75
772	75
821	80
773	75
774	75
775	75
776	75
777	75
778	75
779	75
780	75
781	75
782	75
783	75
784	75
423	75
786	75
787	75
788	75
789	75
790	75
791	75
792	75
793	80
794	80
795	80
796	80
797	80
798	80
221	80
801	80
552	80
803	80
804	80
805	80
806	80
750	80
808	80
809	80
810	80
811	80
812	80
813	80
814	80
815	80
625	80
817	80
818	80
819	80
822	80
823	80
824	80
825	80
826	80
827	80
828	80
829	80
830	80
831	80
832	80
833	80
834	80
835	80
836	80
837	80
838	80
839	80
840	80
841	80
842	78
861	78
862	78
843	78
844	78
845	78
846	78
847	78
848	78
849	78
850	78
851	78
852	78
853	78
854	78
855	78
750	78
857	78
858	78
859	78
860	78
911	79
863	78
864	78
865	78
866	78
867	78
868	78
869	78
870	78
871	78
872	78
873	78
874	78
875	78
876	78
877	78
878	78
879	78
880	79
881	79
882	79
883	79
884	79
885	79
886	79
887	79
552	79
889	79
912	79
913	79
890	79
891	79
750	79
893	79
894	79
895	79
896	79
897	79
857	79
899	79
900	79
901	79
902	79
903	79
904	79
423	79
906	79
907	79
908	79
909	79
871	79
914	79
915	81
916	81
917	81
918	81
919	81
221	81
921	81
922	81
923	81
552	81
925	81
339	81
927	81
750	81
929	81
930	81
931	81
782	81
933	81
934	81
935	81
936	81
937	81
938	81
939	81
940	81
941	81
1076	87
1077	87
942	81
943	81
944	81
945	85
946	85
947	85
948	85
949	85
950	85
951	85
952	85
953	85
954	85
955	85
956	85
957	85
958	85
959	85
960	85
961	85
962	85
963	85
423	85
965	85
966	85
1004	82
967	85
968	85
969	85
970	85
971	85
972	85
973	85
974	84
975	84
976	84
977	84
978	84
979	84
980	84
981	84
982	84
983	84
984	84
985	84
986	84
987	84
988	84
989	84
990	84
991	84
423	84
993	84
994	84
995	84
996	84
997	84
998	84
999	84
911	84
1001	84
1002	82
1003	82
1005	82
1078	87
1079	87
1006	82
1007	82
1008	82
1009	82
750	82
1011	82
1012	82
1013	82
989	82
1015	82
1016	82
1017	82
1018	82
1019	82
1020	82
1021	82
1022	82
1023	82
1024	82
1025	82
1072	87
1073	87
1074	87
1075	87
1026	82
1027	82
1028	82
1029	82
1030	82
1031	82
1032	83
1033	83
1034	83
1035	83
1036	83
1037	83
1038	83
1039	83
1040	83
1041	83
1042	83
1043	83
1044	83
1045	83
1046	83
1047	83
1048	83
1049	83
1050	83
1051	83
1052	83
1053	83
1054	83
1055	83
1056	83
1057	83
1058	83
1059	87
1060	87
1061	87
1062	87
1063	87
1064	87
1065	87
1066	87
1067	87
1068	87
1069	87
1070	87
1071	87
1080	87
1081	87
1082	87
1083	87
1084	87
1085	87
1086	87
1087	87
1088	87
1089	87
1090	87
1091	87
1092	87
1093	87
1094	87
1095	87
1096	87
1097	87
1098	87
1099	87
1100	89
1101	89
1102	89
1103	89
1104	89
1105	89
1070	89
1107	89
1108	89
1109	89
1110	89
1111	89
1112	89
1204	88
750	89
1114	89
1115	89
1116	89
1084	89
1118	89
1086	89
1120	89
1121	89
1122	89
1123	89
1124	89
1125	89
1126	89
1127	89
1128	89
1129	89
1130	89
1131	89
1132	89
1140	86
1141	86
1142	86
1143	86
1144	86
1145	86
1072	86
1147	86
1148	86
1149	86
1150	86
1151	86
1152	86
1153	86
1154	86
1155	86
1156	86
1157	86
1158	86
1159	86
1160	86
423	86
1205	88
1206	88
1207	88
1208	88
103	86
1163	86
1164	86
1165	86
1166	86
1129	86
12	86
1169	86
1170	86
1171	86
1172	86
1173	86
1174	86
1175	86
1176	86
1177	86
1178	88
1179	88
1180	88
1181	88
1182	88
1183	88
1184	88
1185	88
1186	88
1187	88
1188	88
1189	88
1190	88
1191	88
1192	88
1193	88
1194	88
1195	88
1196	88
1197	88
1198	88
1199	88
1200	88
1201	88
1202	88
1203	88
\.


--
-- Data for Name: Anime_; Type: TABLE DATA; Schema: public; Owner: minhnh
--

COPY "Anime_" (id, english_title, romaji_title, producer, description, release_date) FROM stdin;
1	Brother, Dear Brother	Oniisama e...	Tezuka Productions	\n  	1991/07/14
2	Sohryuden: Legend of the Dragon Kings	Suito no Yonkyoudai Souryuuden Gaiden	Kitty Films	\n  	1991/06/25
4	Crayon Shin Chan	Kureyon Shin-chan	Shin-Ei Animation	\n  	1992/04/13
5	Floral Magician Mary Bell	Hana no Mahoutsukai Mary Bell	Ashi Productions, Toei Animation	\n  	1992/03/02
43	Ninku	Ninku	Studio Pierrot	\n  	1995/01/14
45	Zenki 	Kishin Douji Zenki	Studio Deen / Kitty Film	\n  	1995/01/09
113	Vampire Hunter D: Bloodlust	Bampaia Hantaa Dii	Madhouse	\n  	2000/08/25
100	Excel Saga	Ekuseru ♥ Saaga	J.C.Staff	\n  	1999/10/07
146	Jing - King of Bandits / King of Bandit Jing	Ou Dorobou Jing	Studio Deen	\n  	2002/05/15
147	Magical Shopping Arcade Abenobashi	Abenobashi Mahou Shoutengai	Gainax	\n  	2002/04/04
148	Pita-Ten	Pita-Ten	Madhouse	\n  	2002/04/07
126	Magical Meow Meow Taruto	Majikaru Nyan Nyan Taruto	Bandai Visual	\n  	2001/07/05
127	Scryed	Sukuraido	Sunrise	Set several years after "The Great Uprising", a future geological phenomenon in the Kanagawa Prefecture near Tokyo, people have developed a power granting them the ability to deconstruct, reshape, and crystallize matter at a molecular level using only thought and willpower. These people have come to be known as "Alter" users. With only 1% of the newborn generations receiving such special power, though this number rises steadily as the series progresses, some feel a superiority over normal humans.There are two opposing forces of alters: the Native Alters, a group of Alter users who live outside the central city and avoid any relationships with the government; and HOLY, an organization of Alter users that are a subgroup of an organization called HOLD. HOLD functions as the Mainland government's super police force of the Lost Ground, while HOLY, composed exclusively of Alter users, serves as the "special operations" group, aiding HOLD in performing dangerous missions that might require the help of an Alter user.Kazuma (dubbed "The Treasoner" in the manga and "The Shell Bullet" in the anime) and Ryuhou are the two s-CRY-ed characters bearing a rivalry used to drive and focus the plot. They spend much of the series trying to defeat each other, even when they are forced to work together. Neither can forget their bitter rivalry.There is also a narrator, Kanami. Kanami is a close friend of Kazuma, who protects her and treats her like a little sister. She narrates the series with her dreams, unknowingly using her alter power to "scry" the emotions of the people she feels closely about. Her ability to peer into the emotions of the main characters is used frequently throughout the series to bring insight to the characters, and to tease viewers during previews for the next episode.The series progresses through the initial introduction of the Alter power to a wider understanding of the politics and reason for "The Great Uprising". Each episode showcases a new Alter user, and his/her Alter, or a growth of the Alter of a previously introduced character. "The Great Uprising" is later revealed to be caused by a similar event in a parallel universe where all creatures are independent thinking Alters. During one of Ryuhou and Kazuma's battles, they open a gateway to the parallel universe, causing another uprising and attracting the attention of the Mainland government. The Mainland sends its agent, Kyouji Mujo, to the Lost Ground in an attempt to exploit the power of the parallel universe for economic gain. Mujo develops delusions of grandeur after becoming the defacto head of the Lost Ground government and absorbing the crystal entity from "the other side" to add to his already formidable Alter power. Both he and the crystal entity are defeated by the separate efforts of Kazuma and Ryuhou, respectively. The Mainland once again attempts to exert control over the Lost Ground by sending in a fleet of refined Alter users under their control, but they are defeated by Kazuma and Ryuhou.After defeating the Mainland forces, Kazuma and Ryuhou engage in one final battle to settle their rivalry. After exhausting themselves to the point that they are too weak to maintain their Alters (and indeed, barely able to stand), they fight on with their bare hands till neither can move. In the next scene, a silhouetted hand is raised by the victor, the hand makes the symbol of the Zetsuei and then curls into a fist the same way Kazuma does when summoning his Alter. An epilogue, taking place years later, Kazuma and Ryuho remain the protectors of the Lost Ground, defending it from Mainland invaders. An older Kanami, who now has full control over her alter, awaits their return.\n  	2001/07/04
128	Angel Tales	Otogi Stourii Tenshi no Shippo	Bandai Visual	\n  	2001/10/04
130	Cyborg 009	Saiboogu Zero-Zero-Nain	Avex Group	\n  	2001/10/14
154	Tokyo Underground	Toukyou Andaaguraundo	Studio Pierrot	\n  	2002/04/02
156	Dragon Drive	Doragon Doraibu	Madhouse	\n  	2002/07/04
158	Saikano	Saishuu Heiki Kanojo	Gonzo	\n  	2002/07/02
159	Samurai Deeper Kyo	Samurai Diipaa Kyou	Studio Deen	\n  	2002/07/02
172	Munto	Munto	Kyoto Animation	\n  	2003/03/18
173	Scrapped Princess	Sukurappudo Purinsesu	KENMedia	\n  	2003/04/08
175	Texhnolyze	Tekunoraizu	Madhouse	In the underground city of Lux, Ichise is a prize fighter. He angers his promoter, who cuts off his arm and leg. Doc, a former citizen of the sealed city of the Class, is Lux's most talented researcher of Texhnolyze, an advanced prosthetic limb technology. She gives Ichise Texhnolyzed limbs without his consent. Texhnolyze uses Raffia, a substance derived from dead bodies that is harvested in mines around the city's Obelisk. Raffia prevents the user's body from rejecting the Texhnolyze.Ran, the current Seer of Gabe, sells flowers in Lux. She can see an individual's possible future. Her followers in Gabe unquestioningly accept her predictions even at the cost of their lives. Gabe is home to the former leaders of Lux, who were overthrown by the Organo. Onishi is the current leader of the Organo and is credited with the current peace in Lux.Yoshii comes to Lux from the legendary surface. Fed up with the unchanging nature life on surface, Yoshii covertly throws Lux into chaos, pitting the Organo, the Salvation Union, and the Racan against each other. The tensions eventually escalate into a battle in the streets between the three factions. Afterward, Yoshii attempts to convince Shinji, leader of the Racan, to assassinate a Class leader. Onishi arrives to prevent the assassination, and Yoshii almost kills Onishi, but Ichise arrives and kills Yoshii.Doc goes to the entrance of the Class enclave and attempts to convince their leader, Kano, to take her in and use her Texhnolyze expertise, presenting Ichise as an example that Texhnolyzation can create perfect humans. However, Kano has a different form of Texhnolyzation in mind, so he destroys Doc's research and tries to kill her.Kano undermines the three factions of Lux and creates an army of Shapes: humans whose entire bodies have been replaced with Texhnolyze, with only their heads remaining intact. The Shapes march on the city and many of Onishi's remaining allies are killed.Onishi sends Doc and Ichise to the surface to warn of Kano's impending invasion. They discover that the world above is sparsely populated, and the remaining citizens have resigned themselves to extinction and became ghosts. The government is apathetic to the news of the invasion. Doc and Ichise find an old-style movie theater where they see a film that explains that Lux was created when the Class rounded up people who were thought to be imperfect or impure of thought, killing many and forcing the rest into the underground city. Doc commits suicide after seeing what the surface has become. Ichise returns to Lux, learning that the Shapes have captured Ran.The Shapes begin to stop functioning, and Shinji is killed after killing most of the members of the Class in their fortress.Ran shows her visions to the people of Lux, driving them mad. She is captured and taken to Kano's sanctum. Onishi goes to the Obelisk, begging the city for guidance. The city, in Ran's voice, tells Onishi to kill the city for driving everyone insane. He chooses to destroy everything rather than living on with madness in body and soul. He stabs the Obelisk, and it bleeds. The crazed men of the city shoot Onishi until nothing is left but his Texhnolyzed legs.All of the Shapes, as well as Kano, have been rooted to the ground and permanently immobilized. Ichise finds Kano in the opera house. Kano says that he failed in his attempt to use Texhnolyzation to get people to evolve out of their violent ways, and now humanity's self-preserving bloodline has returned to its roots.Ichise sees that Ran is behind Kano and has been turned into a Shape, but Kano says that she turned her mind off by her own will. Seeing Ichise's rage, Kano says that if Ichise kills him, the one sane man in the city, Ichise will only be embracing his own madness. Ichise responds by punching Kano's head off.Ichise drops Ran's remains into the pool of Raffia. He leans against a column, watching a projection of a simplistic rendering of one of Ran's flowers. Eventually he slumps over and smiles as he and the city fade away.\n  	2003/04/17
176	Ultra Maniac	Urutora Maniakku	Ashi Productions	\n  	2003/05/20
177	Zatch Bell!	Konjiki no Gash Bell!!	Toei Animation	\n  	2003/04/06
179	D.C. ~Da Capo~	Da Kaapo	Zexcs	\n  	2003/07/11
195	Machine Robo Rescue	Shutsugeki! Mashin Robo Resukyu	Sunrise	\n  	2003/01/08
196	Mouse	Mausu	Studio Deen	\n  	2003/01/05
199	Raimuiro Ryuukitan X ~Koi, Oshiete Kudasai.~	Raimuiro Ryuukitan Kurosu ~Koi, Oshietekudasai.~	JSDSS	\n  	2003/01/03
200	Someday's Dreamers	Mahou Tsukai ni Taisetsu na Koto	J.C.Staff	\n  	2003/01/09
221	Bleach	Buriichi	Aniplex	\n  	2004/10/05
268	Mushishi	Mushishi	AVEX	\n  	2005/10/22
269	Paradise Kiss	Paradaisu Kisu	Madhouse	\n  	2005/10/13
262	Akagi	Touhai Densetsu Akagi: Yami ni Maiorita Tensai	Madhouse	\n  	2005/10/04
263	Animal Yokochou	Animaru Yokochou	Geneon Universal Entertainment	\n  	2005/10/04
264	Chibi Vampire	Karin	Happinet Pictures	\n  	2005/11/03
265	Happy Seven	Happy 7 ~The TV Manga~	Studio Hibari	\n  	2005/10/02
266	Hell Girl	Jigoku Shoujo	Studio Deen	\n  	2005/10/04
267	Lamune	Ramune	Trinet Entertainment	\n  	2005/10/11
248	Elemental Gelade	Erementar Jereid	Geneon Universal Entertainment	\n  	2005/04/05
249	Emma - A Victorian Romance	Eikoku Koi Monogatari Ema	Studio Pierrot	\n  	2005/04/02
317	Himawari!	Himawari!	Arms	\n  	2006/04/08
318	Humanoid Monster Bem	Youkai Ningen Bem / Youkai Ningen Bemu	Studio Comet	\n  	2006/04/01
319	Inukami!	Inukami!	Seven Arcs	\n  	2006/04/06
320	Kiba	Kiba	Aniplex	\n  	2006/04/02
321	Kishin Houkou Demonbane	Kishin Houkou Demonbein	Viewworks	\n  	2006/05/18
322	Love Get Chu: Miracle Seiyuu Hakusho	Rabu Gee CHU ~Mirakuru Seiyuu Hakusho~ / Love GetChu	Radix	\n  	2006/04/04
323	Magical Witch Punie-chan / The Great Magical Gap	Dai Mahou Touge	Geneon Universal Entertainment	\n  	2006/03/03
325	Nana	Nana	Madhouse	\n  	2006/04/05
349	Galaxy Angel-Rune	Gyarakushii Enjeruun	Bandai Visual	\n  	2006/10/01
350	Gift: Eternal Rainbow	Gifuto ~Etaanaru Reinbou~	OLM	\n  	2006/10/06
352	Intrigue in the Bakumatsu	Bakumatsu Kikansetsu Irohanihoheto	Bandai Visual	\n  	2006/10/06
376	ICE	Aisu	PPM	\n  	2007/05/25
452	Mission-E	Misshon-Ii	AVEX	\n  	2008/07/07
492	Chi's Sweet Home	Chiizu Suiito Houmu	Geneon Universal Entertainment	\n  	2008/03/31
493	Cross Game	Kurosu Geemu	Geneon Universal Entertainment	\n  	2009/04/05
494	Eden of the East	Higashi no Eden	Kadokawa Entertainment	\n  	2009/04/09
489	Bakugan Battle Brawlers: New Vestroia	Bakugan Batoru Burouraazu: Nyuu Vesutoroia	TMS Entertainment	\n  	2009/04/12
490	Basquash!	Basukasshu!	Satelight	\n  	2009/04/03
491	Before Green Gables	Konnichiwa Anne ~Bifou Griin Geeburusu	Bandai Visual	\n  	2009/04/05
495	Everyday Mum	Mainich Kaasan	Marvelous Entertainment 	\n  	2009/04/01
497	Fullmetal Alchemist: Brotherhood	Hagane no Renkinjutsushi: Burazaafuddo	Bones	\n  	2009/04/05
498	Guin Saga	Guin Saaga	Aniplex	\n  	2009/04/01
499	Hanasakeru Seishounen	Hanasakeru Seishounen	KENMedia	\n  	2009/04/05
522	Blue Flower	Aoi Hana	Media Factory	\n  	2009/07/01
523	CANAAN	Kanan	P.A. Works	\n  	2009/07/04
529	Kanamemo	Kanamemo	Feel	\n  	2009/07/05
584	Maria Watches Over Us 4th	Maria-sama ga Miteru  4	Studio Deen	\n  	2009/01/03
560	Mahoromatic: Automatic Maiden	Mahoromatikku	Gainax	\n  	2001/09/10
590	Arakawa Under the Bridge	Arakawa Andaa za Burijji	Shaft	\n  	2010/04/04
593	Book Girl	Gekijouban Bungaku Shoujo	Production I.G	\n  	2010/05/01
674	Chu-Bra!!	Chuu Bura!!	Zexcs	\n  	2010/01/04
740	Bakuman 2	Bakuman 2	J.C.Staff	\n  	2011/10/01
800	Dusk Maiden of Amnesia	Tasogare Otome x Amnesia	SILVER LINK	\n  	2012/04/09
778	Gosick	Goshikku	Bones	\n  	2010/12/27
821	Natsu-iro Kiseki	Natsuiro Kiseki	Sunrise	\n  	2012/04/06
806	Holy Knight	Hoorii Naito	Cammot	This story centers around a timid orphan named Mizumura who goes to a missionary school in Tokyo. His seemingly normal life changes when a beautiful half-human Romanian girl named Lilith suddenly transfers into his school. Mizumura discovers that he is actually a vampire hunter and the successor of the Romyuarudo lineage. \n  	2012/03/21
808	Hyou-ka : You can't escape	Hyouka	Kyoto Animation	\n  	2012/04/23
811	Jormungand	Jorumangando 	White Fox	\n  	2012/04/11
831	Saki: Achiga-hen - Episode of Side-A	Saki Achiga-hen - Episoodo obu Saido Ei	Studio Gokumi	\n  	2012/04/09
862	Moyasimon Returns	Moyashimon Ritaanzu	Shirogumi	\n  	2012/07/05
855	Humanity has Declined	Jinrui wa Suitai Shimashita	AIC 	\n  	2012/07/02
857	Kingdom	Kingudamu	Studio Pierrot	\n  	2012/06/04
858	Kokoro Connect	Kokoro Konnekuto	Silver Link	\n  	2012/07/08
859	La storia della Arcana Famiglia	Arukana Famiria	J.C.Staff	\n  	2012/07/01
860	Lagrange: The Flower of Rin-ne – Kamogawa Days	Rinne no Lagrange - Kamogawa Deizu	Xebec	\n  	2012/06/23
864	Nakaimo - My Sister is Among Them!	Kono Naka ni Hitori, Imouto ga Iru!	Studio Gokumi	\n  	2012/07/06
873	Tari Tari	Tari Tari	P.A. Works	\n  	2012/07/01
921	Bodacious Space Pirates (Miniskirt Pirates)	Mouretsu Uchuu Kaizoku	Satelight	\n  	2012/01/07
922	Brave 10	Bureibu Ten	Media Factory	\n  	2012/01/08
960	Little Witch Academia 	Ritoru Witchi Akademia	Trigger	\n  	2013/03/02 
961	Mushibugyou	Mushibugyou	Seven Arcs	\n  	2013/04/08
1005	BlazBlue Alter Memory	Burei Buruu Anime Shiriizu	Hoods Entertainment	\n  	2013/10/08
1007	Galilei Donna	Galilei Donna	A-1 Pictures	\n  	2013/10/11
1008	Golden Time	Goruden Taimu	J.C.Staff	\n  	2013/10/03
1024	Samurai Flamenco	Samumenco	Manglobe	\n  	2013/10/10
1076	Is The Order a Rabbit?	Gochuumon wa Usagi Desu ka? / GochiUsa	White Fox	\n  	2014/04/10
1077	Kamigami no Asobi: Ludere deorum	Kamigami no Asobi ~Ludere deorum~	Brain's Base	\n  	2014/04/06
1078	Kindaichi Case Files Returns	Kindaichi Shounen no Jikenbo R	Toei Animation	\n  	2014/04/05
1079	Knights of Sidonia	Sidonia no Kishi	Polygon Pictures	\n  	2014/04/11
1072	Fairy Tail S2	Feirii Teiru S2	Satelight	\n  	2014/04/05
1073	Haikyu!!	Haikyuu!!	Production I.G	\n  	2014/04/06
1074	If Her Flag Breaks	Kanojo ga Flag o Oraretara (Gaworare)	Hoods Entertainment	\n  	2014/04/07
1075	Inugami-san to Nekoyama-san	Inugami-san to Nekoyama-san	Seven	\n  	2014/04/03
1126	Shounen Hollywood	Shounen Horiuddo	Zexcs	\n  	2014/07/06
3	Dan Ball	Honoo no Toukyuuji: Dodge Danpei	Animation 21	Honō no Tōkyūji: Dodge Danpei (炎の闘球児 ドッジ弾平?) is a Shōnen manga based on dodgeball, by Tetsuhiro Koshita, which was serialized in the CoroCoro Comic. It was adapted into an anime from 1991 to 1992.It was also released 7 videos games for different consoles between 1992 and 1993.\n  	1991/10/14
6	Sailor Moon	Bishoujo Senshi Seeraa Muun	Toei Video	The protagonist of Sailor Moon, Usagi Tsukino (Serena in English adaption), an ordinary, ditzy, 14-year-old girl — or so she thinks — discovers a talking cat named Luna, who reveals Usagi's identity as "Sailor Moon", a special warrior with the destiny of saving the planet Earth, and later the entire galaxy. Usagi must now find the Moon Princess and protect Earth from a series of antagonists, beginning with the Dark Kingdom that had appeared once before, long ago, and destroyed the Kingdom of the Moon. When the dark nemesis attacked the kingdom, the Queen sent the Moon Princess, her guardians, advisors, and her true love into the future to be reborn. As Usagi and Luna battle evil and search for the Moon Princess, they meet and awaken the other Sailor Senshi, incarnations of the Moon Princess' protectors, and the mysterious Tuxedo Mask. As the series progresses, Usagi and her friends learn more and more about the enemies they face and the evil force that directs them. The characters' pasts are mysterious and hidden even to them, and much of the early series is devoted to discovering their true identities and pasts. Luna, who teaches and guides the Sailor Senshi, does not know everything about their histories either, and the Senshi eventually learn that Usagi is the real Moon Princess. The Moon Princess' mother had her reborn as a Sailor Senshi to protect her. Gradually Usagi discovers the truth about her own past life, her destined true love, and the possibilities for the future of the Solar System. (source: Wikipedia)\n  	1992/03/07
7	Porco Rosso	Kurenai no Buta	Buena Vista Home Entertainment	\n  	1992/07/18
8	Legend of the Swordmaster Yaiba	Ken'yuu Densetsu Yaiba	Shogakukan Productions	\n  	1993/04/09
9	Sailor Moon R	Bishoujo Senshi Seeraa Muun Aaru	Toei Animation	\n  	1993/03/06
10	The Brave Express Might Gaine	Yuusha Tokkyuu Maito Gain	Sunrise	\n  	1993/01/30
11	Marmalade Boy	Mamareedo Boui	Toei Animation	\n  	1994/03/13
12	Tenchi Muyo! Bangai-hen: Galaxy Police Mihoshi's Space Adventure / Mihoshi Special	Tenchi Muyou! Bangai-hen: Uchuu Keiji Mihoshi Ginga Daibouken	Pioneer LDC	\n  	1994/03/25
13	Magic Knight Rayearth	Mahou Kishi Reiaasu	Bandai Visual	\n  	1994/10/07
14	Please Save My Earth	Boku no Chikyuu o Mamotte / Boku no Chikyuu wo Mamotte	Production I.G	\n  	1993/12/17
15	Red Riding Hood Chacha	Akazukin Chacha	Gallop	\n  	1994/01/07
16	Tico of the Seven Seas	Nanatsu no Umi no Tiko	Nippon Animation	\n  	1994/01/16
17	Alice's Detective Agency	Alice Tanteikyoku	Studio Junio	\n  	1995/04/05
18	Armitage III	Amiteeji za Saado	Geneon Universal Entertainment	\n  	1995/04/21
19	Azuki-Chan	Azuki Chan	Madhouse	Azuki always hated her nickname, until one day a new boy starts in the same class as her called Yūnosuke Ogasawara. The same day he joins, she is teased by a boy called Ken-chan about her nickname. Yūnosuke-kun passes by and happily memorizes the name becoming the first girl he notices. Azuki is overjoyed, and instantly falls in love with him, loving both him and her nickname. However Azuki gets jealous when she sees him chatting to other girls and cannot work out why he doesn't realize her love.Azuki lives with her mother, Keiko, with her father, Tadashi, and with her little brother, Daizu in an apartment. Azuki has three best friends, Kaoru Nishino, Midori Kodama and Tomomi Takahashi. Kaoru secretly crushes on Ken-chan but he never accepts her because Ken likes Azuki. Although in that situation Kaoru still thinks Azuki is her best friend. Kaoru has a blonde hair, and she's calm and sensitive so she often cries. She lives with her mom, who owns a salon, near from Azuki's apartment. Midori Kodama is a tomboy and she hates her name just like Azuki was so her close friends call her "Jidama". She lives with her grandmother, but they seem to have a very close relationship except one episode when Jidama have gone out and snuck in Azuki's bedroom. She never crushes on anyone but in an episode she catches a thief entering her house and his face never go out of her mind.Tomomi, whom her friends called her "Tomoko" or "Tomo" is the class leader. She wears glasses and she has a bob, black hair. She really likes Makoto Sakaguchi, a close friend of Yunosuke who is very athletic. Makoto didn't notice her at first but at last he asks her to go on a date in his parents' hotel.Makoto, himself is a rich boy but he's not one of the spoiled brats. He is kind of sleepy and was intelligent "until 3rd grade". He's one of Yunosuke's best friends, and they really are close.Not only Azuki who crushes on Yunosuke, but apparently most girls in her class also have feelings about him. One of them is Yoko Sakakibara, a rich girl whose mom is a friend of Yunosuke's. So she thinks she will get him as her boyfriend and tries to separate him with Azuki. Rumors said that she is actually now in junior high but she didn't pass primary school.Ken "Ken-chan" Takayanagi is also best friend of Yunosuke. He's a childhood friend of Azuki so they meet a lot. Ken's parents own a noodle stall near Azuki's apartment that Azuki always order noodle from Ken's stall.In the second season there was a new music teacher that the girl students are jealous of because of her kindness to the boy students, but they get over it in time. Azuki and Yunosuke also have their first kiss after he was bullied by the sixth-graders. The funny part is that Azuki and Yunosuke think that she will have a baby for that.Also, in one episode, a sixth-grader crushes on Azuki and follows her wherever she goes. When they were little, Azuki helped him find his ball. Finally, he stopped wanting Azuki's response and instead went out with Yoko.Daizu, Azuki's little brother, also get his own story. He has a girlfriend who unfortunately falls for Yunosuke but then gets back to him because realizing that Yunosuke is already with Azuki. Before her he fell in love with Yoko...but he completely forgets her.Azuki, Kaoru, Jidama and Tomo have made a club called "Club of Unreturned Love/ One-Sided Love"Makoto's big sister, which it's hard to believe she's his sister, appeared in a few episodes.\n  	1995/04/04
20	Mobile Suit Gundam Wing	Shin Kidou Senki Gandamu Uingu	Bandai Visual	\n  	1995/04/07
21	Mysterious Play	Fushigi Yuugi	Bandai Visual	\n  	1995/04/06
22	Ping-Pong Club	Ike! Inachuu takkyuu-bu		\n  	1995/04/05
23	Sailor Moon SuperS	Bishoujo Senshi Seeraa Muun Suupaazu	Toei Animation	\n  	1995/03/04
24	Slayers	Sureiyaazu	E.G. Films	Lina Inverse, 15-year-old adventurer with a knack for magic and swordsmanship, goes on a journey with Gourrey Gabriev, a master swordsman who's dumb as a chimp.\n  	1995/04/07
25	Soar High! Isami	Tobe! Isami 	Group Tac 	\n  	1995/04/08 
26	Tenchi Universe	Tenchi Muyo! Uchu Hen	AIC	\n  	1995/04/02
27	Wedding Peach	Ai Tenshi Densetsu Wedingu Piichi	KSS	\n  	1995/04/05
28	Legend of Crystania	Hajimari no Bokensha-tachi: Rejiendo obu Kurisutania	Victor Entertainment	Ashram, desperate to find a home for his people, is tricked into selling his soul. 300 years later, Pirotess' devotion to her king remains unshaken. In the sacred world of Crystania, amidst a civil war waged by shape-changing warriors, she searches for her beloved Ashram. She meets Redon, a young prince obsessed with avenging his murdered parents. Together, they confront Ashram's captor—the bloodthirsty Barbas, who aspires to rule Crystania as "The God's King".Source: ANN\n\n\n  	1995/07/29
29	Magical Girl Pretty Sammy	Mahou Shoujo Puriti Samii	AIC	\n  	1995/08/25
30	Nurse Angel Ririka SOS	Naasuenjeru Ririka Esuouesu	Gallop	\n  	1995/07/07
31	Slayers The Motion Picture (Slayers Perfect)	Slayers The Motion Picture (Gekijou-ban)	J.C.Staff	\n  	1995/08/05
32	Whisper of the Heart	Mimi wo Sumaseba	Studio Ghibli	\n  	1995/07/15
33	El Hazard: The Wanderers	Shinpi no Sekai El Hazard	AIC	\n  	1995/10/06
34	Ghost in the Shell (Movie)	Koukaku Kidoutai	Production IG 	\n  	1995/11/18
35	Golden Boy	Gouruden Boui Sasurai no Obenkyou Yarou	KSS	Kintarou Oe doesn't look like it, but he is a genius who completed all his university courses and then quit before graduating. He becomes a wandering student, going from place to place on his bicycle, seeking to learn what he can about life, the world, and women. He is willing and able to do any job he has to prove himself. His travels take him to a variety of locations and a variety of women, each who learns to love the hardworking guy, but not before he can run off. \n  	1995/10/27
36	Gunsmith Cats	Gansumisu Kyattsu	Vap	\n  	1995/11/01
92	Gekigangar III	Geki Gangaa Surii	Xebec	\n  	1998/02/21
93	Angel Links	Seihou Tenshi Enjeru Rinkusu	Bandai Visual	\n  	1999/04/07
94	EDENs BOwY	Wedenzu Boui	Studio Deen	\n  	1999/04/06
95	I'm Gonna Be An Angel!	Tenshi ni Narumon!	Bandai Visual	\n  	1999/04/07
96	Magic User's Club	Mahou Tsukai Tai!	Bandai Visual	\n  	1999/07/07
258	Pani Poni Dash!	Pani Poni Dasshu!	Shaft	\n  	2005/07/03
399	Sky Girls	Sukai Gaaruzu	Geneon Entertainment	\n  	2007/07/05
37	Hyper Dolls: Mew and Mica the Easy Fighters	Rakusho! Hyperdoll	Triangle Staff	Mew and Mica are alien androids sent by their boss to defend the Earth. Unfortunately for our planet, they are the laziest superheroines you will ever meet. Now most superheroes would drop whatever they're doing, transform, and proceed to kick monsters' butts... but these two would do no such thing. Mew and Mica just can't let their duties interfere with their ice cream, arguments, or whatever activities they happen to be engaged in at the time. When they are not Hyper Dolls they seem to be just ordinary, rather cute school girls, lusted after by the boys. \n  	1995/09/25
38	Neighborhood Story	Gokinjo Monogatari	Toei Animation	\n  	1995/09/10
39	Neon Genesis Evangelion	Shin Seiki Evangerion	Gainax, Tatsunoko Production	\n  	1995/10/04
40	Saint Tail	Kaitou Saint Tail	Tokyo Movie Shinsha	\n  	1995/10/12
41	Sorcerer Hunters	Bakuretsu Hantaa	Xebec	\n  	1995/10/03
42	Virtua Fighter	Bacha Faita	TMS Entertainment	The series follows Akira Yuki and his quest to see the eight stars in heaven after he had gotten overconfident in his Bajíquán skills from his days training with his grandfather. Initially traveling to figure out how to see those stars again, he learns that Sarah Bryant was kidnapped by robotics scientist Eva Durix as part of Eva's quest to create the "Perfect Soldier." Akira joins up with other characters in his journey such as Pai Chan, Jacky Bryant, Lion Rafale, Kage-Maru and Shun Di to save Sarah.Wikipedia\n  	1995/10/02
44	Romeo and the Black Brothers	Romeo's Blue Skies / Romio no Aoi Sora	Nippon Animation	\n  	1995/01/15
46	After War Gundam X	Kidou Shinseiki Gandamu Ekkusu	Sunrise	\n  	1996/04/05
47	Burn Up W	Baannappu W	Happinet Pictures	\n  	1996/04/10
48	Hell Teacher Nube	Jigoku Sensei Nuubee	Toei Animation	\n  	1996/04/13
49	Kodocha	Kodomo no Omocha	Aniplex	\n  	1996/04/05
50	Sailor Moon Sailor Stars	Bishoujo Senshi Seeraa Muun Seeraa Sutaazu	Toei Animation	\n  	1996/03/09
51	Slayers NEXT	Sureiyaazu Nekusuto	E.G. Films	\n  	1996/04/05
52	Tenchi Muyo! in Love	Tenchi Muyou! in Rabu	Geneon Universal Entertainment	\n  	1996/04/26
53	The Story of Cinderella	Cinderella Monogatari 	Tatsunoko Production	\n  	1996/04/04
54	The Vision of Escaflowne	Tenkuu no Esukafuroune	Bandai Visual	\n  	1996/04/02
55	Battle Arena Toshinden	Toushinden	J.C.Staff	\n  	1996/06/21
56	Slayers Return	Sureiyaazu Ritaan	Toei	\n  	1996/08/03
57	Slayers: The Book of Spells (Slayers: Special)	Sureiyaazu Supesharu	J.C.Staff	\n  	1996/07/25
58	Magical Girl Pretty Sammy TV / Magical Project S	Mahou Shoujo Puriti Samii TV	AIC	\n  	1996/10/04
59	Saber Marionette J	Seibaa Marionetto Jei	Hal Film Maker	\n  	1996/10/01
60	Violinist of Hamelin	Hamerun no Baiorin Hiki	Studio Deen	\n  	1996/10/02
61	YAT Anshin! Luxury Space Tours	YAT Anshin! Uchu Ryokou	Group TAC	\n  	1996/10/05
62	You're Under Arrest!	Taiho Shichauzo!	Bandai Visual	\n  	1996/10/05
63	Case Closed	Meitantei Konan	Shogakukan	\n  	1996/01/08
64	Famous Dog Lassie	Meiken Rasshii	Nippon Animation	\n  	1996/01/14
65	Rurouni Kenshin: Meiji Swordsman Romantic Story	Rurouni Kenshin Meiji Kenkaku Romantan	Gallop	\n  	1996/01/10
66	Special Duty Combat Unit Shinesman	Tokumu Sentai Shinesman	Production I.G	\n  	1996/02/21
67	Clamp School Detectives	Kuranpu Gakuen Tanteidan	Bandai Visual	\n  	1997/05/03
68	Hyper Police	Haipaa Porisu	Columbia Music Entertainment	\n  	1997/04/03
69	Night Warriors: Darkstalkers' Revenge / Vampire Hunter: The Animated Series	Banpaia Hantaa	Madhouse	\n  	1997/03/21
70	Revolutionary Girl Utena	Shoujo Kakumei Utena	J.C.Staff	\n  	1997/04/02
71	Slayers TRY	Sureiyaazu Torai	E.G. Films	\n  	1997/04/04
72	Flame of Recca	Rekka no Honou	Digital Site	\n  	1997/07/19
73	Slayers Great	Sureiyaazu Gureeto	J.C.Staff	\n  	1997/08/02
74	Saber Marionette J Again	Mata Mata Seibaa Marionetto Jei	Hal Film Maker	\n  	1997/11/25
75	The Crayon Kingdom of Dreams	Yume no Kureyon Oukoku	Toei Animation	\n  	1997/10/07
76	Eat-Man	Iito Man	Studio Deen	\n  	1997/01/09
77	Ninja Resurrection	Makai Tenshou: Jigoku-hen	Phoenix Entertainment	\n  	1997/02/27
78	The Adventures of Kotetsu	Kotetsu no Daibouken	Daiei	\n  	1996/12/13
79	Cardcaptor Sakura 	Kaadokyaputaa Sakura	Bandai Visual	\n  	1998/04/07
80	Record of Lodoss War	Roudosu-tou Senki	Victor Entertainment	\n  	1998/04/01
161	UFO Ultramaiden Valkyrie	Yuufou Purinsesu Warukyuure	Media Factory	\n  	2002/07/04
162	Witch Hunter Robin	Wicchi Hantaa Robin	Bandai Visual	\n  	2002/07/02
243	Maria Watches Over Us	Maria-sama ga Miteru	Studio Deen	\n  	2004/01/07
244	Paranoia Agent	Mousou Dairinin / Mousou Dairinin	Madhouse	Tsukiko Sagi, a shy character designer who created the immensely popular pink dog Maromi, finds herself under pressure to repeat her success. As she walks home that night, she is attacked by an elementary school boy on inline skates. Two police detectives, Keiichi Ikari and Mitsuhiro Maniwa, are assigned to the case. They suspect that Tsukiko is lying about the attack, until they receive word of a second victim.Soon the attacker, dubbed Lil' Slugger (Shōnen Bat in Japanese, meaning "Bat Boy") is blamed for a series of street assaults in Tokyo. None of the victims can recall the boy's face and only three distinct details are left in their memories: golden inline skates, a baseball cap, and the weapon: a bent golden baseball bat. Ikari and Maniwa set out to track down the perpetrator and put an end to his crimes. Their hunt is unsuccessful, however, and the investigation eventually leads to both men losing their positions as police detectives.As the attacks continue, it is revealed that they are not random. Instead, Lil' Slugger seems to target people in crisis, and the attacks, though violent, lead to some improvement in the life of the victim. Maniwa becomes convinced that Lil' Slugger is a supernatural force, driven to rescue the desperate from their tragedies through violence. He becomes obsessive, broadcasting his warning about Lil' Slugger via shortwave radio and seeking a way to kill the supernatural assailant.As public fear of Lil' Slugger intensifies, so do his (supposed) attacks, and the line between truth and fiction become blurred. At the same time, public anticipation for the launch of the Maromi television series reaches a fanatical high, almost as if the fear of one is feeding (and feeding off) the anticipation for the other.Things come to an end on the night that the Maromi show is set to air. Ikari, now a private security guard, and Maniwa, now a wandering "knight," attempt to battle Lil' Slugger, now an incredibly powerful force. They confront Tsukiko, and she confesses that Maromi was based on a real puppy that Tsukiko had in childhood, whose leash she had one day accidentally dropped, allowing the puppy to run into traffic where it was killed. Instead of taking responsibility for the puppy's death, young Tsukiko invented a story about a bat-wielding, skate-wearing puppy killer—Lil' Slugger's first "attack."Ultimately, Lil' Slugger is a paranormal figment of Tsukiko's guilt and fear, brought inexplicably to life when the adult Tsukiko desperately needed to escape her responsibilities and then fed and nurtured by the fear of the populace. In a way, Tsukiko does fulfill her job by creating a character (Lil' Slugger) that becomes just as big a sensation as Maromi. When Tsukiko finally confesses the truth, and in doing so accepts the guilt for the death of Maromi, Lil' Slugger is defeated.\n\n\n  	2004/02/02
383	Princess Resurrection	Kaibutsu Oujo	Geneon Universal Entertainment	\n  	2007/04/12
384	Reideen	Raidiin	Production I.G	\n  	2007/03/03
81	Nightwalker: The Midnight Detective	Naito Uoka Mayonaka no Tantei	AIC	The world of Nightwalker is bathed in blood and steeped in mystery. Shido is a private Detective who takes cases that primarily deal with strange murders. These murders all have one thing in common, the Night Breed! The Breed are a distant cousin of the Vampire, whose thirst for blood and penchant for violence is unparalleled. Shido, being a vampire, is disgusted by the way the Breed act and has pledged himself to rid the world of them! Shido feeds off of his sassy partner, Yayoi, who has police contacts that keep them out of trouble. Shido's secretary, Riho, is infatuated with Shido and wants to date him. But what will happen when she learns of his dark secret? And who is the mysterious Cain? All these questions and more will be answere in Nightwalker: The Midnight Detective!\n  	1998/07/08
82	Serial Experiments Lain	Shiriaru Ekusuperimentsu Rein	Triangle Staff	\n  	1998/07/06
83	Shadow Skill / Eigi	Shadou Sukiru / Eigi	Studio Deen	\n  	1998/07/02
84	Slayers Gorgeous	Sureiyaazu Goujasu	Toei	\n  	1998/08/01
85	All Purpose Cultural Cat-Girl Nuku Nuku DASH!	Bannou Bunka Neko-Musume DASH!	King Records	\n  	1998/09/23
86	Bubblegum Crisis Tokyo 2040	Baburugamu Kuraishisu TOKYO 2040	JVC Entertainment	\n  	1998/10/08
87	His and Her Circumstances	Kareshi Kanojo no Jijou / Kare Kano	Gainax	\n  	1998/10/02
88	Master Keaton	Masutaa Kiiton	Vap	\n  	1998/10/05
89	Saber Marionette J to X	Seibaa Marionetto Jei to Ekkusu	Bandai Visual	\n  	1998/10/06
90	Slayers Excellent	Sureiyaazu Ekuserento	J.C.Staff	\n  	1998/10/25
91	Bakusou Kyoudai Let's & Go Max	Bakusou Kyoudai Rettsu Endo Gou!! Max	Xebec	The story follows the life of Retsuya and Gouki, two brothers with the same objective as Go and Retsu, to race and win championships!The two new brothers are faced with various traps set by an evil organization...together, along with other friends, they try to enjoy their races as much as possible, showing off their competitive spirit and taking down any kind of evil that might put the sport they love so much at risk! \n  	1998/01/05
97	Oruchuban Ebichu	Oruchuban Ebichu	Group TAC	Most episodes follow Ebichu, a talking hamster devoted to her oft-indifferent owner, who is only identified as OL ("Office Lady"), a single 28-year-old (this is her age in the original manga series while she is 25-year-old in the anime series) who doles out cynical commentary and the occasional beating on the rodent. Ebichu tends to take this in stride with endless praise and compliments. Such abuse is usually caused by Ebichu's almost disturbing lack of tact or propriety, which often embarrasses her master in front of other people. Ebichu often attempts to correct OL's bad decisions, such as her berating of OL's obnoxious and untrustworthy boyfriend Ebichu nicknamed Kaishounachi (worthless man).\n  	1999/08/01
98	Steel Angel Kurumi	Koutetsu Tenshi Kurumi	OLM	\n  	1999/05/10
99	Blue Gender	Buruu Jendaa	EMI Music Japan	Plot- Spoiler Free\n\nIn the year 2009, Yuji Kaido is an average young adult male diagnosed with a serious disease  and is put into cryogenic stasis until a cure is found. Twenty-two years later, he is awakened in the midst of a raging battle between armored soldiers and insectoid beings called the "Blue" which have overrun the Earth.The group of soldiers are from an orbiting space colony collectively called Second Earth and were ordered to recover "sleepers" around the Earth. Among them is the soldier Marlene Angel. On the journey to Second Earth, Yuji meets many of the humans that were left behind during the evacuation due to limited resources. Yuji falls into a deep depression as he recognizes the destruction around him and his own inability to save those he cares about. During their travel to Baikonur space base through the mountains, Yuji and Marlene start to develop a bond that starts to soften her sharp edges. This is a turning point for Marlene and her feelings for Yuji are quite clear for the rest of the series. Upon arrival, Marlene and Yuji are separated, and Marlene is sent back into training at the education station. Not knowing what happened Yuji, Marlene rebels and is bent on finding him. When she does, she finds he is being trained to use a new specialized "sleeper"-specific Armor Shrike (A.S) called the "Double Edge", a battlesuit that is much stronger than the originals used in war against the Blue. After intensive training, Yuji and Marlene return to Earth with two other "Sleepers" named Tony Frost and Alicia Whistle. They and the other forces of Second Earth battle the Blue. They become successful at destroying a few of the largest nests before they head back to Second Earth. However, the battles begin to have a negative effect on Yuji who gives very little regard for human life and is completely obsessed with being better than Tony at killing Blue. Yuji's actions deeply concerns Marlene and she begins to know something is wrong.Shortly after returning to Second Earth, the High Council orders the "Sleepers" on a second offensive against the Blue. Marlene is separated from Yuji once again, but in his current state he does not seem to care. Seno, the head of Second Earth's science division, leads the "Ark" rebellion taking control of the military, lunar resource, and education stations of Second Earth. The High Council escapes to and retains control of the medical station. During this time Marlene learns about the nature of the illness that put Yuji in stasis, the source of his abilities, and the source of the Blue Insectoids. \n  	1999/10/07
101	Infinite Ryvius	Mugen no Ryvius	Sunrise	\n  	1999/10/06
102	Omishi Magical Theater: Risky Safety	Omishi Mahou Gekijou Risukii☆Serafi	Studio A.P.P.P.	\n  	1999/10/05
103	One Piece	Wan Piisu	AVEX	Gol D. Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and death of Roger by the World Government brought a change throughout the world. His last words before his death revealed the location of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece (which promises an unlimited amount of riches and fame), and quite possibly the most coveted of titles for the person who found it, the title of the Pirate King.Enter Monkey D. Luffy, a 17-year-old boy that defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate who ransacks villages for fun, Luffy’s reason for being a pirate is one of pure wonder; the thought of an exciting adventure and meeting new and intriguing people, along with finding One Piece, are his reasons of becoming a pirate. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach One Piece.\n  	1999/10/20
104	Seraphim Call	Serafimu Kouru	Sunrise	\n  	1999/10/06
105	Kamikaze Kaito Jeanne KKJ	Kamikaze Kaitou Jannu	TV Asahi	Kamikaze Kaitou Jeanne (神風怪盗ジャンヌ Kamikaze Kaitō Jannu?, also known as Phantom-Thief Jeanne,) is a fantasy shōjo manga series written and illustrated by Arina Tanemura. The story is about the adventures of a high school girl, Maron Kusakabe, who transforms into a phantom thief-magical girl to collect the scattered pieces of God's power which are also coveted by demons hiding in beautiful art works.\n  	1999/02/13
106	Ceres, Celestial Legend	Ayashi no Seresu	Studio Pierrot	\n  	2000/04/20
107	Digimon Adventure 02	Dejimon Adobenchaa Zero Tsuu	Toei Animation	\n  	2000/04/02
108	Love Hina	Rabuhina	Xebec	\n  	2000/04/19
304	Angel's Feather	Enjeruzu Fezaa	VENET	\n  	2006/04/28
305	Bakegyamon	Bakegyamon	AVEX	\n  	2006/04/03
306	Ballad of a Shinigami	Shinigami no Baraddo / Shinigami No Ballad	Group TAC	Ballad of a Shinigami (しにがみのバラッド. Shinigami no Baraddo), subtitled momo: the god girl of death, is a Japanese light novel series written by K-Ske Hasegawa, with illustrations by Nanakusa. The series includes twelve novels released between June 10, 2003 and April 10, 2009, published by ASCII Media Works under their Dengeki Bunko imprint. The novels were licensed by Seven Seas Entertainment for release in English with the first novel released in March 2008. The series revolves around Momo, a shinigami, and her familiar Daniel, a talking black cat, as they interfere with the world of the living.A radio drama of the series aired on ASCII Media Works' Dengeki Taishō radio program between April and May 2005, and the recordings were collected into a drama CD released in June 2005. A manga adaptation by Asuka Izumi was serialized in Hakusensha's shōjo manga magazines LaLa and LaLa DX between May 2005 and February 2007. A six-episode anime adaptation of the series produced by Group TAC aired between March and April 2006 on WOWOW satellite TV. Lastly, a TV drama which aired on TV Tokyo was produced between January and March 2007, containing twelve episodes.Ballad of a Shinigami primarily centers around a young-looking girl named Momo (モモ?) who is a shinigami, or death god. Momo is clad in all white, along with having long white hair, and as a god of death, she leads deceased souls to the other side. She carries with her a large scythe and an ID card which helps to facilitate in her identification as a shinigami; her shinigami ID number is A-100100. Momo is different from other shinigami because she tries to ease the suffering of the people she encounters whether they be living or already dead, such as conveying messages from the dead to the living. She is also known to cry a lot, and she says that she cries for the dead because they no longer can. Accompanying Momo is a talking black cat familiar named Daniel (ダニエル Danieru) with a bell around his neck and bat-like wings who helps Momo out. The living frequently hear the ringing of Daniel's bell when Momo and Daniel are nearby. Daniel has a calm character and does not show as much sympathy to humans as Momo, but is still patient with them. In the TV drama, Daniel is portrayed as a young boy rather than a cat. The story follows Momo and Daniel as they interact with the living and usually consists of them changing something sorrowful for the living.Another shinigami featured in the series is also a young-looking girl named An (アン) who is clad in all black, along with having black hair. Like Momo, she shows outward emotion towards the living and dead, but An has a cruel personality and does not give mercy to anyone. Despite the fact that shinigami are meant to transport souls to the other side, An chooses to terminate the souls of the people she kills. Among shinigami, she is very powerful, and is referred to as a special type of shinigami. Her shinigami ID number is A-99. Accompanying An is a talking gray cat familiar named Nicolas (ニコラウス Nikorausu), but is referred to as Nicol (ニコル Nikoru) for short. Before starting to work with An, Nicol had once been very close friends with Daniel.\n\n\n  	2006/03/03
307	Black Lagoon	Burakku Raguun	Funimation Entertainment	\n  	2006/04/08
109	Sakura Wars	Sakura Taisen	Madhouse	Sakura travels to the capital with aspirations of defending the city from the demonic forces of the Black Sanctum Council like her father before her. However, things are not as she imagined as in addition to using her great spiritual energy to pilot a mech called a Kobu, she must also perform on stage as an actor as The Imperial Flower Division's cover is an art theater. Making a fool of herself and ruining a production gets her on everyone's bad side and somehow she must learn to work with them as well as prevent the enemy from destroying several shrines which protect the city.(Source: ANN)\n  	2000/04/08
110	Hamtaro	Tottoko Hamutarou	TMS Entertainment	5th-grader Laura Haruna owns a hamster, and his name is Hamtaro. After moving into a new town, Hamtaro finds that he's in the company of lots of different hamsters, making up a group of hamster friends that go on crazy adventures through the city. Before they save Laura and other humans from nasty predicaments, however, they have to learn how to save themselves. \n  	2000/07/07
111	Hand Maid May	Hando Meido Mei	Geneon Universal Entertainment	Important note: All characters in Section 1 are exclusive to the elusive bonus episode 11,.  I this an alternate Sara model delivers a package containing 5 different 1/6 scale May units.\n  	2000/07/26
112	Triangle Heart: Sweet Songs Forever	Toraianguru Haato ~Sweet Songs Forever~	Seven Arcs	\n  	2000/08/28
114	Descendants of Darkness	Yami no Matsuei	J.C.Staff	Shinigami are guardians or gods of death. They investigate deaths that are expected but never arrive or unexpected ones not scheduled to arrive.  Asato Tsuzuki is a Shinigami who works in the Second Division, which watches over the region of Kyūshū.\n  	2000/10/02
115	Carried by the Wind: Tsukikage Ran	Kazemakase Tsukikage Ran	Madhouse	\n  	2000/01/26
116	Steel Angel Kurumi Encore	Koutetsu Tenshi Kurumi Encore	OLM	\n  	2000/01/07
117	Digimon Tamers	Dejimon Teimaazu	Toei Animation	\n  	2001/04/01
118	Figure 17 Tsubasa & Hikaru	Figure 17 Tsubasa & Hikaru	Bandai Visual	\n  	2001/05/27
119	Galaxy Angel	Gyarakushii Enjeru	Madhouse	\n  	2001/04/07
120	Hanaukyo Maid Team	Hanaukyou Meido Tai	Daume	\n  	2001/04/12
250	Full Metal Panic? Fumoffu	Furumetaru Panikku? Fumoffu	Happinet Pictures	\n  	2005/05/10
251	He is my Master	Kore ga Watashi no Goshujin-sama	Geneon Universal Entertainment	\n  	2005/04/07
252	Koi Koi Seven	Koikoi 7	Amuse Soft Entertainment	\n  	2005/04/01
121	Noir	Nowaaru	Bee Train	Mireille Bouquet is a professional assassin, and a very good one at that. But when she follows up an e-mail from a young Japanese girl named Yumura Kirika, inviting her to take "a pilgrimage to the past", her life becomes even more dangerous than it already is. Now, with a haunting melody invoking the memory of an event long past, Mireille and Kirika decide to work together to find the truth about a thousand year old organization that has controlled both of their lives since before they were born. And the only clue in their search, the only thing Kirika remembers about herself, becomes their working codename: a name designating an ancient fate, of two maidens who reign over death--Noir. (Source: ANN)\n  	2001/05/06
122	Star Ocean Ex	Sutaa Oushan Ekkusu	Studio Deen	\n  	2001/04/03
123	Steel Angel Kurumi 2	Koutetsu Tenshi Kurumi 2 shiki	OLM	\n  	2001/04/12
124	Steel Angel Kurumi Zero	Koutetsu Tenshi Kurumi Zero	OLM	\n  	2001/04/18
125	Fruits Basket	Furuutsu Basuketto	Studio Deen	When high school student Tohru Honda's mother dies in a car accident, Tohru begins living in a tent and supporting herself. That is, until she finds a home in the least likely of places, inhabited by her classmate Yuki Sohma and his cousins Shigure and Kyo. The Sohmas however, live with a curse. Thirteen members of the family are possessed by spirits of the Chinese zodiac and turn into their zodiac animal when hugged by the opposite gender, are weak, or when under stress. When Tohru discovers the Sohmas' secret, she promises not to tell and is allowed to keep living with them. The Sohmas' curse, however, is deeper and darker than Tohru realized, but her presence soon becomes a large, positive influence on those possessed by the zodiac. She sets out to break the curse, and on the way, meets and discovers each of the Sohma's vengeful zodiac spirits. Each has a different personality, just like the animals in the Chinese Zodiac. Tohru's existence changes the Sohma clan's lives forever. (source: Wikipedia)\n  	2001/07/05
129	Crush Gear Turbo	Gekitou! Kurasshugia Taabo	Bandai Visual	\n  	2001/10/07
131	Hellsing	Herushingu	Gonzo	\n  	2001/10/10
132	Kokoro Library	Kokoro Toshokan	Studio Deen	\n  	2001/10/12
133	Najica Blitz Tactics	Najika Dengeki Sakusen	Studio Fantasia	\n  	2001/10/04
134	X-1999	Ekkusu	Bandai Visual	\n  	2001/10/03
135	Puni Puni ☆Poemy	Puni Puni ☆ Poemi	J.C.Staff	\n  	2001/03/07
136	Slayers Premium	Sureiyaazu Puremiamu	J.C.Staff	\n  	2001/12/22
137	.hack//Sign	Dotto Hakku Sain	Bandai Visual	The story focuses on a Wavemaster named Tsukasa, a player character of a virtual-reality massively multiplayer online role-playing game called The World\n. Tsukasa wakes up to find himself in a dungeon in The World, but he suffers from short-term memory loss as he wonders where he is and how he got there. The situation gets worse when he discovers he is unable to log out and is trapped in the game. From then on, along with other players Tsukasa embarks on a quest to figure out the truth behind his abnormal situation.\n  	2002/04/04
138	Azumanga Daioh	Azumanga Daiou	J.C.Staff	Story & Info:\nAzumanga Daioh (あずまんが大王)\n is a Japanese comedy manga by Kiyohiko Azuma. The story depicts the lives of a group of girls during their three years as high-school classmates. Plot:Azumanga Daioh chronicles the everyday life of six girls and two of their teachers in an unnamed Japanese high school; covering from tests, classes, culture festivals, athletic events, time spent traveling to and from school, group studying, summer vacations and the fictional theme park Magical Land, concluding with the graduation of the main cast. The story is generally realistic in tone, marked by occasional bursts of surrealism and absurdity.Manga:It was serialized in a shōnen manga magazine from 1999 to 2002 and collected in four bound volumes. In May 2009, in conjunction with the 10th anniversary of the manga, three additional chapters began serialization under the title Azumanga Daioh: Supplementary Lessons\n.The manga is drawn in a series of vertical four-panel comic strips\n called yonkoma\n. The series has been praised for its humor driven by its eccentric characters, and Kiyohiko Azuma is acclaimed as a "master of the four-panel form" for both his art style and comic timing.Anime:It was adapted as an anime television series called Azumanga Daioh: the Animation\n by J.C.Staff. Other media: Several soundtrack albums were released, as well as three Azumanga Daioh video games.Source:Wikipedia\n\n  	2002/04/08
139	Bluer Than Indigo	Ai Yori Aoshi	Geneon Universal Entertainment	\n  	2002/04/11
140	Chobits	Chobittsu	Geneon Universal Entertainment	(Warning: Spoilers)The series centers on the life of Hideki Motosuwa, a held-back student attempting to qualify for university by studying at Seki prep school in Tokyo. Besides a girlfriend, he dreams of having a persocom: an android used as a personal computer, which is expensive. On his way home one evening, he stumbles across a persocom in the form of a beautiful girl with thigh-length hair lying against a pile of trash bags, and he carries her home, not noticing that a disk fell on the ground. Upon turning her on, she instantly regards Hideki with adoration. The only word the persocom seems capable of saying is "chii", thus he names her that. Hideki assumes that there must be something wrong with her, and so the following morning he has his neighbor Hiromu Shinbo analyze her with his mobile persocom Sumomo. After Sumomo crashes during the attempt they conclude that she must be custom-built. Shinbo introduces Hideki to Minoru Kokubunji, a twelve-year-old prodigy who specializes in the field of custom-built persocoms. Minoru's persocoms, including Yuzuki, a fairly exceptional custom-built persocom, are not able to analyze Chii either, and thus they conclude that she may be one of the Chobits, a legendary series of persocoms rumoured to have free will and emotions. Although this is a possibility, Minoru is confident that it is only rumour. Yuzuki also adds that she does not resemble any persocom model in any available database and so she must be custom made after all. A major part of the plot involves Hideki attempting to teach Chii words, concepts, and appropriate behaviours, in between his crammed schedule of school and work. At the same time, Chii seems to be developing feelings for Hideki, at an emotional depth she is not supposed to possess, and Hideki struggles with his feelings for her. The need to figure out more about Chii and her mysterious functions and past becomes a pull for the characters in the series. Hideki's feelings intensify for Chii regardless of her being a persocom and despite his friends' painful experiences involving other persocoms. Chii becomes aware of her purpose through a picture book series called A City with No People which she finds in a bookstore. The books speak about many different things involving human and persocom relationships: persocoms and their convenience as friends and lovers, how there are things that they cannot do and questioning whether a relationship between a persocom and a human is really one-sided. It also speaks about the Chobits series; that they are different from other persocoms, and what they are incapable of doing unlike other persocoms. These picture books awaken Chii's other self, her sibling Freya who is aware of their past and helps Chii realize what she must do when she decides who her "person just for me" is. Together, Chii and Hideki explore the relationship between human beings and persocoms, as well as their friends' and their own. (source: Wikipedia)\n  	2002/04/02
141	Daigunder	Bakutou Dengen Daigandaa	Columbia Music Entertainment	Akira Akebono, a young boy who is competing in a robot tournament where many of the robots are capable of transforming into animal forms. Akira wants to win the ultimate prize, the Titan Belt, with the help of his group of robots, all of which are capable of forming into the robot Daigunder. Daigunder is the creation of Akira's father, Professor Hajime Akebono. Together with a girl named Haruka, they compete under the name of Team Akira. However, Team Akira faces opposition from not only their competition, but a robot named Ginzan who is under the control of the evil Professor Maelstrom.--MAL\n  	2002/04/05
142	Digimon Frontier	Dejimon Furontia	Toei Animation	\n  	2002/04/07
143	Full Moon o Sagashite	Furu Muun Wo Sagashite	Studio Deen	\n  	2002/04/06
144	Gun Frontier	Gan Furontia	Vega Entertainment	\n  	2002/03/28
145	Happy Lesson	Happii Ressun	KSS	\n  	2002/04/01
149	Rizelmine	Rizerumain	Madhouse, Imagin	\n  	2002/04/02
150	Selfish Fairy: Mirmo de Pon!	Wagamama Fairy: Mirumo de Pon!	Studio Hibari	\n  	2002/04/06
151	Tenchi Muyo! GXP	Tenchi Muyo! Jii Rkkusu Pii	AIC	\n  	2002/04/03
152	The Twelve(12) Kingdoms	Juuni Kokuki	Geneon Universal Entertainment	Info:\nThe Twelve Kingdoms(十二国記, also known as "Record of 12 Countries")tells several stories from the world of the Twelve Kingdoms, located on several islands accessible through magic. On the islands, magic works and societies similar to classical China exist. While the inhabitants of the Twelve Kingdoms are aware of the existence of our world, the reverse is not true.Each of the Twelve Kingdoms has a kirin, a mythological beast who first selects and then serves the monarch of his or her kingdom. It can also assume human form. Though only a few rulers and kirins are in the main focus of the story, many are encountered in the series and play a significant role. The anime focuses on the Kingdom of Kei and the events surrounding it. Several of the other countries are introduced, the most prominent being Kou, En and Tai\n, while Kyou, Hou, Sai and Ryuu\n play a minor role compared to the other three.Story:\nIn the role of the main character, Yoko Nakajima, a Japanese girl who is suddenly transported to another world and eventually discovers that she is the empress of the kingdom of Kei.Source:http://en.wikipedia.org/wiki/Juuni_KokkiWallpapers:http://www.madman.com.au/wallpapers/twelve_kingdoms_1_1024.jpghttp://www.madman.com.au/wallpapers/twelve_kingdoms_2_1024.jpgSource:madman.com.au\n\n  	2002/04/09
153	Tokyo Mew Mew	Toukyou Myuu Myuu	Inter Channel	At the start of the series, a young girl named Ichigo Momomiya attends an endangered species exhibit with her 'crush' and future boyfriend, Masaya Aoyama. After an earthquake, Ichigo and five other girls are bathed in a strange light. A cat appears before Ichigo, then merges with her. The next day she begins acting like a cat and, after meeting Ryô Shirogane and Keiichirô Akasaka, learns that she was infused with the DNA of the Iriomote Cat. Ryô and Keiichirô explain that this allows her to transform into Mew Ichigo, a powerful heroic cat girl. She is ordered to defeat chimera animals—alien parasites—which infect animals and turn them into monsters. Ryô and Keiichirô instruct Ichigo to find the five other girls from the exhibit—the remaining Mew Mews. They are Mint Aizawa, a spoiled, wealthy girl who is infused with the genes of the Blue Lorikeet; Lettuce Midorikawa, a shy but smart girl who endures constant bullying and absorbs the genes of the Finless Porpoise; young Pudding Fong, who receives the genes of the Golden Lion Tamarin; and Zacro Fujiwara, a professional model infused with the genes of the Gray Wolf. The five Mew Mews battle the kirema animas and their alien controllers, Kish, Pie and Tart. Kish falls in love with Ichigo; he tries to gain her love despite the fact that he is trying to eliminate the other Mew Mews. Two more aliens, Pie and Tart, later join Kish in trying to destroy the Mew Mews. As the fighting intensifies, the Mew Mews are tasked with finding "mew aqua," a material created from pure water that contains immense power for combating the alien attacks. During a battle with Kish at an aquarium, Ichigo is in danger of losing when the mysterious Blue Knight appears and rescues her. He returns periodically throughout the series, protecting Ichigo from various dangers; it is later revealed that the Blue Knight is in fact Masaya. Shortly after this discovery, Masaya collapses and transforms again, into Deep Blue—the alien leader who wants to destroy humanity. After explaining to Ichigo that Masaya was a false form for temporary use, Deep Blue attacks the Mew Mews. Masaya's personality briefly reappears and he uses a nearby mew aqua drop to destroy Deep Blue, killing himself in the process. Crying over his body, Ichigo pours her power into Masaya to save his life, losing her own in the process. Masaya kisses her, changing her back to a human, and revives her. Ryô gives Pie the remaining mew aqua to save the aliens' world, after which Kish, Pie and Tart say their goodbyes and return to their own world. (source: Wikipedia)\n  	2002/04/06
155	Demon Lord Dante	Maou Dante	Magic Bus	Ryo Utsugi, a high school student, begins suffering nightmares.  Ryo's sister, Saori, is kidnapped and used as a ritualistic sacrifice by a group of satanic cultist, who’s primary goal is revive Demon Lord Dante.  Ryo's premonitions guide him to the ceremony and he saves her prior to the cultist's ceremony disrupted by militant Christianic followers of God.  Believing that Ryo's new-found powers could ultimately awaken Dante, the most powerful of the demon lord, and  beasts, the cultists cause a chain of events that lures Ryo high into the mountains, where he discovers a portal that takes him deep into the Himalayas into Dante's prison.Dante uses Ryo’s telekinetic powers to free himself before eating him alive, as the cultists summon Dante to Japan. Ryo consciousness conquers Dante’s who rampages Nagoya with his new body, only to end when Dante encounters his old best friend Zenon. Later Ryo encounters BeliZebub, the leader of the cultists, who tells him that his birth family was killed in a car accident and his father, who is both a doctor and a leader of a rival cult dedicated to God's will, was the one who saved him. He also meets the demon Medusa, who assumes the form of a supermodel named Saeko Kodai.  Medusa later rescues Saroi from Lamia’s labyrinth and restore his memory.  With His memory restored, Dante resolves to both joining and leading the cultists in there fight against God.--Mitsugu\n  	2002/08/31
157	Princess Tutu	Purinsesu Chuchu	Hal Film Maker	Anime – Ahiru/Duck is a young duck who spots a young man dancing by the river and falls in love with him. A man named Drosselmeyer gives her a pendant to allow her to become a real human girl as well as the magical Princess Tutu. Without this pendant she is reduced back to a duck. Princess Tutu has but one mission; restore the pieces of her prince’s heart. Standing in her way are Princess Kraehe a servant of an evil crow who wants Mytho’s heart and in love with him. And at first Mytho’s guardian and friend Fakir also tries to stop Princess Tutu but his reason was to protect Mytho.Manga – The manga story line differs slightly as a young ballet student named Ahiru Arima thinking she’s late for ballet school gets there early due to her alarm being off. But as she gets there she sees Mytho a boy from her class there practicing. She then meets his guardian another classmate Fakir who warns her to stay away. On her way home she spots a beautiful Tutu in the window of a shop and meets the owner a woman named Edel. For being her first customer Edel gives her a pendant. Later when she spots Mytho in trouble she transforms into Princess Tutu and saves him and gives him a piece of his heart back. She later learns her pendant shows her when she’s near other shards. Princess Kraehe a servant of an evil crow who wants Mytho’s heart to use as a sacrife to bring evil to the world and she’s also in love with Mytho and fears he will abandon her if his heart is restored. At first Mytho’s guardian and friend Fakir also tries to stop Princess Tutu but his reason was to protect his childhood friend.\n  	2002/08/16
160	Shrine of the Morning Mist	Asagiri no Miko	Chaos Project, Gansis	\n  	2002/07/04
163	Charcoal Feather Federation	Haibane Renmei	Geneon Universal Entertainment	A dream of falling from the sky... and then birth. Rakka is born from a large cocoon into the Old Home, greeted by a group of females with small wings on their backs and shining halos above their heads. Soon Rakka’s own wings grow, a halo is placed on her head and she is told that she must work in the nearby town of Grie. She soon realizes that the town and the entire world they live in are confined behind the Wall, a tall, impenetrable wall that none except the mysterious Toga are allowed to exit.\n  	2002/10/09
164	Ghost in the Shell: Stand Alone Complex Series	Koukaku Kidoutai Sutando Aroun Konpurekkusu	Bandai Visual	Info:\nGhost In The Shell SAC (Season 1) (runs from October 1, 2002 to March 25, 2003)Ghost In The Shell SAC 2nd Gig (Season 2) (runs from January 1, 2004 to January 8, 2005)\nStory:\nGhost in the Shell is a futuristic police thriller dealing with the exploits of the cyborg Motoko Kusanagi, a member of a covert operations division of the Japanese National Public Safety Commission known as Section 9. The unit specializes in fighting technology-related crimes. The setting of Ghost in the Shell is cyberpunk or postcyberpunk, similar to that of William Gibson's Sprawl trilogy. Kusanagi and her colleagues face external threats and also suffer internal conflict over their own natures.Source: Wikipedia\n\n  	2002/10/01
165	Gravion	Choujuushin Guravion	Gonzo	\n  	2002/10/07
166	Spiral: The Bonds of Reasoning	Spiral ~Suiri no Kizuna~	Aniplex	\n  	2002/10/01
167	Full Metal Panic!	Furumetaru Panikku!	Happinet Pictures	\n  	2002/01/08
168	Kanon (2002)	Kanon	Toei Animation	\n  	2002/01/31
169	Air Master	Ea Masutaa	Toei Animation	\n  	2003/04/01
170	Detective School Q	Tantei Gakuen Q 	Studio Pierrot	\n  	2003/04/15
253	New Legend of the Heroes of the Warring Nations - The Ten Sanada Brave Soldiers	Shinshaku Sengoku Eiyuu Densetsu Sanada Juu Yuushi The Animation	Group TAC	\n  	2005/05/07
254	Speed Grapher	Supiido Gurafaa	Gonzo	\n  	2005/04/07
255	Zoids: Genesis	Zoido Jeneshisu	Shogakukan Productions	\n  	2005/04/10
171	Gad Guard	Gado Gaado	Gonzo	Several hundred years in the future, the resources of the Earth runs out, and the progression of the human race has stagnated. The world is now divided into "Units". A boy named Hajiki Sanada lives with his mother and sister in Unit 74, in a place called "Night Town", in which all electricity is shut down at midnight. The key in this story is an object called the GAD. GADs have the ability to reconstruct materials while reacting to feelings of an organic life. The size and shape of the resulting product seem to be different depending on the kinds of feelings that the life possesses. When Hajiki comes in contact with one by accident, it transforms into a huge robot--a Tekkoudo, or "Iron Giant"--which Hajiki names Lightning. And soon he realizes that he isn't the only one with a Tekkoudo, and must find out how to deal with those others who he feels are the "same" as himself. \n  	2003/04/16
174	Stellvia of the Universe	Uchuu no Suteruvia	Xebec	The year is 2356 A.D. - 189 years after a distant supernova caused a global catastrophe that wiped out 99% of the world population. To keep track on all space activities, mankind has built colossal space stations called "foundations" all over the Solar System. After passing the Space Academy entrance exams, Shima Katase embarks to the Earth-based foundation Stellvia to fulfill her dream of seeing the galaxy and to prevent another interstellar catastrophe from destroying Earth.\n  	2003/04/02
178	Battle Vixens	Ikkitousen / Ikki Tousen	Media Factory	Seven schools are constantly 'at war' with each other, and the students within - both male and female - have become skilled fighters and constantly battle with rival schools. Their lives and fates are guided by strange jewels that contain the spirits and destinies of warriors from the Sangokushi period. One girl, Sonsaku Hakufu, has recently moved to Japan and is apparently destined to unite the schools as her counterpart united seven countries long ago. But, like all heroes, there is a darker side to her fate, and as always there is a constant struggle by those around her to break the chains of their own destinies and make their own lives.\n  	2003/07/30
180	Divergence Eve	Daibaajensu Ivu	Media Factory	In the future, interstellar travel takes place via "inflation gates" that pass through a parallel universe. Unfortunately, denizens of another universe, called "ghouls", want to invade our universe using the same portals. At Watcher's Nest, a distant station, a ship arriving through a portal is attacked by a ghoul, and one of the passengers, rookie soldier Kureha Misaki, undergoes a dreadful change.\n  	2003/07/02
181	Please Twins!	Onegai Tsuinzu	Bandai Visual, Studio Orphee, Daume	\n  	2003/07/15
182	Bobobo-bo Bo-bobo	Boboboubo Boubobo	S'more Entertainment	\n  	 2003/11/08
183	Chrono Crusade	Kurono Kuruseido	Kadokawa Shoten	Chrono Crusade is set in the height of the Roaring Twenties, where jazz is king, bootleg liquor flows freely, and the mob rules the streets. It is a time of prosperity, luxury and decadence, and the division between rich and poor grows even wider in the wake of the First World War. It is at such times of great change and upheaval that the dark things that lurk below the world of man can come to the surface. In the world of Chrono Crusade, a fictional organization known as the Order of Magdalene (or more specifically, the characters of Sister Rosette Christopher and her soul-bound demon partner, Chrono) exists to fight the demonic threats that appear with increasing regularity across America. Both Rosette and Chrono are revealed during the course of the story to be driven by a shadowy past, centered on a search for Rosette's lost brother Joshua who is shown to have been taken from her by the sinner, Aion, a demon who shares a dark and bloody history with Chrono. He seeks nothing less than to overthrow the delicate balance between Heaven, Earth, and Hell (in the manga it is the demons hierarchy he wished to destroy).The anime follows the manga through the events of Volume IV, but it diverges during a crucial plot event, creating different courses of events and endings. The characterization of some the characters, including Rosette and Aion, and their roles in the story were changed drastically in the adaptation of the manga. Much of the story is driven by the individual pasts of the main characters and the complex relationships between them.\n  	2003/11/24
184	Cromartie High School	Sakigake!! Kuromati Koukou	Bandai Visual	\n  	2003/10/02
308	Crash B-Daman	Bakkyuu Hit! Kurasshi Biidaman	Marvelous Entertainment 	\n  	2006/01/09
309	Digimon Data Squad	Dejimon Seibaazu / Digimon Savers	Toei Animation	\n  	2006/04/02
310	Dream Users	Yume Tsukai	Madhouse	\n  	2006/04/08
311	Ergo Proxy	Erugo Purakushii	Manglobe	\n  	2006/02/25
312	Gakuen Heaven - Boy's Love Scramble	Gakuen Hevun Booizu Rabu Sukuranburu	Visual Art's	\n  	2006/04/01
313	Gargoyle of Yoshinaga House	Yoshinaga-san Chi no Gargoyle	Happinet Pictures	\n  	2006/04/01
314	Gintama	Gintama	Aniplex	\n  	2006/04/04
385	Romeo X Juliet	Romio to Jurietto	Gonzo	\n  	2007/03/24
185	Full Metal Alchemist	Hagane no Renkinjutsushi	Aniplex	Edward and Alphonse Elric are two alchemist brothers searching for the legendary catalyst called the Philosopher's Stone, a powerful object which would allow them to recover their bodies (which were lost in an attempt to bring their mother back to life through alchemy). Born in the village of Resembool from the country of Amestris, the two brothers lived there with their mother. Their father, Van Hohenheim, left home for unknown reasons and years later, their mother Trisha Elric died of a terminal illness, leaving the Elric brothers alone. After their mother's death, Edward became determined to bring her back through the use of alchemy, an advanced science in which objects can be created from raw materials. They researched Human Transmutation, a forbidden art in which one attempts to create or modify a human being. However, this attempt failed, ultimately resulting in the loss of Edward's left leg and Alphonse's entire body. In a desperate effort to save his brother, Edward sacrificed his right arm to affix Alphonse's soul to a suit of armor. Some days later, an alchemist named Roy Mustang visited the Elric brothers, and proposed that Edward become a member of the State Military of the country in exchange for more research materials to find a way to recover their bodies. After that, Edward's left leg and right arm were replaced with automail, a type of advanced prosthetic limb, created for him by his close family friends Winry Rockbell and her grandmother Pinako.\n  	2003/10/04
186	Gilgamesh	Girugamesshu	Group TAC	\n  	2003/10/02
187	Gungrave	Gangureivu	Madhouse	\n  	2003/10/06
188	Maburaho	Maburaho	Kadokawa Shoten	\n  	2003/10/14
189	Mermaid Forest	Ningyo no Mori	TMS Entertainment	\n  	2003/10/04
190	The Eternity You Desire	Kimi ga Nozomu Eien (Kiminozo)	Studio Fantasia	\n  	2003/10/05
191	The Hat, the Darkness, and the Travelers of the Books	Yami to Boushi to Hon no Tabibito	Studio Deen	\n  	2003/10/02
192	Zoids Fuzors	Zoido Fyuuzaazu	Tokyo Kids	\n  	2003/10/04
193	.hack//Legend of the Twilight	Dotto Hakku Tasogare no Udewa Densetsu	Bandai Visual	\n  	2003/01/08
194	Gunparade March: A New Song for the March	Ganparedo Machi: Aratanaru Kogunka	J.C.Staff	It began in 1945, at the end of the Pacific War. Alien invaders filled the earth's Skies, and mankind was forced to confront an unprecedented threat. For the first time in human history, people of all cultures came together under one banner.This war has now been raging for over fifty years. Countless lives have been lost, and the Japanese military is now forced to rely on young people such as Atsushi Hayami and his high school class, also known as Unit 5121. This new generation fearlessly struggles on with the aid of the HWT humanoid combat machines and the devastating PBE bomb.\n  	2003/02/06
327	Princess Princess	Purinsesu Purinsesu	Studio Deen	\n  	2006/04/05
198	Nanaka 6/17	 Nanaka Juu-nanabun no Roku	J.C.Staff	Seventeen-year-old Nanaka Kirisato is a high school student serious about her studies and goals in life. She frequently criticizes her best friend, Nenji Nagihara, for being a childish delinquent who spends his time fighting other boys. Then one day, after a heated argument with Nenji, she falls off a flight of stairs and suffers a brain injury, resulting in her mind reverting to that of a six-year-old. With this in mind, Nanaka's father and Nenji must keep her injury a secret as she struggles to live a normal life and grow up all over again. \n  	2003/01/08
201	Stratos 4	Sutoratosu Fou	Studio Fantasia	\n  	2003/01/05
202	Tomorrow's Nadja	Ashita no Nadja	Toei Animation	\n  	2003/02/02
203	Wolf's Rain	Urufuzu Rein	Bones	In some distant future, it's common knowledge that all wolves have been extinct for 200 years. However, it seems this is false as wolves have not disappeared but rather have taken human form. Kiba, a lone wolf, wanders into a city, trying to sniff out the Lunar Flowers that are supposed to lead whoever follows the scent to paradise. The source of the smell is Cheza, a girl who sleeps in what appears to be suspended animation in a lab. She and the wolves are drawn to each other, and Kiba hopes to find paradise once he finds the source of the scent of Lunar Flowers. However, once Kiba finds Cheza, she is kidnapped by a mysterious person called Darcia, and his search begins anew. Before he leaves the city, he meets 3 other wolves, Tsume, Hige and Toboe. All four wolves have very different personalities and ideas, and their friendliness towards each other is a little rough around the edges. However, they soon band together to continue to search for paradise. \n  	2003/01/06
204	Burst Angel	Bakuretsu Tenshi	Media Factory	Burst Angel (爆裂天使) is a Japanese animated television series directed by Koichi Ohata, from a screenplay by Fumihiko Shimo. It was produced by the Gonzo animation studio.Burst Angel takes place in the near future, after a rise in criminal activity forced the Japanese government to allow citizens to possess firearms and establish the Recently Armed Police of Tokyo (RAPT). The series follows Kyohei Tachibana, a culinary school student who dreams of becoming a pastry chef, and the band of mercenaries he works for.Source:WikipediaWallpaper\nSource:madman.com.au\n\n  	2004/04/06
205	Eureka Seven	Koukyoushihen Eureka Sebun	Bandai Visual	Eureka Seven consists of fifty episodes which aired from April 17, 2005, to April 2, 2006, on the Mainichi Broadcasting System and Tokyo Broadcasting System networks. Almost all of the show's episodes are named after real songs, composed by both Japanese and foreign artists.[2][3]The series focuses on Renton Thurston, the fourteen-year-old son of Adrock Thurston, a military researcher who died saving the world. He lives what he considers a boring life with his grandfather in a boring town. He loves lifting, a sport similar to surfing but with trapar, a substance abundant throughout the air, as the medium. He dreams of joining the renegade group Gekkostate, led by his idol Holland, a legendary lifter.An opportunity to do so literally falls into his lap when a large mechanical robot, called the Nirvash typeZERO, and Eureka, its pilot and a member of Gekkostate, crash into Renton's room. Renton's grandfather orders him to deliver a special part to the Nirvash called the "Amita Drive", which releases the immense power dormant within the typeZERO called the "Seven Swell Phenomenon". Afterwards, Renton is invited to join Gekkostate, where he quickly discovers that the behind-the-scenes life of Gekkostate is hardly as glamorous or as interesting as printed in the glossy pages of their magazine, ray=out. Only one thing makes it all worthwhile for him: the presence of Eureka, the mysterious pilot of the Nirvash. Renton, Eureka, and the Gekkostate embark on an adventure that will shape their future as well as the world's.Eureka Seven works on a wide variety of themes throughout its story.[4] One of the most obvious themes in the series is racial integration, presented via the relationships in the series, e.g. Renton's with Eureka, who is not entirely human. Religious tolerance and harmony is presented in the characters' relationships and also the series' conflicts. Allegories of real world conflicts and wars, current political climates from Japan and abroad, depictions of surf culture[5] and other subcultures and related musical movements that span several generations, and ties to environmental movements.[5][6] The series also covers other more personal themes such as parenting, and family, along with a very innocent view of puppy love/love at first sight from Renton and Eureka.[6] Personal identity and protection play a huge role for Renton and Eureka, as both of them say, "I am me" in the series multiple times, and Renton has sworn to protect Eureka. Continuing with themes addressed in previous series, responsibility and guilt manifest most explicitly with repeating the phrase, "You're going to carry that weight." The series works these themes, as well as the theme of growing up and change, into the journey of Renton Thurston.\n  	2005/04/17
206	Gantz	Gantsu	Gonzo	\n  	2004/04/12
207	Melody of Oblivion	Boukyaku no Senritsu	J.C.Staff	\n  	2004/04/06
208	Midori Days	Midori no Hibi	Studio Pierrot	\n  	2004/04/03
209	Samurai Champloo	Samurai Chanpuruu	Manglobe	A young woman named Fuu is working as a waitress in a tea shop when she is harassed by a band of samurai. She is saved by Mugen, a mysterious rogue, and Jin, a young ronin. Mugen attacks Jin after he proves to be a worthy opponent and they begin fighting one another and inadvertently cause the death of Shibui Tomonoshina, the magistrate's son. For this crime they are to be executed. But with some help from Fuu, they escape, and Fuu asks them to travel with her to find "the samurai who smells of sunflowers."\n  	2004/05/16
210	The Portrait of Little Cossette	Kozetto no Shouzou / Le Portrait de Petit Cossette	Daume	\n  	2004/04/11
211	Agatha Christies Great Detectives Poirot and Marple	Agasa Kurisutii no Meitantei Powaro to Maapuru	NHK Enterprises	\n  	2004/07/04
212	DearS	Diaazu	MediaWorks	\n  	2004/06/11
315	High School Girls	Joshikousei Girl's High	ARMS, Genco, Geneon, Toshiba Entertainment, Mellow Head	\n  	2006/04/03
354	Mega Man Star Force	Ryuusei no Rokkuman	XEBEC	In the year 220X, the world has advanced toward radio-wave technology, and the world is connected through the Wave Road. Meet Subaru Hoshikawa, a fifth-grade student who lost his father in a space accident. Subaru meets an extraterrestrial radio-wave being named War-Rock, descending from a distant FM planet. War-Rock claims to know about Subaru's father, but many alien beings are after War-Rock. The two work together and merge into Rockman, a radio-wave human capable of traversing the Wave Road and battling the radio-wave viruses and FMs that threaten the Earth.(Source: ANN)\n  	2006/10/07
386	Saint Beast	Seinto Biisuto	AVEX	\n  	2007/04/03
213	Elfen Lied	Erufen Riito	Vap	Elfen Lied takes place in Kamakura, Japan, focusing on a new strain of the human race, Diclonius, similar to human beings but different at the genetic level and notable due to physical abnormalities, particularly a pair of short horn-like protrusions. One such Diclonius, Lucy, is the main character of the series: Initially held in a facility built for experimentation, located off the coast of Kamakura, Kanagawa Prefecture, she manages to escape and wreak havoc, but is injured in the process, an event which causes her to develop a secondary, child-like personality known as Nyu.Lucy is found by two locals, Kohta, who studies at the local university, and his cousin Yuka. They take her in, and become involved with the numerous, often brutal, attempts to recapture her by a Special Assault Team and a number of other Diclonius, who shift from oblivious to murderous frequently. Other characters include Bando, an SAT trooper mauled by Lucy and infected with a virus, and Kurama, a carrier of the virus.\n  	2004/07/25
214	Fafner in the Azure - Dead Aggressor	Soukyuu no Fafunaa	Xebec	Tatsumiyajima is the central island in the middle of a small cluster of islands, in a sleepy backwater of the Japanese isles. Not much happens there, and the island's young people go to school knowing that their lives are likely to remain peaceful and undisturbed. Or so they have been taught... but the truth is different. The fate of mankind is on the line, and Tatsumiyajima is the last line of defense against a hostile and incomprehensible enemy. At the center of it all, fighting for Humanity's continued existence, is the giant robot Fafner, the dragon that guards this final treasure of mankind.\n  	2004/07/04
215	Girls Bravo	Gaarusu Burabou	Kadokawa Shoten	Born very short in size, Yukinari has always been picked on by girls. His life is so full of violent and abusive girls, that he has become gynophobic, and being touched by a girl causes him to break out in hives. One day, after being kicked in the face by Kirie-chan, he falls in the bathtub and passes through to another world where he meets a very sweet and kind Miharu-chan. Yukinari is surprised to find out that he does not react when being touched by Miharu, and he is amazed at how interested she is in him.\n  	2004/07/06
216	Kurau Phantom Memory	Kurau Fantomu Memorii	Media Factory	\n  	2004/06/24
217	Maria Watches Over Us: Printemps	Maria-sama ga Miteru ~Haru~	Studio Deen	\n  	2004/07/04
218	Ninja Nonsense: The Legend of Shinobu	Ninin ga Shinobuden	Ufotable	\n  	2004/07/08
219	Alice Academy	Gakuen Alice	Aniplex	\n  	2004/10/30
256	FLCL Fooly Cooly	Furi Kuri	Gainax, Production I.G	FLCL revolves around Naota. His life in the city of Mabase is interrupted by the arrival of Haruko Haruhara who bursts on the scene by running Naota over with her Vespa scooter, then giving him CPR and hitting him on the head with a blue vintage Rickenbacker 4001 left-handed electric bass guitar.[2][3] Later, Naota is shocked to find Haruko working in his house as a live-in maid.Since then, Giant Robots from Medical Mechanica have been coming out of Naota's head and cause more problems for Naota. Haruko is using Naota for her search for the Pirate King, Atomsk, because Naota's head is the only one that can create a passageway for the robots. It also puts her at odds with Medical Mechanica, the monolithic industrial corporation. At the same time, Naota is being watched by Commander Amarao, who believes that Medical Mechanica is out to conquer the galaxy. The combination of circumstances gets Naota involved in a three-way battle between Haruko, Amarao and Medical Mechanica. The underlying theme is Naota's coming of age as he becomes more mature and learns to express his feelings.\n  	2000/04/26
257	Madam is a Magical Girl / Bewitched Agnes	Okusama wa Mahou Shoujo	Media Factory	\n  	2005/07/04
220	Beet the Vandel Buster	Bouken Ou Biito	Toei Animation	The story is set in the "Dark Ages", a term referring to the time since Vandels appeared and started attacking humans. Beet is a boy who dreams of joining the "Zenon Warriors", a group of "Vandel Busters" who are considered to be the strongest on the continent. When the group comes to protect his village from the Vandel, Beltorze, Beet tries to join them but is rejected.When Beltorze appears, the Zenon Warriors seem to have the upper hand until Beet cheers them on, causing the Vandel to notice his presence. Beltorze attacks Beet, and the Zenon Warriors are forced to break formation to help him. Beltorze uses that moment to attack again, which mortally wounds all of them. Hidden in the smoke, the Zenon Warriors decide to rescue Beet’s life by putting their life force into their “Saiga” and giving them to Beet. When Beet complains and asks them why they are doing this, it is revealed that Zenon is Beet’s brother. The now weaponless Zenon Warriors then emerge from the smoke and continue to attack Beltorze. When Beet regains consciousness, both Beltorze and the Zenon Warriors are gone. Guilt-ridden and sad, he cries and vows to destroy all the Vandels and end the Dark Ages. He then goes on a three-year training expedition.His childhood friend, Poala, who Beet keeps impressing that she is going to marry him, later joins Beet and they form the “Beet Warriors”. As the story continues more is learned about the fight between the Zenon Warriors and Beltorze and the fantasy world of Beet is expanded on.The manga series has been on hiatus since September 2006 because of Koji Inada's sickness.\n  	2004/09/30
222	Desert Punk	Suna Bouzu	Gonzo	\n  	2004/10/04
223	Fantastic Children	Fantajikku Chirudoren	Nippon Animation	\n  	2004/10/04
224	Final Approach	Fainaru Apurouchi	Amuse Soft Entertainment	\n  	2004/10/07
225	Grenadier: The Beautiful Warrior	Gureneedaa	Shochiku Home Video	\n  	2004/10/14
226	Harukanaru Toki no Naka De ~Hachiyou Shou~	Harukanaru Toki no Naka de Hachiyou Shou	Yumeta Company	\n  	2004/10/05
227	Howl's Moving Castle	Hauru no Ugoku Shiro	Studio Ghibli	\n  	2004/11/20
228	Kannazuki no Miko	Kannazuki no Miko	Geneon Universal Entertainment	\n  	2004/10/01
229	Magical Girl Lyrical Nanoha	Mahou Shoujo Ririkaru Nanoha	Seven Arcs	\n  	2004/10/01
230	Mai Hime	Mai-HiME	Bandai Visual	\n  	2004/09/30
231	Mobile Suit Gundam SEED Destiny	Kidou Senshi Gandamu Shiido Desutinii	Bandai Visual	\n  	2004/10/09
232	Onmyou Taisenki	Onmyou Taisenki	Sunrise	\n  	2004/09/30
233	Rozen Maiden	Rouzen Meiden	Nomad	\n  	2004/10/07
234	Tactics	Takutikusu	Amuse Soft Entertainment	\n  	2004/10/05
348	Code Geass: Lelouch of the Rebellion	Kodo Giasu: Hangyaku no Ruruushu	Bandai Visual	Here I have organized the characters\n by nation/factionSection 0: Main charters, miscellaneous.Section 1: The Black KnightsSection 2: The Holy Britanian EmpireSection 3: The Chinese FederationSection 5: Unique/Custom Knightmare Frames\n  	2006/10/05
351	Hell Girl: Two Mirrors	Jigoku Shoujo Futakomori	Studio Deen	The second season of the anime series.\n\n  	2006/10/07
353	Maria Watches Over Us 3rd	Maria-sama ga Miteru 3	Studio Deen	\n  	2006/11/29
379	Magical Girl Lyrical Nanoha StrikerS	Mahou Shoujo Ririkaru Nanoha Sutoraikaazu	Seven Arcs	\n  	2007/04/01
501	Hayate the Combat Butler	Hayate no Gotoku!	SynergySP	\n  	2007/04/01
235	The Place Promised in Our Early Days	Kumo no Mukou, Yakusoku no Basho	CoMix Wave Film	Info:The Place Promised in Our Early Days (雲のむこう、約束の場所)\n is a 90-minute Japanese anime film created and directed by Makoto Shinkai. The film includes several references to other literary works and themes, such as separation and dreams.The story takes place in Japan during the late 1990s in an alternate timeline, following the story of three friends living in Aomori on the northern end of southern Japan: two boys, Hiroki Fujisawa and Takuya Shirakawa, both child prodigies; and one girl, Sayuri Sawatari.Fascinated by the Hokkaido Tower visible across the Tsugaru Strait to the north, the two boys have found a crashed Maritime Self-Defense Force drone plane and worked on rebuilding it, scrounging parts from their workplace and promising to one day fly to Hokkaido to visit the Tower. However, before they could do this, Sayuri mysteriously disappeared during the summer.Source Wikipedia\n\n  	2004/11/20
236	Tsukuyomi Moon Phase	Tsukuyomi	Shaft	\n  	2004/10/04
237	Yakitate!! Japan	Yakitate!! Japan	Sunrise	\n  	2004/10/12
238	Dead Leaves	Deddo Riibusu	Production I.G 	\n  	2004/01/17
239	Ghost in the Shell: Stand Alone Complex 2nd GIG	Koukaku Kidoutai S.A.C. 2nd GIG 	Production IG - Bandai Visual	\n  	2004/01/01
240	Gokusen	GokuSen	Madhouse	\n  	2004/01/06
241	Gravion Zwei	Choujuushin Gravion Zwei	Gonzo	\n  	2004/01/08
242	Incredible Zorori	Kaiketsu Zorori	Ajia-do Animation Works	\n  	2004/02/01
245	Basilisk	Bajirisuku ~Kouga Ninpou Chou~	Sony Pictures Entertainment	Basilisk (バジリスク〜甲賀忍法帖, Basilisk: The Kōga Ninja Scrolls) is a Japanese manga and anime series. The manga was authored by Masaki Segawa and published in Japan in 2003 and 2004, based on the novel The Kouga Ninja Scrolls by Futaro Yamada that was published in 1958. The manga was later followed by a sequel series titled The Yagyu Ninja Scrolls\n which was also based on a novel by Futaro Yamada.The anime, produced in 2005 by Gonzo Studios, closely follows the manga aside from a handful of distinctions. Story:\nThe story takes place in the year 1614. Two ninja clans, Tsubagakure of the Iga and Manjidani of Kouga, battle each other to determine which grandson of Tokugawa Ieyasu will become the next shogun. The deadly competition between 10 elite ninja from each clan unleashes a centuries-old hatred that threatens to destroy all hope for peace between them.Source:WikipediaWallpapers:1\n 2\nSource:madman.com.au\n\n  	2005/04/12
246	Best Student Council	Gokujo Seitokai	J.C.Staff	The story follows Rino Rando, who has been on her own since the passing of her mother, Chieri, as she transfers to Miyagami Private Academy with the recommendation of her mysterious pen pal, Mr. Poppit. Shortly after her arrival, Rino surprisingly becomes a member of elite group of girls called the Best Student Council. Rino learns that Kanade Jinguji founded Miyagami Private Academy as a place where students can live free from restrictions and that the Best Student Council was formed to ensure that freedom. Best Student Council Members receive free tuition, room and board. The story takes place at Miyagami Private Academy, a mysterious all-girl high school, its student council, the Miyagami Academy Maximum Authority Wielding Best Student Council, also known as the Best Student Council (Gokujou Seitokai), having their own Assault, Covert, and vehicle divisions. This council has more authority power than any of the faculty and staff members. The Best Student Council is divided into the four main divisions: Executive, Assault and Covert plus the Vehicle Squad. Each member of the council has their own special ability, such as special fighting techniques, the gathering of information, or weaponry such as cards, a yo-yo, or, in Rino's case, her hand puppet, Pucchan. It is revealed in an early episode that no one really knows how many members are actually in the best Student Council except the President.\n  	2005/04/07
247	Bludgeoning Angel Dokuro-Chan	Bokusatsu Tenshi Dokuro-chan	Hal Film Maker	In the future, a junior high student, Kusakabe Sakura, will offend God by inventing immortality so that women will stop aging after they turn twelve. Dokuro-chan is an angel from the future sent to kill him. However, Dokuro-chan thinks that Sakura can be spared, so her idea is to constantly occupy Sakura so that he will never be able to invent the technology. Sometimes the angel will go crazy and kill him with her bat, Excalibolg, but she can revive him easily. "Pi-piru-piru-piru-pi-piru-pi!"\n  	2005/03/12
259	Shuffle!	Shaffuru!	Asread	In present times, Gods and Demons coexist together with Humans after the door between each of these worlds had opened. Tsuchimi Rin is a normal young high school student attending Verbena Academy, spending his days living peacefully with his childhood friend Kaede. Unexpectedly, one day the King of Gods, the King of Demons and their families move into be Rin's next door neighbors. Apparently the daughter of the Gods, Sia, and the daughter of the demons, Nerine, are both deeply in love with Rin after having met him the past. Along with his playful friendship with upperclassmen Asa and his encounter with the silent but cute Primula, Rin has much on his hands dealing with the affections of each of these girls. Based on the eroge by Navel.\n  	2005/07/07
260	Strawberry Marshmallow	Ichigo Mashimaro	Geneon Universal Entertainment	\n  	2005/07/14
261	Suzuka	Suzuka	Studio Comet	Suzuka is a sports-themed romance comedy that intertwines the pursuit of love and athletics. The story is based around Yamato Akitsuki, a young man from rural Hiroshima Prefecture moving to the big city of Tokyo, and his new next-door neighbor, Suzuka Asahina, a skilled high jumper. Yamoto falls in love with Suzuka and pursuing a relationship with her he joins the track and field team hoping to impress her. After joining, Yamoto discovers that he has the potential to become a top hundred-meter sprinter.Suzuka's character-driven plot predominantly makes use of dramatic structure to facilitate character development. Characterization is further achieved through the use of character back-story. The story in general employs a realistic tone, but occasionally uses surreal humour. Some events covered in the story are: track competitions, vacations, culture festivals, and outings to a Karaoke Box and a theme park. The manga and anime follow the same storyline, though there are minor differences. One of these changes is that the nude scenes are less graphic in the anime than the manga. Another disparity is the hair color of some of the characters such as the character Miki, who is depicted as having bright red hair on the covers of the manga, but is portrayed with red-brown hair in the anime.\n  	2005/07/06
270	Ah My Goddess	Aa Megami-sama	Bandai Visual	\n  	2005/01/06
271	Air	Eaa	Kyoto Animation	\n  	2005/01/06
272	Capeta	Kapeta	AVEX	\n  	2005/10/04
273	Iriya's Sky, Summer of the UFOs	Iriya no Sora, UFO no Natsu	Toei Animation	\n  	2005/02/25
274	JINKI:EXTEND	Jinki Ekusutendo	Feel	\n  	2005/01/05
275	Mahoraba ~Heartful days~	Mahoraba	J.C.Staff	\n  	2005/01/10
276	Peach Girl	Piichi Gaaru	Studio Comet	\n  	2005/01/08
302	.hack//Roots	Dotto Hakku Ruutsu	Bandai Visual	\n  	2006/04/05
303	Air Gear	Ea Gia	Marvelous Entertainment 	\n  	2006/04/04
316	Higurashi When They Cry	Higurashi no Naku Koro Ni	Studio Deen	Higurashi no Naku Koro ni takes place during June 1983, at a fictional rural village called Hinamizawa, which has a population of approximately 2,000. The main character, Keiichi Maebara, moves to Hinamizawa and befriends his new classmates Rena Ryugu, Mion Sonozaki, Rika Furude, and Satoko Houjou. Keiichi joins their after-school club activities, which consist mostly of card and board games (and punishment games for the loser, usually him). Hinamizawa appears to be a normal, peaceful, rural village to Keiichi. However, the tranquility abruptly ends after the annual Watanagashi Festival, a celebration to commemorate and give thanks to the local god, Oyashiro. Keiichi learns that every year for the past four years, one person has been murdered and another has gone missing on the day of the Watanagashi Festival. Keiichi himself soon becomes drawn into the strange events surrounding the Watanagashi Festival and Oyashiro. In each story arc, he or one of his friends become paranoid, and a crime is committed. Usually, the crime involves the murder of one of their own friends. While it seems impossible to tell their delusions apart from the mystery of Hinamizawa, slowly the truth is revealed.\n  	2006/04/04
324	Makai Senki Disgaea	Makai Senki Disugaia	OLM	     Two years ago, the Angel Trainee Flonne was sent to the Netherworld to assassinate King Krichevskoy. However, when she arrived at the Overlord's Castle, it was covered in flames. For the next two years, Flonne searched for her target, narrowing her search to a local dump. She found a coffin with Krichevskoy's emblem on it and tried to carry out the assassination. However, it turned out that it was not Krichevskoy, but his son Laharl. Learning that his father has died, Laharl set out to claim the title of Overlord for himself. Flonne and another demon by the name of Etna followed after him.\n  	2006/04/04
326	Ouran High School Host Club	Ouran Koukou Hosuto Kurabu	Bones	Haruhi Fujioka is a scholar student at the prestigious Ouran Academy, a fictional high school located in Bunkyō, Tokyo. Looking for a quiet place to study, Haruhi stumbles upon the Third Music Room, a place where the Ouran Academy Host Club, a group of six male students, gathers to entertain female "clients". During their first meeting, Haruhi accidentally knocks over and breaks an antique vase valued at ¥8,000,000 (US$80,000 in the U.S. English manga)and is told to repay the cost in service to the club. Haruhi's short hair, slouching attire and gender-ambiguous look cause her to be mistaken by the hosts for a male student. The hosts all agree that Haruhi would be a good host, thus making her join the host club. Ultimately she agrees to join the Club as a host herself (dressed as a male) in order to pay off her debt.She agrees to join since she does not mind hosting as long as she can pay the debt off faster. The hosts do later find out that she is, in fact, a girl. They keep this a secret, so no one will be able to tell. The Ouran Private Academy encompasses kindergarten to twelfth grade (along with a university as well). Most students come from wealthy families, but in special cases, merit scholarships are granted to exceptional students from a lower income bracket. The school's unofficial motto is "Lineage counts first, wealth a close second," meaning students with stellar family backgrounds but low socioeconomic status may be given top priority over those from rich families with lesser pedigrees.\n  	2006/04/04
328	Renkin 3-kyuu Magical ? Pokaan	Renkin Sankyuu Majikaru? Pokaan	Media Factory	\n  	2006/04/04
329	Sasami: Magical Girls Club	Sasami☆Mahou Shoujo Club	AIC	In this world, there live a group of people who call themselves "Majo" or "Magical Girls". They hide their powers so as to assimilate into the environment. They have been living together in harmony with the humans for many years to come, and their predecessors continue to do so. Sasami was enthroned with magical powers since her birth. However, at the age of three, she was told by her parents never to use her innate powers and from then on, had kept it a secret from everyone. On the day of a new school term, a new transfer teacher by the name of Washu arrives and from then on, Sasami's life begins to change tremendously. - ANN\n  	2006/04/13
330	School Rumble: The Second Semester	Sukuuru Ramburu Nigakki	Media Factory	\n  	2006/04/02
331	Simoun	Shimuun	Studio Deen	\n  	2006/04/03
332	Strawberry Panic !	Sutoroberii Panikku!	Madhouse	\n  	2006/04/03
333	The Melancholy of Haruhi Suzumiya	Suzumiya Haruhi no Yuuutsu	Kadokawa Entertainment	\n  	2006/04/02
334	The Story of Saiunkoku 2nd Series	Saiunkoku Monogatari Sekando Shiizun	Frontier Works	\n  	2006/04/08
335	Utawarerumono	Utawarerumono	OLM	\n  	2006/04/03
336	Witchblade	Uitchibureido	Sony Pictures Entertainment	\n  	2006/04/16
337	xxxHOLiC	Horikku	BMG JAPAN	\n  	2006/04/06
338	Zegapain	Zegapain	Sunrise	\n  	2006/04/06
339	Hellsing Ultimate	Herushingu Arutimetto	Satelight, Madhouse	The OVA episodes follow more closely the source of the manga and differs from the first series. In addition, the Ultimate\n series includes "The Major" and his Millennium\n officers as the main antagonists. Chapters of The Dawn\n will also be animated as part of the Hellsing Ultimate OVA series.Source:WikipediaWallpaper 1:1024x768\n1280x1024\nWallpaper 2:1024x768\n1280x1024\n(source: madman.com.au)\n\n  	2006/02/10
340	Kujibiki Unbalance	Kujibiki Anbaransu	Media Factory	\n  	2006/07/10
341	Welcome to the NHK!	NHK ni Youkoso!	Gonzo	\n  	2006/07/10
342	009-1	Zero Zero Nine One	Ishimori Productions	\n  	2006/10/05
343	BALDR FORCE EXE Resolution	Barudo foosu eguze Resolution	Trinet Entertainment	\n  	2006/10/11
344	Bartender	Baatendaa	Palm Studio	\n  	2006/10/14
345	Black Blood Brothers	Burakku Buraddo Burazaazu	Group TAC	\n  	2006/09/08
346	Black Lagoon: The Second Barrage	Burakku Raguun Za Sekando Bareeji	Funimation Entertainment	\n  	2006/10/02
347	Buso Renkin	Busou Renkin	Xebec	The story begins when high school student Kazuki Muto (武藤カズキ Mutō Kazuki) is killed one night saving a mysterious girl from a monster, only to wake up in his school dorm, believing it to have been a dream. However, he soon finds out that dream wasn't a dream at all when a giant serpentine monster attacks him and his sister. Tokiko Tsumura (津村斗貴子 Tsumura Tokiko), the girl he saved, explains that the monster is a homunculus. Kazuki had been attacked and killed by it when rescuing Tokiko. However she, feeling responsible for him, revived him by placing a Kakugane medallion in his chest, serving as a replacement heart.The Kakugane, as Tokiko explains, is an alchemical (alchemistic) device that, when activated, takes a certain form based on the Kakugane's user, forming a unique Buso Renkin. The Buso Renkin is the only thing that can destroy a homunculus monster. Using this, Kazuki creates his own Buso Renkin, taking the form of a giant lance, later named 'Sunlight Heart'. Along with Tokiko and her own Buso Renkin (the Valkyrie Skirt, an execution scythe), Kazuki joins the fight against the homunculi and their master.\n\n\n  	2006/10/05
380	Murder Princess	Maadaa Purinsesu	Marvelous Entertainment	\n  	2007/03/28
381	My Bride is a Mermaid	Seto no Hanayome (SNH)	AIC	\n  	2007/04/01
355	Negima!?	Negima!?	Shaft	Negi Springfield is a ten-year-old wizard from Wales, who dreams of becoming a Magister Magi (Approximate Latin translation: "Master of Magic" or "Master Mage"), a special wizard who uses his powers to help normal people, using covers such as working for NGOs.Negi's reason for becoming a Magister Magi is to find his father, Nagi Springfield, the legendary mage also known as the "Thousand Master", who is believed to be dead.After graduating from the Merdiana Magic Academy in Wales, Negi is given a duty as a cover in the real world, and training, before he actually becomes a Magister Magi. That duty is to become an English teacher at Mahora Academy in Japan. The task will not be easy, however, as Negi will become a teacher to a Middle School class of 31 older girls, each very special in her own way. The series details his time and adventures in Japan as he gains acceptance and respect from his students, helps them in their problems, and faces magical threats from inside and outside Mahora Academy. Although each of the girls has her own back story and personality, Negi's main relationship is with Asuna Kagurazaka, his student and roommate, who dislikes him initially but later accepts him as a friend and becomes his partner, helping find clues about his father and his life.The series, while initially appearing to be another romantic comedy work featuring numerous bishōjo characters like Love Hina, has progressed into a mix of shōnen action, fantasy, horror, romance and comedy. Akamatsu stated that he specifically wanted to do something "different" than Love Hina. Negi himself is prepubescent, and many of his scenes with Asuna are specific subversions of the "awkward romantic scene" tendency of harem manga, quickly defused and only played for laughs. In addition, many of the girls are able to fawn over him in a childish sense without any romantic expectations from the reader.In keeping with this style, Negi himself is seen as a contrast to Love Hina's Keitaro and other typical male leads of manga. He is hardworking, capable, and treated kindly, but due to his appearance and age (well below most of his students), he feels completely non-threatening and finds it difficult to be taken seriously as a teacher; many of his students treat him as a cute little kid, if not a playmate (or plaything).\n  	2006/10/04
356	Otoboku: Maidens Are Falling For Me!	Otome wa Boku ni Koishiteru	Feel, Starchild	\n  	2006/10/08
392	Darker than Black: The Black Contractor	Daakaa Zan Burakku - Kuro no Keiyakusha -	Aniplex	In Tokyo, an impenetrable field known as "Hell's Gate" appeared ten years ago. At the same time, psychics who wield paranormal powers at the cost of their conscience also emerged. Hei is one of the most powerful of these psychic agents, and along with his blind associate, Yin, works for one of the many rival agencies vying to unlock the mysteries of Hell's Gate. (Source: ANN)\n  	2007/07/25
393	Devil May Cry	Debiru Mei Kurai	Media Factory	\n  	2007/06/14
428	The Eternity You Desire: Next Season	Kimi ga Nozomu Eien ~Next Season~	Brain's Base	\n  	2007/12/21
429	Tokyo Majin Gakuen Kenpuchou Tou	Tokyo Majin Gakuen Kenpuchou Tou	AIC	\n  	2007/01/19
713	Toriko	Toriko	Toei Animation	\n  	2011/04/03
357	Pumpkin Scissors	Panpukin Shizaazu	Gonzo, AIC	Plot:\nSet in a region strongly resembling Western Europe, in which a catastropic war has just ended similar to that of the two world wars that occurred in the early parts of the 20th century, the Royal Empire and the Republic of Frost have declared a ceasefire to end the war indefinitely. The Empire is plagued by starvation, and pestilence, with former soldiers turning to thievery, banditry and other forms of crime, forming into gangs to survive the post-war period. To aid the people of the Empire in the war relief effort, the Imperial Army State Section III, also known as the Pumpkin Scissors unit, is established.Pumpkin Scissors\n is a group is in charge of trying to piece together a war-torn country now that they are no longer at war. Reconstruction of a bombed out land and trying to save the starving, ill or injured people left behind after the war are their primary jobs.It's not an easy job ever and roaming ex-soldiers and a poor governmental decisions in the past make the populace skittish about trusting anyone who is involved in the government, even if they only want to help.This story focuses on a young and still idealistic noblewoman, Alice L. Malvin, who leads the Pumpkin Scissors on their missions and a scarred veteran, Randel Oland, who joins them in order to try and do some good in a far different capacity than his wartime job as a berserker-like Anti-Tank Trooper.The original manga has been adapted into an anime. The manga was named one of the best graphic novels by the Young Adult Library Services Association.Source:WIkipedia\n\n  	2006/10/02
358	Reborn!	Katekyo Hitman Reborn!	Artland	\n  	2006/10/07
359	To Mamoru-kun, the Blessings of the Goddess!	Mamoru-kun ni Megami no Shukufuku o!	Zexcs	\n  	2006/10/06
360	Tokimeki Memorial Only Love	Tokimeki Memoriaru Only Love	AIC	\n  	2006/10/06
361	Fate / stay night	Feito/sutei naito	Studio Deen	\n  	2006/01/06
362	Futari wa Pretty Cure Splash Star	Futari wa Purikyua Supurashu Suta	Toei Animation	\n  	2006/02/05
364	Kashimashi: Girl Meets Girl	Kashimashi ~Gaaru Miitsu Gaaru~	Bandai Visual	At the start of Kashimashi, a young high school boy named Hazumu Osaragi declares his love to classmate and close friend Yasuna Kamiizumi, but she quickly rejects him. Dejected, Hazumu climbs Mt. Kashima and is killed when an alien spacecraft accidentally crash lands on him. To rectify this, the alien in the ship named Hitoshi Sora brings Hazumu back to life, but inadvertently regenerates him as a female right down to the DNA level. This change in Hazumu serves as the catalyst for the development of character interactions for the remainder of the series.After Hazumu returns to school, Yasuna unexpectedly professes her love for Hazumu, but this serves only to confuse Hazumu as she adjusts to her new life as a girl. Yasuna, a rather feminine girl, has a unique affliction which makes her incapable of seeing males, and instead sees males as covered in a gray, hazy blur. Hazumu's childhood friend Tomari Kurusu, an athletic girl and tomboy, finds Hazumu's change difficult to cope with. Tomari starts to realize her own romantic feelings for Hazumu as Yasuna starts becoming closer to Hazumu, especially after Tomari witnesses Hazumu and Yasuna kissing one day after school. A conflict arises between Yasuna and Tomari who fight for Hazumu's affection while she is unable to choose between them. This results in a love triangle emerging between the three female main characters. Hazumu's best male friend Asuta Soro also starts having romantic feelings for Hazumu, but tries his best to repress them. Tomari's good friend Ayuki Mari, an intelligent girl interested in the sciences, continuously observes the ongoing development of the love triangle while keeping a stance of watching from afar.The very stoic Hitoshi originally came to Earth in order to study human emotions, especially those related to love, in an attempt to save his species from extinction. His species has long-since given up their emotions resulting in a loss of their sexual urges and thus a continuously dwindling population. Hitoshi moves into Hazumu's home where he is warmly welcomed by Hazumu's parents. He brings with him an artificially intelligent gynoid named Jan Pu which serves as the automatic pilot for his spaceship. Jan Pu's body is modeled after Hazumu's own female body, and possesses an energetic and childish personality.While initially citing Hazumu's change as an accident, Hitoshi later realizes this was an unexpected result of the regeneration process. By the time Hitoshi becomes aware of his mistake, he tells Hazumu and her friends she has only one month left to live. Hitoshi explains to Hazumu's friends how someone very close to Hazumu has to donate "life grains" to Hazumu to sustain her life. While unaware her friends know about her impending death, Hazumu continues to live her life and comes to fully accept her fate. The day Hazumu is appointed to die, she falls off the school's roof and Tomari jumps off the roof in an attempt to save her. While in mid-air, Hitoshi interferes by transferring the necessary "life grains" to Hazumu, and both survive the fall. When they later wake up in the infirmary, Hazumu confesses her love to Tomari, effectively choosing her over Yasuna.The anime ends differently, with no life threatening situation and Hazumu choosing Yasuna in order to help cure her worsening sight problem as it begins to degrade so she can no longer see girls as well. Afterwards however, Yasuna, who becomes able to see all people again, decides to reject Hazumu once more, saying she can stand on her own, and in the follow-up original video animation episode, Hazumu confesses her love to Tomari on Christmas and the two get married in a ceremony held by Hitoshi.\n  	2006/01/11
365	Key Princess Story Eternal Alice Rondo	Kagihime Monogatari: Eikyuu Alice Rondo	Picture Magic Trinet Entertainment	\n  	2006/01/03
366	Magikano	Majikano	Sony Pictures Entertainment	Ayumi Mamiya is a witch cursed to lose her powers and only one boy can break the spell. Haruo Yoshikawa thinks he is a normal boy but unknown to him his three sisters have magical powers and keep him protected and ignorant about the exsistence of magic. Now Ayumi must wake up Haruo's latent powers to save herself but his sisters will have none of that. (Source: ANN)\n  	2006/01/03
367	Tactical Roar	Takutikaru Roa	Bandai Visual	\n  	2006/01/08
368	Bakugan Battle Brawlers	Bakugan Batoru Burouraazu	SEGA	\n  	2007/04/05
369	Big Windup!	Oukiku Furikabutte	Aniplex	\n  	2007/04/12
370	Claymore	Kureimoa	AVEX	In this world, humans coexist with demonic predators called Yoma. These demonic beasts feast on human innards and can blend into human society by taking on human appearance. As a counter force, a mysterious organization created half-human, half-Yoma warriors known as the "Silver Eyed Witches" or "Claymores", after the huge claymore swords they carry. They are detested by humanity however necessary.The story begins with a young boy, Raki, who has lost everything in a Yoma attack, and the Claymore, Clare, who is generally detested by society. Throughout the series, Clare and Raki show their deeper qualities, powers and Clare's never ending devotion to the goal she swore to fulfill in her childhood. \n  	2007/04/03
371	Coil — A Circle of Children	Dennou Coil	Bandai Visual	\n  	2007/05/12
372	Engage Planet Kiss Dum	Kisu Damu: Engeeji Puranetto	Satelight	 In A.D. 2031, humans are enjoying a prosperous existence until strange life forms called Hardians appear. They suddenly begin to multiply and assault the human population. As a countermeasure, mankind organizes the N.I.D.F. to investigate the Hardians and protect themselves. A fighter pilot, Aiba Shu, begins to become involved in the battle against the lifeforms. Rurika Yuno, one of Earth's foremost scientists, investigates the Hardians and hears rumors about the "Book of a Dead Man". Now, the fight for mankind's survival begins.\n  	2007/04/03
374	Heroic Age	Hiroikku Eiji	Xebec	\n  	2007/04/01
375	Hitohira	Hitohira	Media Factory	\n  	2007/03/28
377	Koutetsu Sangokushi	Koutetsu Sangokushi	Picture Magic	\n  	2007/04/05
378	Lovely Complex (Love★Com)	Rabu★Kon	Aniplex	\n  	2007/04/07
382	Over Drive	Oubaa Doraivu	Xebec	\n  	2007/04/03
387	Shining Tears X Wind	Shainingu Tiaazu Kurosu Windo	Media Factory	\n  	2007/04/07
388	Steel God Jeeg	Koutetsushin Jiigu	Actas	\n  	2007/04/05
389	Baccano	Bakkaano!	Brain's Base	\n  	2007/07/26
390	Bludgeoning Angel Dokuro-Chan 2	Bokusatsu Tenshi Dokuro-chan 2	Hal Film Maker	\n  	2007/08/11
391	Code-E	Koudo-Ii	AVEX	\n  	2007/07/03
427	Shattered Angels	Kyoshirou to Towa no Sora	TNK	\n  	2007/01/05
394	Kenko Nude Swimming Series Umisho	Kenko Zenrakei Suieibu Umisho	Artland	Kaname Okiura, a student of Prefectoral Umineko Shougyou High ("Umishou" for short), joined the school's swimming club in order to learn how to swim, but the club is filled with weirdos, let alone teaches him swimming. Then, a sunny, happy-go-lucky girl named Amuro Ninagawa who was transferred from Okinawa joined the club. Her extraordinary underwater speed and unorthodox swimming style (plus her personal habit of nude swimming—a powerful magnet to teenage boys) surprised every club member, especially Okiura, because she reminds him of a mermaid-like creature he saw only once in his early childhood. \n  	2007/07/04
395	Mushi-Uta	Mushiuta	Beat Frog	\n  	2007/07/05
396	My Wife is a High School Girl	Oku-sama wa Joshi Kousei / Okusama wa Joshikousei	Madhouse	\n  	2005/07/02
397	Potemayo	Potemayo	Bandai Visual	\n  	2007/07/06
398	Red Garden: Dead Girls	Deddo Gaaruzu	Sony Pictures Entertainment	\n  	2007/08/08
400	Blue Drop ~Tenshi-tachi no Gikyoku~	Buruu Doroppu ~Tenshi-tachi no Gikyoku~	Asahi Production	\n  	2007/10/02
401	Cast Away...Airan Island	Nagasarete Airantou	Feel	\n  	2007/11/21
402	Clannad	Kuranado	Kyoto Animation	\n  	2007/10/04
403	D.C. II ~Da Capo II~	Da Kaapo II	Feel	\n  	2007/10/01
404	Fantastic Detective Labyrinth	Suteki Tantei Rabirinsu	Studio Deen	\n  	2007/10/02
405	Hidamari Sketch ×365	Hidamari Sukecchi	Shaft	\n  	2007/11/18
406	Kaiji	Gyakkyou Burai Kaiji	Vap	Tobaku Mokushiroku Kaiji (賭博黙示録カイジ)\n, also known as Ultimate Survivor Kaiji\n, is based on a Japanese manga series about the art of gambling, written by Nobuyuki Fukumoto. The first part of the manga (13 volumes), was adapted into a 26-episode anime television series called Gyakkyō Burai Kaiji: Ultimate Survivor\n (逆境無頼カイジ Ultimate Survivor Kaiji), which began airing in October 2007. A second season of the anime television series was based on the second arc of the manga, titled Gyakkyō Burai Kaiji: Hakairoku-hen (逆境無頼カイジ 破戒録篇)\n and premiered in April 5, 2011.Film:A live-action 'Kaiji' movie was released in October 10, 2009 in Japan with Tatsuya Fujiwara playing the role of Kaiji. Tobaku Mokushiroku Kaiji is considered as Fukumoto's most famous work and is well-known in both Japan and Korea. In 1998, it was awarded the winner of the Kodansha Manga Award for the General category.\nSource:Wikipedia\n\n\n  	2007/10/02
407	Mobile Suit Gundam 00	Kidou Senshi Gandamu Daburu Ou	Sunrise	It is the year A.D. 2307. Fossil fuels on Earth have been depleted entirely, with mankind turning to the next available power source: solar energy. During this time, 3 orbital elevators with solar power generation systems are built, each under control by the Union (formerly United States of America), the Human Reformist Alliance (Russia, China and India) and the AEU (Europe). However, not all countries are able to enjoy the benefits of this system, leading to widespread resentment and war. Arising out of the conflict, a mysterious non-profit military organization known as Celestial Being appears, dedicated to end all warfare using Mobile Suits called Gundam. This begins the stories of Gundam Meisters (pilots) Setsuna F. Seiei, Lockon Stratos, Allelujah Haptism and Tieria Erde as they are thrown into conflict between the 3 superpowers and the other various factions.(Source: ANN)\n  	2007/10/06
408	Moetan	Moetan	Bandai Visual	\n  	2007/09/23
409	Moyasimon: Tales of Agriculture	Moyashimon	Shirogumi	\n  	2007/10/12
410	Neuro: Supernatural Detective	Majin Tantei Nougami Neuro	Madhouse	\n  	2007/10/02
411	Night Wizard	Naito Uizaado	Geneon Universal Entertainment	\n  	2007/10/02
412	Rental Magica	Rentaru Magika	Kadokawa Entertainment	\n  	2007/10/07
413	Shion's King	Shion no Ou	Studio Deen	\n  	2007/10/13
414	Shugo Chara!	Shugo Kyara!	Satelight	\n  	2007/10/06
415	A Foreign Love Affair	Ikoku Irokoi Romantan	PrimeTime	\n  	2007/12/21
416	Gakuen Utopia Manabi Straight	Gakuen Yuutopia Manabi Sutoreeto!	Ufotable	\n  	2007/01/07
417	Getsumen to Heiki Mina	Getsumen to Heiki Mina	Gonzo	\n  	2007/01/14
418	Good Luck! Nimomiya-kun	Goshuushou-sama Ninomiya-kun	Kadokawa Entertainment	Shungo is a normal high school student living in a huge house. One day, his sister Ryoko send two siblings, Mayu and Mikihiro Tsukimura, to live with him so as to help Mayu overcome her problemâ€”androphobia, by making Mayu and Shungo share the same room and bed, and to even take baths together. To make things even worse, Reika Hojo, the student-council chair, somehow ends up becoming their maid.\n  	2007/12/21
419	GR: Giant Robo	Gii Aaru -Jaianto Robo-	Jsdss	\n  	2007/01/19
420	Hidamari Sketch	Hidamari Sukecchi	Shaft	\n  	2007/01/11
421	Les Miserables: Shoujo Cosette	Re Mizeraburu Shoujo Kozetto	Bandai Visual	Les Misérables : Shōjo Cosette\n is an anime adaptation of the successful novel written by Victor Hugo in 1862, Les Misérables\n.\n  	2007/01/07
422	Master of Epic: The Animation Age	Masutaa Obu Epikku: Ji Animeeshon Eiji	Palm Studio	\n  	2007/01/07
423	Naruto Shippuden	Naruto -Shippuuden-	Aniplex	\n  	2007/02/15
424	Nodame Cantabile	Nodame Kantaabire	Kadokawa Entertainment	This is an anime series spanning three seasons with Nodame Cantabile,  Nodame Cantabile: Paris Chapter and Nodame Cantabile: Finale.Megumi Noda or "Nodame" is a piano student at Momogaoka College of Music. As an extremely talented pianist who wants to be a preschool teacher, she prefers playing by ear rather than reading the music score. She is messy and disorganized, takes baths several days apart and loves to eat. Shinichi Chiaki is Momogaoka's top student. Born into a musical family, he is talented in piano and violin and has secret ambitions to become a conductor. They meet by accident and Nodame quickly falls in love but it takes much longer for Chiaki to even begin to appreciate Nodame's unusual qualities.  Along the way, their relationship causes them both to develop and grow and they meet some crazy people (like Masumi, Mine, and Stresemann) and make lasting friendships. Because of Nodame, Chiaki gets the opportunity to lead a student orchestra and begins to have a broader appreciation of people's musical abilities. Because of Chiaki, Nodame faces her fears and enters a piano competition. Opportunities open up as both begin taking risks, stretching themselves far more than they ever thought possible.Source:Wikipedia\n\n  	2007/01/11
425	Rocket Girls	Roketto Gaaru	Happinet Pictures	\n  	2007/02/21
502	Jewelpet	Juerupetto	Media Factory	\n  	2009/04/05
426	Saint October	Seinto Okutoubaa	Konami Digital Entertainment	\n  	2007/01/04
430	Venus Versus Virus	Viinasu Vaasasu Vaiarasu	Studio Hibari	Venus Versus Virus follows regular schoolgirl Sumire who's had the ability to see ghosts since a young age. She tells friends and family about this fact and they just dismiss it, thinking she's a liar. A chance encounter with a broach flying out of nowhere, a monster and gothloli clad monster killer named Lucia leaves her with a life changing decision to use her ability and fight against these "viruses" feeding upon the human race.\n  	2007/01/11
431	Yes! Pretty Cure 5	Iesu! Purikyua 5 / Yes! Precure 5	Marvelous Entertainment 	\n  	2007/02/04
432	Allison and Lillia	Arison to Riria	Geneon Universal Entertainment	\n  	2008/04/03
433	Blassreiter	Burasureitaa	Toei Video	\n  	2008/04/05
434	Bus Gamer	Bizu Geemaa	Studio Izena	\n  	2008/03/14
435	Candy Boy	Kyandi Boui	Dwango Music entertainment	\n  	2008/05/02
436	Code Geass: Lelouch of the Rebellion R2	Kodo Giasu: Hangyaku no Rurushu R2 	Bandai Visual	Here I have organized the characters\n by nation/factionSection 0: Main charters, miscellaneous.Section 1: The Black KnightsSection 2: The Holy Britanian EmpireSection 3: The Chinese FederationSection 5: Unique/Custom Knightmare Frames\n  	2008/04/06
437	D.C. II Da Capo II: Second Season	Da Kaapo II Sekando Shiizun	Feel	\n  	2008/04/05
438	Kamen no Maid Guy	Kamen no Maid Gai	Madhouse	\n  	2008/04/05
439	Kanokon	Kanokon	Media Factory	\n  	2008/04/05
440	Kure-nai	Kurenai	Brain's Base	Based on a series of light novels, Kure-nai is about the adventures and misadventures of 16-year-old Kurenai Shinkurou. Shinkurou is an authority in settling disputes between people, and finds his life turned upside down one day when he is assigned as a bodyguard for Kuhouin Murasaki, the daughter of a powerful plutocratic family.--MAL\n  	2008/04/03
441	Library War	Toshokan Sensou	Production I.G	\n  	2008/04/11
442	Monochrome Factor	Monokuroumu Fakutaa	A.C.G.T	Though the world may seem to be a normal place, in the midst of shadows lies the supernatural and terrifying. Beings from the shadow world known as Kokuchi have begun to invade the human world, and it’s up to certain people to defeat them; Akira Nikaido is one such person. Though his life used to be ordinary, one day, the bishounen and affectionate Shirogane asked Akira to form a pact with him; and consequently, Akira became Shirogane’s shadow partner. Together, the two hunt down stray Kokuchi – but more importantly, Akira must fend off Shirogane’s advances and try to make his classes!\n  	2008/04/07
443	S.A ~Special A~	Supesharu Ee	Gonzo, AIC	Hikari Hanazono has always been second to Kei Takishima. When they were six years old, their pro-wrestling loving fathers introduced them to each other. Assuming that she was the best in wrestling, young Hikari challenged Kei to a wrestling match only to be thoroughly defeated by him. Ever since that fateful incident, Hikari swore to beat Kei in school grades, sporting events or any competition. To do this, she has enrolled in the same school as Kei since elementary. Now she attends Hakusenkan, an ultra elite school, that costs her carpenter father a lot of money. Hikari and Kei are the top two students in the school, with Kei holding firmly to that number one position. While Hikari considers Kei to be a rival and important friend, she is completely unaware that Kei is in love with her. The story primarily focuses on Hikari and her constant attempts to defeat her one and only rival, Kei, and how she finds love in their rivalry.\n  	2008/04/06
444	Soul Eater	Souru Iitaa	Media Factory	Soul Eater is set at Death Weapon Meister Academy (死神武器職人専門学校 Shinigami Buki Shokunin Senmon Gakkō)—"DWMA" (死武専 Shibusen) for short—located in the fictional Death City in Nevada, United States. The school is run by Shinigami, also known as Death, as a training facility for humans with the ability to transform into weapons, as well as the wielders of those weapons, called meisters (職人 shokunin). Attending this school are meister Maka Albarn and her scythe partner Soul Eater; assassin Black Star and his partner Tsubaki Nakatsukasa, who can turn into a variety of different weapons such as a kusarigama, shuriken, and ninjatō; and Shinigami's son Death the Kid and his pistol partners Liz and Patty Thompson. The goal of the school's meister students is to have their weapons defeat and absorb the souls of 99 evil humans and one witch, which will dramatically increase the power of the given weapon and turn them into "death scythes", weapons capable of being used by Shinigami.Shortly after the start of Soul Eater, Maka and Soul Eater face off against the witch Medusa, who forces her child Crona, meister of the demon sword Ragnarok, to collect non-evil human souls and transform into a kishin (鬼神), an evil demon god. Medusa and her cohorts attack DWMA with the intention of reviving Asura, the first kishin who nearly plunged the entire world into madness before being sealed beneath DWMA by Shinigami. Despite the combined efforts of Maka, Black Star, and Death the Kid, Medusa's group successfully revives Asura, who leaves to spread chaos around the world after a brief battle with Shinigami. However, Medusa is seemingly killed by the meister and DWMA teacher Franken Stein in the process, while Crona surrenders to the DWMA and goes on to enroll there and befriend Maka.As a result of Asura's spreading madness, Medusa's older sister Arachne comes out of hiding after 800 years. Arachne reforms her organization Arachnophobia, which poses itself as a serious threat to DWMA. Shinigami calls in death scythes from around the world to aid in the fight against Arachnophobia. During this time, Medusa reappears with her soul in the body of a young girl, and forms a truce with DWMA so they can annihilate the threat of Arachnophobia together. The DWMA students and Medusa's entourage infiltrate Arachnophobia's headquarters where Maka defeats Arachne, only for Medusa to betray DWMA, possess Arachne's body, and brainwash Crona into rejoining her. Meanwhile, Death the Kid is captured by Noah, an artificial construct created from the Book of Eibon's Tables of Contents. Following this, Maka finally succeeds in turning Soul Eater into a death scythe, and the duo become part of the newly formed meister unit Spartoi along with their friends, who rescue Death the Kid and defeat Noah (Greed), though a new Noah (Wrath) is created by the arcane power of the Book of Eibon thanks to its Tables of Contents.While DWMA searches for Asura's whereabouts, Crona resurfaces in a city in Russia, destroying it and killing the death scythe stationed there, and then kills Medusa and goes completely insane. Maka is ordered by Shinigami to hunt and kill Crona, and inadvertently discovering Asura's presence on the moon during her search. A four-way battle between DWMA, Asura with his Clown armies, the Book of Eibon with Noah (Wrath), and Crona ensues on the Moon's surface.Source: Wikipedia\n\n  	2008/04/07
445	To Love-Ru- Trouble	Toraburu	Xebec	\n  	2008/04/03
446	Vampire Knight	Vanpaia Naito	Aniplex	Yuki's earliest memory is of a stormy night in winter, where she was attacked by a vampire... And then rescued by another. Now 10 years later, Yuki Cross, the adopted daughter of the headmaster of Cross Academy, Kaien Cross, has grown up and become a guardian of the vampire race, protecting her childhood crush, Kaname, from discovery as he leads a group of vampires at the elite boarding school. But also at her side is Zero Kiryu, a childhood friend whose hatred for the creatures that destroyed everything he held dear leaves him determined never to trust them. This coexisting arrangement seems all well and good, but have the vampires truly renounced their murderous ways, or is there a darker truth behind their actions? Because in this world of secrets, nothing is as it seems. And the price of misplaced trust may even be worse than death.\n\n\n  	2008/04/08
447	Web Ghost PiPoPa	Netto Gosuto PiPoPa	Studio Hibari	\n  	2008/04/06
448	Zettai Karen Children	Zettai Karen Chirudoren	SynergySP	\n  	2008/04/06
449	Antique Bakery	Seiyou Kottou Yougashiten ~Antiiku~	Kadokawa Entertainment	\n  	2008/07/03
450	Battle Spirits: Shounen Toppa Bashin	Batoru Supirittsu Shounen Toppa Bashin	Happinet Pictures	\n  	2008/09/07
451	Haruka Nogizaka's Secret	Nogizaka Haruka no Himitsu	Diomedea	\n  	2008/07/03
453	Real Drive	Aaru Dii Sennou Chousashitsu	Production I.G	\n  	2008/08/04
454	Slayers Revolution	Sureiyaazu Reboryuushon	J.C.Staff	\n  	2008/07/02
455	Strike Witches	Sutoraiku Witchiizu	Kadokawa Entertainment	\n  	2008/07/03
456	Zero no Tsukaima: Princess no Rondo	Zero no Tsukaima Purinsesse no Rondo	Media Factory	\n  	2008/07/06
457	Akane-iro ni Somaru Saka	Akane-iro ni Somaru Saka	Chiba Television Broadcasting	\n  	2008/10/02
458	Black Butler	Kuroshitsuji	Funimation Entertainment	In Victorian-era Europe, a young boy loses everything he once held near and dear to a vicious plot. In his moment of death, he strikes a deal with a demon: his soul, in exchange for revenge. Ciel Phantomhive is now the head of the Phantomhive corporation, handling all business affairs as well as the underground work for the Queen of England. His new partner is a demon butler, Sebastian Michaelis, whose prowess as a butler is only surpassed by his strength as a demon.Wallpapers: (source:madman.com.au)1\n 2\n\n\n  	2008/10/02
459	Chaos;Head	Kaosu Heddo	Vap	\n  	2008/10/09
460	Clannad ~After Story~	Kuranado Afutaa Sutoorii	Kyoto Animation	\n  	2008/10/03
461	ef - a tale of melodies.	efu - a teiru obu merodiizu-	Geneon Universal Entertainment	\n  	2008/10/07
538	Tokyo Magnitude 8.0	Toukyou Magunichuudo 8.0	Kadokawa Entertainment	\n  	2009/07/09
539	Umi Monogatari ~Anata ga Ite Kureta Koto~	Umi Monogatari: Anata ga Ite Kureta Koto	Shochiku Home Video	\n  	2009/06/24
540	Umineko no Naku koro Ni The Animation	Umineko no Naku koro Ni	Studio Deen	\n  	2009/07/02
541	Weiss Survive	Vaisu Savaibu / Weiß Survive	Studio Hibari	\n  	2009/06/05
542	Zan Sayonara Zetsubou Sensei Season 3	Zan Sayonara Zetsubou Sensei	Shaft	\n  	2009/07/04
543	11eyes	Irebun Aizu	Marvelous Entertainment 	\n  	2009/10/06
637	Three Way Struggle	Mitsudomoe	Bridge	\n  	2010/07/02
462	Ga-rei Zero	Ga-Rei: Zero	Kadokawa Entertainment	Kensuke Nimura is your average high-school student—except he can see spirits. This ability generally hinders him more than it helps him, especially in trying to get a girlfriend. However, everything changes when he encounters Kagura Tsuchimiya while being pursued by evil spirits. They accidentally kiss, and manage to destroy a source of energy drawing the evil spirits. A few days later, Kagura transfers into Kensuke's class, much to his surprise. Kagura is an agent of a government agency that defends the public against supernatural enemies. She wields Ga-rei, a spirit beast that kills these spirits. Kensuke's spiritual awareness and his attraction to Kagura compels him to follow her to the agency, where he is recruited to fight the supernatural.\n  	2008/10/05
463	Hell Girl: Three Vessels	Jigoku Shoujo Mitsuganae	Aniplex	The third season of the anime series.\n\n  	2008/10/04
465	Hyakko	Hyakko	Media Factory	\n  	2008/10/01
466	Inazuma 11 / Inazuma Eleven	Inazuma Irebun	Geneon Universal Entertainment	The main character, Mark Evans (円堂 守 Endō Mamoru), is a very talented goalkeeper and the grandson of one of the strongest goalkeepers in Japan, who supposedly died before Mark was born. Even though his skills and enthusiasm are incredible, his school lacks a real soccer club, as the six other members don't appear very interested even in training. One day, when a mysterious forward named Axel Blaze (豪炎寺 修也 Gōenji Shūya) moves to Mark's town, the young goalkeeper sets out to find and recruit members for his soccer team. There are nearly 1000 playable characters with varying skills that will determine the success of the team. As you play through the story, Mark can recruit various characters on the team and help achieve his ultimate goal of competing!\n  	2008/10/05
467	Kemeko Deluxe! (The Unknown Girl Friend)	Kemeko Derakkusu!	Hal Film Maker	\n  	2008/10/04
510	Sengoku Basara: Samurai Kings	Sengoku Basara	Production I.G	\n  	2009/04/01
572	Tentai Senshi Sunred	Tentai Senshi Sanreddo	Victor Entertainment	\n  	2008/10/03
573	The Sacred Blacksmith	Seiken no Burakkusumisu	Media Factory	\n  	2009/10/04
574	Welcome to Irabu's Office	Kuuchuu Buranko	Toei Animation	\n  	2009/10/15
468	Kurozuka	Kurozuka	Madhouse	Adaptation of Takashi Noguchi’s manga, which itself adapts Baku Yumemakura’s supernatural romance novel.The original novel is about a 12th-century man named Minamoto no Yoshitsune (Kurou). Kurou flees into the mountains after losing to his brother Minamoto no Yoritomo, the first Shogun to rule all of Japan. History records that he committed suicide, but instead, Kurou meets a strange, beautiful woman named Kuromitsu in her mountain hermitage. Eventually, Kurou falls in love with Kuromitsu, but then realizes she conceals a dark secret. He learns that he is unable to die and continues to live for a thousand years as Japan evolves into a future society. ---MAL\n  	2008/10/07
469	Legends of the Dark Kings: A Fist of the North Star Story	Hokuto no Ken Raou Gaiden ~ Ten no Haou ~	KENMedia	\n  	2008/10/10
470	Linebarrels of Iron	Kurogane no Linebarrels	Gonzo	\n  	2008/10/03
471	Negibouzu no Asatarou	Negibouzu no Asatarou	Toei Animation	\n  	2008/10/12
472	Nodame Cantabile Paris Chapter	Nodame Kantabire: Paris-Hen	J.C.Staff	After graduation, Nodame succeeds in curing Chiaki from his phobia and they both move to Paris where Nodame continues her piano studies at the Conservatoire de Paris while Chiaki starts a professional career as a conductor. In Europe, they encounter new friends and rivals, as well as keep in touch with their friends from Japan.Source:Wikipedia\n\n  	2008/10/09
473	One Outs	Wannautsu	Madhouse	\n  	2008/10/07
474	Rosario + Vampire Capu 2	Rozario to Banpaia Kapu Chuu	Gonzo	\n  	2008/10/02
475	Today, in Class 5-2	Kyou no Go no Ni / Kyou no Gononi	Xebec	\n  	2008/10/05
476	Toradora!	Toradora!	J.C.Staff	ToraDora! is an anime adaptation from a Japanese light novel series, produced by J.C.Staff and aired in Japan on TV Tokyo between October 2008 and March 2009.Story\nRyuji Takasu is entering his second year of high school. Despite his gentle personality, his eyes make him look like an intimidating delinquent, so he is utterly hopeless about his chances of getting a girlfriend anytime soon and does not have many close friends either.However, it is then that he unexpectedly knocks into "the school's most dangerous animal of the highest risk level"—Taiga Aisaka—who just happens to also be in his class and also a good friend of his crush, Minori Kushieda. Since Taiga has a negative attitude towards others, she takes an instant dislike to him.However, due to their circumstances, they begin spending a lot of time with each other as the story progress and eventually became closer.Source: Wikipedia\n\n  	2008/10/02
477	Beast Player Erin	Kemono no Soja	Production I.G	This anime focuses on Erin, a girl whose love, patience and intrigue for animals, earned her the knowledge and experience to control the greatest of beasts, and the road which gets her involved in a war between the kingdoms of Shin-oh and Taiko.Source:Wikipedia\n\n  	2009/01/10
479	Minami-ke ~Okawari~	Minami-ke ~Okawari~	Asread	\n  	2008/01/06
480	RIN ~Daughters of Mnemosyne~	Mnemosyne: Munemoshune no Musumetachi	Xebec, Genco	\n  	2008/02/03
481	Rosario + Vampire	Rozario to Banpaia	Happinet Pictures	\n  	2008/01/03
482	Shigofumi: Letters from the Departed	Shigofumi	Bandai Visual	\n  	2008/01/06
483	Spice and Wolf	Oukami to Koushinryou	Imagin	\n  	2008/01/09
484	Star Ocean: First Departure	Sutaa Ooshan Faasuto Depaachaa	Enix	\n  	2007/12/27
485	Switch	Suicchi	Actas	\n  	2008/01/24
486	Yotsunoha	Yotsunoha	Hal Film Maker	\n  	2008/02/29
487	07-Ghost	Sebun Gousuto	AVEX	\n  	2009/04/06
488	Asura Cryin'	Asura Kurain	Seven Arcs	\n  	2009/04/02
496	First Squad (aka Первый отряд, Perviy otryad)	Faasuto Sukuwaddo	STUDIO4°C	First Squad (Japanese: ファーストスクワッド Fāsuto sukuwaddo, Russian: Пе́рвый отря́д, Perviy otryad) is a joint animation project of Japan's Studio 4°C and Russian authors with Molot Entertainment. Plot: Set during the opening days of World War II on the Eastern Front (autumn and winter of 1941/1942). Its main cast are a group of Soviet teenagers with extraordinary abilities; the teenagers have been drafted to form a special unit to fight the invading German army. They are opposed by a Schutzstaffel (SS) officer who is attempting to raise from the dead a supernatural army of crusaders from the 12th-century Order of the Sacred Cross (i.e. the Teutonic Knights) and enlist them in the Nazi cause. Most of the teenage crew die, except for the protagonist Nadia. She is taken to a secret Soviet lab that studies supernatural phenomena, especially contacts with the dead. Nadia's task is to dive into the world of the dead for reconnaissance. There, in the Gloomy Valley, she meets her dead friends and tries to persuade them to continue fighting.[taken from Wikipedia]\n  	2009/05/13
500	Hatsukoi Limited	Hatsukoi Rimiteddo.	Geneon Universal Entertainment	\n  	2009/04/11
503	K-On!	Keion!	Kyoto Animation	K-On! (けいおん! Keion!) is a Japanese four-panel comic strip seinen manga written and illustrated by Kakifly. The manga was serialized in Houbunsha's seinen manga magazine Manga Time Kirara between the May 2007 and October 2010 issues. It was also serialized in Houbunsha's magazine Manga Time Kirara Carat. The manga relaunched from April 2011 to June 2012 with two separate storylines published in Manga Time Kirara and Manga Time Kirara Carat. The manga is licensed in North America by Yen Press.A 13-episode anime adaptation produced by Kyoto Animation aired in Japan between April and June 2009. An additional original video animation (OVA) episode was released in January 2010. A 26-episode second season, titled K-On!! (with two exclamation marks), aired in Japan between April and September 2010, with an OVA episode released in March 2011. An animated film based on the series was released in Japan on December 3, 2011. Bandai Entertainment released the first season in North America in 2011, while the second season and film were licensed by Sentai Filmworks. The title of the series comes from the Japanese word for light music, keiongaku (軽音楽), which in the Japanese context is similar to pop music.In K-On!, four Japanese high school girls join Sakuragaoka Girl's High School's light music club to try to save it from being disbanded. However, they are the only members of the club. At first, Yui Hirasawa has no experience playing musical instruments or reading sheet music as she is only familiar with playing the castanets, but she eventually becomes an excellent guitar player. From then on, Yui, along with bassist Mio Akiyama, drummer Ritsu Tainaka, and keyboardist Tsumugi Kotobuki spend their school days practicing, performing, and hanging out together. The club is overseen by music teacher Sawako Yamanaka, who eventually becomes their homeroom teacher as well during their final year of high school. In their second year, the club welcomes another guitarist, underclassman Azusa Nakano. After Azusa joins they gain more structure and begin to practice more.After their third year, Yui, Ritsu, Mio and Tsumugi graduate and enroll into a university. There they join its light music club alongside three other students: Akira Wada, Ayame Yoshida, and Sachi Hayashi. Meanwhile, Azusa continues to run the high school light music club alongside Yui's sister, Ui, their classmate, Jun Suzuki, and new members Sumire Saitō and Nao Okuda.\n  	2009/04/02
504	Natsu no Arashi!	Natsu no Arashi!	Shaft	\n  	2009/04/05
505	Pandora Hearts	Pandora Haatsu	Xebec	\n  	2009/04/02
506	Phantom ~Requiem for the Phantom~	Fantomu ~Rekuiemu Foo Za Fantomu~	Genco	\n  	2009/04/02
507	Queen's Blade	Kuiinzu Bureido	Media Factory	\n  	2009/04/02
508	Ristorante Paradiso	Risutorante Paradiizo	David Production	\n  	2009/04/08
509	Saki	Saki	Gonzo, Picture Magic	\n  	2009/04/05
511	Shangri-La	Shanguri Ra	Kadokawa Entertainment	An anime produced by the animation studio Gonzo and was the first Newtype work to be animated for television. The series was directed by Makoto Bessho, written by Hiroshi Ōnogi, and featured character designs by Range Murata.Story:In the mid-21st century, the international committee decided to forcefully reduce CO2 emission levels to mitigate the global warming crisis. As a result, the economic market was transferred mainly into the trade of carbon. A great earthquake destroys much of Japan, yet the carbon tax placed on the country is not lifted, so Tokyo is turned into the world’s largest "jungle-polis" that absorbs carbon dioxide. Project Atlas is commenced to plan the rebuilding of Tokyo and oversee the government organization, which the Metal Age group opposes due to its oppressive nature. However, Atlas is only built with enough room for 3,500,000 people and most people are not allowed to migrate into the city. The disparity between the elite within Atlas and the refugees living in the jungles outside of its walls set up the background of the story.Source: http://en.wikipedia.org/wiki/Shangri-La_(novel)#Anime\n\n  	2009/04/06
512	Shinkyoku Soukai Polyphonica Crimson S	Shinkyoku Soukai Porifonika Kurimuzon Esu	Diomedea	\n  	2009/04/04
513	Slap-up Party -Arad Senki-	Arado Senki -Surappu Appu Paatii-	Geneon Universal Entertainment	\n  	2009/04/03
514	Souten Kouro	Souten Kouro	Vap	\n  	2009/04/07
515	Sugar Bunnies Fleure	Shugaabaniizu Fruuru	Sanrio Company	\n  	2009/04/07
516	Tayutama -Kiss on my Deity-	Tayutama -kisu on mai diatii-	Silver Link	\n  	2009/04/05
517	Tears to Tiara	Tiaazu tu Tiara	White Fox	\n  	2009/04/06
518	The Best!! Extremely Cool Student Council President	Gokujou!! Mecha Mote Iinchou	Geneon Universal Entertainment	\n  	2009/04/04
519	Valkyria Chronicles	Senjou no Varukyuria	A-1 Pictures	\n  	2009/04/04
585	Samurai Harem: Asu no Yoichi	Asu no Yoichi!	Geneon Universal Entertainment	\n  	2009/01/08
586	Slayers Evolution-R	Sureiyaazu Eboryuushon Aa	J.C.Staff	\n  	2009/01/12
587	Sora o Miageru Shoujou no Hitomi ni Utsuru Sekai (Munto TV)	Sora wo Miageru Shoujou no Hitomi ni Utsuru Sekai	Kadokawa Shoten	this is a ova/anime show\n  	2009/01/14
588	The Girl Who Leapt Through Space	Sora o Kakeru Shoujou	Bandai Visual	\n  	2009/01/06
679	Haiyoru! Nyaruani - Remember my Mr. Lovecraft	Hayoru! Nyaruani - Rimenbaa Mai Rabu (Kurafuto-sensei)	DLE	The story centers around Nyarlko, a formless Cthulhu deity who can take on the shape of anyone it wishes, but particularly the shape of a seemingly ordinary silver-haired girl. Mahiro Yasaka is a normal high school student who is chased by aliens one night, until "Nyarlko" saves him.\n  	2010/12/10
520	Bakemonogatari	Bakemonogatari	Aniplex	Bakemonogatari centers on Koyomi Araragi, a third year high school student who is almost human again after briefly becoming a vampire. One day, a classmate named Hitagi Senjōgahara, who never talks to anyone, falls down the stairs into Koyomi's arms. He discovers that Hitagi weighs next to nothing, in defiance of physics. Despite being threatened by her to keep away, Koyomi offers his help, and introduces her to Meme Oshino, a strange middle-aged man living in an abandoned building, who cured him of being a vampire.The series tends to introduce only one new heroine per chapter, each involved with a different "apparition." Most of them have an item which symbolises their spectres, such as Hitagi's stapler - the claw of a crab, Mayoi's back pack - the shell of a snail, Suruga's arm - the arm of a monkey, Nadeko's big hat and baggy jacket - the head and skin of a snake, and Karen's yellow suit with black stripes - the colors of a bee. The events of the previous chapters play an important role in the subsequent ones. The series primarily focuses on conversations between characters; it contains a fair number of parodies of other series, as well as Nisio Isin's trademark word play and metahumor. http://en.wikipedia.org/wiki/Bakemonogatari\n  	2009/07/03
524	Element Hunters	Erement Hantaa	Columbia Music Entertainment	\n  	2009/07/04
525	Fight Ippatsu! Juuden-chan!!	Faito Ippatsu! Juuden-chan!! 	AVEX	\n  	2009/06/25
526	GA Geijutsuka Art Design Class	JIiEe Geijutsuka Aato Dezain Kurasu	AVEX	\n  	2009/07/06
528	Hetalia: World Series	Hetaria: Warudo Shirizu	Studio Deen	\n  	2010/03/26
530	Kuruneko	Kuruneko	Kadokawa Pictures	\n  	2009/07/05
531	Modern Magic Made Simple	Yoku Wakaru Gendai Mahou	Geneon Universal Entertainment	\n  	2009/07/11
533	Needless	Niidoresu	AVEX	\n  	2009/07/02
534	Princess Lover!	Purinsesu Rabaa!	Media Factory	\n  	2009/07/05
535	Sora no Manimani	Sora no Manimani	Sony Pictures Entertainment	\n  	2009/07/07
536	Spice and Wolf II	Ookami to Koushinryou II	Brain's Base	\n  	2009/07/09
537	Taishou Baseball Girls	Taishou Yakyuu Musume	J.C.Staff	\n  	2009/07/02
544	A Certain Scientific Railgun (Manga)	To Aru Kagaku no Chou Den Jihou (Reerugan)	Geneon Universal Entertainment	\n  	2007/02/25
545	Animal Detective Kiruminzoo	Anyamaru Tantei Kiruminzuu	Hal Film Maker, Satelight	\n  	2009/10/05
547	Asura Cryin' 2	Asura Kurain 2	Seven Arcs	\n  	2009/10/01
548	Battle Spirits: Shounen Gekiha Dan	Batoru Supirittsu Shounen Gekiha Dan	Happinet Pictures	\n  	2009/09/13
570	Tatakau Shisho The Book of Bantorra	Tatakau Shisho Za Bukku obu Bantoura	Geneon Universal Entertainment	In a world where deceased people turn into stone-like books and are stored in the Bantorra Library, anyone who reads a book can learn its past. Bantorra Library is maintained by the Armed Librarians, who wield supernatural abilities, and their enemy is a psychotic cult known as Shindeki Church. As the story progresses it presents a world of sorrow and pain, and the unfairness and frugality of life, as well as personal desires. However, in each arc there is also a small underlying hope, and more of the reasons, conspiracies, and secrets are revealed behind everything.Source: http://en.wikipedia.org/wiki/Tatakau_Shisho \n\n  	2009/10/02
575	Whispered Words	Sasameki Koto	Media Factory	\n  	2009/10/07
576	Winter Sonata	Fuyu no Sonata		\n  	2009/10/17
577	Yumeiro Patissiere	Yume-iro Patishieeru	Studio Hibari	\n  	2009/10/04
712	Tiger and Bunny	Taigaa Ando Banii	Sunrise	\n  	2011/04/03
550	Blue Literature	Aoi Bungaku Series	Madhouse	The series consists of adaptations of six modern classics of Japanese literature: Osamu Dazai’s No Longer Human (Ningen Shikkaku) & Run, Melos! (Hashire, Melos!), Natsume Soseki’s Kokoro, Ryunosuke Akutagawa’s Hell Screen (Jigoku Hen) & The Spider's Thread (Kumo no Ito), and Ango Sakaguchi's In the Forest, Under Cherries in Full Bloom (Sakura no Mori no Mankai no----a).No Longer Human (Ningen Shikkaku) - A high school student becomes lost and alienated. Despondent and aimless, he falls into a cycle of self abuse, depression and drugs that taints his life for years. Told in three chapters, each chapter deals with a different point in his life and the final chapter leaves him standing alone - an empty and hollow charicature of his former self.In the Forest, Under Cherries in Full Bloom (Sakura no Mori no Mankai no----a) - A love story between a 12th- century woman and a mountain bandit who abducts her.Kokoro - A 1914 tale of a young man's life journey during the Meiji era. The work deals with the transition from the Japanese Meiji society to the modern era, by exploring the friendship between a young man and an older man he calls "Sensei". It continues the theme of isolation developed in Soseki's previous works, here in the context of interwoven strands of egoism and guilt, as opposed to shame.Run, Melos! (Hashire, Melos!) - An updated retelling of a classic Greek tale of the story of Damon and Pythias. The most prominent theme of "Run, Melos!" is unwavering friendship. Despite facing hardships, the protagonist Melos does his best to save his friend's life, and in the end his efforts are rewarded.The Spider's Thread (Kumo no Ito) - The Buddha Shakyamuni chances to notice a cold-hearted criminal suffering in Hell. But this criminal did perform one single act of kindness in not stepping on a spider in a forest. Moved by this selfless act, Shakyamuni takes the silvery thread of a spider in Paradise and lowers it down into Hell, but it falls upon the criminal to seize the opportunity and pull himself out - if he can.Hell Screen (Jigoku Hen) - A famous artist is commissioned by a great lord to create a series of paintings depicting scenes of the 'Buddhist Hell'. The artist is unable to paint scenes that he has not seen himself, prompting him to torture and torment the Lord's staff to create his imagined images of hell. His creative efforts taint the household, as the story descends into madness and destruction.(Source: My Anime List)\n  	2009/10/10
551	Darker Than Black: Gemini of the Meteor	Daakaa Zan Burakku -Ryuusei no Jemini-	Bones	\n  	2009/10/08
552	Fairy Tail	Feirii Teiru	Satelight	The series follows the adventures of Lucy Heartfilia, a teenage wizard who joins the titular wizards' guild and teams up with fellow guild member Natsu Dragneel as he searches for the dragon Igneel.Lucy forms a team together with Natsu, Happy, as well as Gray Fullbuster, an ice wizard with a habit of stripping, and Erza Scarlet, an armored female wizard. The five go on missions for their guild together and battle a wide variety of villains.Source: http://en.wikipedia.org/wiki/Fairy_Tail\n\n  	2009/10/12
553	From Me to You	Kimi ni Todoke	Vap	\n  	2009/10/06
554	Heaven's Lost Property	Sora no Otoshimono ( SNO )	Kadokawa Entertainment	\n  	2009/10/04
641	And Yet The Town Moves	Soredemo Machi wa Mawatteiru	Shaft	\n  	2010/10/08
555	Inuyasha	Inuyasha	Sunrise	Kagome Higurashi is a modern day young girl who lives with her family by the old Higure shrine. Unbeknownst to Kagome, she is the reincarnation of priestess Kikyo and possesses the "Jewel of Four Souls" (the Shikon jewel). One ill-fated day, Kagome locates an ancient well near her home and is abruptly transported through the well and into a feudal Japan, inhabited by demons. There, she encounters Inuyasha, son of a powerful demon father and a human mother, who is pinned to a tree by an enchanted arrow. Kagome frees Inuyasha from the tree before she learns that all of the demons, including Inuyasha, are after the Shikon jewel in her possession. To prevent the jewel from being stolen, Kagome accidentally shoots it with the enchanted arrow, shattering it into thousands of pieces. The evil Naraku also seeks the jewel for his own reasons. New allies, Kagome and Inuyasha, join forces with Shippo, a small fox-demon, Miroku, a monk, and Sango, the sole surviving demon-hunter, in order to combat Naraku and recover the fragments of the "Jewel of Four Souls". But that's just just the tip of the iceberg.\n  	2000/10/16
556	InuYasha The Final Act 	InuYasha Kanketsu-Hen	Viz Media	The story begins in Tokyo, Japan, with a fifteen-year-old middle school girl named Kagome Higurashi, who lives on the grounds of her family's hereditary Shinto shrine with her mother, grandfather and her little brother named Sota. When she goes into the well house to retrieve her cat, a centipede demon bursts out of the enshrined Bone Eater's Well (骨喰いの井戸 Honekui no Ido?) and pulls her back into the well with it. Instead of hitting the bottom of the well, however, Kagome continues to fall as though through a portal, and reappears in the ancient Sengoku period of Japan. Apparently, the demon had previously attacked a village near the well in the Sengoku period, in pursuit of a magical jewel known as the Jewel of Four Souls (四魂の玉 Shikon no Tama?, also known as the "Shikon Jewel"). It had attempted to kill the jewel's keeper, a woman who looked very like Kagome; and now the demon has mistaken Kagome for this woman. The demon attacks her, planning to consume both her and the Jewel to absorb the incredible power. In a moment of desperation, Kagome unseals a half demon trapped by a sacred arrow against a nearby tree. The half-demon, InuYasha, easily defeats the centipede demon, but he might actually be a bigger problem himself. He was sealed to the tree fifty years previously by a priestess named Kikyo, who also turns out to have been the keeper of the Jewel-- and Kagome's previous incarnation. Kikyo had requested, upon her death, that the Jewel be burned with her in her funeral pyre so no one could ever abuse its tremendous power. Although InuYasha destroys the centipede, the Sacred Jewel is later shattered into numerous shards that disperse across Japan. Even the individual shards are capable of granting great power, and are eagerly sought by humans and demons alike. InuYasha and Kagome set out to collect the shards to avoid disasters caused by the Sacred Jewel of Four Souls.Along the way, they join forces with Shippo, a small orphaned fox demon, Miroku, a monk who suffers from a powerful generational and demonic curse given to his ancestors, and Sango, a demon-slayer whose clan was killed by a group of demons. Their main opponent is Naraku, a devious and powerful collective, shape-shifting half-demon who manipulated the initial conflict between Kikyo and InuYasha, ending with Kikyo sealing InuYasha to the tree; Sango's clan's destruction; and Miroku's curse. Naraku slowly gathers shards for himself and acts as a master manipulator, setting up traps forcing InuYasha and his companions to take Kagome's fragments of the Sacred Shikon Jewel. Inuyasha's main cast also encounter Sesshomaru, InuYasha's full demon half-brother, who also is out to kill the manipulative Naraku (although he is far from being on InuYasha's side); Kikyo, now partially resurrected with a fragment of Kagome's reincarnated soul/spirit; and a wolf demon named Koga, most of whose comrades were killed by Naraku's forces.Eventually, Naraku collects all of the shards and reassembles the Jewel of Four Souls into its original and complete form. Although Inuyasha and his allies defeat him, Naraku uses his immeasurable strength and power as the Jewel's owner to wish for Kagome's spirit to be trapped inside it with his own, which would allow Naraku to survive within it in eternal conflict with her. With Inuyasha by her side, Kagome wishes for the jewel to disappear, erasing Naraku from existence and breaking the cycle of conflict. She and Inuyasha are then thrown back to their own time periods and the Well becomes sealed, causing them to lose contact for three years. In that time, the Sengoku period changes drastically: Sango and Miroku marry and have three children together; Kohaku (Sango's last remaining family member) resumes his journey to become a strong demon slayer; Koga becomes leader of the wolf demons and marries Ayame; and Shippo attains the seventh rank as a fox demon.Back in the present, Kagome graduates from high school at the age of eighteen, before she finally manages to get the Bone-Eater's Well in her backyard to work again. With approval from her mother, Kagome returns to the Sengoku period, where she stays with InuYasha and becomes his wife for the rest of her life.\n  	2009/10/03
557	Kanokon OVA	Kanokon ~Manatsu no Daishanikusai~	Media Factory	\n  	2009/11/25
558	Kobato.	Kobato	Madhouse	\n  	2009/10/06
559	Letter Bee	Tegami Bachi	Studio Pierrot	Tegami Bachi(aka Letter Bee)is set in the fictional land called "AmberGround", where an artificial sun only illuminates the capital of the land, Akatsuki. The story follows Lag Seeing, a young letter bee and his personal dingo, Niche, on their journeys around the AmberGround. Lag's job is to deliver letters and packages from town to town while avoiding Amberground's deadliest hazard — a species of giant armored insects known as Gaichuus. He has a special ability to see the memories of people and items when his Shindanjuu is fired at them. Source:Wikipedia\n\n  	2009/10/03
628	Nura: Rise of the Yokai Clan	Nurarihyon no Mago	Studio Deen	Rikuo Nura is part human and a quarter yokai (demon)\n. As he is only a quarter yokai, Rikuo is able to turn into his yokai form only after sunset, when the moon is out and returns into his human self when the sun rises. He lives in a house full of spirits along with his yokai grandfather. Trying to escape his fate, he does good deeds in order to avoid becoming a yokai, despite his grandfather's wish for him to succeed him as master of the Nura yokai clan. Rikuo is a different yokai because he helps humans. He eventually comes to terms with his demon blood and decides to take up the position of Young Head of the Nura house. As multiple factions aim to stop him or usurp his position, he must gather friends and allies in a new Hyakki Yako (Night Parade of One Hundred Demons)\n under his banner of "Fear".Source:Wikipedia\n\n  	2010/07/05
629	Occult Academy	Seikimatsu Okaruto Gakuin	Aniplex	\n  	2010/07/05
630	Okamisan and her Seven Companions	Ookami-san to Shichinin no Nakamatachi	J.C.Staff	\n  	2010/07/01
631	Seitokai Yakuindomo	Seitokai Yakuindomo	GoHands	\n  	2010/07/04
636	The Tyrant Falls in Love	Koi suru Bo-kun / Koisuru Boukun	PrimeTime	\n  	2010/06/25
561	Miracle Train: Oedo-sen e Youkoso	Mirakuru Torein ~Oedo-sen e Youkoso~	Aniplex	あなたは、こんな都市伝説をご存知ですか？「東京の地下を縦横無尽に走る地下鉄。その中に、美麗な男子ばかりが乗っている電車が存在する。その名は『ミラクル☆トレイン』。出会えた貴女にはきっと幸せが訪れる」地下鉄の駅に入っていく１人の女の子がいる。周りはいつもと変わらない風景。しかし、自動改札を通る瞬間、タッチしたカードが密かに光を放つ。そんな異変に気付かないまま、ホームへと向かう女の子。ホームにいつものように大江戸線が滑り込んでくる。ドアが開き、女の子が電車に乗り込むと――車内に異空間が広がり、６人の美麗な男子たちが待ち受けていた。それは、いつもの電車ではなく、都市伝説で噂となっている奇跡の電車『ミラクル☆トレイン』だったのだ。そして、６人はなんと『駅』たちだった……！６人を統括している車掌と、ガイドの女の子は言う。『ミラクル☆トレイン』は、悩みごとを持つ人の前に現れる。そして、駅達がその悩みを解消するのだと。こうして『ミラクル☆トレイン』に乗ってくる人々の悩みを解決していく６人。様々なトラブルを乗り越えていくことで、彼らの絆も強まってゆく。さあ、今日はどんな乗客が乗って来るのだろうか…？ \n  	2009/10/04
563	Natsu no Arashi! Akinaichu	Natsu no Arashi ~Akinaichuu~	Shaft	\n  	2009/04/05
564	Nogizaka Haruka no Himitsu Purezza	Nogizaka Haruka no Himitsu Pyuarettsua♪	Geneon Universal Entertainment	\n  	2009/10/05
565	Nyan Koi!	Nyan Koi!	AIC	\n  	2009/10/01
566	Ontama!	Ontama!	Encourage Films	\n  	2009/08/07
567	Shin Koihime Musou	Shin Koihime Musou	Dogakobo	\n  	2009/10/05
568	Shugo Chara Party!	Shugo Kyara Paatii!	Satelight	\n  	2009/10/03
569	Student Council's Discretion	Seitokai no Ichizon	Kadokawa Entertainment	\n  	2009/10/02
571	Tenchi Muyo! War On Geminar	Isekai no Seikishi Monogatari	Funimation	Kenshi Masaki is the half brother of Tenchi Masaki and used to live in Japan, that is until he was summoned to the land of Geminar. The Land of Geminar has been witness to an endless amount of wars that have been fought using Seikijin, bio-mechanical weapons controlled by a capable warrior called a Seikishi using magic power called Ahou. It is revealed that Kenshi is an amazing Seikishi and it seems someone has a reason for Kenshi to be in Geminar, but who and why are not known. \n  	2009/03/20
680	Hanamaru Kindergarten	Hanamaru Youchien	Gainax	\n  	2010/01/01
578	Chrome Shelled Regios	Koukaku no Regios	Zexcs	Story:\nIn a post-apocalyptic polluted earth overrun with mutated beasts called Filth Monsters (Contaminoids\n in Funimation's translation), humanity is forced to live in large mobile cities called Regios and learn to use weapons called DITE\n and harness the power of Kei to defend themselves. In the Academy City of Zuellni, Layfon Alseif is hoping to start a new life without Martial/Military arts and forget his past. However, his past has caught the attention of Kalian Loss, the Student Council President and Nina Antalk, a Military Arts student and Captain of the 17th Platoon, who instantly recognizes his abilities and decides he's the perfect candidate to join her group. The series follow Layfon's life in Zuellni and occasionally has flash backs of his life in Glendan.Info:Chrome Shelled Regios (鋼殻のレギオス)\n is a Japanese light novel series by Shūsuke Amagi, with illustrations by Miyū. There is an anime and manga adaptation, as well as spin-off series.Light Novel list:\nChrome Shelled Regios\n - 20 volumesLegend of Regios\n - A 3-volume, science-fiction light-novel series that is set in the past world of the Chrome Shelled Regios series. Regios Crusade\n - A spin-off series.An anime adaptation\n produced by Zexcs aired on January 11, 2009 to June 20, 2009 and is licensed in North America by Funimation Entertainment. The 24 episodes anime adaptation started airing in January 2009 and is produced by Zexcs. The anime itself is a reinterpretation of the manga, featuring the same characters with an expanded group of characters. At the season finale, many of the plots within the story remain unresolved, suggesting a possible continuation of the series, but there has yet to be confirmation of a second season.*The Legend of Regios\n side-story takes place in the same world, but during a time of the past. In the anime, all of the characters speak in English with a Japanese accent, probably as a result of being voiced over by Japanese seiyu.\nManga list:\nA list of mangas from Chrome Shelled Regios which are mostly ongoing.Chrome Shelled Regios\nChrome Shelled Regios: Missing Mail\n (Author:Kiyose Nodoka)Chrome Shelled Regios: 4-panel mangas\n (Author:Futaba Masumi)- 4 koma Felli's Poem- 4 koma Felli's Poem PlusChrome Shelled Regios: Secret Side\n (Author:Watari)This is an extra version that is recognized by the original author and fans alike. In its brief synopsis, the story explores the main understanding of humanity's survival in Regios cities, as the main protagonist Layfon, searches for the significance of his existence and faces his worst enemy. We can also expect to catch a glimpse of a new side to our hero.Characters info\nSource: Wikipedia\n, Japanese sites\n\n  	2009/01/11
579	Cooking Idol Ai! Mai! Main!	Kokkin Aidoru Ai! Mai! Main!	JVC Entertainment	\n  	2009/03/30
580	Fresh Pretty Cure!	Furesshu PuriKyua! / Fresh Precure!	Toei Animation	\n  	2009/02/01
582	Hetalia: Axis Powers	Hetaria: Axis Powers	Studio Deen	\n  	2009/01/24
583	Maria Holic	Maria†Horikku	Shaft	\n  	2009/01/04
589	Angel Beats!	Enjeru Biitsu!	P.A. Works	Death and reincarnation are inescapable, but what happens in between? Without warning and without his memories, a boy who only recalls his last name - Otonashi - wakes up next to a girl named Yuri who offers him a gun and tells him to shoot an angel. Assuming it must be a misunderstanding, Otonashi is then almost killed by the angel and is drawn into Yuri's army to battle to delay the beginning of his next life. Immortality is within reach, but if Otonashi remembers how he died, will he keep fighting or allow himself to vanish?\n  	2010/03/22
591	Bakugan: Gundalian Invaders	Bakugan Batoru Burouraazu: Gandarian Inbeedaazu	TMS Entertainment	\n  	2010/05/23
592	Betrayal Knows My Name	Uragiri wa Boku no Namae O Shitteiru / Uraboku / Uragiri wa Boku no Namae wo Shitteiru	J.C.Staff	Sakurai Yuki is an orphan with a mysterious ability. Found near the fence of his current home, the Asahi Orphanage, Yuki strives for independence. The last thing he wants is to be a burden on anybody. His ability makes this nearly impossible, however; whenever he touches someone, he feel their emotions and see the darkness within their hearts and exactly what caused such darkness. Unable to control his ability, Yuki has often made insensitive blunders while trying to empathize with the person he feels pain for. Now, however, with death threats clouding his judgement and his ability increasing immensely, what will happen when a man claiming to be Yuki's older brother appears?\n  	2010/04/11
594	Broken Blade / Break Blade	Bureiku Bureido 	Production I.G	\n  	2010/05/29
595	Demon King Daimao	Ichiban Ushiro no Dai Maou / Ichiban Ushiro no Daimaou	Artland	\n  	2010/04/02
596	Giant Killing	Jaianto Kiringu	Studio Deen	\n  	2010/04/04
632	Sekirei	Sekirei	Funimation Entertainment	Here I have separated all the characters\n by region:Section 0: North City (Main charters), miscellaneous.Section 1: MBI: Mid Bio Informatics employees and associatesSection 2: South CitySection 3: East CitySection 4: West CitySection 100: VG Characters only\n  	2008/07/02
633	Shiki (Demon Corpse)	Shiki	Daume	\n  	2010/07/08
635	The Campanella of the Blessing	Shukufuku no Campanella	AIC	\n  	2010/07/02
597	Hakuouki	Hakuouki	Geneon Universal Entertainment	Info:Hakuōki (薄桜鬼 〜新選組奇譚〜 Hakuōki ~Shinsengumi Kitan~) is a video game series by Idea Factory for the PS2/PSP/PS3/DS/3DS platforms. It has been adapted into two 12/10-episode anime series animated by Studio DEEN. The series has also been adapted as two different manga series. A third series based on the prequel, Hakuouki Reimeiroku, is scheduled for Summer 2012. Two new movies are scheduled for 2013.Story:Chizuru Yukimura heads to Kyoto to search for her father. While there, she witnesses a fight between Rasetsu and members of the Shinsengumi. The Shinsengumi take her into custody and, once learning she is the daughter of the doctor they are searching for, decide to keep her close at hand.Novel adaptation:\n小説 薄桜鬼 壱(1)小説 薄桜鬼 弐(2)小説 薄桜鬼 参(3)小説 薄桜鬼 四(4)Hakuouki Shinsengumi Kitan part1 (薄桜鬼 〜新選組奇譚〜 ストーリーブック 上巻)Hakuouki Shinsengumi Kitan part2 (薄桜鬼 〜新選組奇譚〜 ストーリーブック 下巻)薄桜鬼 随想録 ストーリーブック 上巻薄桜鬼 随想録 ストーリーブック 下巻Hakuouki　Reimeiroku part 1 薄桜鬼 黎明録 ストーリーブック 上巻 Hakuouki　Reimeiroku part 2 薄桜鬼 黎明録 ストーリーブック 中巻Hakuouki　Reimeiroku part 3 薄桜鬼 黎明録 ストーリーブック 下巻Hakuouki Sekkaroku　~Night~（小説 薄桜鬼 雪華録 ~宵~）Hakuouki Sekkaroku　~Day~　（小説　薄桜鬼 雪華録 ~明~）Manga adaptation:\n薄桜鬼アンソロジー 紅薄桜鬼アンソロジー 蒼薄桜鬼アンソロジー 焔薄桜鬼アンソロジー 凛Hakuouki Junrenka1　薄桜鬼 巡恋華 1Hakuouki Junrenka2　薄桜鬼 巡恋華 2Anime Adaptation：\nFirst Season:\n (12 episodes)Hakuouki: Shinsengumi KitanSecond Season:\n 1 recap +(10 episodes)Hakuouki: HekketsurokuThird Season:\n (12 episodes)Hakuouki ReimeirokuThe second season continues the numbering from season one; therefore, episode 1 of the second season is episode 13. Similarly, there was a recap episode of the first season aired the week before episode 13, called episode 00.\n The third season is a prequel to the series. Hakuouki Sekkaroku OVA: (薄桜鬼 雪華録)\n 6 chapters-第一章 玄夜の白雪 (Okita Souji)-第二章 冬の埋み火 (Hajime Saitou)-第三章 空裂く槍 (Harada Sanosuke)-第四章 揺蕩う舟 (Toudou Heisuke)-第五章 天明の風 (Hijikata Toshizou)-第六章 雪華の舞 (Kazama Chikage)Other media:\nCharacter Smartphone apps (6)薄桜鬼VISAカード (Hakuouki VISA CARD --  a tie-up of Idea Factory + Sumitomo Mitsui)Source:Wikipedia\n\n  	2010/04/03
598	Heroman	Hiirouman	Bones	\n  	2010/04/01
599	Hime Chen! Otogi Chikku Idol Lilpri	Hime Chen! Otogi Chikku Aidoru Rirupuri	TMS Entertainment	\n  	2010/04/04
600	House of Five Leaves	Sarai-ya Goyo / Saraiya Goyou	Manglobe	\n  	2010/04/15
601	Ikkitousen: Xtreme Xecutor	Ikki Tousen Extreme Executor	TNK	\n  	2010/03/26
602	Jewelpet Tinkle ☆	Juerupetto Tinkuru ☆	Studio Comet	\n  	2010/04/03
604	K-On!!	Keion!!	Kyoto Animation	\n  	2010/04/07
605	Kaichou wa Maid-sama!	Kaichou wa Maid-sama	Geneon Universal Entertainment	Seika High School, once an all-boys school notorious for its wild students and for generally being a terrifying place for girls, has recently become a co-ed school. With the female population still a minority and living in fear of the over-the-top antics of the males, Misaki Ayuzawa takes it into her own hands to reform the school and allow the girls to feel safe in the rough environment.Training, studying, and even becoming the first female student council president of the school, Misaki has gained a reputation among the male students body as an uptight, boy-hating dictator and as a shining hope for the teachers and fellow female students. However, despite her tough-as-nails appearance, she secretly works part-time at a maid café in order to support her family. Unfortunately, her hard-earned reputation is threatened when the popular, attractive, and somewhat impassive Takumi Usui takes an interest in her after discovering her in a maid uniform after school.Source:Wikipedia\n\n  	2010/04/01
606	Kiss x Sis	Kisushisu	Feel	\n  	2010/04/04
607	Night Raid 1931	Senkou no Night Raid	A-1 Pictures	\n  	2010/04/05
642	Arakawa Under the Bridge x Bridge	Arakawa Under the Bridge*2	Shaft	\n  	2010/10/03
608	Rainbow -  Nisha Rokubou no Shichinin	Rainbow: Nisha Rokubou no Shichinin	Madhouse	Seven teenagers in 1955 have to learn to live together in the same hold in the reformatory of Shio. Confined in a hall where suffering and humiliation are daily, they are waiting for a ray of hope in a dark, incarcerating world. The story follows their life together and how they move on afterwards. -- MAL\n  	2010/04/06
609	Shin Koihime Musou: Otome Tairan	Shin Koihime†Musou: Otome Tairan	Dogakobo	The game is set in ancient China during and after the fall of the Han dynasty with some major differences, most notably; Most of the male characters in the novel have become female and The Three Kingdoms that were formed after the Han Dynasty, had already been established. Despite each kingdom being ruled by an independent monarchy, the three kingdoms are still loyal to the Han empire. However, the empire is on the verge of collapse as civil unrest, banditry and infighting bring turmoil to the nation.As the empire finally collapse and warlords wage war with each other, amidst the turmoil several major factions are formed, ready to rule and unite the fractured nation. These major factions (5 in Koihime Musō, 7 in the sequel) are the Shoku faction (Chinese: 蜀, Shǔ) led by Kazuto Hongō in Koihime Musō and in the sequel, Queen Ryūbi (Liu Bei) of the Kingdom of Shu, the Gi faction (Chinese: 魏, Wèi) led by Queen Sōsō (Cao Cao) of the Kingdom of Wei, the Go faction (Chinese: 吳, Wú) led by Princess Sonken (Sun Quan) of the Kingdom of Wu and in the sequel, her older sister Queen Sonsaku (Sun Ce), the Tōtaku faction (Chinese: 董卓, Dong Zhuo) led by Governess Tōtaku, Governor of Dong province, the En/Yuan faction led by Lady Enshō, Lord of Yuan province, and in the sequel the Kōkintō/Yellow Turban Rebels led by the Zhang sisters, Chōkaku, Chōhō and Chōryō and the Nanban/Southern Barbarians led by Mōkaku. (The anime is set before the Han empire fell and before the power struggle between the warlords began.)\n  	2010/03/26
610	Stray Cat Overrun!	Mayoi Neko Overrun!	AIC	\n  	2010/04/06
611	The Tatami Galaxy	Yojouhan Shinwa Taikei	Madhouse	\n  	2010/04/22
612	Trigun: Badlands Rumble	Trigun the Movie	Madhouse	\n  	2010/04/24
613	Working!!	Waakingu!!	Aniplex	Working!! is a Japanese four-panel comic strip manga series written and illustrated by Karino Takatsu, and concerns the activities of the unusual employees at the Wagnaria family restaurant. It began serialization in the January 2005 issue of Square Enix's Young Gangan seinen manga magazine. The first bound volume was released in November 2005 in Japan; as of March 2011, nine volumes have been released. Square Enix released three drama CDs between 2007 and 2009 with scripts written by Shōgo Mukai. A 13-episode anime series produced by A-1 Pictures and directed by Yoshimasa Hiraike aired in Japan between April and June 2010, and a second season began airing in October 2011. In North America, the anime is licensed by NIS America and is known as Wagnaria!!.\n  	2010/04/04
614	Yamada’s First Time	B Gata H Kei	Happinet Pictures	\n  	2010/04/01
615	Amagami SS	Amagami Esu Esu	AIC	\n  	2010/07/02
616	Black Butler 2	Kuroshitsuji II	Funimation Entertainment	\n  	2010/07/02
617	Black Lagoon: Roberta's Blood Trail	Burakku Raguun Roberutazu Buraddo Toreiru	Funimation Entertainment	\n  	2010/07/17
618	Cat Planet Cuties	Asobi ni Iku yo!	AIC	\n  	2010/07/10
619	Digimon Fusion	Digimon Xros Wars	Toei Animation	\n  	2010/07/06
621	Hen Semi	Hen Zemi	Xebec	\n  	2010/07/23
622	Highschool of the Dead	Gakuen Mokushiroku Haisukuuru obu za Deddo	Geneon Universal Entertainment	\n  	2010/09/20
623	Hiyokoi	Hiyokoi	Production I.G	\n  	2010/07/30
625	Kuttsukiboshi	Kuttsukiboshi	Primastea	\n  	2010/08/16
626	Legend of the Legendary Heroes	Densetsu no Yuusha no Densetsu	Zexcs	\n  	2010/07/01
638	Today, I'll Start Our Love	Kyou, Koi wo Hajimemasu	J.C.Staff	\n  	2010/06/25
639	Zoroark: Master of Illusions	Gekijouban Poketto Monsutaa Daiyamondo ando Paaru: Gen'ei no Hasha: Zoroaaku	OLM	\n  	2010/07/10
640	A Certain Magical Index II	To Aru Majutsu no Kinsho Moku Roku II (Indekkusu II)	J.C.Staff	\n  	2010/10/08
643	Bakuman	Bakuman	J.C.Staff	Story:Bakuman(バクマン) is a Japanese shōnen manga written by Tsugumi Ohba and illustrated by Takeshi Obata, the same creative team responsible for Death Note\n. The series follows talented artist Moritaka Mashiro and aspiring writer Akito Takagi, two ninth grade boys who dreams to be in the manga business; manga artist and writer respectively.Manga:\n20 Volumes; published in Japan by Shueisha, Viz Media in the North America and Madman Entertainment in Australia.Anime:\n(There are three seasons currently.)A 25-episodes per season anime television series based on the manga. Source:Wikipedia\n\n  	2010/10/02
645	Detective Opera Milky Holmes	Tantei Opera Mirukii Houmuzu	J.C.Staff	\n  	2010/10/07
646	Fortune Arterial Akai Yakusoku	Fouchun Ateriaru Akai Yakusoku	Zexcs	\n  	2010/10/09
647	Girl Demon Zakuro	Otome Youkai Zakuro	J.C.Staff	\n  	2010/09/25
648	Hakuouki Hekketsuroku	Hakuouki Hekketsuroku	Studio Deen	The 2nd season of the anime Hakuouki\n.\n  	2010/10/04
870	So, I Can't Play H?	Dakara Boku wa, H ga Dekinai	Feel	\n  	2012/07/06
649	HeartCatch Precure!	Haatokyacchi PuriKyua!	Toei Animation, J.C.Staff	n each person resides a Heart Flower, which is connected to the great Heart Tree that watches over everyone. Protecting this tree are the Heartcatch PreCures, who defend it against the Desert Apostles, who plan to wilt everything and turn the world into a desert. However, when the current PreCure, Cure Moonlight, is defeated in battle and the Heart Tree loses its flowers, she sends two fairies, Chypre and Coffret, to the surface in order to seek out her replacement. They find Tsubomi Hanasaki, a shy flower-loving girl that had just moved into the city with her family. Joined by her new friend, Erika Kurumi, who becomes Cure Marine, she becomes Cure Blossom and fight against the Desert Apostles who transform the wilting Heart Flowers inside people into monsters known as Desertarians. By defeating these monsters, they gain Heart Seeds which allow the Heart Tree to become healthier again.\n  	2010/10/30
650	Heaven's Lost Property: Forte	Sora no Otoshimono forute	Kadokawa Entertainment	\n  	2010/10/01
651	Hyakka Ryouran: Samurai Girls	Hyakka Ryouran Samurai Gaaruzu	Arms	\n  	2010/09/04
652	Ichigo Ichie: Kimi no Kotoba	Ichigo Ichie: Kimi no Kotoba	Four Some	\n  	2010/10/24
653	Kampfer / Kämpfer	Kenpufaa	Nomad	\n  	2009/10/01
654	Koe de Oshigoto	Koe de Oshigoto!	Studio Gokumi	\n  	2010/10/17
655	MM!	Emu Emu!	Xebec	\n  	2010/10/02
656	Motto To Love-Ru	Motto Toraburu	Xebec	\n  	2008/04/03
657	My Little Sister Can't Be This Cute	Ore no Imouto ga Konnani Kawaii Wake ga Nai (Oreimo)	AIC	\n  	2010/10/03
660	Panty &/and Stocking with Garterbelt	Panti ando Sutokkingu wizu Gaataaberuto	Gainax	\n  	2010/11/01
661	Princess Jellyfish	Kuragehime	Brain's Base	\n  	2010/10/15
662	Psychic Detective Yakumo	Shinrei Tantei Yakumo	Bee Train	\n  	2010/10/03
663	Squid Girl	Shinryaku! Ika Musume	Diomedea	\n  	2010/10/05
664	Star Driver: Kagayaki no Takuto	Sutaa Doraibaa: Kagayaki no Takuto	Bones	\n  	2010/09/16
665	Super Robot Wars Original Generation: The Inspector	Suupaa Robotto Taisen Oujii Jii Insupektaa	Asahi Production	\n  	2010/10/01
666	Tamayura	Tamayura	Hal Film Maker	\n  	2010/09/06
667	Tegami Bachi: Reverse	Tegami Bachi Ribaasu	Studio Pierrot	\n  	2010/10/02
668	The World God only knows	Kami nomi zo Shiru Sekai	Manglobe	\n  	2010/10/06
669	Togainu no Chi	Togainu no Chi	A-1 Pictures	\n  	2010/10/07
670	Yosuga no Sora	Yosuga no Sora	Feel	\n  	2010/10/04
671	Yumeiro Patissiere SP (Special) Professional	Yumeiro Patishieeru SP (Supesharu) Purofesshonaru	Studio Hibari	\n  	2010/10/03
672	Baka and Test Summon the Beasts	Baka to Test to Shoukanjuu	Media Factory	\n  	2010/01/06
675	Cobra the Animation	Kobura Ji Animeeshon	Magic Bus	\n  	2010/01/02
676	Dance in the Vampire Bund	Dansu in za Vanpaia Bando	Shaft	\n  	2010/01/07
677	Durarara!!	Dyurarara!!	Brain's Base	Mikado Ryūgamine, a young boy who longs for the exciting life of the big city, moves to Ikebukuro at the invitation of his childhood friend Masaomi Kida, whom he has not seen since he was young, to attend Raira Academy with him. After meeting Masaomi at the train station, they both set out at night to the streets of Ikebukuro. Masaomi warns him about people he doesn't want to cross in the city: like a violent and superhumanly strong man, Shizuo Heiwajima, an information broker, Izaya Orihara, and a mysterious gang known as "The Dollars." After running into some of the side characters, Mikado witnesses a local legend called the "Black Rider", who rides around Ikebukuro on a black bike that occasionally brays like a horse and also rumored to have no head under its helmet. The "Black Rider" is Celty Sturluson, an Irish dullahan who is in Ikebukuro looking for her stolen head. The narrative follows all of the characters equally, showing how their lives intersect, creating a greater plot-line from what each character knows about a common incident.\n  	2010/01/07
681	Hidamari Sketch x☆☆☆	Hidamari Sukecchi x Hoshi Mittsu / Hoshimittsu	Shaft	\n  	2010/01/08
683	Ladies Versus Butlers	Redi×Bato!	Xebec	\n  	2010/01/05
685	Omamori Himari	Omamori Himari		Seven years ago, Yuto Amakawa's parents died in a car accident, leaving him alone without a single relative, the only item left of his family being a strange and mysterious amulet given to him by his late grandmother. Ever since then, his childhood friend Rinko Kuzaki (and her parents[ch. 1]) has cooked for and taken care of him. His life takes a drastic turn on his 16th birthday when he meets Himari, a cat demon samurai girl. Himari reveals to him that some of his ancestors were part of the twelve Demon Slayer families that have been slaying demons since the feudal era. She has sworn an oath to protect Yuto from the demons that are out to kill him, but Yuto's allergy to cats makes it somewhat difficult to deal with.Later on, Yuto encounters various girls who take a liking to him: Shizuku, a mizuchi in the form of a small child; Lizlet, a tsukumogami in the form of a busty tea-serving maid; and Kuesu, another Demon Slayer who is revealed to be Yuto's fiancée and an object of Yuto's lost past.As the series progresses, Yuto and the group encounter some powerful ayakashi, with some of them being allies, and Yuto eventually makes a life-changing decision to fight for his belief of coexistence between human and ayakashi.\n  	2010/01/06
686	Ookami Kakushi	Ookami Kakushi	AIC	\n  	2010/01/07
687	Sound of the Sky	Sora no Woto / So Ra No Wo To	Aniplex	\n  	2010/01/05
688	Sword Story	Katanagatari	White Fox	Katanagatari is the story of Yasuri Shichika, a swordsman that fights without a sword, and Togame, an ambitious strategist that seeks to collect twelve legendary swords for the shogunate. The son of an exiled war hero, Yasuri Shichika is the seventh head of the Kyotoryuu school of fighting and lives on isolated Fushou Island with his sister. At a request from the female general Togame, Shichika and Togame set out on a journey across Edo-era Japan to collect the twelve Deviant Blades.\n  	2010/01/25
689	The Qwaser of Stigmata	Seikon no Qwaser	Hoods Entertainment	\n  	2010/01/09
690	+tic Nee-san / Plastic Nee-san / +tic Elder Sister	Purasu Chikku Neesan / Purasuchikku Neesan	TYO Animations	\n  	2011/05/16
691	30-sai no Hoken Taiiku	Sanjussai no Hoken Taiiku	Gathering	According to the free paper of Mainichi, an instruction book series "30-sai no Hoken Taiiku (Health Education for 30 years old men)" was announced to get an anime adaptation. The guide books teaches shy men around 30 how to date and have sex with women.\n  	2011/04/07
692	A Channel	Ee Channeru	Studio Gokumi	\n  	2011/04/08
693	Aria the Scarlet Ammo	Hidan no Aria	J.C.Staff	\n  	2011/04/15
1023	Outbreak Company	Autobureiku Kanpanii: Moeru Shinryakusha	Feel	\n  	2013/10/04
694	Astarotte's Toy!	Astarotte no Omocha!	Diomedéa	In the medieval fantasy world of Alfheimr, succubus princess Astarotte Ygvar, the first princess of the kingdom of Ygvar, has just reached the age of 10. For the coming years of a young succubus' life, it is necessary for them to have a male harem. In order to maintain their body and preserve their beautiful appearance, they must consume a substance only found on males. This substance is a liquid called Sauzfryma, better known as semen. The princess, however, bears a great dislike against men, and only agrees to create a harem if a human male is to join.\n  	2011/04/10
695	Blue Exorcist	Ao no Exorcist	A-1 Pictures	Info:Blue Exorcist (青の祓魔師（エクソシスト） Ao no Ekusoshisuto) is a manga written and illustrated by Kazue Katō. It was adapted into an anime television series of 25 episodes by A-1 Pictures during 2011 and it will be adapted into an anime film. An OVA has also been released in 2011, called "Ao No Exorcist: Kuro no Iede(クロの家出)".Story:\nThe story revolves around Rin Okumura, a teenager who discovers he is the son of the god demon Satan born from a human woman and is the inheritor of Satan's powers. When Rin's guardian dies while fighting Satan, Rin decides to become an exorcist in order to defeat his father. Entering into the True Cross Academy to learn how to fight demons, Rin meets several other exorcist apprentices who he starts to bond as well as his his twin brother Yukio.Source:Wikipedia\n\n  	2011/04/04
696	Deadman Wonderland	Deddoman Wandaarando	Manglobe	\n  	2011/04/17
697	Dog Days	Doggu Deizu	Seven Arcs	\n  	2011/04/02
698	Dororon Enma-kun Meeramera	Dororon Enma-kun Meeramera	Brain's Base	\n  	2011/04/08
699	Electromagnetic Wave Woman and Adolescent Man	Denpa Onna to Seishun Otoko	Shaft	\n  	2011/04/15
700	Gambling Apocalypse Kaiji 2	Gyakkyou Burai Kaiji: Hakairoku Hen	Madhouse	The second season of Kaiji\n.\n\n  	2011/04/06
701	Hanasaku Iroha	Hanasaku Iroha	P.A. Works	After her single mother decides to run off with a boyfriend to dodge debt collectors, the young and energetic Ohana is sent to live with her grandmother. However, her grandmother is the strict owner of a hot springs inn and requires her to work at the inn to pay for her living expenses. Although Ohana is unhappy about this situation at first, she decides to make the best of her situation and work hard. Ohana's life is suddenly filled with fun, mischief, and drama!\n  	2011/04/03
703	Hoshizora e Kakaru Hashi	Hoshizora he Kakaru Hashi	Dogakobo	\n  	2011/04/11
704	Jewelpet Sunshine	Juerupetto Sanshain	Studio Comet	\n  	2011/04/09
705	Kämpfer für die Liebe / Kampfer fur die Liebe	Kenpufaa	Nomad	\n  	2011/04/08
706	Maria † Holic: Alive	Maria Horikku Araibu	Shaft	\n  	2011/04/08
707	Moshidora	Moshi Koukou Yakyuu no Joshi Manaajaa ga Dorakkaa no ''Manejimento'' o Yondara/ Moshi Koukou Yakyuu no Joshi Manager ga Drucker no Management wo Yondara	Production I.G	\n  	2011/03/25
708	My Ordinary Life	Nichijou	Kyoto Animation	\n  	2011/04/03
710	Pretty Rhythm: Aurora Dream	Puriti Rizumu: Oorora Dorimu	TV Tokyo	The franchise takes place in a world where Prism Shows, performances that are a combination of singing, dancing, fashion, and ice skating, are popular. The skaters, known as Prism Stars, use Prism Stones to coordinate their dresses and perform Prism Jumps to appeal to their fans.Aurora Dream revolves around a girl named Aira Harune who, along with a girl named Rizumu Amamiya, is scouted to become a Prism Star. Joined by a veteran Prism Star, Mion Takamine, they form a group called as MARs and work towards Rizumu's dream of performing the mysterious, legendary Prism Jump, Aurora Rising, that her mother had once performed.\n  	2011/04/02
711	STEINS;GATE	Shutainzu Geeto	White Fox	\n  	2011/05/06
714	We Still Don't Know the Name of the Flower We Saw That Day.	Ano Hi Mita Hana no Namae o Bokutachi wa Mada Shiranai. (Anohana)	A-1 Pictures	Six childhood friends grew apart in high school. One of them is Jintan, now a shut-in. He gets a request to fulfill a wish for Menma, the only one of their friends to have stayed the same over the years. In order to grant her wish, he will have to find and reunite their old friends.\n  	2011/04/15
715	Yondemasuyo, Azazel-san.	Yondemasu yo, Azazel-san.	Production I.G	\n  	2011/04/08
716	[ C ] - Control - 	Shi	Tatsunoko Production	\n  	2011/04/15
717	A Dark Rabbit Has Seven Lives	Itsuka Tenma no Kuro Usagi	Zexcs	\n  	2011/07/09
718	Baka and Test Summon the Beasts 2!	Baka to Test to Shoukanjuu Ni!	Silver Link	\n  	2011/07/08
719	Blood-C	Buradu Shii	Production I.G	\n  	2011/07/02
720	Bunny Drop	Usagi Drop	Production I.G	\n  	2011/07/08
721	Croisee in a Foreign Labyrinth ~ The Animation	Ikoku Meiro no Croisee The Animation	Satelight	\n  	2011/07/04
722	Heaven's Memo Pad	Kamisama no Memochou	J.C.Staff	\n  	2011/07/10
724	Kaito Tenshi Twin Angel ~Kyun Kyun Tokimeki Paradise!!~	Kaitou Tenshi Tsuin Enjeru Kyun Kyun Tokimeki Paradise	J.C.Staff	\n  	2011/07/05
725	Kamisama Dolls	Kamisama Dooruzu	Brain's Base	\n  	2011/07/06
783	Level E	Reberu Ii	Studio Pierrot / David Production	In the present day, hundreds of extraterrestrial species walk the Earth. Some are pacifistic, others violent. Some are here for research purposes, others are career criminals. However, humans don't know they are here.Now, one more alien has arrived on Earth. One of the universe's foremost geniuses with a personality that's bound to attract all sorts of trouble.--MAL\n  	2011/01/11
784	Mitsudomoe Zouryouchuu!	Mitsudomoe Zouryouchuu!	Bridge	\n  	2011/01/09
1063	Blade and Soul	Bureido ando Souru 	Gonzo	\n  	2014/04/04
726	Manyuu Hikenchou	Manyuu Hikenchou	Hoods Entertainment	In this world tits means everything. It is currently the peaceful Edo-Era. It is a reign ruled by the  shogunate  . Inside this shogunate, there is a group of warriors that support the government. They are the Manyuu Clan ,who has the authority to control the qualifaction and bring most of the big tits .In this current era, breasts mean everything. If you have breasts, you are guaranteed wealth and popularity. If you lack them, you are rarely considered “human”. Members of the Manyuu Clan help raise the future big breasts. Written on a secret scroll possessed by the clan, there is said to be various techniques on how to grow big and beautiful breasts.Chifusa is to be successor of the clan. She was chosen mainly because she has an innate ability to take other women breast by magically slicing them ,transfering their breast girth to her own breast.(This anime doesn't show mutilated breast .The breast shrink with flashy effects when their sliced in this anime.). However, she takes the secret scroll and runs away with it, hoping to fight against the cruel world that the Manyuu Clan has created . \n  	2011/07/11
727	Mawaru Penguindrum	Mawaru Pingudoramu	Brain's Base	\n  	2011/07/08
728	Mayo Chiki!	Mayo Chiki!	Feel	\n  	2011/07/08
729	Morita-san is Silent	Morita-san wa Mukuchi	Teletama	\n  	2011/07/08
730	Natsume Yuujinchou San	Natsume Yuujinchou San	Brain's Base	Natsume's Book of Friends Three\n, the third season of the anime.Source:Wikipedia\n\n  	2011/07/05
871	Sword Art Online	soodo aato onrain	A-1 Pictures, Aniplex, Genco	A Virtual Reality Massive Multiplayer Online Role-Playing Game (VRMMORPG) called Sword Art Online is a game which became reality. Thats mean, if the're die in the game, they're die in the real world.And they can't logout. the one they can do to quit from the world is defeated the final boss in 100th floor.\n  	2012/07/07
872	Tanken Driland	Tanken Dorirando	Toei Animation	\n  	2012/07/07
731	No.6	Nanbaa Shikkusu	Bones	In a near future world, after the last great war, most of mankind lives in a handful of city states. There, for the privileged elite, life should be perfect. But for young Shion, the only thing perfect has been the nightmare his life has become since letting a strange boy called Rat spend the night in his apartment.Banished to the outskirts of the city and stripped of all privileges for helping the mysterious stranger who has since disappeared, Shion now finds himself in even worse danger as his inquiry into a new series of mysterious deaths results in his being arrested on suspicion of murder! But even as Shion is being sent to the city's Correctional Institute, the long-missing Rat reappears to rescue him! Now on the run, the two young men have only one chance at survival: uncover the mysterious secrets that lie at the sinister heart of No. 6!(Source: RightStuf)\n  	2011/07/08
732	Nura: Rise of the Yokai Clan 2 : Demon Capital	Nurarihyon no Mago: Sennen Makyou	Studio Deen	\n  	2011/07/05
733	R-15	Aarujuugo	AIC	\n  	2011/07/10
734	Sacred Seven	Seikuriddo Sebun	Sunrise	Alma Tandouji lives a lonely and solitary life in a certain port city within the Kantou region. One day, he is approached by Aiba Ruri who asks for his help, for the power of the Sacred Seven which resides within Alma. However, Alma turns her away. In the past, Alma had hurt people with that power. Since that moment, he had foresworn it. But when the peaceful city is attacked by a monster, Alma reluctantly decides to use the Sacred Seven. However, his powers go berserk and the situation becomes even more dire. At that moment, Ruri comes to his aid by inserting a sacred stone made using her jewel necklace and transform him to his true form.\n  	2011/07/03
735	The Everyday Tales of a Cat God	Nekogami Yaoyorozu	AIC	\n  	2011/07/09
736	The Mystic Archives of Dantalian	Dantarian no Shoka	GAINAX	\n  	2011/07/16
737	Towa no Quon Chapter 1: Fleeting Petals	Towa no Kuon Dai Ichi Shou Utakata no Kaben	Bones, Bandai Visual	\n  	2011/06/18
738	Uta no Prince-sama Maji Love 1000%	Uta no ☆ Purinsu-sama ♪ Maji Rabu 1000%	A-1 Pictures	With dreams of becoming a composer and someday writing a song for her favorite idol, Haruka Nanami enters the Saotome Academy, a prestigious performing arts school. If successful there, she'll be able to join the Shining Agency after graduation. However, it won't be so easy when Haruka is already surrounded by potential idols and composers. On top of that, her homeroom teacher is a current idol, the headmaster was a record-breaking singer, and the academy itself is a chaotic place where anything can happen. In the end at graduation, two students are to be paired up by the students' choice, one taking the idol role and the other the composer role. After being paired up, the "pair" will sing a song that was both composed, written and sung by the pair. If successful, the pair will join and take the spot as the new Shining Agency debut artists. To make things more difficult, romance is prohibited in the school! Which prince of song will be paired up with Haruka? Uta no Prince-sama is an exciting, coming-of-age romantic comedy.\n  	2011/07/03
739	Yuru Yuri	Yuruyuri	Dogakobo	\n  	2011/07/04
741	Ben-To	Ben-To	David Production	\n  	2011/10/09
742	C³ / C Cube / Cube×Cursed×Curious	Shiikyuubu	SILVER LINK	A school battle action & love comedy with ecchi elements. Yachi Haruaki is a high school boy and naturally resistant to curses. His father, Honatsu, sends him cursed instruments called "Worse" to try to break this. One day, Haruaki receives a black cube from Honatsu. During the night, he encounters a naked silver haired girl stealing rice crackers. She is the human-form of the black cube, an instrument of torture called "Fear in Cube". Haruaki and the girl 'Fear' fight together against other 'Worse' instruments and their owners using Fear's 32 mechanisms of torture.\n  	2011/10/01
743	Chibi Devi!	Chibi Debi!	Half H.P Studio	Sawada Honoka is a 14-year-old girl who is very timid. She easily gets bullied by other classmates. Honoka is a non-believer in God, Angels, and Devils. Though one day, a devil baby was dropped into her room while she was sleeping. What will Honoka believe in now?\n  	2011/10/10
744	Chihayafuru	Chihayafuru	Madhouse	\n  	2011/10/05
745	Fate Zero	 Feito/zero	ufotable	\n  	2010/10/02
746	Future Diary	Mirai Nikki	Asread	\n  	2011/10/09
747	Guilty Crown	Giruti Kuraun	Production I.G	A sci-fi story that revolves around main character Shu Ouma, a high school boy who unwittingly gains an ability called "The Power of the Kings" that enables him to extract items called "Voids" from other people. He is then thrown into a conflict between a quasi-governmental organization known as the GHQ and a resistance group called Funeral Parlor, that aims to restore Japan's independence from the GHQ. In the process, Shu has to deal with the burden of his newly possessed ability and the horrific mystery of his past. Source:Wikipedia\n\n  	2011/10/14
748	Hidamari Sketch x SP	Hidamari Sukecchi Supesharu	Shaft	\n  	2011/10/30
749	Horizon on / in the Middle of Nowhere	Kyoukai Senjou No Horizon	Sunrise	\n  	2011/10/02
839	You and Me. 2	Kimi to Boku. 2	J.C.Staff	\n  	2012/04/03
750	Hunter x Hunter (Series)	Hantaa Hantaa	Nippon Animation, Madhouse	Hunter × Hunter (ハンター×ハンター), is a Japanese manga series written and illustrated by Yoshihiro Togashi. As of April 2012, 320 chapters have been published in 30 tankōbon (chapter collections) in Japan. However, the manga has frequently gone on hiatus since 2006. In 1999, the manga series was adapted into a 62-episode television anime series produced by Nippon Animation and directed by Kazuhiro Furuhashi. Three separate original video animations (OVAs) totaling 30 episodes were subsequently produced by Nippon Animation and released in Japan from 2002 to 2004. A second anime television series\n by Madhouse began airing on Nippon Television in October 2011. An upcoming anime film adaptation, featuring an original story, was also announced in March 2012. Apart from these, there are also numerous audio albums, video games, musicals and other media based on Hunter × Hunter.Story:The story focuses on a young boy named Gon, who discovers that his father, whom he was told was dead, is actually alive and well. He learns that his father, Ging, is a world-renowned Hunter: a licensed profession for those who specialize in fantastic pursuits such as locating rare or unidentified animal species, treasure hunting, surveying unexplored enclaves, or hunting down lawless individuals. Despite Ging having left his son with his relatives in order to pursue his own dreams, Gon departs upon a journey to follow in his father's footsteps, pass the rigorous Hunter Examination, and eventually find his father. Along the way, Gon meets various other kinds of Hunters and also encounters the paranormal. Source:Wikipedia\n\n\n  	1999/10/16
751	I Don't Have Many Friends	Boku wa Tomodachi ga Sukunai / Haganai	AIC Build	\n  	2011/10/06
977	Chronicles of the Going Home Club	Kitakubu Katsudou Kiroku	Nomad	\n  	2013/07/05
978	Fantasista Doll	Fantajisuta Doru	Hoods Entertainment	\n  	2013/07/06
979	Fate/kaleid liner Prisma Illya	Feito/ kaleid rainaa purizuma ☆ Iriya	Silver Link	\n  	2013/07/06
1080	La Corda d'Oro Blue Sky	Kin-iro no Corda Blue Sky	TYO Animations	\n  	2014/04/06
752	Last Exile: Fam, the Silver Wing	Last Exile: Ginyoku no Fam	Gonzo	Taking place two years after the events of Last Exile\n, the new series is set in another world where there is a war with the powerful Ades Federation\n conquering the Kingdom of Turan\n. The titular protagonist Fam Fan Fan\n and her friend Giselle Collette\n are Sky Pirates who get involved in the war when they rescue Princess Millia\n of the Turan Kingdom.Making appearances from the previous storyline too are Tatiania, Alister, Vincent and Dio.Source:WikipediaOfficial wallpapers and Twitter icons: http://www.lastexile-fam.com/present.html\n\n  	2011/10/15
753	Love me Seriously!	Maji de Watashi ni Koi Shinasai!	Lerche	\n  	2011/10/02
754	Maken-Ki!	Maken-Ki !	AIC	Based on the manga series by Hiromitsu Takeda, this romantic comedy is about Takeru Ohyama, a typical perverted teenage boy. His new school doesn't require entrance exams, and it just turned co-ed! Unfortunately, his dreams of a happy high school life are dashed when he finds out the school is much more than it seems. All of the students wield a special item—a Maken—to unleash their magical abilities in duels! Can Takeru find a Maken that works for him? Even while trying to fit in at a new school and dealing with all kinds of girl problems?\n  	2011/10/05
755	Mashiro-iro Symphony: The Color of Lovers	Mashiroiro Shinfoni	Manglobe	\n  	2011/10/05
756	Mobile Suit Gundam AGE	Kidou Senshi Gundam AGE	Sunrise	\n  	2011/10/09
757	Persona 4: The Animation	Persona 4: The Animation	Aniplex	\n  	2011/10/07
758	Phi Brain: Puzzle of God	Phi Brain: Kami no Puzzle	Sunrise	\n  	2011/10/02
759	Scryed Alteration I: Tao	sukuraido orutareesion zenpen TAO 	Sunrise	\n  	2011/10/19
760	Sekaiichi Hatsukoi 2	Sekaiichi Hatsukoi 2	Studio Deen	\n  	2011/10/07
761	Shakugan no Shana III -Final-	Shakugan no Shana Fainaru	Geneon Universal Entertainment	\n  	2011/10/08
762	Squid Girl 2	Shinryaku!? Ika Musume	Diomedea	\n  	2011/09/26
763	Tamayura: Hitotose	Tamayura : Hitotose	Hal Film Maker	\n  	2011/10/03
764	UN-GO	Ango	Bones	\n  	2011/10/14
765	Working!! 2	Waakingu'!!	Aniplex	\n  	2011/10/01
766	You and Me.	Kimi to Boku,	Aniplex	\n  	2011/10/04
767	Baby Princess 3D Paradise 0 (Love)	Beibii Purinsesu Surii Dii Paradaisu Zero Rabu	Studio Comet	\n  	2011/07/20
769	Bakugan: Mechtanium Surge	Bakugan Batoru Burouraazu Mekutaniumu Saaji	TMS Entertainment	\n  	2011/02/13
770	Beelzebub	Beruzebabu	Studio Pierrot	The story follows Oga Tatsumi, a first year in Ishiyama High, who has been chosen to raise a baby boy, Beelzebub (aka Beel or Berebo), who is the son of the great demon king, along with the baby's maid Hilda. As Oga attempts to 'pass on' Baby Beel to other stronger students at Ishiyama High, he crosses paths with the Touhoushinki (Ishiyama's strongest four)and their story ensues.Source: Wikipedia\n\n  	2011/01/09
772	Cardfight!! Vanguard	Cardfight!! Vanguard	TMS Entertainment	\n  	2011/01/08
773	Dragon Crisis!	Doragon Kuraishisu!	Studio Deen	A normal high school boy Ryūji Kisaragi's peaceful life is turned into an adventure by the return of his second cousin, Eriko. Ryūji and Eriko seize a relic box from a black market broker named FANG. In the box, they find a red dragon girl whom Ryūji names Rose because of her rose like pattern on her left hand. In order to protect Rose from the black organization, Ryūji decides to fight using his power as a breaker.\n\n\n  	2011/01/11
774	Dream Eater Merry	Yumekui Merry	J.C.Staff	\n  	2011/01/07
775	Fractale	Furakutaru	A-1 Pictures	\n  	2011/01/14
776	Freezing	Furiijingu	A.C.G.T	Set in a slightly futuristic world where Earth has been invaded and is at war with aliens from another dimension called the Nova, the story follows the adventures of a Japanese boy named Kazuya Aoi who enrolls for training at a special school for genetically modified girls called Pandoras who battle the aliens, and their male partners, called Limiters, who use a special power called "freezing" to limit their opponent's mobility. The protagonist makes the acquaintance of an unusual older girl named Bridgette L. Satellizer who appears to be the most powerful Pandora in her class, but has not yet chosen a male partner to be her Limiter, and in spite of the warnings of all his friends, he decides to be her Limiter.\n  	2011/01/10
777	From Me to You 2nd Season	Kimi ni todoke 2nd Season	Production I.G	\n  	2011/01/12
779	I Don't Like You at All, Big Brother!	Oniichan no Koto Nanka Zenzen Suki Janain Dakara ne!!	Zexcs	\n  	2011/01/09
780	Infinite Stratos	Infinitto Sutoratosu	8-Bit	\n  	2011/01/07
781	Is This a Zombie?	Kore wa Zombie desu ka?	Studio Deen	\n  	2011/01/11
782	Lesbian Citizen Naoko-san	Yuri Seijin Naoko-san	ufotable	\n  	2010/12/18
840	Yurumates3Dei Plus	Yurumates 3D (Yurumate3Dei)	CSC	\n  	2012/04/02
841	Zetman	Zettoman	TMS Entertainment	\n  	2012/04/03
786	Puella Magi Madoka Magica	Mahou Shoujo Madoka ★ Magika	Shaft	In the city of Mitakihara, a 14-year old girl named Madoka Kaname and her best friend Sayaka Miki are approached by a strange familiar named Kyubey. This creature offers a contract in which a girl can have any wish granted in exchange for becoming a magical girl tasked with fighting against Witches, manifestations of despair that are responsible for unexplained murders and suicides. Meanwhile, a transfer student named Homura Akemi tries to stop Madoka from becoming a magical girl at all costs. As Madoka contemplates becoming a magical girl, she learns that a magical girl's life isn't as glamorous as she thought and is filled with anguish, suffering and despair. Soon coming to learn the dark secrets between magical girls and witches and the burden it places on her friends, Madoka struggles to decide if there really is a wish worth risking her life for.The spin-off manga, Puella Magi Kazumi Magica: The Innocent Malice, takes place in Asunaru City and follows an amnesiac magical girl named Kazumi who, along with a band of other magical girls known as the Pleiades Saints, starts to discover the dark nature of magical girls as she regains her memories. Puella Magi Oriko Magica takes place in an alternate timeline to the main series, in which Homura, Mami Tomoe and Kyōko Sakura, along with a young orphaned girl named Yuma Chitose who was abused as a child by her mother, find themselves up against a magical girl pair, Oriko Mikuni and Kirika Kure, who are hunting other magical girls. The prequel story, Puella Magi Oriko Magica: Noisy Citrine, follows Kirka as she starts out being a magical girl and has an encounter with her old childhood friend, Erika. Puella Magi Madoka Magica: The Different Story also takes place in an alternate timeline, mainly focusing on Mami's relationships with the other magical girls.\n  	2011/01/07
787	Rio: Rainbow Gate!	Rio: Reinbou Geeto	Xebec	In an island casino called the Howard Resort (ハワードリゾート Hawādo Rizōto?), Rio Rollins is a popular casino dealer with the ability to bring good luck to gamblers just by walking past them, earning her the nickname "The Goddess of Victory". Mint Clark, a young child, comes to the Howard Resort with her grandfather and encounters Rio, and the two become the best of friends.Rio's life soon changes when it is revealed that she is a "Gate Holder", a dealer who holds one of the 13 legendary cards called "Gates", and whoever collects them all will be named "Most Valuable Casino Dealer" (MVCD). To collect all 13 Gates, Rio must take part in special matches called "Gate Battles" with other Gate Holders and gain their Gates to become the most valuable casino dealer in the world.\n  	2011/01/04
788	Sket Dance	Suketto Dansu	Tatsunoko Production	\n  	2011/04/07
789	Starry Sky	Sutaarii Sukai	Frontier Works	\n  	2010/12/23
790	Suite Pretty Cure♪	Suiito Purikyua♪ / Suite Precure ♪	Toei Animation	Hibiki and Kanade are two friends who grew up together in Kanon Town. Very different in their personalities, they share one thing in common: A connection to music. No matter how different they are or how much their differences cause them to quarrel, they both continue to share loving hearts. One day they meet Hummy, who is sent to the Human World from Major Land to collect the scattered notes of the Melody of Happiness. They have to instantly transform into Pretty Cures to resist the threats and evil music from Mephisto. Can they stop the Melody of Sorrow from disrupting their peaceful town, and can their warped friendship measure up to the bonds of Pretty Cure?\n  	2011/02/06
791	Wandering Son	Hourou Musuko	AIC Classic	\n  	2011/01/14
792	Wish Upon the Pleiades	Houkago no Pleiades / Houkago no Pureadesu	Gainax	\n  	2011/02/01
793	A Letter to Momo	Momo e no Tegami	Production I.G	\n  	2012/04/21
794	A town where you live	Kimi no Iru Machi	Tatsunoko Production	\n  	2012/03/16
795	Accel World	Akuseru Waarudo	Sunrise	\n  	2012/04/07
796	Acchi Kocchi	Acchi Kocchi	AIC	\n  	2012/04/06
797	Ai Mai! Moe Can Change!	Ai Mai! Moe can chenji!	Frontier Works	The OVA adaptation Moe Can Change! is created by Frontier Works, based on a free-to-play game developed by Ambition for mobile phones. The original "playful bishoujo Miroid-raising / clothes-changing moe game" has the player joining a beta test program for androids, who the player must raise and dress up as girls.\n  	2012/05/25
798	AKB0048	Eekeebiizerozerofootieito	Satelight	\n  	2012/04/29
801	Eureka Seven AO	Eureka Sebun Ei Oo	Bones	Eureka Seven: AO (エウレカセブン:AO "Astral Ocean")\n is a 2012 Japanese mecha anime television series by Bones, serving as a sequel to the original Eureka Seven\n anime. AO tells the story of Ao Fukai\n, a young boy who "sets destiny in motion again when he held the power." It is being adapted into both an anime and a manga.Plot:Ao Fukai is a 13-year-old boy living in the year 2025 in Okinawa on the island of Iwato Jima with Dr. Toshio Fukai ever since Ao's mother Eureka disappeared 10 years ago. When a mysterious organization attacks the local Scub Coral, Ao somehow gets mixed up in the battle and manages to activate an enigmatic robot called the Nirvash while it is being transported by the Self-Defense Forces. Later, Ao finds out that the Nirvash belonged to Eureka, and embarks on a journey to find his mother and learn the truth about his origins.Source:Wikipedia\n\n  	2012/04/12
803	Fate Zero 2	Feito/zero	ufotable	\n  	2012/04/06
804	Ginga e Kickoff!! 	Ginga he Kikkuofu!!	TYO Animations	\n  	2012/04/07
805	Hiiro no Kakera	Hiiro no Kakera	Studio Deen	The protagonist is a teenage girl (Tamaki) who revisits a small village she remembers from her childhood and gets caught up in her family's history and the supernatural dangers surrounding it. While walking along the hillsides waiting for the person who her grandmother sent to fetch Tamaki to the village, Tamaki comes across a small, white round object with sticks for limbs and talks. It runs off soon after with Tamaki chasing after it. Soon Tamaki finds herself in a place where "it does not feel like the world I came from." She gets attacked by three slime creatures, and a male comes charging in to save her by clamping his hands around her body and mouth then telling her to be quiet. After the young man (Takuma) saves her he walks her to the village where her grandmother is staying. Soon after her arrival she meets with her grandmother. It's later explained that she has to continue the role of ancestor princess (Tamayori), to seal the sword Onikirimaru with the help of her five guardians.\n  	2012/03/06
809	Is This a Zombie? of the Dead / Hell Chapter	Kore wa Zombie Desu ka? Obu za Deddo / Jigokuhen 	Studio Deen	\n  	2012/04/05
810	Jewelpet Kira☆Deco!	Juerupetto Kira☆deko—!	Studio Comet	\n  	2012/04/07
812	Kids on the Slope	Sakamichi no Aporon	Tezuka Productions	\n  	2012/04/13
813	Koi-ken! Watashi-tachi Anime ni Nacchatta!	Koi-ken! Watashi-tachi Anime ni Nacchatta!	Marvy Jack	The web anime Koi-ken! is created by studio Marvy Jack, based on a mobile dating-sim game that depicts the campus life of members of Renai Kenkyuukai (The Society for the Study of Romance) or "Koi-ken". The protagonist's "extremely ordinary" high school life changes overnight when he encounters Kaede, a girl who is returning from living abroad and transferring into the school. (based on ANN synopsis)\n  	2012/03/01
814	Kuro Majo-san ga Tooru!!	Kuromajosan ga Tooru!!	Shin-ei Animation	The TV anime series Kuromajo-san ga Touru!! is created by studio Shin-Ei Animation, based on a series of children's novels written by Hiroshi Ishizaki. The story follows a somewhat cynical fifth-grade schoolgirl named Chiyoko Kurotori, or "Choco". She is training to become a black witch, with the help of the magical world's most ardent instructor, Gubid.\n  	2012/04/04
815	Kuroko's Basketball	Kuroko no Basuke	Production I.G	\n  	2012/04/08
817	Medaka Box	Medaka Bokkusu	Gainax	\n  	2012/04/04
818	Metal Fight Beyblade Zero-G / Beyblade: Shogun Steel	Metarufaitobeiburedo Zero-G	PNelvana	Seven years have passed since the God of Destruction (Nemisis) met his end at the hands of a great Blader. A new era of Beyblade has begun, bringing with it new Blades. When Zyro Kurogane witnessed the final battle with the lord of destruction years ago, a fire began to burn within him to push forward to a new future. While Zyro is the champion in his hometown, he wants to test himself and seeks out greater opponents, heading to Metal Bey City, Gingka's hometown. When Zyro arrives and discovers that Gingka is nowhere to be found, he learns that Bladers from all over the world have come to test themselves against the Zero Gravity Bey stadium. Wanting to push his skills forward, Zyro takes part in the new era of Beyblade, testing his might against the Zero Gravity stadiums.\n\n  	2012/04/08
819	Mysterious Girlfriend X	Nazo no Kanojo X	Hoods Entertainment	\n  	2012/04/08
1081	Lady Jewelpet	Redi Juerupetto	Zexcs	\n  	2014/04/05
822	Niji-iro Hotaru: Eien no Natsu Yasumi	Nijiiro Hotaru Eien no Natsu Yasumi	Toei Animation	Yuuta was 12-year-old boy, who had lost his father in the traffic accident one year ago. In the summer vacation, he visited a deserted dam deep in the mountains, where he had a good time with his father before. Suddenly a thunder storm occurred and he slipped on the ground. He lost consciousness and woke up to find a girl and an unfamiliar village. He time-traveled 30 years and reached a village, which sank at the bottom of the dam. This is Yuuta's precious memory of "another" summer vacation.\n  	2012/05/19
823	Nyaruko: Crawling With Love	Haiyore! Nyaruko-san	Xebec	"I'm Nyarlathotep, the creeping chaos always smiling beside you." But you can call her Nyaruko for short. One by one, the Great Ones from the Cthulhu mythos are coming to earth to target Nyaruko and her human friend Mahiro. He's utterly clueless about the true nature of his cosmic conflict and just wants to live in peace\n  	2012/04/10
824	Ozuma	Ozuma	LandQ studios	Ozma (オズマ, romaji Ozuma, stylized as OZMA) is a 2012 Japanese anime television series written by Leiji Matsumoto.The story is set on Earth in the future when abnormal activity on the sun devastates Earth's atmosphere and covers the entire planet in a sea of sand. Sam pursues Ozma, an enemy of his brother. One day, Sam encounters Maya, who is being chased by the Theseus army.\n  	2012/03/16
825	Phi Brain: Puzzle of God 2	Phi Brain: Kami no Puzzle	Sunrise	\n  	2012/04/08
826	Polar Bear's Cafe	Shirokuma Cafe	Studio Pierrot	The TV anime series Shirokuma Café is based on Aloha Higa's gag comedy manga about the daily life of penguins, grizzly bears, and other animals at a café run by a polar bear. \n  	2012/04/05
827	Pretty Rhythm: Dear My Future	Puritii Rizumu: Dia Mai Fuyuuchaa	TV Tokyo	The franchise takes place in a world where Prism Shows, performances that are a combination of singing, dancing, fashion, and ice skating, are popular. The skaters, known as Prism Stars, use Prism Stones to coordinate their dresses and perform Prism Jumps to appeal to their fans.Dear My Future takes place three years after Aurora Dream and follows a new idol, Mia Ageha, who aspires to become a greater idol than Aira. Forming her own group, Prizmmy☆, alongside her friends Reina, Karin and Ayami, she works hard fervently to reach her goal and fulfill her dream.\n  	2012/04/07
828	Queen's Blade: Rebellion 	Kuiinzu Bureido Riberion	Arms	\n  	2012/04/03
829	Recorder to Ransell Re	Rekoodee to Randoseru Re♪	Seven	The second season of the TV anime Recorder to Randoseru continues this series created by studio Seven, based on Meme Higashiya's 4-koma manga about Atsushi Miyagawa and his sister Atsumi Miyagawa. In the original story, Atsushi looks like an adult at 180 centimeters (71 inches) tall, but he is actually an elementary school boy. Atsumi looks like a little girl at 137 centimeters (54 inches) tall, but she is actually in high school.\n  	2012/04/06
830	Saint Seiya Omega	Seinto Seiya Omega	Toei Animation	Saint Seiya Omega (聖闘士星矢Ω（セイントセイヤオメガ） Seinto Seiya Omega, stylized as Saint Seiya Ω) is an anime series produced by Toei Animation. It is a spin-off based on the Saint Seiya manga series written and illustrated by Masami Kurumada, produced in commemoration of the 25th anniversary of the franchise. The series began broadcasting in Japan on TV Asahi on April 1, 2012. It is being directed by Morio Hatano (his debut as series director), with animation character designs by illustrator and animator Yoshihiko Umakoshi, known for performing the same duties on Street Fighter Alpha: The Animation, HeartCatch PreCure! and Casshern Sins.Toei Animation describes it as an "original anime story", separate from the continuity of Kurumada's manga. Original Saint Seiya author Kurumada is not involved in the creative process of Omega, thus he is credited as the original creator of the series' concept.It has been confirmed that Omega has been renewed for a second season, that will start airing in April 2013.The storyline of Omega takes place 25 years after the Holy Wars of the 20th century narrated in the original manga and its anime adaptation. The goddess Athena is still on Earth after reincarnating to continue her duty of protecting peace on Earth against several antagonistic deities. Athena and a new generation of Saints prepare to face a new menace that lurks in this new era, in which Pegasus Seiya, the protagonist of Kurumada's manga, is revered as a Saint of legend.\n\n\n  	2012/04/01
832	Sankarea	Sankarea	Studio Deen	\n  	2012/04/06
833	Scryed Alteration II: Quan	sukuraido orutareesion zenpen QUAN	Sunrise	\n  	2012/03/10
834	Sengoku Collection	Sengoku Korekushon	Brain's Base	\n  	2012/04/06
835	Shining Hearts - Shiawase no Pan	Shainingu Haatsu - Shiawase no Pan	Production I.G	\n  	2012/04/13
836	Space Brothers	Uchuu Kyoudai	A-1 Pictures	\n  	2012/04/01
837	Tsuritama	Tsuritama	A-1 Pictures	\n  	2012/04/13
838	Upotte!	Upotte	Xebec	A teacher is looking for a school by the name of Seishou Academy, as he is a new transfer teacher for that school. Seishou Academy is known for having students with excellent marksmanship. However, he gets lost along the way and decides to look for someone who knows where the school is at a summer festival. He encounters a girl at a shooting range and finds her marksmanship skills to be professional. The girl tells the new teacher that she is an assault rifle, not a student. Her name is FNC and is an assault rifle of Seishou Academy. The new teacher attends school the next day to find students, including FNC, practicing shooting M16s and realizes that he has come to an unbelievable school. How will his experience be at Seishou Academy?\n  	2012/04/07
842	Aesthetica of a Rogue Hero	Hagure Yuusha no Estetica / Aesthetica	Arms	\n  	2012/07/06
861	Love, Election and Chocolate	Koi to Senkyo to Chokoreeto	AIC	Koi to Senkyo to Chocolate follows the protagonist Yuuki Oojima, who attends Private Takafuji Academy, a large school with over 6,000 students. Yuuki is a member of the food research club, along with seven others, including his childhood friend Chisato Sumiyoshi. The members leisurely spend their time in the club not participating in many activities. When the election of the next student council president comes up, the front runner, Satsuki Shinonome, proposes that clubs with no merit should be separated and subsequently abolished. The food research club, in an act of desperation, seeks advice from the current student council president, Yakumo Mori, who suggests Yuuki run in the election as an opposing candidate. Yuuki learns about the issues facing the school and decides to run in the election.\n  	2012/07/06
843	Arve Rezzle: Kikaijikake no Yoseitachi	Aruvu Rezuru: Kikai Jikake no Yousei-tachi 	Zexcs	A cyber battle sci-fi. In 2022, the technology of quantum computing has greatly advanced and many people have transfered their mind into the cyber space.Remu's sister-in-law, Shiki, skipped grades and entered a high school in the academic city "Okinotori-island Mega Float City (OMFC)" when she was 14. One day, Shiki confessed to her brother via Skype that she was talking to him directly from the cyber space and her real body had been kept in a water tank filled with a culture medium. It's called "Body pool" and Shiki connected to the network by nanomachines implanted in her brain.Remu was surprised but he accepted her decision until an accident called "Early Rupture" happened. The network server got overloaded and users' minds were lost in cyber space leaving soulless living bodies in the Body Pools. In order to bring Shiki's mind back, Remu visits her apartment in OMFC and there meets Shiki escaped from the hospital. But the girl tells him that she is not Shiki and she happens to haven taken over Shiki's body.When Remu tries to figure out the situation, a violent attack strikes the apartment.-MAL\n  	2013/03/02
844	Blood-C: The Last Dark	Gekijouban Buraddo Shii - Za Rasuto Daaku	Production I.G	\n  	2012/06/02
845	Campione!	Kampioone !	Diomedea	It based on a Japanese light novel series by Jō Taketsuki. The main character, Kusanagi Godo (16) killed God Verethragna then when he was 15, he acquired the title of "Campione" (God Killer) after that. Godo had fought with Italian Girl named Erica Brandelli (16), who is a "Great Knight" of "Bronze Black Cross", kind of magic society. Godo involved his skill in battles against other Campiones and the Gods eventhough he doesn't like to fight. \n  	2012/07/06
846	Chitose Get You!!	Chitose Gecchu!!	Silver Link	Chitose Get You!! (ちとせげっちゅ!! Chitose Gecchu!!?) is a Japanese yonkoma manga series written and illustrated by Etsuya Mashima. An anime series by Silver Link began airing in July 1, 2012.[1][2]\n  	2012/07/01
847	Chouyaku Hyakunin isshu: UtaKoi.	Chouyaku Hyakunin isshu: Uta Koi.	TYO Animations	\n  	2012/07/03
848	Code Geass: Akito the Exiled	Koudo Giasu: Boukoku no Akito	Sunrise	\n  	2012/08/04
849	Dog Days'	Doggu Deizu'	Seven Arcs	In the land of Fronaldo, the Republic of Biscotti has been aggressively attacked by the Lion Kingdom of Galette. Facing potential defeat, Princess Millhiore summons a hero who can save the country. What she gets is Izumi Shinku, a middle-school boy from Japan. Awaiting him in Fronaldo is the task of becoming hero enough to defeat his enemies while learning the peculiar rules of battle in this strange new world.\n  	2012/07/07
850	Ebiten ~Ebisugawa Public High School Astronomical Club~	Ebiten: Kouritsu Ebisugawa Koukou Tenmonbu	AIC Classic	Itsuki Noya is a new student at Ebisugawa High School. He has an interest in astronomy so decides to join the Astronomy Club (天文部 tenmon-bu?). However, he mistakenly joins the similarly named Astronomical Club (天悶部 tenmon-bu?): a club for female otaku with fujoshi interests.from wikipedia\n  	2012/07/14
851	Good Luck Girl!	Binbougami ga!	Sunrise	Also known as The Good Luck Girl, the story centers around Ichigo Sakura, who has extraordinary good luck. In order to keep the balance of life, a goddess of misfortune named Momiji comes into Ichigo's life to steal her fortune energy. \n  	2012/07/04
852	Guilty Crown:  Lost Christmas	Girutii Kuraun Rosuto Kurisumasu		* A prequel to the original anime project Guilty Crown\n.Set in Japan 10 years before the start of the main storyline, during the events of the Lost Christmas\n incident. The main character, codenamed Scrooge\n, has been the subject of many experiments over the years along with many others. While on the run he came into contact with Carol, another test subject, and the two escaped together. Soon after they meet a girl called Present, who's fate is somehow intertwined with Scrooge and Carol's.Note: A DVD with an animated short bundled with the limited edition of the PC game Guilty Crown Lost Xmas\n.\n  	2012/07/26
853	Hakuouki Reimeiroku	Hakuouki Reimeiroku	Studio Deen	The 3rd season of the anime of Hakuouki\n. \n  	2012/07/09
854	Horizon on / in the Middle of Nowhere 2	Kyoukai Senjou no Horizon II	Sunrise	Taking advantage of the opportunity that the Mikawa Conflict provides, Tori and his comrades attempt to rescue Horizon from the Testament Union. But even as the Floating City Musashi speeds towards its next destination, the Floating Island England, Tres España is preparing its own armada for war against the British Islanders. Now, as the quest of Horizon's emotions builds to its climax, Tori's new battle is about to begin in the land ruled by the Fairy Queen! The reenactment of the history described in the mysterious Testament continues as the secret of the Armor of Deadly Sins is unleashed in the spectacular second season of Horizon in the Middle of Nowhere!(Source: Sentai Filmworks) \n  	2012/07/07
911	Teekyu	Teekyuu / Teekyuu	MAPPA	\n  	2012/10/07
895	Jormungand: Perfect Order	Jormungand: Perfect Order	White Fox	\n  	2012/10/03
896	K	K Project	GoHands	K\n is a 2012 anime series animated by the studio GoHands and directed by Shingo Suzuki, who also serves as the character designer for the series. A manga prequel called K: Memory of Red\n, drawn by Yui Kuroe has been serialized since May 28, 2012. Another prequel manga, K: Stray Dog Story\n also began running on November 2012. Furthermore, two light novels, called K Side:Blue\n and K Side:Red\n, were released in October and November 2012.Story:A contemporary Japan ruled by the seven kings and their clans.An ordinary high school student, Isana Yashiro\n, while tasked with helping out with the school festival, was suddenly attacked by men with red aura, accused for shooting one of the members of the Red Clan, HOMURA, and being targeted by its members for revenge. Driven into a desperate situation, Yashiro was saved by Yatogami\n, the Black Hound\n, a highly skilled swordsman on a mission to hunt down Yashiro on behalf of his late King and master, Ichigen Miwa. To prove his "innocence" and uncover the enshrouded mystery, he is accompanied by Neko\n and Yatogami.The producers also green lit seson 2 of the anime.Source:Wikipedia\n\n  	2012/10/05
897	Kamisama Kiss	Kamisama Hajimemashita	TMS Entertainment	\n  	2012/10/02
899	Little Busters!	Ritoru Basutazu!	J.C.Staff	\n  	2012/10/06
863	Muv-Luv Alternative: Total Eclipse	Maburavu Orutaneitivu Tootaru Ikuripusu	Satelight	Since 1973, an invasion of aliens known as BETA upon Earth is driving human civilization into nearly collapse. Facing an enormous mass of enemy force, mankind has developed large humanoid arms called as Tactical Surface Fighters and deployed them to its defense lines through out the world. However, all those efforts could slow down defeats but could not stop BETA, and mankind is forced to abandon major area of the Eurasian Continent. For 30 years, mankind is bogged down in an endless war against BETA without any hopes of victory.In 2001, the Imperial Japan faces difficulties in the development of a next-generation main Tactical Surface Fighters (TSF) as it defends the front lines of the Far East. The UN has proposed a joint development program between the Imperial Japan and the United States as a part of its international mutual development project of TSF, the Prominence Project.Yui Takamura, a surface pilot of the Imperial Royal Guards of Japan, is given responsibility for the project and sets off to Alaska. Meanwhile, Yuya Bridges, also a surface pilot of the US Army, was heading to the same destination.Yet they never knew that their encounter would change their destiny drastically.This story with exciting human dramas and robot actions takes place in the development of a new Tactical Surface Fighters, the most important and effective weapons against BETA, at a crisis of human extinction.(Source: Muv-Luv Total Eclipse Official English Website)\n  	2012/07/02
865	Natsuyuki Rendezvous	Natsuyuki	Dogakobo	\n  	2012/07/05
866	Pokemon the Movie: Kyurem VS. The Sword of Justice	Gekijoban Pocket Monster Best Wishes! Kyurem Vs Seikenshi Keldeo	Mushi Production / Tezuka Productions	\n  	2012/07/14
867	Rakugo Girls	Joshiraku	J.C.Staff	Marii, Kigurumi, Tetora, Kukuru, and Gankyō are apprentices at a Rakugo theater, a classic form of Japanese comedy. When they're not on the stage, they're making random banter about everyday life, from the reason the kanji for "dog" is the way it is, to the confusing signs that lead to Akihabara.source: ANN\n  	2012/07/05
868	Road to Ninja: Naruto the Movie	Gekijoban Naruto: Rodo tu Ninja	Toho	\n  	2012/07/28
869	See Me After Class	Asa made Jugyou Chu!	GoHands	\n  	2012/06/23
874	The Ambition of Oda Nobuna	Oda Nobuna no Yabou	Studio Gokumi	The Ambition of Oda Nobuna (織田信奈の野望)\n is a Japanese light novel series written by Mikage Kasuga and illustrated by Miyama-Zero, that was adapted into an anime television series that premiered in July 2012 and currently ongoing.Plot:Suddenly finding himself in the Sengoku era, regular high school student Yoshiharu Sagara\n is about to be killed in the battlefield. He is saved by none other than the man who later becomes the respected Hideyoshi Toyotomi, though at a cost to the latter's life. With history completely changed because of Yoshiharu’s actions, he tries to make things right again. However, history takes a different course than the one he learned and Yoshiharu meets a brilliant but young girl named, Nobuna Oda. Yoshiharu starts working under her command to bring back history to its correct course and find his way back home to the present world.Source:Wikipedia\n\n  	2012/07/09
875	The Life of Guskou Budori (2012)	Guskou Budori no Denki (2012)	Tezuka Productions	\n  	2012/07/07
876	The Maidens Are Falling in Love With Me: Two Elders	Otome wa Boku ni Koishiteru: Futari no Elder	Silver Link	\n  	2012/08/29
877	The Wolf Children Ame and Yuki	Ookami Kodomo no Ame to Yuki	Madhouse	\n  	2012/07/21
878	Tight Rope	Taitoroupu	Prime Time	\n  	2012/05/30
879	Yuru Yuri ♪♪ (2)	YuruYuri♪♪	Dogakobo	\n  	2012/07/02
880	Aikatsu!	Aikatsu!	Sunrise	\n  	2012/09/03
881	Armored War Goddess	Busou Shinki	8bit	\n  	2012/10/05
882	Battle Spirits: Sword Eyes	Battle Spirits: Sword Eyes	Sunrise	\n  	2012/09/09
883	Blast of Tempest	Zetsuen no Tempest: The Civilization Blaster	Bones	Zetsuen No Tempest (絶園のテンペスト Zetsuen no Tenpesuto) is a Japanese manga series written by Kyō Shirodaira and illustrated by Arihide Sano and Ren Saizaki. An anime adaptation by Bones began airing on October 4, 2012. It has been licensed by Aniplex USA in North America and by Madman Entertainment in Australia.The story revolves around Mahiro Fuwa, a teenager whose sister was mysteriously murdered one year before, and his friend Yoshino Takigawa. Mahiro is contacted by Hakaze Kusaribe, the leader of the Kusaribe clan who was left stranded on an unknown deserted island by her followers, and agrees to help Hakaze in exchange for her help to find out the culprit for the death of his family. Upon learning of his friend's intentions, Yoshino joins him on his quest to stand against the Kusaribe clan who intends to awaken the "Tree of Exodus" whose power can bring ruin to the entire world.Several dialogues and plot elements in Zetsuen no Tempest pay homage to two works of William Shakespeare, Hamlet and The Tempest, which coincidentally are two stories about retribution, albeit with completely opposing outcomes.\n\n\n  	2012/10/05
884	Btooom!	Butuumu!	Madhouse	\n  	2012/10/04
885	Chou Soku Henkei Gyrozetter	Chou Soku Jairozettaa	A-1 Pictures	\n  	2012/10/02
886	Code:Breaker	Koudo:Bureikaa	Kinema Citrus	\n  	2012/10/07
887	Cross Fight B-Daman eS	Kurosu faito Biidaman eS 	Synergy	\n  	2012/10/07
889	From the New World	Shinsekai yori	A-1 Pictures	\n  	2012/09/29
912	The Pet Girl of Sakurasou	Sakurasou no Pet na Kanojo	J.C.Staff	\n  	2012/10/09
913	This Boy Caught a Merman	Kono Danshi, Ningyo Hiroimashita.	CoMix Wave	\n  	2012/11/09
890	Girls und Panzer	Girls und Panzer	Actas	Girls und Panzer\n is set in a world where the art of operating tanks (戦車道 Sensha-dō\n) is a common traditional skill for girls. Miho Nishizumi, the story's protagonist, comes from a family with a long history of tank operation and she moves to Oarai Girl's High School to escape the world of tanks. However, when her past catches up to her, the student council president orders Miho to participate in the upcoming Sensha-dō\n national championship.Note: The Oarai Girl's High School tanks have been added to assign which member to what team, what position on said team, and they were the only tanks given names.  All others had designations, such as: Team A-15; or Team B-8.\n\n  	2012/10/09
891	Haitai Nanafa	Haitai Nana Fa	 Passione	Nanafa Kyan lives in Okinawa with her grandmother who runs the "Kame Soba" soba shop, her beautiful older sister Nao who is in high school, and her younger sister Kokona, who is in elementary school and has a strong ability to sense the supernatural.One day, Nanafa witnesses a seal fall off of a Chinese banyan tree, and three spirits who live in that tree are unleashed. These spirits include Niina and Raana, who are "jimunaa" spirits. The third spirit is Iina, who is an incarnation of an Okinawan lion statue. As spirits start appearing one after another, the peaceful life of Nanafa and her family begins to change.\n  	2012/10/06
893	In the Center of the Blue World	Aoi Sekai no Chuushin de	Fifth Avenue	\n  	2012/10/20
894	Ixion Saga: Dimensional Transfer	Ixion Saga DT	Brain's Base	\n  	2012/10/08
900	Love, Chunibyo & Other Delusions	Chuunibyou demo Koi ga Shitai!	Kyoto Animation	\n  	2012/09/19
901	Magi: The Labyrinth of Magic	Magi	A-1 Pictures	\n  	2012/10/07
902	Medaka Box Abnormal	Medaka Bokkusu Abunoumaru	Gainax	\n  	2012/10/10
1021	Nagi no Asu Kara	Nagi no Asukara	P.A. Works	Long ago, humanity lived in the sea. But the humans who longed for the land left the sea behind. They cast aside the special raiment they'd been given by the sea god that let them live in the ocean. The thinking of the sea humans and the land humans became as separate as the places they lived, and as countless time passed, they forgot they were once one people. This will change as the land-dwelling human Tsumugu Kihara befriends four girls who live in a village at the bottom of the sea.\n  	2013/10/03
903	Monsuno: World Master	Juusen Battle Monsuno	Jakks Pacific	Chase Suno wakes one morning to find his scientist father, Jeredy Suno...gone. A legendary scientist, Jeredy had solved a timeless mystery: What happened to the dinosaurs? He discovered their destruction was by shell-like cocoons barraging the four corners of the earth and what emerged from those...creatures with vast powers at their disposal...Monsuno!Jeredy Suno was working on the means of controlling the Monsuno for good, however, his bosses at the ultra-secret government agency, S.T.O.R.M., had a different agenda in mind – they wanted to weaponise the Monsuno. Jeredy was left with no choice but to take his research and go underground...But not before he left his only son, Chase, a special gift...a powerful guardian in dangerous times – a riddle waiting to be solved – a force of nature to be directed in positive ways – a Monsuno. And not just any Monsuno – the first Monsuno Jeredy reanimated...and the means to control it!Chase Suno is now on a mission to master the battle potential of his Monsuno in order to protect himself, to build a team of like-minded Monsuno “Adepts” to take on the forces of evil intent on exploiting Monsuno for personal and political gain...and through all of this...to find his missing father and unlock the mysteries of the Monsuno’s true purpose on earth.\n  	2012/10/03
904	My Little Monster	Tonari no Kaibutsu-kun	Brain's Base	\n  	2012/09/29
906	OniAi	Onii-chan Dakedo Ai Sae Areba Kankeinai yo ne	Silver Link	\n  	2012/10/05
907	Psycho-Pass	Psycho-Pass	Production I.G	\n  	2012/10/12
908	Robotics;Notes	Robotikusu Noutsu	Production I.G	\n  	2012/10/12
909	Say "I Love You".	Sukitte Ii na yo.	ZEXCS	\n  	2012/10/07
914	To Love-Ru Darkness	ToLOVEru -Daakunesu-	Xebec	\n  	2012/10/06
915	Amagami SS+ plus	Amagami Esu Esu	AIC	\n  	2012/01/06
916	Another	Anazaa	P.A. Works	When Kōichi Sasakibara transfers to his new school, he can sense something frightening in the atmosphere of his new class, a secret none of them will talk about. At the center is the beautiful girl Mei Misaki. Kōichi is immediately drawn to her mysterious aura, but then he begins to realize that no one else in the class is aware of her presence.\n  	2012/01/09
917	Aquarion Evol	Akuerion Evoru	Satelight	\n  	2012/01/09
918	Baby, Please Kill Me! / Kill Me Baby	Kiru Mii Beibee	J.C.Staff	\n  	2012/01/06
919	Black ★ Rock Shooter	Burakku Rokku Shuutaa	Ordet	\n  	2012/02/03
923	Daily Lives of High School Boys	Danshi Koukousei no Nichijou	Sunrise	\n  	2012/01/09
925	Gokujo: Gokurakuin Joshikouryou Monogatari	Gokujyo: Gokurakuin Joshikouryou Monogatari	Cammot	\n  	2012/01/23
927	High School DxD	Haisukuuru Dii Dii	TNK	\n  	2012/01/06
929	Inu x Boku Secret Service	Youko / Inu x Boku SS	David Production	\n  	2012/01/13
930	Kyousogiga	Kyousougiga	Toei Animation	Hidden within Kyoto is the "mirror capital" where youkai and humans live together and no one ever dies. It is protected by three people - Kurama, Yase, and Myoue - as they await the return of their parents, Myoue Jonin and Koto. One day a young girl named Koto (same name, different spelling) and her little brothers A and Un wander into the city from a different dimension looking for her mother. A mecha-geek with red eyes, it's not immediately clear whether she's human or youkai. Her arrival upsets the long peace that had ruled the city.\n  	2011/12/01
931	Lagrange: The Flower of Rin-ne	Rinne no  Ranguranje	Xebec	Lagrange: The Flower of Rin-ne (輪廻のラグランジェ Rinne no Raguranje)\n or AKA Flower declaration of your heart\n is a Japanese anime television series produced by Xebec and Production I.G. There are currently two seasons of the anime.Story:\nMadoka Kyouno, a schoolgirl from Kamogawa, is the sole member of the Jersey Club and always ready to help others out. One day, she is approached by an alien named Lan who asks her to pilot a robotic aircraft to defend mankind against an evil force.Main characters:\nKyouno MadokaLan (AKA  Fin E Ld Si Laffinty)MuginamiSource:Wikipedia\n\n  	2012/01/09
933	Listen to Me, Girls. I Am Your Father!	Papa no Iukoto wo Kikinasai! / Papakiki	Feel	\n  	2012/01/11
934	Magic Tree House	Majikku tsurii hausu	Ajia-do Animation Works	\n  	2012/01/07
935	Natsume Yuujinchou Shi	Natsume Yuujinchou Shi	Brain's Base	Natsume's Book of Friends Four\n, the fourth season of the anime.Source:Wikipedia\n\n  	2012/01/03
936	Nisemonogatari	Nisemonogatari	Shaft	\n  	2012/01/07
937	Poyopoyo Kansatsu Nikki	Poyopoyo Kansatsu Nikki	TV Tokyo	\n  	2012/01/08
938	Recorder to Randoseru Do♪	Rikoodaa to Randoseru Do	Seven	The TV anime series Recorder to Randoseru is created by studio Seven, based on Meme Higashiya's 4-koma manga about Atsushi Miyagawa and his sister Atsumi Miyagawa. Atsushi looks like an adult at 180 centimeters (71 inches) tall, but he is actually an elementary school boy. Atsumi looks like a little girl at 137 centimeters (54 inches) tall, but she is actually in high school.\n  	2012/01/06
939	Senki Zesshou Symphogear	Senki Zesshou Shinfogia	Satelight	\n  	2011/12/26
940	Smile Pretty Cure	Sumairu PuriKyua!	Toei Animation	\n  	2012/02/05
941	Tantei Opera Milky Holmes 2nd Curtain	Tantei Opera Mirukii Houmuzu Dai 2-maku	J.C.Staff	\n  	2012/01/05
942	The Knight in the Area	Area no Kishi	Shin-Ei Animation	The Knight in the Area (エリアの騎士 Area no Kishi) is a soccer-themed Japanese manga series written by Hiroaki Igano and illustrated by Kaya Tsukiyama. The series was later adapted into an anime.Story:Kakeru Aizawa\n is the main character of the series and the younger brother of Suguru Aizawa-a football prodigy belonging to Japan's under–15 national team. The series follow Kakeru through his journey and the people he meets as he returns to football, to achieve his brother's dream.Source:Wikipedia\n\n  	2012/01/07
943	Waiting in the Summer	Ano Natsu de Matteru	J.C.Staff	\n  	2012/01/10
944	Zero no Tsukaima F	Zero no Tsukaima Efu	J.C.Staff	\n  	2012/01/07
945	A Certain Scientific Railgun S	Toaru Kagaku no Rerugan	J.C.Staff	\n  	2013/04/12
970	The Devil is a Part-Timer!	Hataraku Mao-sama!	White Fox	\n  	2013/04/04
946	Absolute Defense Leviathan	Zettai Bouei Leviathan	Gonzo	The story is set in Aquafall, a fantasy world abound with water and greenery, and populated by dragons and fairies. Meteorites suddenly bring forth evil creatures that threaten all living things on the planet. The fairy Syrup assembles the Aquafall Defense Force, with three girls of the dragon clans as recruits. The story follows Syrup and the dragon girls Leviathan, Bahamut, and Jörmungandr as they work together to battle enemies and grow up.\n  	2013/04/06
947	Aiura	Aiura	Liden Films	Kanaka, Saki and Ayuko are three girls who, as fate would have it, meet each other just before starting high school. Kanaka accidentally bumps into Ayuko, ruining the girl's ice cream cone, and their friendship soon follows! Together, the trio navigates high school life, whether giving each other nicknames, racing each other to class, or just having fun.\n  	2013/04/09
948	Arata: The Legend	Arata Kangatari	Satelight	\n  	2013/04/09
949	Attack on Titan	Shingeki no Kyojin	WIT STUDIO	\n  \n\n  \nThough I hate to admit it… no matter what kind of ending they came up with… no matter how good it is or will be… no matter how many questions they answer… I really doubt I could be happy with it being over. It's just so good. I've never even seen an anime that came close to this one. I love it so much. The characters, the plot, the weapons, the design, the very Idea is so amazing. I don't know if there will ever be an anime this good. It has me saying this with only twenty-five episodes. To be honest I was sad when I heard that Misashi Kishimoto would end Naruto, because of how much I liked that show. Ile be honest though… at this point I don't mind Naruto ending, because now I have this to look forward to. At the same time I know that this is the only anime that got me this hooked, this hungry for more, and I doubt Ile be this satisfied with an anime for a very long time. This show was so amazing. To be honest I'm guessing they could make more episodes with this than they did with Naruto, and I would still want more. No Naruto wasn't close to the best anime I've watched even before I started this series but, it was my first anime. This is the first time I've been so excited to watch an anime since then, since I first watched anime when I was little. I can't say anything though if it is over if I'm this satisfied with a show now can I? I love everything about this anime. My specific favourites are the sound track, the design put into the weapons not just physically but also it's advantages and disadvantages. The best part of all for me is charecter depth.\n  	2013/04/06
950	Cyclops Girl Cypu	Cyclops Shoujo Saipuu		\n  	2013/03/12
951	Dansai Bunri no Crime Edge	Dansai Bunri no Kuraimu Ejji	Studio Gokumi	\n  	2013/04/03
952	Devil Survivor 2: The Animation	Debiru Sabaiba Tsu: The Animation	Sentai Filmworks	\n  	2013/04/05
953	Dragon Ball Z: Battle of Gods	Doragon Bouru Z : Kami to Kami 	Toei Animation	\n  	2013/04/30
954	Flowers of Evil	Aku no Hana	Zexcs	\n  	2013/04/05
955	Gargantia on the Verdurous Planet	Suisei no Gargantia	Production I.G	\n  	2013/04/07
956	Ginga Kikoutai Majestic Prince	Ginga Kikoutai Majesutikku Purinsu	Dogakobo	\n  	2013/04/04
957	Haiyore! Nyaruko-san W	Haiyore! Nyaruko-san W	Xebec	Second season of Haiyore! Nyaruko-san.\n  	2013/04/08
958	Hyakka Ryouran: Samurai Bride	Hyakka Ryouran Samurai Buraido	ARMS	\n  	2013/04/05
959	Karneval	Kaanivaru	Manglobe	Nai searches for someone important to him, with only an abandoned bracelet as a clue. Gareki steals and pick-pockets to get by from day to day. The two meet in a strange mansion where they are set-up, and soon become wanted criminals by military security operatives. When Nai and Gareki find themselves desperate in a hopeless predicament, they encounter none other than the country's most powerful defense organization, "Circus".\n\n\n  	2013/04/03
962	My Teen Romantic Comedy SNAFU	Yahari Ore no Seishun Love Come wa Machigatteiru.	Brain's Base	\n  	2013/04/04
963	Namiuchigiwa no Muromi-san	Namiuchigiwa no Muromi-san	Tatsunoko Production	Mukojima Takuro is a lonely teenager who spends his time fishing at the pier and, to his incredible surprise, fishes up Muromi, a mermaid. Muromi first off doesn’t realize she's a mermaid until she meets Takuro. Not only that, she is incredibly dense and crazy and has a drinking problem to top it off. Now every time Takuro goes fishing, Muromi appears and makes life interesting for him.  (mangaupdates.com)\n  	2013/04/03
965	Photo Kano	Photokano	Madhouse	\n  	2013/04/05
966	Pretty Rhythm: Rainbow Live	Puritii Rizumu: Reinbou Raibu	TV Tokyo	Naru Ayase is an 8th grader who can see the colors of music when she listens to it. For Naru, who is extremely good at deco-ing Prism Stones, becoming the owner of a shop like Dear Crown was her dream. One day, she finds out that the manager of a newly-opened shop is recruiting middle school girls who can do Prism Dance, and immediately applies. Naru begins to Prism Dance at the audition, and an aura she's never experienced spreads out in front of her. At that moment, a mysterious girl named Rinne asks her if she can see "rainbow music".\n  	2013/04/06
1004	Beyond the Boundary	Kyoukai no Kanata	Kyoto Animation	Akihito Kanbara is a high school sophomore in the literature club who believes himself to be a "Meganest", and although he appears to be human, he is actually half Yōmu, which makes him invulnerable to wounds, due to the fact that he can heal so quickly, and also immortal. One day, Akihito meets freshman Mirai Kuriyama when it appears as if she is about to attempt suicide by jumping off of the school rooftop. Mirai is isolated because of her ability to manipulate blood, which is considered heresy even among other members of the underworld, so she is shunned. Soon after Akihito saves Mirai, disturbing events begin to arise.\n  	2013/10/03
967	RDG Red Data Girl	RDG Reddo Deeta Gaaru	P.A. Works	Izumiko has lived a secluded, sheltered life in a mountain shrine since she was born. Having been raised to become the vessel of the Hime-gami, a mysterious force, the girl’s family has carefully planned and measured all aspects of her life - from the prestigious school she’s meant to attend to even her hair style. So when Izumiko is threatened by strange events, her father forces yet another obligation on her: Miyuki Sagara, a mountain monk descendant who’s fated to be her bodyguard. Unfortunately for the duo, neither is happy about the arrangement, especially Miyuki, who’s being exiled from his home city to guard a girl he considers to be useless. Can the two learn to find common ground in their search to understand the supernatural mysteries unfolding around them?\n  	2013/03/16
968	Space Battleship Yamato 2199	Uchuu Senkan Yamato Ni-ichi-kyuu-kyuu	Xebec	\n  	2013/04/07
969	The 'Hentai' Prince and the Stony Cat	Hentai Ouji to Warawanai Neko (HenNeko)	J.C.Staff	Youto Yokodera is always thinking about his carnal desires, but no one acknowledges him as a pervert. He learns about a cat statue that supposedly grants wishes. The boy goes to pray that he will be able to express his lustful thoughts whenever and wherever he wants. At the statue, Youto encounters Tsukiko Tsutsukakushi, a girl from his high school with her own wish—that she would not display her real intentions so readily.(Source: ANN)\n  	2013/04/13
971	Uta no Prince-sama maji LOVE 2000%	Uta no ☆ Purinsu-sama ♪ Maji Rabu 2000%	A-1 Pictures	\n  	2013/04/03
972	Valvrave the Liberator	Kakumeiki Valvrave	Sunrise	\n  	2013/04/11
973	Yuyushiki	Yuyushiki	Kinema Citrus	\n  	2013/04/17
974	A Town Where You Live	Kimi no Iru Machi	Gonzo	\n  	2013/07/13
975	Bas-Ket-Ball! SS	Ro-Kyu-Bu! SS	Project No.9	\n  	2013/07/05
976	Blood Lad	Buraddo Raddo	Brain's Base	Blood Lad follows Staz, a vampire that is obsessed with the human world, and Fuyumi, a human girl that was killed and turned into a ghost after wandering into the demon world. Staz promises to help Fuyumi regain her humanity by bringing her back to life, as it means that he would be able to visit the human world.\n  	2013/07/08
980	Free! - Iwatobi Swim Club	Free!	Kyoto Animation	Free! starts with four boys—Haruka, Makoto, Nagisa and Rin—before graduating from elementary school. They had all participated in a swimming tournament and gained victory but later parted ways. Years later, Haruka, Makoto and Nagisa reunite when they enroll into high school. Not long after, Rin, who was thought to be in Australia, turns up and challenges Haruka to a race and wins. Afterward, Nagisa mentions creating a swimming club and cleaning up the run-down outdoor pool to use. Haruka, Makoto, Nagisa and, later on, Rei, form the Iwatobi High School Swimming Club and work together in making the club a success. Rin's victory over Haruka means nothing to him as he realizes that Haruka has stopped swimming competitively and is not in top shape. He claims that he cannot get over the fact until Haruka competes against him for real. The members of the revived Iwatobi Swim Club later enter a swimming competition against Rin.\n  	2013/07/04
981	Futari wa Milky Holmes	Futari wa Mirukii Houmuzu	J.C.Staff	\n  	2013/07/13
982	Gatchaman Crowds	Gatchaman Kurauzu	Tatsunoko Production	\n  	2013/07/12
983	Genshiken Second Season	Genshiken Nidaime	Production I.G	\n  	2013/07/06
984	Hal	Haru	WIT STUDIO	\n  	2013/06/08
985	High School DxD NEW	Haisukuuru Dii Dii	TNK	\n  	2013/07/07
986	Hyperdimension Neptunia The Animation	Chojigen Geimu Neputyunu The Animation	David Production	\n  	2013/06/22
987	Il Sole Penetra le Illusioni	Gen'ei o Kakeru Taiyou	Aniplex of America	\n  	2013/07/06
988	It's Not My Fault That I'm Not Popular!	Watashi ga Motenai no wa Dou Kangaetemo Omaera ga Warui! (Watamote)	Silver Link	\n  	2013/07/09
989	Kingdom S2	Kingudamu	Studio Pierrot	\n  	2013/06/08
990	Love Lab	Rabu Rabo	Dogakobo	.\n  	2013/07/05
991	Makai Ouji: Devils and Realist	Makai Ouji: Devils and Realist	Dogakobo	\n  	2013/07/08
993	Rozen Maiden: Zuruckspulen (Rozen Maiden: Zurückspulen)	Rouzen Meiden Zuruckspulen	Studio Deen	\n  	2013/07/04
994	Senki Zesshou Symphogear G	Senki Zesshou Shinfogia G	Satelight	\n  	2013/07/04
995	Senyuu Season 2	Senyuu Dai 2 Ki	Ordet & Liden Films	\n  	2013/07/02
996	Servant x Service	Saa banto x saabisu 	A-1 Pictures	\n  	2013/07/05
997	Silver Spoon	Gin no Saji	A-1 Pictures	\n  	2013/07/12
998	Stella Women’s Academy, High School Division Class C3	Tokurei Sochi Dantai Stella Jo-Gakuin Koutou-ka C3-Bu	Gainax	\n  	2013/07/04
999	Sunday Without God	Kami-sama no Inai Nichiyoubi	Madhouse	.\n  	2013/07/06
1001	The Eccentric Family	Uchoten Kazoku	P.A. Works	.\n  	2013/07/07
1002	Ace of Diamond	Diamond no Ace (Daiya no Ace)	Madhouse	\n  	2013/10/06
1003	Arpeggio of Blue Steel: Ars Nova	Aoki Hagane no Arpeggio: Ars Nova	Sanzigen	By 2039, global warming had caused sea levels to rise and large amount of territory to be lost. As though in response, a mysterious group of warships clad in mist, “the Fleet of Mist,” appeared in every corner of the ocean, and began attacking human ships. In spite of humanity mustering all their strength, they were utterly defeated by the Mist's overwhelming force. All of humanity's trade routes were blockaded by the Fleet of Mist, their political economy was destroyed, and the human race was steadily beaten down. Seven years later, the Fleet of Mist's submarine I-401 appears before cadet Gunzo Chihaya. The humanoid life form that pilots the sub, who should be their enemy, is instead offering her services to mankind.\n  	2013/10/08
1006	Coppelion	Coppelion	GoHands	 Many years after a great tragedy killed 90% of the people in Japan, three girls arrive in the ruins of Tokyo. In the devastated capital, their unusually clean clothes set them apart. But that's not the only strange thing about them - they also each wield supernatural powers. They call themselves "Coppelion," and are on a mission to save the people of Tokyo.\n  	2013/10/02
1009	Gundam Build Fighters	Gandamu Birudo Faitazu	Sunrise	\n  	2013/10/07
1011	I Couldn’t Become a Hero, So I Reluctantly Decided to Get a Job	Yuusha ni Narenakatta Ore wa Shibushibu Shuushoku o Ketsui Shimashita / Yu-Sibu	Asread	Raul had always wanted to be a hero, but the demon king was defeated, leading to the end of hero exams. He reluctantly took a job working at a small electronics store called Magic Shop Leon. His life is dull but busy until a new girl comes applying for a part time job. She's the daughter of the defeated demon king.\n  	2013/10/04
1012	Infinite Stratos 2	Infinitto Sutoratosu 2	8-Bit	\n  	2013/10/04
1013	Kill la Kill	Kiru ra Kiru	Trigger	Ryuuko Matoi carries a large weapon shaped like half of a pair of scissors. She's looking for the woman with the other half, who killed her father. Satsuki Kiryuuin, student council president of Honnouji Academy, is said to know the woman's identity, so Ryuuko transfers there. Those who arrive at the school receive a special "goku uniform," and Satsuki has used that power to rule the school in fear.\n  	2013/10/04
1015	Kuroko's Basketball S2	Kuroko no Basuke	Production I.G	 - \n  	2013/10/05
1016	Log Horizon	Rogu Horaizun	Satelight	Elder Tales is an online fantasy RPG that has become popular worldwide. But when its twelfth expansion package, "Cultivate the Noosphere," is installed, thirty thousand players in Japan are trapped inside. Among them is grad student Shiroe, who isn't very good at interacting with others. But to survive in a world full of monsters, he forms a guild called "Log Horizon" with an eclectic group of other players.\n  	2013/10/05
1017	Magi: The Kingdom of Magic	Magi S2	A-1 Pictures	\n  	2013/10/06
1018	Meganebu!	Meganebu!	Studio Deen	Akira Souma attends a rural school and has a passion for his glasses. He forms a Glasses Club and makes his various bespectacled classmates join.\n  	2013/10/07
1019	Miss Monochrome the Animation	Misu Monokuromu	SANZIGEN	n order to be more in the eyes of the public, Miss Monochrome begins working to become a top-selling idol. Spacey Miss Monochrome once again runs around the idol show biz world, being tossed around by others.\n  	2013/10/01
1061	Baby Steps	Beibii Suteppu	Studio Pierrot	\n  	2014/04/06
1062	Black Bullet	Burakku Buretto	Kinema Citrus	\n  	2014/04/09
1020	My Mental Choices are Completely Interfering with my School Romantic Comedy	Ore no Nounai Sentakushi ga, Gakuen Love Comedy wo Zenryoku de Jama Shiteiru (NouCome)	Diomedea	The story centers around Kanade Amakusa, a boy cursed with the mental power of "absolute multiple-choice"—a multiple-choice quiz will suddenly appear in his mind, and the choice he makes will become his reality. For example, he would have to choose between going nude from the waist up or the waist down in school. While in school, he is given another choice: 1) A beautiful girl will fall before him or 2) he will fall from the rooftop in female clothes. He chooses option 1, and a blonde girl named Chocolat falls before him.\n  	2013/10/10
1022	Non Non Biyori	Non Non Biyori	Silver Link	Asahioka Branch School, a combined elementary and middle school in an isolated village, has only five students total, four girls and one boy. The girls are best friends, and pass the season with traditional activities like harvesting mountain herbs and fishing.\n  	2013/10/08
1025	Silver Fox	Gingitsune	Diomedea	Makoto is the fifteenth generation heiress of a small shrine to the god Inari. Her father is still the shrine's priest, but Inari's divine messenger, Gintarou, has appeared to Makoto, marking her as true successor. Gintarou has the ability to see a short distance into the future and to find lost objects, but is unmotivated and foulmouthed. In spite of this, he becomes friends with Makoto, and together they help those who come to the shrine.\n  	2013/10/07
1026	Strike the Blood	Sutoraiku za Buraddo	Silver Link.	"The fourth true ancestor" is a legendarily strong vampire that shouldn't exist. Accompanied by the 12 "gun-beasts," this phantom vampire is said to have appeared in Japan. In order to find and kill this "fourth true ancestor," the government and the Lion King Organization order the dispatch of attack mages called "sword-maidens." For some reason an apprentice named Yukina Himeragi was chosen for the task. Wielding the strongest spiritual spear, Yukina comes to the special demon district Itokami City. There she encounters Kojou Akatsuki and learns the true nature of the "fourth true ancestor."\n  	2013/10/04
1027	Tokyo Ravens	Tokyo Reivunzu	8-Bit	\n  	2013/10/09
1028	Unbreakable Machine-Doll	Mashin-Douru wa Kizutsukanai	Lerche	It is the early 20th century, and Raishin Akabane is a student puppeteer from Japan, who has come to the Walpurgis Royal Academy of Machine Arts in England to study the emerging field of Machinart: a combination of magic and technology with military applications. He is accompanied by a girl named Yaya, who is actually his Automaton: a living machine doll powered by magical circuits specialized in hand-to-hand combat. In the Academy, there is a combat tournament exclusive to the Top 100 students and their automata, to decide who shall be bestowed with the title of "Wiseman", the greatest puppeteer.\n  	2013/10/07
1029	Valkyrie Romance: Girl Knight Story	Walkure Romanze ~Shoujo Kishi Monogatari~	8-bit	\n  	2013/10/06
1030	Wanna Be the Strongest in the World	Sekai de Ichiban Tsuyoku Naritai!	Arms	Hagiwara Sakura and Miyazawa Erena are the leading members of a popular idol group Sweet. One day, Erena is injured by the attack of a female pro-wrestler Kazama Rio during the recording of a TV program. Sakura gets mad at Rio and gives her a dropkick. To avenge Erena, Sakura enters the female pro-wrestling matches.\n  	2013/10/06
1031	Yowamushi Pedal	Yowamushi Pedal	TMS Entertainment	Sakamichi Onada is a wimpy high school freshman who loves anime. He initially wants to enter the anime club, but winds up joining the cycling club after meeting two classmates who are already famous cyclists. He undertakes the grueling training to compete in races, and discovers his own hidden talent in cycling.\n  	2013/10/08
1032	AKB0048 Next Stage	AKB0048 Next Stage	Satelight	\n  	2013/01/05
1033	Amnesia	Amnesia	Brains Base	\n  	2012/01/07
1034	Bakumatsu Gijinden Roman	Bakumatsu Gijinden Roman	TMS Entertainment	\n  	2013/01/07
1035	Boku no Imouto wa Osaka Okan	Boku no Imouto wa Osaka Okan (Imouto Okan)	Charaction	\n  	2012/12/21
1036	Cardfight!! Vanguard: Link Joker Hen	Kaado Faito!! Vangaado Rinku Jokka Hen	TMS Entertainment	\n  	2013/01/13
1037	Chihayafuru 2	Chihayafuru 2	Madhouse	\n  	2013/01/11
1038	Cuticle Detective Inaba	Cuticle Detective Hiroshi Inaba	Zexcs	\n  	2013/01/04
1039	D.C.III ~Da Capo III~	D.C.III ~Da Capo III~	Kazami Gakuen Koushiki Dougabu	\n  	2013/01/05
1040	Encouragement of Climb	Yama no Susume	8-bit	\n  	2013/01/02
1041	GJ-bu	GJ-bu	Dogakobo	\n  	2012/01/10
1042	Haganai Next	Boku wa Tomodachi ga Sukunai NEXT	AIC Build	\n  	2013/01/10
1043	Hakkenden: Eight Dogs of the East	Hakkenden: Touhou Hakken Ibun-	Studio DEEN	\n  	2013/01/05
1044	Hetalia: The Beautiful World	Hetalia: The Beautiful World	Studio Deen	\n  	2012/01/25
1045	I My Me	Ai Mai Mi	Seven	\n  	2013/01/03
1046	Kotoura-san	Kotoura-san	AIC Classic	\n  	2013/01/10
1047	Love Live! School Idol Project	Rabu Raibu! School Idol Project!	Sunrise	\n  	2013/01/06
1048	Mangirl!	Mangirl!	Dokagobo	\n  	2013/01/03
1049	Maoyu	Maoyuu Maou Yuusha	ARMS	\n  	2013/01/04
1050	Minami-ke Tadaima	Minami-ke Tadaima	feel.	\n  	2013/01/05
1051	Ore no Kanojo to Osananajimi ga Shuraba Sugiru	Ore no Kanojo to Osananajimi ga Shuraba Sugiru (OreShura)	 A-1 Pictures	\n  	2013/01/06
1052	Problem children are coming from another world, aren't they?	Mondai-Ji-tachi ga Isekai Kara Kuru Sou Desu yo? (Mondaiji)	Diomedia	\n  	2013/01/11
1053	Puchimas! Petit Idolmaster	PUCHIM@S -Puchi Aidorumasutaa-	Gathering	.\n  	2013/01/01
1054	Sasami-san@Ganbaranai	Sasami-san@Ganbaranai	Shaft	\n  	2013/01/11
1055	Senran Kagura	Senran Kagura	Artland	\n  	2013/01/06
1056	Senyuu	Senyuu	Ordet & Liden Films	\n  	2013/01/08
1057	Tamako Market	Tamako Maaketto	Kyoto Animation	Between unspoken and unrequited love, mysterious happenstance, and the day-to-day affairs of a busy market, life is rarely dull in the Bunny Mountain Shopping Village - especially after Tamako, the happy-go-lucky mochi-maker's daughter, finds a talking exotic bird on a mission! Having traveled a great distance, the creature now seeks a worthy bride for his land's prince - but where in this corner of rural Japan can such a thing be found? Already busy trying to keep the shopping district alive and hanging out with her friends in Baton Club, Tamako can't afford to be distracted by the plucky bird - yet the scoundrel seems to have taken a liking to her and keeps following her around! How will Tamako cope with this visitor intruding on her life?\n  	2013/01/09
1058	Vividred Operation	Vividred Operation	A-1 Pictures	\n  	2013/01/10
1059	Abarenbo Rikishi!! Matsutarou	Abarenbou Rikishi!! Matsutarou	Toei Animation	\n  	2014/04/06
1060	Atelier Escha & Logy: Alchemists of the Dusk Sky	Escha & Logy no Atelier: Tasogare no Sora no Renkinjutsushi	Studio Gokumi	\n  	2014/04/10
1064	Brynhildr in the Darkness	Gokukoku no Brynhildr	Arms	\n  	2014/04/06
1065	Captain Earth	Kyaputen Aasu	Bones	\n  	2014/04/06
1066	Chaika the Coffin Princess	Hitsugi no Chaika	Bones	\n  	2014/04/10
1067	Dai-Shogun: Great Revolution	Fuuun Ishin Dai☆Shogun	J.C.Staff	\n  	2014/04/10
1068	Daimidaler the Sound Robot	Kenzen Robo Daimidara	Funimation Entertainment	\n  	2014/04/10
1069	Date A Live II	Deeto a Raibu II	Production IMS	\n  	2014/04/12
1070	Dragon Collection	Doragon Korekushon	OLM	\n  	2014/04/07
1071	Dragonar Academy	Seikoku no Dragonar	C-Station	\n  	2014/04/05
1082	M3: That Black Steel	M3: Sono Kuroki Hagane	Satelight	About:M3 the dark metal\n (M3〜ソノ黒キ鋼〜) M3: Sono Kuroki Hagane\n is a Japanese anime television series produced by Satelight that began airing on April 21, 2014. A manga adaptation with art by Kazuomi Minatogawa will begin serialization in Mag Garden's shōnen manga magazine Monthly Comic Blade from April 30, 2014.Synopsis:The story focuses on a group of 4 boys and 4 girls (later on 5) who met, when they were younger, in a realm full of darkness. A mysterious substance called Necrometal devours or infects anything that comes within a certain distant of a place called the Lightless Realm. It starts at an ordinary school in a city of close proximity to the Lightless Realm and focus's on Akashi for the most part. Akashi is no. 1 in the school when using the training bots to defeat schoolmates and is first seen fighting his best friend and defeating him. A man approaches him with an invitation to join a special force that is tasked with defeating the Corpses and uncovering the secrets of the Lightless Realm. Fast forward some time and a Corpse appears which has the power to "kill" people who hear its song. It sings a lovely melody and like a countdown, over the next few months it is discovered that Emiru has become infected by the Necrometal that has plagued the Lightless Realm for so long. It is now up to Akashi to use the device known as the Reaper or MA-Vess in order to defeat the Corpse and save everyone.OP Theme 1: Re:REMEMBER by May'nOP Theme 2: Replica by Maaya SakamotoED Theme 1: Ego-izm by la la larksED Theme 2: Sable by NanoSource:Wikipedia\n\n  	2014/04/21
1083	Magica Wars	Mahou Shoujo Taisen	GAINAX	\n  	2014/04/08
1084	Majin Bone	Majinbon 	Toei Animation	\n  	2014/04/01
1085	Mitsuwano	Mitsuwano	Zexcs	\n  	2014/03/12
1086	Monster Retsuden Oreca Battle	Monsutaa Retsuden Oreka Batoru	Xebec	\n  	2014/04/07
1087	Mushishi: The Next Chapter	Mushishi: Zoku-Shou	Broccolli	\n  	2014/04/04
1088	Nanana's Buried Treasure	Ryuugajou Nanana no Maizoukin	A-1 Pictures	\n  	2014/04/11
1089	No Game, No Life	Nougeemu Nouraifu	Madhouse	Synopsis :There was an urban legend that there was a legendary, undefeated gamer called 『　　』, but in reality he was just a NEET brother and sister called 空 (Sora) and 白 (Shiro). These hikikomori siblings who both refer to the real world as a worthless "Kuso Game" are one day summoned to a different world by a boy calling himself "God". In this world, war is prohibited by God and everything is instead decided by a game...that's right, even country borders. Can the two NEET brother and sister save the last of the human race  Imanity , which only has one city left?"Now...let the game begin!"Baka-Tsuki\nSixteen Races (Exceed) and NationsFirst: Divine Spirits (Old Deus/Old Dei)Second: Phantasma Third: Elementals Fourth: Dragon spirits (Dragonias)Fifth: Giants (Gigants)Sixth: The Heavenly Winged (The Flügel) - Nation: Avant Heim Seventh: Forest Sprites (Elves) - Nation: Elven Gard Eighth: ??? Ninth: ??? Tenth: Machines (Ex-Machina/Ex-Machinae)Eleventh: Lunarians (Lunamana)Twelfth: Bloodsuckers (Dhampir) - Nation: オーシェンドThirteenth: ???Fourteenth: Therianthropes (Werebeasts) - Nation: Eastern Union Fifteenth: Sea Dwellers (Seirenes) - Nation: オーシェンドSixteenth: Mankind (Imanity) - Nation: ElcheaRanking unknown: Dwarf , Fairy , and DemoniaBefore the game start both party must say "Acciente" as the signal to start the game under the ten oaths :【1】 All bloodshed, war, and pillage is forbidden throughout the world. 【2】 All disputes are to be resolved through the outcome of games.【3】 In games, wagers will be made on what both parties decide to be of equal value.【4】 Unless contrary to "Three", the game content and the things wagered do not matter.【5】 The challenged party has the right to decide the contents of the game【6】 "As per the Oath", the wager will be unconditionally adhered to.【7】 All matters for group conflicts will be decided by a representative.【8】 If cheating is detected during a game, it will be regarded as a defeat.【9】 The above rules are unconditionally everlasting, upheld in the name of God.【10】 Everyone should get along while playing games .\n  	2014/04/09
1090	One Week Friends.	Isshuukan Friends.	Brain's Base	\n  	2014/04/07
1091	Ping Pong The Animation	Ping Pong	Tatsunoko Production	Makoto Tsukimoto (nicknamed Smile) is a quiet high-schooler who's been friends with the loud and energetic Yutaka Hoshino (nicknamed Peco) since childhood. They're both in the local table tennis club and both have a natural talent for it, although Smile's personality always prevents him from winning against Peco. The club teacher, however, notices Smile's talent and tries to make him gain some sportive tenacity.\n  	2014/04/11
1092	Riddle Story of Devil	Akuma no Riddle	Diomedea	\n  	2014/04/04
1093	Selector Infected WIXOSS	Serekuta Infekuteddo WIXOSS	J.C.Staff	\n  	2014/04/04
1094	Soul Eater Not!	Souru Iita Notto	Bones	Soul Eater Not! is a side-story to the main series, focusing on a freshman halberd named Tsugumi Harudori, who befriends two other meisters, Meme Tatane and Anya Hepburn. All three take part in the NOT (Normally Overcome Target) class at DWMA and learn to control their powers in order to overcome their difficulties to have a normal life, as opposed to the battle-oriented EAT (Especially Advanced Talent) class taken by Maka, Soul, and their companions.\n  	2014/04/09
1095	The Comic Artist and His Assistants	Mangaka-san to Assistant-san to	Zexcs	\n  	2014/04/08
1096	The Irregular at Magic High School	Mahouka Koukou no Rettousei	Madhouse	\n  Aesthetica of a Rogue HeroBadass, seriously OP main character.	2014/04/06
1097	The Kawai Complex Guide to Manors and Hostel Behavior	Bokura wa Minna Kawai-Sou	Brain's Base	\n  	2014/04/04
1098	The World is Still Beautiful	Soredemo Sekai wa Utsukushii	Studio Pierrot	\n  	2014/04/06
1099	Wild Adapter	Wairudo adaputa 	Anpro	\n  	2014/03/26
1100	Akame ga Kill!	Akame ga Kiru!	White Fox	\n  	2014/07/07
1101	Aldnoah Zero	Arudonoa .Zero	A-1 Pictures	About:Aldnoah.Zero (アルドノア・ゼロ)\n is a mecha anime television series created by Olympus Knights and A-1 Pictures, that began July 2014. Aniplex of America has licensed the series for a streamed simulcast beginning in July. It will be broadcast on Tokyo MX, BS11, Asahi Broadcasting Corporation, Gunma TV and AT-X in Japan, with streaming available on Nico Nico Douga. It was also streamed in Australia by Hanabee.Synopsis:In 1972, an ancient alien hypergate was discovered on the surface of the moon. Using this technology, humanity began migrating to Mars and settling there. After settlers discovered additional advanced technology, the Vers Empire was founded, which claimed Mars and its secrets for themselves. Later, the Vers Empire declared war on Earth, and in 1999, a battle on the Moon's surface caused the hypergate to explode, shattering the Moon and scattering remnants into a debris belt around the planet. Cut off from Mars, the remnants of the Vers Empire established several massive orbital space stations within the debris belt and a ceasefire was established. 15 years later, in 2014, an attack on the Vers princess during a peace mission causes the Empire to launch a new attack on Earth, this time determined to conquer it once and for all.OP Theme: Heavenly Blue by KalafinaComposer: Kajiura YukiED Theme: 'A/Z' and 'aLIEz' lyrics/music: Sawano Hiroyuki[nZk]Vocalist: MizukiSub-Theme:'Keep On Keeping On' Lyrics: Benjamin Anderson & mpiMusic: Sawano Hiroyuki[nZk]Vocalist: MizukiSource:Wikipedia\n\n  	2014/07/06
1102	Bakumatsu Rock	Bakumatsu Rokku	Studio Deen	\n  	2014/07/02
1103	Barakamon	Barakamon	Kinema Citrus	\n  	2014/07/06
1104	Black Butler: Book of Circus	Kuroshitsuji: Book of Circus	Funimation Entertainment	Returns to Season 1 episode 15 (the curry contest) and follows the manga's plotline. (Episode 15 season 1 through the end of season 2 didn't.)\n  	2014/07/10
1105	Blue Spring Ride	Ao Haru Ride (Aoharaido)	Production I.G	\n  	2014/07/08
1107	DRAMAtical Murder	Doramatikaru Maadaa	NAZ	\n  	2014/07/07
1108	Free! - Eternal Summer	Furii - Etaanaru sama	Kyoto Animation	\n  	2014/07/03
1109	Futsuu no Joshikousei ga [Locodol] Yatte Mita	Futsuu no Joshikousei ga [Rokodoru] Yatte Mita	Feel	\n  	2014/07/04
1110	Glasslip	Gurasurippu	P.A. Works	\n  	2014/07/03
1111	Hanayamata	Hanayamata	Madhouse	\n  	2014/07/07
1112	Himegoto	Himegoto	Asahi Production	\n  	2014/07/07
1204	Wake Up, Girls!	Ueikuappu, Gaaruzu!	Tatsunoko Production	\n  	2014/01/10
1114	Jinsei	Jinsei	Feel	\n  	2014/07/06
1115	Love Stage!!	Rabu Suteiji!!	J.C.Staff	\n  	2014/07/10
1116	Magimoji Rurumo	Majimoji Rurumo	J.C.Staff	\n  	2014/07/09
1118	Momo Kyun Sword	Momo Kyun Soudo	Project No.9	\n  	2014/07/09
1120	Monthly Girls' Nozaki-kun	Gekkan Shoujo Nozaki-kun	Dogakobo	\n  	2014/07/07
1121	PriPara	PuriPara	Tatsunoko Production	PriPara is spin off of Pretty Rhythm where it's feature Lala from All-Star Selection. She is a young fifth grade of paprika elementary school where they are forbid to having any PriTicket until they are reaching paprika junior high school. But things suddenly change when Lala receives a PriTicket from top of her hair with the help of a Prism Idol, Mireille, she became a Prism Idol and also unknowingly she possesses a 'Legendary Prism Voice'.\n  	2014/07/05
1122	Rail Wars!	Rail Wars! Nihon Kokuyuu Tetsudou Kouantai	Passione	\n  	2014/07/03
1123	Rokujyouma no Shinryakusha!?	Rokujouma no Shinryakusha!?	Silver Link	\n  	2014/07/12
1124	Sailor Moon Crystal	Bishoujo Senshi Seeraa Muun Crystal	Toei Animation	\n  	2014/07/05
1125	Seirei Tsukai no Blade Dance	Seirei Tsukai no Bureidodansu	TNK	\n  	2014/07/14
1127	Silver Will Argevollen	Shirogane no Ishi Argevollen	Xebec	\n  	2014/07/03
1128	Survival Game Club!	Sabagebu!	Studio Pierrot+	\n  	2014/07/06
1129	Sword Art Online 2	soodo aato onrain 2	A-1 Pictures	\n  	2014/07/05
1130	Terror in Resonance (Tokyo Terror)	Zankyou no Teroru (Zankyou no Terror)	MAPPA	\n  	2014/07/11
1131	Tokyo ESP	Tokyo ESP	Xebec	\n  	2014/07/12
1132	Tokyo Ghoul	Tokyo Kushu	Studio Pierrot	\n  	2014/07/04
1140	A Good Librarian Like a Good Shepherd	Daitoshokan no Hitsujikai	Hoods Entertainment	\n  	2014/10/09
1141	Amagi Brilliant Park	Amagi Buririanto Paku	Kyoto Animation	\n  	2014/10/02
1142	Bonjour: Love Flavor Patisserie	Bonjour: Koiaji Patisserie (Bonkoi)	Silver Link	\n  	2014/10/11
1143	Cloudy Laugh	Donten ni Warau	Dogakobo	\n  	2014/10/04
1144	Cross Ange: Rondo of Angels and Dragons	Cross Ange: Tenshi to Ryuu no Rondo	Sunrise	\n  	2014/10/05
1145	Denkigai no Honya-san	Denkigai no Honya-san	Shin-Ei Animation	\n  	2014/10/02
1147	Fate/stay Night: Unlimited Blade Works	Feito Sutei Naito - Anrimiteddo Bureido Waakusu	Studio Deen	\n  	2010/01/23
1148	Garo: Hono no Kokuin	Garo: Honoo no Kokuin	MAPPA	\n  	2014/10/13
1149	Girlfriend BETA	Girlfriend (Kari)	Silver Link	\n  	2014/10/13
1150	Gugure! Kokkuri-san	Gugure! Kokkuri-san	TMS Entertainment	\n  	2014/10/06
1151	Gundam Build Fighters Try	Gandamu Birudo Faitazu Try	Sunrise	\n  	2014/10/08
1152	Gundam Reconguista in G	Gundam G no Reconguista	Sunrise	\n  	2014/10/02
1153	Hybrid Child	Haiburiddo Chairudo	Studio Deen	\n  	2014/10/29
1154	I Can't Understand What My Husband Is Saying	Danna ga Nani o Itteiru ka Wakaranai Ken	Dream Creation	\n  	2014/10/03
1155	I Will Become a Twintail.	Ore, Twintail ni Narimasu.	Production IMS	\n  	2014/10/10
1156	In Search of Lost Future	Ushinawareta Mirai o Motomete (Waremete)	Feel	\n  	2014/10/04
1157	Inou Battle Within Everyday Life	Inou-Battle wa Nichijou-kei no Naka de (InoBato)	Trigger	\n  	2014/10/07
1158	Le Fruit de la Grisaia	Grisaia no Kajitsu	Front Wing	\n  	2014/10/05
1159	Log Horizon S2	Rogu Horaizun	Satelight	\n  	2014/10/04
1160	Mysterious Joker	Kaito Joker	Shin-Ei Animation	\n  	2014/10/06
1205	Witch Craft Works	Uitchikurafuto Waakusu	J.C.Staff	\n  	2014/01/05
1206	Wizard Barristers: Benmashi Cecil	Wizard Barristers: Benmashi Cecil	Arms	\n  	2014/01/12
1207	World Conquest Zvezda Plot	Sekai Seifuku: Boryaku no Zvezda	A-1 Pictures	\n  	2014/01/11
1208	Z/X Ignition	Zekusu	Nippon Ichi Software	\n  	2014/01/01
1163	Orenchi no Furo Jijou	Orenchi no Furo Jijou	Asahi Production	\n  	2014/10/06
1164	Parasyte	Kiseijuu: Sei no Kakuritsu	Madhouse	\n  	2014/10/09
1165	Shirobako	Shirobako	P.A. Works	\n  	2014/10/09
1166	Sora no Method	Sora no Mesoddo	Studio 3Hz	\n  	2014/10/05
1169	Terra Formars	Tera Fomazu	Liden Films	\n  	2014/09/27
1170	The King of the Magic Bullet and Vanadis	Madan no Ou to Vanadis	Satelight	\n  	2014/10/04
1171	The Seven Deadly Sins	Nanatsu no Taizai	A-1 Pictures	\n  	2014/10/05
1172	Trinity Seven	Toriniti Sebun: Shichi-nin no Masho Tsukai	Seven Arcs	\n  	2014/10/08
1173	Wolf Girl & Black Prince	Ookami Shoujo to Kuro Ouji	TYO Animations	\n  	2014/10/05
1174	World Trigger	Warudo Toriga	Toei Animation	The story beging after a gate to another world opened in Mikado City. The entities from the other world, called Neighbors, began sending out an invasion force, called trions, that overran the area surrounding the gate.Given their superior technology, the destruction of the city seemed only a matter of time. Suddenly an orginization called Border appeared in town, they researche the technology of the Neighbors to protect their side of the gate. In a short time they built a huge base and became established as the line of defense against the Neighbors.One day a student named Yūma transfers to the same middle-school class as Osamu, a teenager who belongs to Border. He has a weapon called Trigger that is only allowed to be possessed by people in Border.\n  	2014/10/05
1175	Yona of the Dawn	Akatsuki no Yona	Studio Pierrot	\n  	2014/10/07
1176	Your Lie in April	Shigatsu wa Kimi no Uso	A-1 Pictures	\n  	2014/10/10
1177	Yuki Yuna wa Yusha de Aru	Yuuki Yuuna wa Yuusha de Aru	Studio Gokumi	\n  	2014/10/17
1178	A Love Song to a Certain Airship Pilot	Toaru Hikushi e no Koiuta	TMS Entertainment	\n  	2014/01/06
1179	Buddy Complex	Badi Konpurekkusu	Sunrise	\n  	2014/01/05
1180	D-Fragments	Diifuragu! / D-Frag!	Brain's Base	\n  	2014/01/06
1181	Double Circle	Daburusakuru	Toshiba	\n  	2013/12/19
1182	Engaged to the Unidentified	Mikakunin de Shinkoukei	Dogakobo	Yonomi Kobeni, an ordinary girl, finds out on her 16th birthday that she is betrothed to Mitsumine Hakuya, a boy the same age as her. Hakuya moves in from the countryside and starts living with her, bringing his younger sister who is still a primary school student with him. Also added is her older sister who is already living with Kobeni and is two years older.The story revolves around these four people and their identities as "couples" and "sisters-in-law."\n  	2014/01/09
1183	Future Card Buddyfight	Fuuchaa Kaado Badifaito	OLM	\n  	2014/01/04
1184	Go! Go! 575	Iku! Iku! 575	C2C	\n  	2014/01/10
1185	Hamatora	Hamatora	NAZ	\n  	2014/01/07
1186	Hozuki no Reitetsu	Hoozuki no Reitetsu	Wit Studio	\n  	2014/01/09
1187	Inari, Konkon, Koi Iroha	Inari, Konkon, Koi Iroha	Dax Production	\n  	2014/01/16
1188	Magical Warfare	Mahou Sensou	Madhouse	\n  	2014/01/09
1189	My Big Sister Arrived	Oneechan ga Kita	C2C	\n  	2014/01/08
1190	Nisekoi: False Love	Nisekoi	Shaft	Raku Ichijou is an average high school student. He also happens to be the sole heir to the head of a Yakuza Family called the Shuei-gumi. Ten years ago, Raku made a promise... a secret promise with a girl he met. They promised one another that they will "get married when they reunite". Since then, Raku never let go of the pendant the girl gave him.Then one day, a beautiful girl named Chitoge Kirisaki transfers into Raku's class. Their chemistry was more than off. There was not a moment where they were not fighting. But by a weird turn of events, Raku and Chitoge agree to become fake lovers. Although his heart is really interested in his classmate Kosaki Onodera, Raku must continue pretending to be Chitoge's boyfriend.\n  	2014/01/11
1191	No-Rin	Nourin	Silver Link	\n  	2014/01/10
1192	Nobunaga the Fool	Nobunaga za Fuuru	Satelight	\n  	2014/01/05
1193	Nobunagun	Nubunagan	Bridge	\n  	2014/01/05
1194	Noragami	Noragami	Bones	\n  	2014/01/05
1195	Pupa	Pupa	Studio Deen	\n  	2014/01/10
1196	Recently, My Sister is Unusual	Saikin, Imouto no Yousu ga Chotto Okaishiin Da Ga. / ImoCho	Project No.9	\n  	2014/01/10
1197	Robot Girls Z	Robotto Gaaruzu Z	Toei Animation	\n  	2014/01/04
1198	Sakura Trick	Sakura Torikku	Studio Deen	The story revolves around Haruka and Yuu, two girls who go to a high school that is slated to be shut down in three years.To share something special between them, they share a kiss, and their relationship deepens from that moment onward.\n  	2014/01/09
1199	SoniAni: Super Sonico the Animation	Supa Sonika / SoniAni	White Fox	\n  	2014/01/06
1200	Space Dandy	Supeisu Dandi	Bones	\n  	2014/01/05
1201	Strange+	Strange Plus / Sutorenji Purasu	Seven	\n  	2014/01/09
1202	Sugar Soldier	Shugaa Sorujaa	Ribon	\n  	2014/01/14
1203	Tonari no Seki-kun	Tonari no Seki-kun	Shin-Ei Animation	\n  	2014/01/05
\.


--
-- Data for Name: Bookmarks; Type: TABLE DATA; Schema: public; Owner: minhnh
--

COPY "Bookmarks" (anime_id, note) FROM stdin;
808	from 12-21
492	Chii
950	bb
460	null
\.


--
-- Data for Name: Characters; Type: TABLE DATA; Schema: public; Owner: minhnh
--

COPY "Characters" (id, anime_id, name) FROM stdin;
1	1	''Lady Mona Lisa'' Komabayashi
2	1	''Lady Borgia'' Ogiwara
3	1	''Lady Cattleya'' Yamamoto
4	1	''Lady Medusa'' Katsuragi
5	1	''Lady Vampanella'' Hoshino
6	1	Aya Misaki
7	1	Fukiko Ichinomiya 'Miya-sama'
8	1	Kaoru Orihara 'Kaoru-no-kimi'
9	1	Mariko Shinobu
10	1	Megumi Furuta
11	1	Miyuki Sonobe
12	1	Nanako Misono
13	1	Nanako's father
14	1	Nanako's mother
15	1	Rei Asaka 'Hana no Saint-Juste'
16	1	Takashi Ichinomiya
17	1	Takehiko Henmi 'Oniisama'
18	1	Tomoko Arikura
19	2	Amaru Ryudo
20	2	Hajime Ryudo
21	2	Owaru Ryudo
22	2	Tsuzuku Ryudo
23	3	Arashi (Arturo Luka)
24	3	Captain Mikasa (Mikel)
25	3	Chinnen Kobotoke
26	3	Dan Titan
27	3	Hugo Fenix
28	3	Lazaro
29	3	Rikuora 
30	3	Ryota Sakamoto
31	3	Toni
32	3	Daijurou Ichigeki
33	3	Diego Alba
34	3	Gaby
35	3	Haruka Ichigeki
36	3	Misato Toudou
37	3	Nacho
38	3	Nestor
39	3	Oliver
40	3	Ray Senda
41	3	Sakamoto
42	3	Tono
43	4	Shinosuke Nohara
44	4	Misae Nohara
45	4	Ai Suotome
46	4	Himawari Nohara
47	4	Nene Sakurada
48	4	Ume Matsuzaka
49	4	Yonro Quattro
50	4	Yu Yakutsukuri
51	4	Atsuko Kutsuzoko
52	4	Atsumi Kutsuzoko
53	4	Boo Suzuki
54	4	Bunta Takakura
55	4	Chikuzo Onigawara
56	4	Ekasuky Satoo
57	4	Enzoshumo Sakurada
58	4	Fumie Honda
59	4	Ginnosuke Nohara
60	4	Hiroshi Nohara
61	4	Hitoshi Honda
62	4	Hitoshi Joronebo
63	4	John Yamada
64	4	Jtanekawa Tsubashijima
65	4	Junichi Ishizaka
66	4	Junko Koshitani
67	4	Kanna Onigawara
68	4	Kawaguchi Konomori
69	4	Kazama's Uncle
70	4	Keiko Honda
71	4	Kensuke Suzuki
72	4	Kenta Musashino
73	4	Koji Yaneura
74	4	Kota Shijimi
75	4	Kuriyo Urima
76	4	Kuroiso Jorotemaru
77	4	Kyo
78	4	Kyousuke NIgariya
79	4	Kyuji Oda
80	4	Lisa Aspirin
81	4	Mai Akikaze
82	4	Mari Monro
83	4	Mari Shiwasu
84	4	Mary Yanegawa
85	4	Masae Koyama
86	4	Masao Sato
87	4	Masumi Ageo
88	4	Masuo Steroid
89	4	Matsu Matsuzaka
90	4	Micchi Hatogaya
91	4	Midori Yoshinaga
92	4	Mimiko Sakura
93	4	Mineko Kazama
94	4	Mochida Hatiya
95	4	Moe-Pi Kantomsky 
96	4	Moeko Sakurada
97	4	Musae Koyama
98	4	Nakamura Komatshi
99	4	Nanako Ohara
100	4	Ogin Nanegawa
101	4	Ouijima Kitamoto
102	4	Picasso Ogawa
103	4	Robert McGuire
104	4	Ryuko Okegawa
105	4	Satoshi Honda
106	4	Shiizou Atsukuru
107	4	Shijurou Ohara
108	4	Shinko Namurokoko
109	4	Shinobu Kandadori
110	4	Shinobu Sakai
111	4	Shira Koramuratsy
112	4	Sometani Hohoteko
113	4	Taeko Yoshii
114	4	Take Matsuzaka
115	4	Takeshi
116	4	Tokuro Gyoda
117	4	Tomo-Chan
118	4	Topema Mappet
119	4	Toyo Ishiuto
120	4	Tsuru Nohara
121	4	Uriko Kuruma
122	4	Usuto Yoshii
123	4	Uyiko Norohashi 
124	4	Yasuo Kawamura
125	4	Yoko Noshetami
126	4	Yoshiji Koyama
127	4	Yoshirin Hatogaya
128	4	Yoshito Ushui
129	4	Yugar Takakura
130	4	Yumi Kusaka
131	5	Yuri
132	5	Maggie Edelweiss
133	5	Mary Bell
134	5	Vivian
135	5	Bra
136	5	Furoria
137	5	Grandma Rose
138	5	Jijiberu
139	5	Jito
140	5	Ken
141	5	Noppo
142	5	Tambourine
143	6	Sailor Mars
144	6	Raye Hino
145	6	Sailor Mercury
146	6	Sailor Venus
147	6	Mina Aino
148	6	Sailor Moon
149	6	Sailor Jupiter
150	6	Serena Tsukino
151	6	Lita Kino
152	6	Amy Mizuno
153	6	Luna
154	6	Darien Shields
155	6	Artemis
156	6	Tuxedo Mask
157	6	Queen Serenity
158	6	Patricia Haruna
159	6	Nephlite
160	6	Molly Baker
161	6	Zoycite
162	6	Jedite
163	6	Malachite
164	6	Sammy Tsukino
165	6	Andrew Foreman
166	6	Ann Ohara
167	6	Brandy
168	6	Cassie
169	6	Chad Holdenford
170	6	Countess Rose
171	6	Helen Lambert
172	6	Herbert
173	6	Ikuko Tsukino
174	6	Janelyn
175	6	Kari
176	6	Kariko Tokoyama
177	6	Katarina
178	6	Katie Sandler
179	6	Kenji Tsukino
180	6	Laurie
181	6	Melvin Overstreet
182	6	Mika Cassidy
183	6	Mikan Shiratori
184	6	Misha
185	6	Nancy Vargas
186	6	Peggy Jones/ Lonnie Lenai
187	6	Peter Fisher
188	6	Princess Dia
189	6	Queen Beryl
190	6	Queen Metalia
191	6	Rita Blake
192	6	Ryo Urawa
193	6	Sakiko
194	6	Stormy Kinkade
195	6	Yoshiko Cassidy
196	6	Yusuke Amade
197	6	Yuuji Kimura
198	7	Marco Pagot \\ Porco Rosso
199	7	Fio Piccolo
200	7	Madame Gina
201	8	Kaguya (Empress of the Moon)
202	8	Sayaka Mine
203	8	Kenjuro Kurogane
204	8	Kojirou Sasaki
205	8	Musashi Miyamoto
206	8	Takeshi Onimaru
207	8	Yaiba Kurogane
208	9	Sailor Mars
209	9	Raye Hino
210	9	Sailor Mercury
211	9	Sailor Venus
212	9	Mina Aino
213	9	Sailor Moon
214	9	Sailor Jupiter
215	9	Serena Tsukino
216	9	Lita Kino
217	9	Amy Mizuno
218	9	Luna
219	9	Rini Tsukino
220	9	Sailor Pluto
221	9	Darien Shields
222	9	Artemis
223	9	Tuxedo Mask
224	9	Moonlight Knight
225	9	Bertie
226	9	Prince Diamond
227	9	Wicked Lady
228	9	Catzi
229	9	Rubeus
230	9	Al
231	9	Sapphire
232	9	Alan Granger
233	9	Anne Granger
234	9	Avery
235	9	Emerald
236	9	En
237	9	Molly Baker
238	9	Prizma
239	9	Elizabeth (Lizzie) Hansford
240	9	Manami
241	9	Melvin Overstreet
242	9	Mie Sayama
243	9	Momoko Momohara
244	10	Sally Yoshinaga
245	10	Maito Senpuuji 
246	11	Yuu Matsuura
247	11	Jinny Golding
248	11	Tsutomu Rokutanda
249	11	Anju Kitahara
250	11	Arimi Suzuki
251	11	Brian Grant
252	11	Ginta Suou
253	11	Kei Tsuchiya
254	11	Meiko Akizuki
255	11	Michael Grant
256	11	Miki Koishikawa
257	11	Namura Shinichi
258	11	Satoshi Miwa
259	11	Suzu Sakuma
260	11	Suzuki Arimi
261	11	Yayoi Takase
262	12	Ryoko Hakubi
263	12	Kiyone Makibi
264	12	Sasami Masaki Jurai
265	12	Little Washu Hakubi
266	12	Ryo-Ohki
267	12	Tenchi Masaki
268	12	Mihoshi Kuramitsu
269	13	Mokona Modoki 
270	13	Caldina
271	13	Zagato
272	13	Hikaru Shidou
273	13	Umi Ryuuzaki
274	13	Ascot
275	13	Master Mage Clef / Guru Clef
276	13	Presea
277	13	Primera
278	13	Alcyone
279	13	Fuu Hououji
280	13	Lady Aska
281	13	Eagle Vision
282	13	Ferio
283	13	Geo Metro
284	13	Inouva
285	13	Lady Debonair
286	13	Lafarga
287	13	Lantis
288	13	Mira
289	13	Princess Emeraude
290	13	Tarta
291	13	Tatra
292	13	Zazu Torque
293	14	Alice Sakaguchi
294	14	Daisuke Dobayashi
295	14	Hajime Sakaguchi
296	14	Haruhikou Kazama
297	14	Issei Nishikiyori
298	14	Jinpachi Ogura
299	14	Rin Kobayashi
300	14	Sakura Kokushou
301	15	Marin
302	15	Chacha
303	16	Nanami Simpson
304	16	Cristina Cheryl Melville
305	16	Tupia
306	16	Alfonso Andretti
307	16	Beach
308	16	Dr. Lecomte
309	16	Enrico
310	16	Gale
311	16	James McIntyre
312	16	Metalcraw
313	16	Natarya Kaminskaya Benekkusu
314	16	Rosalind
315	16	Scott Simpson
316	16	Thomas Lecomte
317	16	Tico
318	17	Alice
319	17	Inaba
320	17	Inspector Arai
321	17	Nina
322	18	Yoko
323	18	Asakura
324	18	Chris Brown
325	18	Colonel Strings
326	18	Demitrio Mardini
327	18	Dr. Rene D'anclaude
328	18	Eddie Barrows
329	18	Eugene H. Allen
330	18	Federico O'Hara
331	18	Jenny
332	18	Jessica Manning
333	18	Julian Moore
334	18	Kelly McCanon
335	18	Larry Randolph
336	18	Lowell Gantz
337	18	Mouse
338	18	Naomi Armitage
339	18	Replicas of Armitage 
340	18	Rosalind Holhess
341	18	Ross Sylibus
342	18	Wilbur D'anclaude
343	19	Azusa Noyama
344	19	Jidama Kodama
345	19	Kaoru Nishino
346	19	Yoko Sakakibara
347	19	Yunosuke Ogasawara
348	20	Duo Maxwell
349	20	Zechs Marquise
350	20	Heero Yuy
351	20	Chang Wufei
352	20	Quatre Rabarba Winner
353	20	Relena Darlian
354	20	Treize Khushrenada
355	20	Trowa Barton
356	20	Doctor J
357	20	Dorothy Catalonia
358	20	Cathrine Bloom
359	20	Dermail
360	20	Doctor S
361	20	Howard
362	20	Lady Une
363	20	Lucrezia Noin
364	20	Professor G
365	20	Quinze
366	20	Rasid Kurama
367	20	Sally Po
368	20	Tubarov
369	21	Nuriko
370	21	Mitsukake
371	21	Nakago
372	21	Shoka
373	21	Subaru
374	21	Tetsuya Kajiwara
375	21	Tomo
376	21	Yui Hongou
377	21	Amiboshi
378	21	Ashitare
379	21	Chichiri
380	21	Chiriko
381	21	Hikitsu
382	21	Hotohori
383	21	Keisuke Yuuki
384	21	Kouji
385	21	Miaka Yuuki
386	21	Miboshi
387	21	Nyan-Nyan
388	21	Ren Shigyou
389	21	Seiryuu
390	21	Seiryuu (Dragon form)
391	21	Soi
392	21	Suboshi
393	21	Suzaku
394	21	Suzaku (Phoenix form)
395	21	Taiitsukun
396	21	Tama
397	21	Tamahome
398	21	Tasuki
399	21	Tatara
400	21	Tomite
401	22	Kyouko Iwashita
402	23	Sailor Mars
403	23	Raye Hino
404	23	Sailor Mercury
405	23	Sailor Venus
406	23	Mina Aino
407	23	Sailor Moon
408	23	Sailor Jupiter
409	23	Serena Tsukino
410	23	Lita Kino
411	23	Sailor Neptune
412	23	Hotaru Tomoe
413	23	Sailor Saturn
414	23	Sailor Uranus
415	23	Amy Mizuno
416	23	Luna
417	23	Rini Tsukino
418	23	Sailor Mini Moon
419	23	Darien Shields
420	23	Artemis
421	23	Tuxedo Mask
422	23	Amara Tenoh
423	23	Michelle Kaioh
424	23	CereCere
425	23	PallaPalla
426	23	Fisheye
427	23	Tiger's Eye
428	23	Helios
429	23	JunJun
430	23	Lilica Hubert
431	23	Queen Nehelenia
432	23	Fuyumi Akiyama
433	23	Hawk's Eye
434	23	Koby / Kobayashi
435	23	Melvin Overstreet
436	23	Miharu Akiyama
437	23	Nanako
438	23	Robert
439	23	Saori
440	23	VesVes
441	23	Zirconia
442	24	Lina Inverse (Reena)
443	24	Zelgadis Greywords
444	24	Amelia Wil Tesla Seyrunn
445	24	Xellos
446	24	Gourry Gabriev (Gaudy)
447	24	Milfina / Martina Zoana Mel Navratilova
448	24	Mimi & Nene
449	24	Sylphiel Nels Lahda
450	24	Filia Ul Copt
451	24	Jillas Jillos Jilles
452	24	Marlene Calvert
453	24	Rezo the Red Priest
454	24	Rowdy Gabriev
455	24	Zangulus
456	24	Erisiel Vrumugun
457	24	Gracia Ul Naga Saillune (Naga The Serpent)
458	24	Hallas Lyes
459	24	Kira
460	24	Lark
461	24	Mazenda
462	24	Mellyroon
463	24	Mr Rossburg
464	24	Philionel El Di Saillune
465	24	Rynnea
466	24	Vrumugun
467	24	Almayce
468	24	Cally
469	24	Copy Rezo
470	24	Dilgear
471	24	Erulogos
472	24	Gravos Maunttop
473	24	Kanzel
474	24	Lord Calvert
475	24	Luna Inverse
476	24	Remy
477	24	Rodimus
478	24	Ruby Eye Shabranigudu
479	24	Selena Biatz
480	24	Sirius
481	24	Thornfort
482	24	Valgaav
483	24	Volun
484	24	Zolf
485	25	Eri Kondo
486	25	Lavrin
487	25	Mayuko Kiyokawa
488	25	Megumi Todo
489	25	Shimada Miho
490	25	Isami Hanaoka
491	25	Jasmine
492	25	Maki Izumi
493	25	Reiko Hanaoka
494	25	Ruriko Serizawa
495	25	Soushi Yukimi
496	25	Tapioca
497	25	Toshi Tsukikage
498	25	Haruka Takagi
499	25	Heisuke
500	25	Hiroko Karasuma
501	25	Kai Hanaoka
502	25	Kamonojou Serizawa
503	25	Kanryuusai Hanaoka
504	25	Kazuma Sakamoto
505	25	Kei Tsukikage
506	25	Kikumaru Toujou Beppu
507	25	Litchee
508	25	Rina Isao
509	25	Sakurako Kakitsubata
510	25	Shigesuke
511	25	Takamaru Toujou Beppu
512	25	Tenshi Gunsou
513	26	Ryoko Hakubi
514	26	Kiyone Makibi
515	26	Sasami Masaki Jurai
516	26	Little Washu Hakubi
517	26	Ryo-Ohki
518	26	Tenchi Masaki
519	26	Mihoshi Kuramitsu
520	26	Pretty Sammy
521	26	Ayeka Masaki Jurai
522	26	GP Section Chief
523	26	Mecha Washu
524	26	Mirai Ozora
525	26	Nagi
526	26	Ryoko Hakubi (young)
527	26	Amarube
528	26	Ayeka Masaki Jurai(young)
529	26	Azaka
530	26	Beach MC
531	26	Beef-Bowl Stand Manager
532	26	Cam Nadold's Manager
533	26	Construction Foreman
534	26	Galactic Newscaster
535	26	GP Detective Sgt.
536	26	GP Emergency Dispatcher
537	26	Guardian Pagoda Azaka
538	26	Guardian Pagoda Kamidake
539	26	Jurai Admiral
540	26	Jurai Captain
541	26	Jurai Checkpoint Inspector
542	26	Jurai Checkpoint Official
543	26	Jurai Checkpoint Operator
544	26	Jurai Helmsman(operator)
545	26	Jurai Security Director
546	26	Kagato
547	26	Kamidake
548	26	Katsuhito Masaki (Grampa)
549	26	Ken-Ohki
550	26	Ken-Ohki (ship)
551	26	Minami Kuramitsu
552	26	Mirei
553	26	Mitsuki
554	26	Moldiver
555	26	Nobuyuki Masaki
556	26	Reiko
557	26	Ryo-Ohki (ship)
558	26	Ryu-Oh
559	26	Ryu-Oh (tree)
560	26	Sagami
561	26	Space Granny
562	26	Tenko
563	26	Tessei
564	26	Tetta
565	26	Yagami
566	26	Yura
567	27	Yousuke Fuuma
568	27	Momoko Hanasaki
569	27	Aphrodite 
570	27	Hinagiku Tamano
571	27	Hiromi Kawanami
572	27	Kazuya Yanagiba
573	27	Pluie
574	27	Reine Devila 
575	27	Sakura Hanasaki
576	27	Scarlet Ohara
577	27	Takuro Amano
578	27	Yuri Tanima 
579	28	Pirotess
580	29	Sasami Masaki Jurai
581	29	Ryo-Ohki
582	29	Pretty Sammy
583	29	Azaka
584	29	Kamidake
585	29	Misao Amano
586	29	Pixy Misa
587	29	Ramia
588	29	Rumiya
589	30	Dewey
590	30	Nozomu Kanou
591	30	Ririka Moriya
592	30	Seiya Uzaki
593	31	Lina Inverse (Reena)
594	31	Gracia Ul Naga Saillune (Naga The Serpent)
595	32	Asako Tsukishima
596	32	Seiji Amasawa
597	32	Shizuku Tsukishima
598	32	Miss Kosaka
599	32	Seiya Tsukishima
600	32	Shiho Tsukishima
601	32	Shiro Nishi
602	32	Sugimura
603	32	Yuko Harada
604	33	Katsuhiko Jinnai
605	33	Ifurita
606	33	Afura Mann
607	33	Alielle Relrye
608	33	Makoto Mizuhara
609	33	Masamichi Fujisawa
610	33	Miz Mishtal
611	33	Nanami Jinnai
612	33	Queen Diva
613	33	Rune Venus
614	33	Shayla Shayla
615	34	Motoko Kusanagi
616	34	Togusa
617	34	Batou
618	34	Ishikawa
619	34	Puppet Master
620	34	Nakamura
621	35	Ayuko Hayami
622	35	Madam President
623	35	Kintarou Ooe
624	35	Reiko Terayama
625	35	Taruruuto
626	36	Becky Farah
627	36	Minnie May Hopkins
628	36	Natasha Radinov
629	36	Rally Vincent
630	37	Commander
631	37	Detective Todo
632	37	Dr. Zaiclit
633	37	Dr.Zaiclit's Assistant
634	37	Erika
635	37	Hideo Akai
636	37	Inagoman
637	37	Konishi
638	37	Kurageman
639	37	Matsushita
640	37	Mew Fumizuki
641	37	Mica Minazuki
642	37	Mimizuman
643	37	Shoko Aida
644	37	Teacher
645	37	TV Reporter
646	38	Tsutomu Yamaguchi
647	38	Mikako Kouda
648	39	Rei Ayanami
649	39	Asuka Langley Soryu
650	39	Misato Katsuragi
651	39	Kaworu Nagisa
652	39	Shinji Ikari
653	39	Mari Illustrious Makinami
654	39	Pen Pen
655	39	Ritsuko Akagi
656	39	Yui Ikari
657	39	Gendou Ikari
658	39	Hikari Horaki
659	39	Maya Ibuki
660	39	Kensuke Aida
661	39	Ryouji Kaji
662	39	Shigeru Aoba
663	39	Toji Suzuhara
664	39	Kouzou Fuyutsuki
665	39	Makoto Hyuga
666	39	Naoko Akagi
667	40	Daiki Asuka
668	40	Eimi Haneoka
669	40	Manato Sawatari
670	40	Meimi Haneoka
671	40	Miyuki Morishita
672	40	Genichiro Haneoka
673	40	Hideo Morinaka
674	40	Kyoko 
675	40	Maju Sendo
676	40	Rina Takamiya
677	40	Rosemary (Hippolyta Sendo)
678	40	Ruby
679	40	Ryoko
680	40	Seira Mimori
681	40	Tomoki Asuka
682	41	Chocolate Misu
683	41	Carrot Glace
684	41	Dotta
685	41	Tira Misu
686	41	Big Mama
687	41	Gateau Mocha
688	41	Marron Glace
689	41	Mille Feuille
690	42	Akira Yuki
691	42	Dural
692	42	Eva Durix
693	42	Jacky Bryant
694	42	Jeffry McWild
695	42	Kagemaru
696	42	Lau Chan
697	42	Onimaru
698	42	Pai Chan
699	42	Sarah Bryant
700	42	Shun Di
701	42	Wolf Hawkfield
702	43	Aicho the Sky
703	43	Basara
704	43	Fuusuke the Wind
705	43	Mekira
706	43	Rihoko
707	43	Ajirada
708	43	Hiroyuki
709	43	Toji the Ground
710	44	Anita 
711	44	Adolfo Montovani
712	44	Advisor to King
713	44	Alfredo Martini
714	44	Angeletta Montovani 
715	44	Anselmo Rossi
716	44	Antonio
717	44	Augusto
718	44	Bartolo
719	44	Benaribo
720	44	Bianca Martini
721	44	Camilla
722	44	Citron
723	44	Countess Lady Isabella Montovani
724	44	Cristina
725	44	Dante
726	44	Edda Rossi
727	44	Enrico
728	44	Faustino
729	44	Franco
730	44	Giovanni
731	44	Giuliano
732	44	Gurazera Martini
733	44	Hannah
734	44	Ivo
735	44	Jessica
736	44	Johanna
737	44	Lambert
738	44	Lorena
739	44	Luini Antonio
740	44	Madera
741	44	Marcello Rossi
742	44	Marcio
743	44	Maria
744	44	Marieta
745	44	Matsuo
746	44	Matti Rio
747	44	Maurizio Martini
748	44	Micaela
749	44	Michael
750	44	Mimi Rossi
751	44	Moretti
752	44	Muzetta
753	44	Nana
754	44	Nikita
755	44	Paulino
756	44	Pia
757	44	Pietro and Carlo
758	44	Pittorio Martini
759	44	Professor Casella
760	44	Rinaldo
761	44	Rio
762	44	Roberto
763	44	Romeo
764	44	Saberio
765	44	Takioni
766	44	Theo
767	44	Tonio
768	44	Viridiana
769	44	Vittorio Emanuele II
770	44	Zia Patori Martini
771	45	Chiaki Enno
772	45	Chihaya Enno
773	45	Ako
774	45	Anju
775	45	Glenn
776	45	Goki
777	45	Gora
778	45	Hazuki Inugami
779	45	Hirumaki
780	45	Jukai Enno
781	45	Kabura
782	45	Kagetora
783	45	Karma
784	45	Kazue Hayami
785	45	Koin
786	45	Kokutei
787	45	Koori
788	45	Kuribayashi
789	45	Kyoji Gotou
790	45	Lulupapa
791	45	Nagi
792	45	Ozuno Enno
793	45	Rou Inugami
794	45	Saki Enno
795	45	Sayaka Nagumo
796	45	Sohma Miki
797	45	Zenki
798	46	Garrod Ran 
799	46	Kortol Sou
800	46	Saelia Sou
801	46	Abel Bauer
802	46	Aimzat Kartral
803	46	Carris Nautilus
804	46	Crockas
805	46	Demar Griffe
806	46	Doza Bale
807	46	Drasso Sou
808	46	Duett Langraph
809	46	Ennil El
810	46	Fixx Bloodman
811	46	Grant Stewart
812	46	Grits Joe
813	46	Harten
814	46	Jamil Neate
815	46	Jenos Crisis
816	46	Karon Ratto
817	46	Katokk Alzamille
818	46	Kid Salsamille
819	46	Lancerow Dawell
820	46	Lee Jackson
821	46	Lumark Kauto
822	46	Marcus Guy
823	46	Miles Goodman
824	46	Milra Draid
825	46	Nicola Fafas
826	46	Nine
827	46	Nomoa Long
828	46	Olba Frost
829	46	Onimimu Sou
830	46	Pala Sys
831	46	Reich Anto
832	46	Rococo
833	46	Roiza
834	46	Romanof
835	46	Rooks Hanomark
836	46	Rosa Intenso
837	46	Rosso Aramant
838	46	Roybea Loy
839	46	Sala Tyrrell
840	46	Seidel Rasso
841	46	Shagia Frost
842	46	Shingo Mori
843	46	Shora Sou
844	46	Techcs Farzenberg
845	46	Tessa Tain
846	46	Tiffa Adill
847	46	Togusa Ain
848	46	Toniya Malme
849	46	Von Alternative
850	46	Wedoba Morte
851	46	White Dolphin
852	46	Willis Aramis
853	46	Witz Sou
854	46	Yurina Sonohara
855	46	Zakott Dattonel
856	47	Lilica Ebett
857	47	Maya Jingu
858	47	Rio Kinezono
859	48	Kyouko Inaba
860	48	Yukime
861	48	Hiroshi Tateno
862	48	Kumiko Iijima
863	48	Kyousuke Tamamo
864	48	Meisuke 'Nube' Nueno
865	48	Miki Hosokawa
866	48	Noriko Nakajima
867	48	Ritsuko Takahashi
868	48	Akira Yamaguchi
869	48	Black cloak
870	48	Izuna Hazuki
871	48	Katsuya Kimura
872	48	Makoto Kurita
873	48	Masaru Kaneda
874	48	Shuuichi Shirato
875	49	Sana Kurata
876	49	Akito Hayama
877	49	Fuuka Matsui
878	49	Rei Sagami
879	49	Sicil Hamilton
880	49	Aono Ohki
881	49	Asako Kurumi
882	49	Aya Sugita
883	49	Ayumi
884	49	Babbit
885	49	Hisae Kamayai
886	49	Keiko Sakai
887	49	Mako Sonoda 
888	49	Mami Suzuki
889	49	Mariko Sakai
890	49	Mayu Tomita
891	49	Michelle Hamilton
892	49	Mika
893	49	Misako Kurata
894	49	Naozumi Kamura
895	49	Natsumi Hayama
896	49	Shinichi Gomi
897	49	Takeshi Gojo
898	49	Tsuyoshi Ohki
899	49	Yui
900	50	Sailor Mars
901	50	Raye Hino
902	50	Sailor Mercury
903	50	Sailor Venus
904	50	Mina Aino
905	50	Sailor Moon
906	50	Sailor Jupiter
907	50	Serena Tsukino
908	50	Lita Kino
909	50	Sailor Neptune
910	50	Hotaru Tomoe
911	50	Sailor Saturn
912	50	Sailor Uranus
913	50	Amy Mizuno
914	50	Luna
915	50	Rini Tsukino
916	50	Sailor Mini Moon
917	50	Darien Shields
918	50	Tuxedo Mask
919	50	Amara Tenoh
920	50	ChibiChibi
921	50	Michelle Kaioh
922	50	Yaten Lights
923	50	Sailor Iron Mouse
924	50	Seiya Lights
925	50	Princess Kakyuu
926	50	Sailor Aluminum Seiren
927	50	Sailor Ceres
928	50	Sailor Heavy Metal Papillon
929	50	Sailor Star Fighter
930	50	Sailor Star Healer
931	50	Shadow Galaxia
932	50	Akane Gushiken
933	50	Doctor Gia
934	50	Ittou Asanuma
935	50	Misa
936	50	Noriko Okamachi
937	50	Sailor Cosmos
938	50	Sailor Juno
939	50	Sailor Lead Crow
940	50	Sailor Pallas
941	50	Sailor Star Maker
942	50	Sailor Tin Nyanko
943	50	Sailor Vesta
944	50	Sonoko Ijuuin
945	50	Taiki Lights
946	50	Wataru Amanogawa
947	50	Yuji Kayama
948	51	Lina Inverse (Reena)
949	51	Zelgadis Greywords
950	51	Amelia Wil Tesla Seyrunn
951	51	Xellos
952	51	Gourry Gabriev (Gaudy)
953	51	Milfina / Martina Zoana Mel Navratilova
954	51	Sylphiel Nels Lahda
955	51	Filia Ul Copt
956	51	Gaav
957	51	Gracia Ul Naga Saillune (Naga The Serpent)
958	51	Keith
959	51	Miwan
960	51	Philionel El Di Saillune
961	51	Auntie Aqua
962	51	Hellmaster Fibrizo
963	51	Valgaav
964	52	Ryoko Hakubi
965	52	Kiyone Makibi
966	52	Sasami Masaki Jurai
967	52	Little Washu Hakubi
968	52	Ryo-Ohki
969	52	Tenchi Masaki
970	52	Mihoshi Kuramitsu
971	52	Ayeka Masaki Jurai
972	52	Achika Masaki
973	52	Achika Masaki Jurai
974	52	Guardian Pagoda Azaka
975	52	Guardian Pagoda Kamidake
976	52	Kain
977	52	Katsuhito Masaki (Grampa)
978	53	Jeanne
979	53	Alex
980	53	Bingo
981	53	Catherine
982	53	Charles
983	53	Chuchu
984	53	Cinderella 
985	53	Danton
986	53	Duke Foyer
987	53	Duke Zaral 
988	53	Francoise
989	53	Hans
990	53	Ian
991	53	Isabelle
992	53	La Valliere
993	53	Marie
994	53	Melville
995	53	Mischa
996	53	Miss Paulette
997	53	Nicolas
998	53	Pappy
999	53	Patch
1000	53	The King
1001	53	The Queen
1002	54	Merle
1003	54	Van Fanel
1004	54	Hitomi Kanzaki
1005	54	Millerna Aston
1006	54	Dryden Fassa
1007	54	Folken Fanel
1008	54	Allen Schezar
1009	54	Dilandau Albatou
1010	55	Eiji Shinjo
1011	55	Ellis 
1012	55	Tracy
1013	55	Chaos
1014	55	Gaia
1015	55	Kayin Amoh
1016	55	Sho Shinjo
1017	55	Sofia 
1018	55	Uranus
1019	56	Lina Inverse (Reena)
1020	56	Galef Kainzart
1021	57	Lina Inverse (Reena)
1022	57	Gracia Ul Naga Saillune (Naga The Serpent)
1023	57	Diol
1024	57	Galda
1025	57	Goldias
1026	57	Jeffrey Mailstar
1027	57	Josephine
1028	57	Lagan
1029	57	Vista
1030	58	Sasami Masaki Jurai
1031	58	Ryo-Ohki
1032	58	Pretty Sammy
1033	58	Misao Amano
1034	58	Pixy Misa
1035	58	Ramia
1036	58	Rumiya
1037	59	Lime
1038	59	Tiger
1039	59	Baiko
1040	59	Bloodberry
1041	59	Cherry
1042	59	Lorelei
1043	59	Luchs
1044	59	Gelhardt von Faust
1045	59	Marine
1046	59	Mitsurugi Hanagata
1047	59	Otaru Mamiya
1048	59	Panther
1049	59	Tamasaburo
1050	60	Hamel 
1051	60	Raiel 
1052	60	Sizer 
1053	61	Goro Hoshiwatari
1054	61	Kanea Marigold
1055	61	Katsura Tenjoin
1056	61	Marron
1057	61	Monica Francoise
1058	62	Miyuki Kobayakawa
1059	62	Natsumi Tsujimoto
1060	62	Yoriko Nikaido
1061	63	Phantom Thief Kid
1062	63	Conan Edogawa
1063	63	Harley Hartwell
1064	63	Jimmy Kudo
1065	63	Vi Graythorn
1066	63	Shuichi Akai
1067	63	Vivian Kudo
1068	63	Rachel Moore
1069	63	Vermouth / Sharon Vineyard
1070	63	Akemi Miyano
1071	63	Amy Yeager
1072	63	Booker Kudo
1073	63	Detective Saimone
1074	63	Gin
1075	63	Harry Wilder
1076	63	Jodie Starling
1077	63	Joseph Megure
1078	63	Kansuke Yamato
1079	63	Kirsten Thomas
1080	63	Liz Faulkner
1081	63	Makoto Kyogoku
1082	63	Saguru Hakuba
1083	63	Yui Uehara
1084	63	Akako Koizumi
1085	63	Andre Camel
1086	63	Aoko Nakamori
1087	63	Chianti
1088	63	Chief Thomas
1089	63	Eisuke Hondou
1090	63	Ethan Hondou
1091	63	Eva Kadan
1092	63	George Kaminski
1093	63	Hidemi Hondou / Kir
1094	63	Inspector Mangum
1095	63	Inspector Odin
1096	63	James Black
1097	63	Kaito Kuroba
1098	63	Kristopher McLaughlin
1099	63	Mace Fuller
1100	63	Martin Hartwell
1101	63	Masumi Sera
1102	63	Mitch Tennison
1103	63	Naeko Miike
1104	63	Nicholas Santos
1105	63	Richard Moore
1106	63	Serena Sebastian
1107	63	Shizuka Hartwell
1108	63	Subaru Okiya
1109	63	Taka'aki Morofushi
1110	63	Tomoaki Araide
1111	63	Vodka
1112	63	Yumi Miyamoto
1113	63	Azusa Enomoto
1114	63	Bernie Biggers
1115	63	Harrison Akers 
1116	63	Hershel Agasa
1117	63	Inspector Worthington
1118	63	Inspector Yuminaga
1119	63	Jinpei Matsuda
1120	63	Jirokichi Sebastian
1121	63	Jugo Yokomizo
1122	63	Keiko Momoi
1123	63	Konosuke Jii
1124	63	Korn
1125	63	Kouzaburou Hijikata
1126	63	Pisco
1127	63	Rikumichi Kusuda
1128	63	Rose
1129	63	Shiho Miyano
1130	63	Shinobu Yuchi
1131	63	Spider
1132	63	Terumi Hoshino
1133	63	Toichi Kuroba
1134	63	Tooru Amuro
1135	63	Yoko Okino
1136	64	Sandy Monaghan
1137	64	Colin Jones
1138	64	John Crow
1139	64	Lassie
1140	64	Priscilla Rudling
1141	65	Himura Kenshin
1142	65	Sanosuke Sagara
1143	65	Aoshi Shinomori
1144	65	Kaoru Kamiya
1145	65	Misao Makimachi
1146	65	Soujirou Seta
1147	65	Yahiko Myojin
1148	65	Hajime Saitou
1149	65	Yumi Komagata
1150	65	Kamatari Honjou
1151	65	Megumi Takani
1152	65	Sayo 'Magdaria' Amakusa
1153	65	Seijuurou Hiko 
1154	65	Tomoe Yukishiro
1155	65	Anji Yuukuuzan
1156	65	Chou Sawagejou
1157	65	Hannya
1158	65	Jinei Udoh
1159	65	Makoto Shishio
1160	65	Usui Uonuma 
1161	66	Akihito Seki
1162	66	Kyoko Sakakibara
1163	66	Riko Hidaka
1164	66	Shiina Hekirunrun
1165	66	Shogo Yamadera
1166	66	Sugura Sasaki
1167	66	Tsukasa Nakamura
1168	66	Hiroya Matsumoto
1169	66	Hitomi Kasahara
1170	66	Ryoichi Hayami
1171	66	Sasaki 
1172	66	Sekito 
1173	66	Shotaro Ono
1174	66	Youta Matsumoto
1175	67	Nagisa Azuya
1176	67	Suoh Takamura
1177	67	Akira Ijyuin
1178	67	Utako Ohkawa
1179	67	Nokoru Imonoyama
1180	68	Batanen Fujioka
1181	68	Fonne Walkure
1182	68	Kasumi
1183	68	Little Batanen
1184	68	Natsuki Sasahara
1185	68	Peau D'Roquefort
1186	68	Sakunoshin Chikura
1187	68	Sakura Bokuseiinmonzeninari
1188	68	Tommy Fujioka
1189	69	Morrigan Aensland
1190	69	Felicia
1191	69	Hsien-Ko
1192	69	Mei-Ling / Shao Lin-Lin
1193	69	Anita
1194	69	Demitri Maximoff
1195	69	Donovan Baine
1196	69	Huitzil / Phobos
1197	69	Jon Talbain / Gallon
1198	69	Pyron
1199	69	Zabel Zarock / Lord Raptor
1200	70	Juri Arisugawa
1201	70	Nanami Kiryuu
1202	70	Anthy Himemiya
1203	70	Chigusa Sanjouin
1204	70	Touga Kiryuu
1205	70	Utena Tenjou
1206	70	Kozue Kaoru
1207	70	Miki Kaoru
1208	70	Souji Mikage
1209	70	Wakaba Shinohara
1210	70	Akio Ohtori
1211	70	Chu-Chu
1212	70	Dios
1213	70	Kanae Ohtori
1214	70	Keiko Sonoda
1215	70	Kyouichi Saionji
1216	70	Mamiya Chida
1217	70	Mari Hozumi
1218	70	Mitsuru Tsuwabuki
1219	70	Ruka Tsuchiya
1220	70	Shiori Takatsuki
1221	70	Tatsuya Kazami
1222	70	Tokiko Chida
1223	71	Lina Inverse (Reena)
1224	71	Zelgadis Greywords
1225	71	Amelia Wil Tesla Seyrunn
1226	71	Xellos
1227	71	Gourry Gabriev (Gaudy)
1228	71	Milfina / Martina Zoana Mel Navratilova
1229	71	Filia Ul Copt
1230	71	Gracia Ul Naga Saillune (Naga The Serpent)
1231	71	Kerel
1232	71	Philionel El Di Saillune
1233	71	Laila
1234	71	Valgaav
1235	72	Kage Houshi
1236	72	Domon Ishijima
1237	72	Fuuko Kirisawa
1238	72	Ganko Morikawa
1239	72	Kaoru Koganei
1240	72	Kurei Mori
1241	72	Nemi
1242	72	Recca Hanabishi 
1243	72	Reiran Katashiro
1244	72	Saicho
1245	72	Tatsuko
1246	72	Tokiya Mikagami
1247	72	Yanagi Sakoshita
1248	72	Youko
1249	73	Lina Inverse (Reena)
1250	73	Gracia Ul Naga Saillune (Naga The Serpent)
1251	73	Huey Einburg
1252	73	Galia Einburg
1253	73	Granion's Aid
1254	73	Laia Einburg
1255	73	Lord Granion
1256	73	Lord Haizen
1257	74	Lime
1258	74	Tiger
1259	74	Baiko
1260	74	Bloodberry
1261	74	Cherry
1262	74	Lorelei
1263	74	Luchs
1264	74	Gelhardt von Faust
1265	74	Marine
1266	74	Mitsurugi Hanagata
1267	74	Otaru Mamiya
1268	74	Panther
1269	74	Tamasaburo
1270	75	Princess Silver
1271	76	Bolt Crank
1272	77	Araki Mataemon
1273	77	Jubei Yagyu
1274	77	Okyo
1275	77	Shirou Amakusa Tokisada
1276	78	Kagari
1277	78	Linn Suzuki / Kotetsu
1278	78	Miho Kuon
1279	79	Sakura Kinomoto
1280	79	Meiling Li
1281	79	Tomoyo Daidouji
1282	79	Syaoran Li
1283	79	Yue
1284	79	Touya Kinomoto
1285	79	Yukito Tsukishiro
1286	79	Kaho Mizuki
1287	79	Kero-chan
1288	79	Rika Sasaki
1289	79	Young Meiling
1290	79	Nadeshiko Kinomoto
1291	79	Nakuru Akizuki
1292	79	Spinel
1293	79	Cerberus / Kerberos
1294	79	Chiharu Mihara
1295	79	Clow Reed
1296	79	Eriol Hiiragizawa
1297	79	Fujitaka Kinomoto
1298	79	Naoko Yanagisawa
1299	79	Sonomi Daidouji
1300	79	Takashi Yamazaki
1301	79	Maki Matsumoto
1302	79	Spinelsun
1303	79	Yoshiyuki Terada
1304	79	Ruby Moon
1305	80	Deedlit
1306	80	Lord Ashram the Black Knight
1307	80	Leylia
1308	80	Orson
1309	80	Parn
1310	80	Pirotess
1311	80	Shiris
1312	80	Wagnard
1313	80	Etoh
1314	80	Leaf
1315	80	Slayn
1316	80	Smeddy
1317	80	Spark
1318	81	Cain
1319	81	Shido Tatsuhiko
1320	81	Yayoi Matsunaga
1321	82	Lain Iwakura
1322	82	Alice Mizuki
1323	82	Chisa Yomoda
1324	82	Julie Katou
1325	82	Karl Househoff
1326	82	Lin Sui-Xi
1327	82	Masami Eiri
1328	82	Masayuki
1329	82	Miho Iwakura
1330	82	Mika Iwakura
1331	82	Myu Myu
1332	82	Reika Yamamoto
1333	82	Tarou
1334	82	Yasuo Iwakura
1335	83	Elle Ragu
1336	83	Gau Ban
1337	84	Lina Inverse (Reena)
1338	84	Gracia Ul Naga Saillune (Naga The Serpent)
1339	85	Atsuko Natsume
1340	85	Ryunosuke Natsume
1341	86	Priss S Asagiri
1342	86	Leon McNichol
1343	86	Linna Yamazaki
1344	86	Macky Stingary
1345	86	Brian J Mason
1346	86	Daley Wong
1347	86	Galatea
1348	86	Galatea
1349	86	Kusui
1350	86	Nene Romanova
1351	86	Nigel Kirkland
1352	86	Quincy Rosenkroitz
1353	86	Sylia Stingary
1354	87	Yukino Miyazawa 
1355	87	Maho Izawa
1356	87	Miyako Miyazawa
1357	87	Tsubaki Sakura
1358	87	Tsubasa Shibahime
1359	87	Aya Sawada
1360	87	Eiko Arima
1361	87	Hideaki Asaba
1362	87	Hiroyuki Miyazawa
1363	87	Kano Miyazawa
1364	87	Kazuma Ikeda
1365	87	Kei Arima
1366	87	Kohashi-san
1367	87	Megumi
1368	87	Pero Pero
1369	87	Rika Sena
1370	87	Shizune Arima
1371	87	Shouji Arima
1372	87	Soichiro Arima
1373	87	Takefumi Tonami
1374	87	Toshiharu Shibahime
1375	87	Tsukino Miyazawa
1376	87	Yumi Ikeda
1377	87	Yurika
1378	88	Taichi Hiraga-Keaton
1379	88	Yuriko Hiraga
1380	89	Lime
1381	89	Tiger
1382	89	Baiko
1383	89	Bloodberry
1384	89	Cherry
1385	89	Lorelei
1386	89	Luchs
1387	89	Gelhardt von Faust
1388	89	Marine
1389	89	Mitsurugi Hanagata
1390	89	Otaru Mamiya
1391	89	Panther
1392	89	Tamasaburo
1393	90	Lina Inverse (Reena)
1394	90	Gracia Ul Naga Saillune (Naga The Serpent)
1395	90	Marty Lenford
1396	90	Sirene Fitzmeier 
1397	90	Steindorf
1398	90	Tatjana Dayward 
1399	91	Gouki Ichimonji
1400	91	Marina Ohgami
1401	91	Retsuya Ichimonji
1402	91	Tappei Hattori
1403	91	Zen Kusanagi
1404	91	Zin Kusanagi
1405	92	Yurika Misumaru
1406	92	Akira Daichi
1407	92	Aquamarine 
1408	92	Dr. Kokubunji
1409	92	Joe Umitsubame
1410	92	Junpei Kokubunji
1411	92	Ken Tenku
1412	92	Mie-Mie
1413	92	Nanako Kokubunji
1414	92	Prince Ginji Akara
1415	93	Anne Rapan
1416	93	Bowie Vallikuser Jr
1417	93	Dock Gaward
1418	93	Elizabeth Aihara Chang
1419	93	Kosei Hida
1420	93	Li Meifon
1421	93	Lion Low
1422	93	Nicola Neri
1423	93	Selju Jully 
1424	93	Taffei
1425	93	Valeria Vertone
1426	94	Enefeaa
1427	94	Shiida 
1428	94	Elisiss
1429	94	Konyako Persia
1430	94	Nyako Mikenika 
1431	94	Rumezabia
1432	94	Sakimi no Hime
1433	94	Yorn 
1434	95	Noelle
1435	95	Mikael 'Kyle-san'
1436	95	Sara
1437	95	Baba / Granny
1438	95	Dispel
1439	95	Eros
1440	95	Gabriel
1441	95	Lucca
1442	95	Mama
1443	95	Masaru
1444	95	Miruru
1445	95	Muse
1446	95	Natsumi Suzuhara
1447	95	Papa
1448	95	Raphael 'Hael-san'  / Fuyuki Suzuhara
1449	95	Saiki
1450	95	Silky
1451	95	Yuusuke Kamoshita
1452	96	Akane Aikawa
1453	96	Ayanojyo Aburatsubo
1454	96	Mizuha Miyama
1455	96	Nanaka Nakatomi
1456	96	Sae Sawanoguchi
1457	96	Takeo Takakura
1458	97	Office Lady
1459	97	Ebichu
1460	97	Hanabatake
1461	97	Kaishounachi
1462	97	Maa-Kun
1463	97	Office Lady's Mother
1464	98	Kurumi
1465	98	Saki
1466	98	Dr. Reiko Amagi
1467	98	Karinka
1468	98	Kaga
1469	98	Kaori
1470	98	Mikhail
1471	98	Nakahito Kagura 
1472	98	Dr. Brandow
1473	98	Dr. Walski
1474	98	Eiko Kichijoji
1475	98	General
1476	98	Kamihito Kagura
1477	98	Nadeshiko
1478	98	Steel Angel Mikhail
1479	98	Tetsuo Ayanokouji ''Dr. Ayanokouji''
1480	98	Tsunami
1481	98	Yoshino Koganei
1482	99	Alicia Whistle
1483	99	Elena
1484	99	Minnie White
1485	99	 Rick Kilmer
1486	99	Amick Hendar
1487	99	Ben Davis
1488	99	Brenda Mirrem
1489	99	Chairman Victor
1490	99	Dice Quaid
1491	99	Doug Vreiss
1492	99	Joey Heald
1493	99	Keith Bean 
1494	99	Luu Lee Chan
1495	99	Malcom Lee
1496	99	Marlene Angel
1497	99	Maru
1498	99	Robert Bradley
1499	99	Sample #037
1500	99	Scott Manning
1501	99	Seamus Han
1502	99	Seno
1503	99	Seno Miyagi
1504	99	Su Lee Chan
1505	99	Takashi
1506	99	Tony Frost
1507	99	Yuji Kaido
1508	99	Yung
1509	100	Excel
1510	100	Misaki Matsuya
1511	100	Excel Kobayashi
1512	100	Hyatt
1513	100	Menchi \\ Mince
1514	100	Il Palazzo
1515	100	Ropponmatsu Unit 1
1516	100	Cosette Sara
1517	100	Key
1518	100	Kumi-Kumi
1519	100	Mikako Hyatt
1520	100	Norikuni Iwata
1521	100	Pedro
1522	100	Ropponmatsu Unit 2
1523	100	Shinichi 'Nabeshin' Watanabe
1524	100	Bad Excel
1525	100	Daimaru Sumiyoshi
1526	100	Gojo Shioji
1527	100	Good Excel
1528	100	Sandora
1529	100	The Puchuus
1530	100	Toru Watanabe
1531	100	Wolf
1532	100	Gomez
1533	100	Great Will of the Macrocosm
1534	100	Kabapu
1535	100	Koshi Rikdo
1536	100	Momochi
1537	100	Pedro's Sexy Wife
1538	100	Producer Kitayama
1539	100	Space Butler The 13th 
1540	100	That Man
1541	101	Airs Blue
1542	101	Akihiro Miyabi
1543	101	Aoi Housen
1544	101	Brian Brabb Jr
1545	101	Carabona Guinea
1546	101	Charlie
1547	101	Chic Kraat
1548	101	Criff Cay
1549	101	Cullen Lucciora
1550	101	Eins Crowford
1551	101	Fina S. Shinozaki
1552	101	Fuu Nam Chai
1553	101	Gran McDaniel
1554	101	Ikumi Oze
1555	101	Juli Bahana
1556	101	Kevin Green
1557	101	Kouji Aiba
1558	101	Kozue Izumi
1559	101	Kreis Morate
1560	101	Lucson Houjou
1561	101	Michelle Cay
1562	101	Neya
1563	101	Nicks Chaiplapat
1564	101	Pat Campbell
1565	101	Ran Luckmolde
1566	101	Reiko Ichikawa
1567	101	Stein Heigar
1568	101	Yuki Aiba
1569	102	Moe Katsuragi
1570	102	Risky 
1571	102	Safety
1572	102	Yuuya Fukami
1573	103	Monkey D. Luffy
1574	103	Roronoa Zoro
1575	103	Nami
1576	103	Nico Robin
1577	103	Boa Hancock
1578	103	Portgas D. Ace
1579	103	Sanji
1580	103	Nefertari Vivi
1581	103	Usopp
1582	103	Brook
1583	103	Crocodile
1584	103	Juracule Mihawk
1585	103	Jewelry Bonney
1586	103	Arlong
1587	103	Domino
1588	103	Trafalgar Law
1589	103	Bartholomew Kuma
1590	103	Monkey D. Dragon
1591	103	Monkey D. Garp
1592	103	Keimi
1593	103	Makino
1594	103	Eneru
1595	103	Jimbei
1596	103	Shanks
1597	103	Tony Tony Chopper
1598	103	Bellemare
1599	103	Donquixote Doflamingo
1600	103	Eustass Kid
1601	103	Franky
1602	103	Ishilly 
1603	103	Killer
1604	103	Gol D. Roger
1605	103	Nojiko
1606	103	Perona
1607	103	Edward Newgate
1608	103	Nico Olvia
1609	103	Monet
1610	103	Smoker
1611	103	Gecko Moria
1612	103	Shirahoshi
1613	103	Tashigi
1614	103	Aokiji
1615	103	Mero
1616	103	Kizaru
1617	103	Marshall D. Teach
1618	103	Miss Valentine
1619	103	Portgas D. Rouge
1620	103	Sengoku
1621	103	Akainu
1622	103	Alvida
1623	103	Aphelandra
1624	103	Marco the Phoenix
1625	103	Marguerite
1626	103	Olive
1627	103	Sadie
1628	103	Silvers Rayleigh
1629	103	Whitey Bay
1630	103	Moodie
1631	103	Queen Otohime 
1632	103	Sabo
1633	103	Sharley
1634	103	Victoria Cindry
1635	103	Arbell
1636	103	Caesar Clown
1637	103	Vista
1638	103	Axe-Hand Morgan
1639	103	Califa
1640	103	Hina
1641	103	Jessica
1642	103	Jigoro of the Wind 
1643	103	Amanda
1644	103	Heat 
1645	103	Joke 
1646	103	Jozu
1647	103	Little Oars Jr
1648	103	Marie 
1649	103	Rika
1650	103	Kaya
1651	103	Meroie 
1652	103	Conis
1653	103	Laki
1654	103	Mousse 
1655	103	Ms. Doublefinger / Paula
1656	103	Muret
1657	103	Adele
1658	103	Margarita 
1659	103	Aisa
1660	103	Hiramera 
1661	103	Ms. Golden Week
1662	103	Bonney 
1663	103	Calico Yorki
1664	103	Lulis
1665	103	Bentham / Mr. 2 Bon Clay
1666	103	Carol Masterson
1667	103	Hocha 
1668	103	Magellan
1669	103	Milia 
1670	103	Albion
1671	103	Fukaboshi
1672	103	Thatch
1673	103	Buggy the Star Clown
1674	103	Chaka the Jackal
1675	103	Fullbody 
1676	103	Montblanc Norland
1677	103	Rob Lucci
1678	103	Emporio Ivankov (male form)
1679	103	Fillonce 
1680	103	Mozu
1681	103	Abi
1682	103	Apis
1683	103	Bartolomeo
1684	103	Benn Beckman 
1685	103	Calgara
1686	103	Coby
1687	103	Daz Bones
1688	103	Izou
1689	103	Kikyo
1690	103	Kuina
1691	103	Luca
1692	103	Mani
1693	103	Mao
1694	103	Basil Hawkins
1695	103	Bellamy the Hyena
1696	103	Bepo
1697	103	Blueno
1698	103	Boa Hancock (young)
1699	103	Don Krieg
1700	103	Franky (young)
1701	103	Galdino
1702	103	Hatchan
1703	103	Ikaros Much 
1704	103	Lil
1705	103	Mr. 5
1706	103	Porsche
1707	103	Seira
1708	103	Sora
1709	103	Boa Sandersonia
1710	103	Boa Sandersonia (young)
1711	103	Brownbeard
1712	103	Glove
1713	103	Jean Bart 
1714	103	Kaku
1715	103	Kuro
1716	103	Lily
1717	103	Nico Robin (young)
1718	103	Poppy
1719	103	Rebecca
1720	103	X Drake
1721	103	 King Neptune
1722	103	Ain
1723	103	Ally
1724	103	Avalo Pizarro
1725	103	Baby 5
1726	103	Banban 
1727	103	Banchina 
1728	103	Bastille
1729	103	Belladonna
1730	103	Biyo
1731	103	Blue Fan
1732	103	Boa Marigold
1733	103	Brocca
1734	103	Byron 
1735	103	Capone Bege
1736	103	Carmen 
1737	103	Cavendish
1738	103	Chimney
1739	103	Cosmos
1740	103	Crocus
1741	103	Curiel
1742	103	Daisy
1743	103	Delacuaji
1744	103	Doran
1745	103	Drake
1746	103	Enishida
1747	103	Fossa
1748	103	Gladius
1749	103	Helmeppo
1750	103	Hiluluk
1751	103	Igaram
1752	103	Inazuma (male form)
1753	103	Karoo
1754	103	Kiev
1755	103	Kobato
1756	103	Kohza
1757	103	Mocha
1758	103	Momonga 
1759	103	Monkey D. Luffy (young)
1760	103	Nefertari Cobra
1761	103	Nefertari Titi
1762	103	Oz
1763	103	Pascia
1764	103	Portgas D. Ace (young)
1765	103	Rasa
1766	103	Scratchmen Apoo
1767	103	Sentomaru 
1768	103	Shakuyaku
1769	103	Shu
1770	103	Spandam
1771	103	Urouge
1772	103	Vergo
1773	103	Viola
1774	103	A.O
1775	103	Absalom
1776	103	Agotogi 
1777	103	Ahho Desunen IX
1778	103	Ahho Zurako
1779	103	Akihiro
1780	103	Akumai 
1781	103	Aladdin
1782	103	Amadov
1783	103	Amazon
1784	103	Andre
1785	103	Antonio
1786	103	Arrow 
1787	103	Asahija
1788	103	Aswa 
1789	103	Atmos
1790	103	Attach
1791	103	Ayako 
1792	103	Bao 
1793	103	Barbarossa
1794	103	Barrel
1795	103	Basil
1796	103	Baskerville-Bas 
1797	103	Baskerville-Kerville 
1798	103	Baskerville-Princess 
1799	103	Bayan
1800	103	Big Pan
1801	103	Billy 
1802	103	Bizarre
1803	103	Blamenco
1804	103	Blenheim
1805	103	Blondie
1806	103	Blood-Splatterer Coribou
1807	103	Bluejam
1808	103	Bobby Funk
1809	103	Bogart
1810	103	Bokuden 
1811	103	Boodle 
1812	103	Braham
1813	103	Brahm 
1814	103	Brandnew
1815	103	Brew
1816	103	Brindo
1817	103	Broccoli
1818	103	Broggy the Red Ogre 
1819	103	Bunny Joe
1820	103	Bushon 
1821	103	Busshiri 
1822	103	Cabaji the Acrobat
1823	103	Campacino
1824	103	Capote
1825	103	Captain John 
1826	103	Captain Moore
1827	103	Carne
1828	103	Caroline 
1829	103	Catarina Devon
1830	103	Chabo
1831	103	Charlotte Lingling
1832	103	Chess
1833	103	Chesskippa the Hanger-on
1834	103	Chew
1835	103	Chiken
1836	103	Chip
1837	103	Chiqicheetah
1838	103	Chocolat 
1839	103	Cocoa 
1840	103	Corgy
1841	103	Corto 
1842	103	Curly Dadan
1843	103	Daddy Masterson
1844	103	Daigin
1845	103	Dalmatian
1846	103	Dalton
1847	103	Daruma
1848	103	Demalo Black
1849	103	Den
1850	103	Devil Dias 
1851	103	Dick the Mountain Whale
1852	103	Dip
1853	103	Disco 
1854	103	Doberman 
1855	103	Doc Q
1856	103	Dogra
1857	103	Doma
1858	103	Don Accino
1859	103	Doran 
1860	103	Dorry the Blue Ogre 
1861	103	Dosun
1862	103	Dr. Ho
1863	103	Dr. Hogback 
1864	103	Dr. Indigo 
1865	103	Dr. Potsun
1866	103	Drip 
1867	103	Eddy
1868	103	Egana 
1869	103	Elmy
1870	103	Epoida
1871	103	Eric the Whirlwind
1872	103	Erik
1873	103	Fabre 
1874	103	Fishbonen
1875	103	Fisher Tiger 
1876	103	Foxy
1877	103	Fukuro
1878	103	Gaimon
1879	103	Gan Fall
1880	103	Gatherine
1881	103	Genbo
1882	103	Genzou
1883	103	Ghin the Man-Demon 
1884	103	Girarin
1885	103	Gonbe 
1886	103	Goo
1887	103	Gorilla
1888	103	Hannyabal
1889	103	Jabra
1890	103	Jerry
1891	103	Kairen 
1892	103	Kibin
1893	103	Kingdew
1894	103	Koala
1895	103	Kodama 
1896	103	Kureha (Witch)
1897	103	Lina 
1898	103	Lucky Roo 
1899	103	Maria Napole
1900	103	Minchy
1901	103	Miss Catharine 
1902	103	Miss Father's Day 
1903	103	Mr. Love
1904	103	Namur
1905	103	Nezumi
1906	103	Nika
1907	103	Paulie
1908	103	Penguin
1909	103	Ripper
1910	103	Ririka
1911	103	Rokkaku
1912	103	Rongo
1913	103	Roronoa Zoro (young)
1914	103	Ryudo
1915	103	Sanji (young)
1916	103	Shiryu
1917	103	Sind
1918	103	Stainless
1919	103	Sugar
1920	103	T-Bone
1921	103	Terracotta
1922	103	Usopp (young)
1923	103	Vasco Shot
1924	103	Wapol
1925	103	Wire
1926	103	Yoko
1927	103	Zeff
1928	103	Auntie
1929	103	Billy
1930	103	Blue Gilly
1931	103	Boa Marigold (young)
1932	103	Bobbin
1933	103	Butchie
1934	103	Camu
1935	103	Daddy Dee
1936	103	Duval
1937	103	Elizabello II
1938	103	Elizabeth
1939	103	Emporio Iva (female form)
1940	103	Faracia
1941	103	Foxfire Kin'emon
1942	103	Giolla
1943	103	Gram
1944	103	Guyle
1945	103	Gyaro
1946	103	Gyoro 
1947	103	Gyoru 
1948	103	Gyro
1949	103	Hack
1950	103	Hamburg
1951	103	Hammond 
1952	103	Hamu
1953	103	Hanger
1954	103	Happa
1955	103	Hardy
1956	103	Haredas
1957	103	Harisenbon
1958	103	Haritsu Kendiyo 
1959	103	Harry
1960	103	Haruta 
1961	103	Hattori 
1962	103	Henzo
1963	103	Henzo (young)
1964	103	Heppoko
1965	103	Heracles
1966	103	Higuma
1967	103	Hildon 
1968	103	Hockera
1969	103	Hoichael 
1970	103	Holy 
1971	103	Hordy Jones
1972	103	Hordy Jones (young)
1973	103	Hotori and Kotori
1974	103	Humphrey 
1975	103	Hyota
1976	103	Hyouzou
1977	103	Ian
1978	103	Iceburg 
1979	103	Iceburg (young)
1980	103	Ichika
1981	103	Ideaman
1982	103	Inazuma (female form)
1983	103	Inuppe 
1984	103	Ippon-Matsu
1985	103	Iron Boy Scotch
1986	103	Ishigo Shitemanna 
1987	103	Islewan
1988	103	Isoka
1989	103	Issho
1990	103	Itomimizu
1991	103	Jaguar D. Saul 
1992	103	Jango
1993	103	Jesus Burgess
1994	103	Jiro 
1995	103	Jobo 
1996	103	John Giant 
1997	103	Johnny
1998	103	Jonathan 
1999	103	Jorge
2000	103	Jose
2001	103	Jube
2002	103	Judy 
2003	103	Julius
2004	103	Kadar
2005	103	Kairiken 
2006	103	Kamakiri 
2007	103	Kaneshiro
2008	103	Kanezenny
2009	103	Kappa 
2010	103	Karma
2011	103	Kasa 
2012	103	Kasagon
2013	103	Kashi
2014	103	Kebi
2015	103	Kelly Funk
2016	103	Kibagaeru
2017	103	Kinga
2018	103	Kitton
2019	103	Kiwi
2020	103	Kohza (young)
2234	103	Yama
2021	103	Kokoro
2022	103	Komir
2023	103	Kong
2024	103	Kop
2025	103	Koshirou
2026	103	Koze
2027	103	Kumadori 
2028	103	Kuromarimo
2029	103	Kuroobi 
2030	103	Lacos
2031	103	Lacroix 
2032	103	Lacuba
2033	103	Laffitte
2034	103	Lago
2035	103	Lake
2036	103	Lao G
2037	103	Largo
2038	103	Laskey 
2039	103	Leo
2040	103	Leo 
2041	103	Lip Doughty
2042	103	Littonto
2043	103	Lola
2044	103	Luigia
2045	103	Maccus
2046	103	Machvise
2047	103	Macro
2048	103	Magra
2049	103	Maidy
2050	103	Manboshi
2051	103	Manjaro
2052	103	Maria Onion Bear
2053	103	Marilyn
2054	103	Marin
2055	103	Mashikaku
2056	103	Masira
2057	103	Mayushika
2058	103	McGuy
2059	103	McKinley
2060	103	Mekao
2061	103	Mendo 
2062	103	Merry
2063	103	Michael 
2064	103	Mikazuki
2065	103	Minister of the Left
2066	103	Minister of the Right
2067	103	Minoruba 
2068	103	Miss Friday
2069	103	Miss Monday 
2070	103	Mister 9 
2071	103	Mitsuboshi 
2072	103	Mizuta Mawaritosuki
2073	103	Mochi
2074	103	Mohji
2075	103	Montblanc Cricket
2076	103	Motzel
2077	103	Mounblutain
2078	103	Moyle
2079	103	Mozambia
2080	103	Mr 11
2081	103	Mr 13
2082	103	Mr. 4
2083	103	Mr. 7
2084	103	Mr. Beans
2085	103	Mr. Mellow
2086	103	Ms. Merry Christmas
2087	103	Mummy Mee
2088	103	Musshuru 
2089	103	Naguri
2090	103	Nakou
2091	103	Nelson Royale
2092	103	Nerine
2093	103	Nero
2094	103	Nigeratta
2095	103	Nin 
2096	103	Ninjin
2097	103	Noko
2098	103	Nora Gitsune
2099	103	Norla 
2100	103	Nugire Yainu
2101	103	Nuru
2102	103	Nyon
2103	103	Odama
2104	103	Oimo 
2105	103	Okome
2106	103	Onigumo 
2107	103	Outlook III 
2108	103	Packy
2109	103	Pagaya
2110	103	Palms
2111	103	Pansy
2112	103	Pappug
2113	103	Patty
2114	103	Pavlik
2115	103	Pearl the Iron Wall
2116	103	Peeply Lulu 
2117	103	Pekkori
2118	103	Pekoms
2119	103	Pell the Falcon
2120	103	Peppoko 
2121	103	Phillip 
2122	103	Pickles 
2123	103	Piman
2124	103	Pogo
2125	103	Poppoko
2126	103	Porchemy
2127	103	Poro
2341	108	Kuro
2128	103	Prince Bellett 
2129	103	Professor Clover
2130	103	Pudding Pudding 
2131	103	Pukau
2132	103	Puppu
2133	103	Puzzle
2134	103	Race
2135	103	Rakuyo
2136	103	Ramba
2137	103	Ran
2138	103	Randolph
2139	103	Raoul
2140	103	Rapanui Pasqua
2141	103	Reuder
2142	103	Rice Rice 
2143	103	Richie
2144	103	Rindo
2145	103	Rint
2146	103	Rivers 
2147	103	Roche 
2148	103	Rockstar 
2149	103	Roji 
2150	103	Rokuroshi 
2151	103	Ronse
2152	103	Roshio
2153	103	Ryuboshi
2154	103	Saint Charloss 
2155	103	Saint Jalmack
2156	103	Saint Myosgard
2157	103	Saint Roswald
2158	103	Saint Shalulia 
2159	103	Salchow
2160	103	Saldeath
2161	103	Sam
2162	103	Samurai Ryuma
2163	103	Sanjuan Wolf
2164	103	Sanka
2165	103	Sapi 
2166	103	Sarquiss
2167	103	Satori of the Forest
2168	103	Sayo
2169	103	Schollzo
2170	103	Scopper Gyaban
2171	103	Scorpion 
2172	103	Senor Pink
2173	103	Seto 
2174	103	Shandia Chief 
2175	103	Sharingle
2176	103	Shepherd
2177	103	Shinpachi
2178	103	Sho
2179	103	Shoo the Lizard
2180	103	Siam
2181	103	Sky Boss Gedatsu
2182	103	Skybreeder Ohm
2183	103	SkyRider Shura
2184	103	Soran
2185	103	Spandine
2186	103	Spector 
2187	103	Speed Jiru
2188	103	Splash 
2189	103	Splatter 
2190	103	Spoil 
2191	103	Squad
2192	103	Stalker
2193	103	Stansen
2194	103	Stansen 
2195	103	Stelly 
2196	103	Stevie
2197	103	Stool
2198	103	Strawberry 
2199	103	Sutton
2200	103	Sweet Pea
2201	103	Tajio
2202	103	Take
2203	103	Tamachibi 
2204	103	Tamago
2205	103	Tamagon
2206	103	Tamanegi
2207	103	Tansui
2208	103	Terry
2209	103	Terry Gilteo 
2210	103	Thalassa Lucas
2211	103	Tilestone
2212	103	Tom
2213	103	Tom
2214	103	Tonjit
2215	103	Toto
2216	103	Trebol
2217	103	Troff
2218	103	Tsuru
2219	103	Turco
2220	103	Ukkari
2221	103	Ultra King 
2222	103	Van Ogre
2223	103	Vander Decken IX
2224	103	Very Good 
2225	103	Vigaro
2226	103	Wadatsumi
2227	103	Wallem
2228	103	Wanze
2229	103	Warashi
2230	103	Wet-Haired Caribou
2231	103	Wetton
2232	103	Wiper
2233	103	Woop Slap 
2235	103	Yamakaji
2236	103	Yasopp
2237	103	Yoko
2238	103	Yonka
2239	103	Yonka Two
2240	103	Yosaku 
2241	103	Yoshimoto
2242	103	Yotsubane
2243	103	Yu
2244	103	Yuki
2245	103	Yukimura
2246	103	Yuya
2247	103	Zaba
2248	103	Zadie
2249	103	Zambai
2250	103	Zap
2251	103	Zenny 
2252	103	Zeo
2253	103	Zodia
2254	103	Zucca
2255	104	Ayaka Rindou
2256	104	Sakura Murasame
2257	104	Chinami Ouse
2258	104	Kasumi Kurenai
2259	104	Shion Murasame
2260	104	Tanpopo Teramoto
2261	104	Yukina Kurimoto
2262	104	Hatsumi Kusunoki
2263	104	Kurumi Matsumoto
2264	104	Noriko Takigawa
2265	104	Saeno Hiiragi
2266	104	Urara Tachibana
2267	105	Chiaki Nagoya
2268	105	Kaitou Jeanne
2269	105	Finn Fissh
2270	105	Acces Time
2271	105	Hijiri Shikaido
2272	105	Kaito Simbad
2273	105	Maron Kusakabe
2274	105	Miyako Toudaiji
2275	105	Myst
2276	105	Jeanne D'arc
2277	105	Minazuki Yamato
2278	105	Noin Claude
2279	106	Toya
2280	106	Aki Mikage
2281	106	Alexander Howell
2282	106	Aya Mikage
2283	106	Ceres
2284	106	Chidori Kuruma
2285	106	Kagami Mikake
2286	106	Suzumi Aogiri
2287	106	Yuuhi Aogiri
2288	107	Tai Kamiya
2289	107	Kari Kamiya
2290	107	Mimi Tachikawa
2291	107	Yamato Ishida
2292	107	Ken Ichijouji
2293	107	Davis Motomiya
2294	107	Agumon
2295	107	Digimon Emperor
2296	107	Gabumon
2297	107	Gatomon
2298	107	T. K.
2299	107	Veemon
2300	107	Armadillomon
2301	107	Izumi Koushirou
2302	107	Joe Kido
2303	107	Patamon
2304	107	Sora Takenouchi
2305	107	Wormmon
2306	107	Cody Hida
2307	107	Cyberdramon
2308	107	Hawkmon
2309	107	Yolei Inoue
2310	107	Gennai 
2311	107	Michael Washington
2312	107	Sam Ichijouji 
2313	107	Anna
2314	107	Catherine Deneuve
2315	107	Lou
2316	107	Maria
2317	107	Mina
2318	107	Phil (Sam)
2319	107	Rosa
2320	107	Sonya
2321	107	Tatum
2322	107	Yukio Oikawa
2323	107	Yuri
2324	108	Motoko Aoyama
2325	108	Amalla Su
2326	108	Naru Narusegawa
2327	108	Shinobu Maehara
2328	108	Kanako Urashima
2329	108	Mutsumi Otohime
2330	108	Kaolla Su
2331	108	Nyamo Namo
2332	108	Mitsune Konno 'Kitsune'
2333	108	Sarah McDougal
2334	108	Mei Narusegawa
2335	108	Moe
2336	108	Haruka Urashima
2337	108	Noriyasu Seta
2338	108	Tama
2339	108	Tsuruko Aoyama
2340	108	Keitaro Urashima
2342	108	Mrs. Maehara
2343	108	Akiko Taichi
2344	108	Emi Ichikawa
2345	108	Hinata Urashima
2346	108	Kentaro Sakata
2347	108	Kikuko Onoue
2348	108	Kimiaki Shirai
2349	108	Lamba Lu
2350	108	Masayuki Haitani
2351	108	Sachiyo Matsumoto
2352	108	Yasuharu Maehara
2353	109	Sakura Shinguji
2354	109	Iris Chateaubriand
2355	109	Kanna Kirishima
2356	109	Maria Tachibana
2357	109	Ayame Fujieda
2358	109	Ichiro Ogami
2359	109	Ikki Yoneda
2360	109	Kaede Fujieda
2361	109	Kohran Li
2362	109	Reni Milchstrabe
2363	109	Soletta Orihimi
2364	109	Sumire Kanzaki 
2365	110	Hamtaro 
2366	110	Panda
2367	110	Bijou
2368	110	Cappy
2369	110	Jingle
2370	110	Penelope
2371	110	Sandy
2372	110	Snoozer
2373	110	Glitter
2374	110	Oxnard
2375	110	Sparkle
2376	110	Spat
2377	110	Stan
2378	110	Auntie Vivian
2379	110	Barrette
2380	110	Bear
2381	110	Boss
2382	110	Broski
2383	110	Bunny
2384	110	Buster
2385	110	Cactus Brothers
2386	110	Championi
2387	110	Charlotte Rooster Yoshi
2388	110	Chef Ham
2389	110	Daisy
2390	110	Dexter 
2391	110	Drizzle
2392	110	Dylan Iwata
2393	110	Eggy-P
2394	110	Elder Ham
2395	110	Emi-chan
2396	110	Flora
2397	110	Gelato
2398	110	Hanamaru
2399	110	Hannah
2400	110	Harmony
2401	110	Hillary
2402	110	Howdy
2403	110	Ice
2404	110	Ivy
2405	110	Jack Iwata
2406	110	June
2407	110	Kana Iwata
2408	110	Kazuya O'Hara
2409	110	Kylie
2410	110	Lapis
2411	110	Laura Haruna 
2412	110	Lazuli
2413	110	Leo
2414	110	Lion
2415	110	Lolly
2416	110	Maggie O'Hara 
2417	110	Magical
2418	110	Maria
2419	110	Marron
2420	110	Maxwell
2421	110	Mimi Iwata
2422	110	Mystery
2423	110	Nande
2424	110	Nin-Ham
2425	110	Okini
2426	110	Omar
2427	110	Ook-Ook
2428	110	Oshare
2429	110	Otome
2430	110	Pashmina
2431	110	Pepper
2432	110	Philip Rooster Yoshi
2433	110	Potato
2434	110	Prince Bo
2435	110	Radar
2436	110	Roberto Arvelo
2437	110	Rosy
2438	110	Sabu
2439	110	Salia
2440	110	Seamore
2441	110	Shake
2442	110	Sky Ham
2443	110	Solara
2444	110	Stripes
2445	110	Stucky
2446	110	Sunflower King
2447	110	Sunflower Princess
2448	110	Tomy-T
2449	110	Travis
2450	110	Tux
2451	110	Warts
2452	110	Willow Haruna
2453	110	Woody Haruna
2454	111	Cyberdoll Mami
2455	111	Cyberdoll Kei
2456	111	Cyberdoll May
2457	111	Cyberdoll Sara
2458	111	Chigusa Tani
2459	111	Cyberdoll Rena
2460	111	Kasumi Tani
2461	111	Aoi Saotome
2462	111	Caffe Waitress
2463	111	Cyber X
2464	111	Cyberdoll Angel
2465	111	Cyberdoll Kumi
2466	111	Delivery Unit Sara
2467	111	Den Tadokoro
2468	111	Female (DCS) Officer
2469	111	Gin Munakata
2470	111	Good Samaritan High School Girl
2471	111	Hikari Komyoji
2472	111	Hiroshi Daimon
2473	111	Ikariya
2474	111	Kazuya Saotome
2475	111	Kintaro Yamazaki
2476	111	Kisaragi
2477	111	Kotarou Nanbara
2478	111	Lost Baby
2479	111	Lost Baby's Mother
2480	111	Masato Jin
2481	111	May Black
2482	111	May Blue
2483	111	May Pink
2484	111	May Silver
2485	111	May Yellow
2486	111	Midori Saotome
2487	111	Mika Rokujoin
2488	111	Miyuki Zin
2489	111	Naomi Ryuzaki
2490	111	Ramen Chef
2491	111	Store Clerk
2492	111	Takuya Saotome
2493	111	Tosshinta Yamada
2494	111	Totaro Nabara
2495	111	Versailles Juliano
2496	112	Nanoha Takamachi
2497	112	Ellis McGaren
2498	112	Fiasse Crystela
2499	112	Irene Noa
2500	112	Kyouya Takamachi
2501	112	Misato Mikami
2502	112	Miyuki Takamachi
2503	112	Momoko Takamachi
2504	112	Noel K. Ehrlichkeit
2505	112	Shinobu Tsukimura
2506	112	Shirou Takamachi
2507	113	D
2508	113	Meier Link
2509	113	Borgoff Marcus
2510	113	Alan Elbourne
2511	113	Barbarois
2512	113	Benge
2513	113	Carmilla
2514	113	Caroline
2515	113	Charlotte Elbourne
2516	113	Grove Marcus
2517	113	John Elbourne
2518	113	Kyle Marcus
2519	113	Left Hand
2520	113	Leila
2521	113	Mashira
2522	113	Nolt Marcus
2523	114	Asato Tsuzuki
2524	114	Hisoka Kurosaki
2525	114	Maria Wong
2526	114	Wakaba Kannuki
2527	114	Yutaka Watari
2528	114	Seiichiro Tatsumi
2529	114	Hijiri Minase
2530	114	Oriya Mibu
2531	114	Chief Konoe
2532	114	Hajime Terazuma
2533	114	Kazutaka Muraki
2534	115	Meow
2535	115	Ran Tsukikage
2536	116	Kurumi
2537	116	Saki
2538	116	Dr. Reiko Amagi
2539	116	Karinka
2540	116	Kaga
2541	116	Kaori
2542	116	Nakahito Kagura 
2543	116	Dr. Brandow
2544	116	Dr. Walski
2545	116	Eiko Kichijoji
2546	116	General
2547	116	Guard
2548	116	Kamihito Kagura
2549	116	Koharu
2550	116	Nadeshiko
2551	116	Steel Angel Mikhail
2552	116	Steel Angel Yaoi
2553	116	Studio Head
2554	116	Talent Agent
2555	116	Tetsuo Ayanokouji ''Dr. Ayanokouji''
2556	116	Tsunami
2557	117	Rika Nonaka
2558	117	Takato Matsuki
2559	117	Impmon
2560	117	Jeri Katou
2561	117	Calumon
2562	117	Guilmon
2563	117	Henry Wong
2564	117	Ryo Akiyama
2565	117	Terriermon
2566	117	Kazu Shioda
2567	117	Kenta Kitagawa
2568	117	Minami Uehara
2569	117	Renamon
2570	117	Suzie Wong
2571	117	Ai
2572	117	Alice McCoy
2573	117	Ayaka Itou
2574	117	Babel
2575	117	Curly 
2576	117	Daisy
2577	117	Gorou Mizuno
2578	117	Iwamoto
2579	117	Jaarin Wong
2580	117	Janyu Wong
2581	117	Johnny Beckenstein
2582	117	Kai Urazoe
2583	117	Lopmon
2584	117	Mako
2585	117	Masahiko Katou
2586	117	Mayumi Wong
2587	117	Miki Nakajima
2588	117	Mitsuo Yamaki
2589	117	Nami Asanuma
2590	117	Riku
2591	117	Riley
2592	117	Rob McCoy
2593	117	Rumiko Nonaka
2594	117	Seiji Kurosawa
2595	117	Seiko Hata
2596	117	Shizue Katou
2597	117	Sugai
2598	117	Tadashi Katou
2599	117	Tadashi Nakabayashi
2600	117	Taizou Aoyama
2601	117	Takehiro Matsuki
2602	117	Tally
2603	117	Toki
2604	117	Toshiaki Mori
2605	117	Yoshie Matsuki
2606	117	Yoshiko
2607	117	Yoshio
2608	117	Yuuji Terayama
2609	118	Hikaru Shiina
2610	118	Daisuke Domoto 'D.D.'
2611	118	Figure 17
2612	118	Oldina
2613	118	Tenmaru
2614	118	Tsubasa Shiina
2615	119	Milfeulle Sakuraba
2616	119	Vanilla H
2617	119	Forte Stollen
2618	119	Mint Blancmanche
2619	119	Ranpha Franboise
2620	119	Chitose Karasuma
2621	119	Santa Rosa
2622	119	Lily C Sherbet
2623	119	Nano-nano Pudding
2624	119	Coronet Choucroute
2625	119	Kahlua Marjoram
2626	119	Kelsie
2627	119	Lester Cooldaras
2628	119	Maria Steline
2629	119	Noa
2630	119	Soldum Seldor
2631	119	Almo Blueberry
2632	119	Anise Azeat
2633	119	Apricot Sakuraba
2634	119	Coco Nutmilk 
2635	119	Kazuya Shiranami
2636	119	Lunti Fiadone
2637	119	Lushati
2638	119	Natsume Izayoi
2639	119	Melba Brownie
2640	119	Mordent Bagel
2641	119	Tact Mayers
2642	119	Croix Blort
2643	119	Wein
2644	120	Ikuyo Suzuki
2645	120	Konoe Tsurugi
2646	120	Lemon, Marron, Melon
2647	120	Mariel
2648	120	Ryuuka Jihiyou
2649	120	Yashima Sanae
2650	120	Cynthia Landlavizar
2651	120	Taro Hanaukyo
2652	121	Kirika Yuumura
2653	121	Mireille Bouquet
2654	121	Chloe
2655	121	Marennes
2656	121	Albert Dux
2657	121	Altena
2658	121	Belladonna Lily Woman
2659	121	Borne
2660	121	Claude Feyder
2661	121	D'Estaing
2662	121	Milosh Havul
2663	121	Odette Bouquet
2664	121	President Hammond
2665	121	Reimann
2666	121	Remy Brefford
2667	121	Rosaly Hammond
2668	121	Shaoli
2669	121	Silvana Intoccabile Greone
2670	121	Yuri Nazarov
2671	122	Leon D. S. Geeste
2672	122	Ashton Anchors
2673	122	Celine Jules
2674	122	Precis F. Neuuman
2675	122	Rena Lanford
2676	122	Claude C. Kenni
2677	122	Ernest Raviede
2678	122	Opera Vectra
2679	123	Kurumi
2680	123	Saki
2681	123	Nako Kagura
2682	123	Kyanwan
2683	123	Uruka Sumeragi
2684	123	Karinka Mark II
2685	123	Lead Practitioner
2686	123	Misaki Kagura
2687	123	Ms. Amagi
2688	123	Tenkai Sumeragi
2689	123	Yutaka Kizuki
2690	124	Kurumi
2691	124	Saki
2692	124	Karinka
2693	124	Excelia
2694	125	Kyo Sohma
2695	125	Hatsuharu Sohma
2696	125	Momiji Sohma
2697	125	Tohru Honda 
2698	125	Yuki Sohma
2699	125	Ayame Sohma
2700	125	Shigure Sohma
2701	125	Hatori Sohma
2702	125	Kisa Sohma
2703	125	Akito Sohma
2704	125	Ritsu Sohma
2705	125	Saki Hanajima
2706	125	Arisa Uotani
2707	125	Hiro Sohma
2708	125	Kagura Sohma
2709	125	Megumi Hanajima
2710	125	Kyoko Honda
2711	125	Kazuma Sohma
2712	125	Mine Kuramae
2713	125	Mitsuru
2714	125	Momo Sohma
2715	125	Motoko Minagawa
2716	125	Ritsu's Mother
2717	125	Takei Makoto
2718	125	Kana Sohma
2719	125	Mio Yamagishi
2720	126	Anzuko Doumyouji
2721	126	Candy
2722	126	Charlotte
2723	126	Chiffon
2724	126	Chips
2725	126	Chitose
2726	126	Cookie
2727	126	Gallette
2728	126	Geppei Okaki
2729	126	Iori Monaka
2730	126	Kinako Monaka
2731	126	Mousse Kabekawa
2732	126	Nachos
2733	126	Nougat
2734	126	Pie a La Mode
2735	126	Rakugan
2736	126	Saburet
2737	126	Taruto
2738	126	Torte
2739	127	Kanami Yuta
2740	127	Scherice Adjani
2741	127	Asuka Tachibana
2742	127	Mimori Kiryuu
2743	127	Ryuhou
2744	127	Akira Terada
2745	127	Ayase Terada
2746	127	Biff
2747	127	Cammy
2748	127	Elian Zigmar
2749	127	Emergy Maxfell
2750	127	George Tatsunami
2751	127	Kazuma
2752	127	Kunihiko Kimishima
2753	127	Kyoji Mujou
2754	127	Martin Zigmar
2755	127	Sou Kigetsuki
2756	127	Straight Cougar
2757	127	Unkei
2758	127	Urizane
2759	128	Akane/ Fox
2760	128	Ayumi/ Turtle
2761	128	Gai
2762	128	Mika/ Rabbit
2763	128	Ran/ Goldfish
2764	128	Yuki/ Snake
2765	128	Daisuke
2766	128	Fortune Teller
2767	128	Goh
2768	128	Goro Mutsumi
2769	128	Kurumi/ Hamster
2770	128	Lulu/ Frog
2771	128	Midori/ Racoon
2772	128	Momo/ Monkey
2773	128	Mr. Sengokuya
2774	128	Nana/ Dog
2775	128	Rei
2776	128	Shin
2777	128	Tamami/ Cat
2778	128	The Goddess
2779	128	Toki
2780	128	Tsubasa/ Parakeet
2781	129	Kouya Marino
2782	129	Jirou Oriza
2783	129	Kaoru Hanano
2784	129	Kuroudo Marume
2785	129	Kyousuke Jin
2786	129	Lan Fang 
2787	129	Lilika Tobita
2788	129	Takeshi Manganji
2789	130	Francoise Arnoul/Cyborg 003
2790	130	Joe Shimamura/Cyborg 009
2791	130	Albert Heinrich/Cyborg 004
2792	130	Black Ghost/Skull
2793	130	Chang Changku/Cyborg 006
2794	130	Dr. Isaac Gilmore
2795	130	Geronimo Jr./Cyborg 005
2796	130	Great Britain/Cyborg 007
2797	130	Ivan Whisky/Cyborg 001
2798	130	Jet Link/Cyborg 002
2799	130	Pyunma/Cyborg 008
2800	131	Alucard
2801	131	Seras Victoria
2802	131	Alexander Anderson
2803	131	Sir Integra Fairbrook Wingates Hellsing
2804	131	Walter C. Dornez
2805	131	Jan Valentine
2806	131	Helena
2807	131	Enrico Maxwell
2808	131	Enrico Stivaletti
2809	131	Laura Windgates 
2810	131	Leif
2811	131	Luke Valentine
2812	131	Captain Chris Pickman
2813	131	Captain Gareth Henderson
2814	131	Cheddar Priest
2815	131	Commander Peter Fargason / Ferguson
2816	131	Dr. Abraham Van Helsing
2817	131	Father Renaldo
2818	131	Harry Anders
2819	131	Incognito
2820	131	Jessica
2821	131	Kim
2822	131	Paul Wilson
2823	131	Richard Hellsing
2824	131	Rob Walsh
2825	131	Sir Arthur Hellsing
2826	131	Sir Hugh Irons
2827	131	Sir Shelby M. Penwood
2828	132	Iina
2829	132	Kokoro
2830	132	Akaha Okajima
2831	132	Aruto
2832	132	Jun Uezawa
2833	133	Najica Hiiragi
2834	133	Lila
2835	133	Gento Kuraku
2836	133	Jin Majima
2837	133	Kirala Mitsuboshi
2838	134	Kamui Shirou
2839	134	Kakyou Kuzuki
2840	134	Subaru Sumeragi
2841	134	Arashi Kishuu
2842	134	Fuuma Monou
2843	134	Kanoe
2844	134	Hinoto
2845	134	Seiichiro Aoki
2846	134	Seishirou Sakurazuka
2847	134	Nataku
2848	134	Sorata Arisugawa 
2849	135	Futaba Aasu
2850	135	Shii Aasu
2851	135	Mage Queen
2852	135	Itsue Aasu
2853	135	Kumi-Kumi
2854	135	Mitsuki Aasu
2855	135	Mutsumi Aasu
2856	135	Nanase Aasu
2857	135	Poemi 'Kobayashi' Watanabe
2858	135	Shinichi 'Nabeshin' Watanabe
2859	135	Hitomi Aasu
2860	135	Puni Puni Poemi
2861	135	Alien 1
2862	135	K-kun
2863	136	Lina Inverse (Reena)
2864	136	Zelgadis Greywords
2865	136	Amelia Wil Tesla Seyrunn
2866	136	Xellos
2867	136	Gourry Gabriev (Gaudy)
3190	164	Batou
2868	136	Gracia Ul Naga Saillune (Naga The Serpent)
2869	136	Ruma
2870	137	Mimiru
2871	137	Tsukasa
2872	137	Balmung
2873	137	Subaru
2874	137	Bear
2875	137	Crim
2876	137	Kaochin
2877	137	Sora
2878	137	A-20
2879	137	AI Harald
2880	137	Aura
2881	137	BT
2882	137	Helba
2883	137	Maha
2884	137	Silver Knight
2885	138	Sakaki
2886	138	Ayumu 'Osaka' Kasuga
2887	138	Koyomi 'Yomi' Mizuhara
2888	138	Chiyo Mihama
2889	138	Tomo Takino
2890	138	Yukari Tanizaki
2891	138	Kagura
2892	138	Minamo 'Nyamo' Kurosawa
2893	138	Chihiro
2894	138	Kaori
2895	138	Maya
2896	138	Mr. Tadakichi
2897	138	Michiru 'Mina-chan'
2898	138	Mr. Kimura
2899	138	Yuka-chan
2900	138	Chiyo-Dad
2901	138	Kamineko
2902	138	Masaaki Ohyama
2903	139	Aoi Sakuraba
2904	139	Miyabi Kaguraza
2905	139	Mayu Miyuki
2906	139	Tina Foster
2907	139	Chika Minazuki
2908	139	Chizuru Aizawa
2909	139	Kaoru Hanabishi
2910	139	Natsuki Komiya
2911	139	Taeko Minazuki
2912	140	Chii
2913	140	Freya
2914	140	Kotoko
2915	140	Sumomo
2916	140	Yuzuki
2917	140	Hideki Motosuwa
2918	140	Yumi Omura
2919	140	Chitose Hibiya
2920	140	Minoru Kokubunji
2921	140	Dita
2922	140	Takako Shimizu
2923	140	Hiromu Shinbo
2924	140	Hiroyasu Ueda
2925	140	Zima
2926	140	Yoshiyuki Kojima
2927	141	Akira Akebono
2928	142	Koji Minamoto
2929	142	Takuya Kanbara
2930	142	Zoe Orimoto
2931	142	Koichi Kimura
2932	142	Tommy Himi
2933	142	Junpei Shibayama
2934	142	Bokomon
2935	142	Neemon
2936	143	Takuto Kira
2937	143	Mitsuki Kouyama
2938	143	Eichi Sakurai
2939	143	Fuzuki Koyama
2940	144	Franklin Harlock Jr.
2941	144	Shizuku
2942	144	Sinunora
2943	144	Tochiro Oyama
2944	145	Chibisuke
2945	145	Kisaragi Ninomai
2946	145	Uzuki Shitennou
2947	145	Chitose Hitotose
2948	145	Fumitsuki Nanakorobi
2949	145	Hazuki Yazakura
2950	145	Kanna Togakushi
2951	145	Kenta
2952	145	Kichine
2953	145	Minazuki Rokumatsuri
2954	145	Mr. Tanuki
2955	145	Mutsuki Ichimonji
2956	145	Satsuki Gokajou
2957	145	Tomobiki
2958	145	Yayoi Sanzenin
2959	146	Jing
2960	146	Kir
2961	147	Mune-mune
2962	147	Sayaka Imamiya
2963	147	Aki-kun
2964	147	Arumi Asahina
2965	147	Kouhei
2966	147	Masayoshi Asahina / Masa-jii
2967	147	Satoshi Imamiya
2968	147	Tetsu Asahina / Papan
2969	147	Yuutasu
2970	148	Kaoru Mitarai
2971	148	Misha
2972	148	Koboshi Uematsu
2973	148	Hiroshi Mitarai
2974	148	Kotarou Higuchi
2975	148	Sasha
2976	148	Shia
2977	148	Shino Higuchi
2978	148	Takashi Ayanokoji
2979	149	Rizel Iwaki
2980	149	Haruka
2981	149	Kurumi
2982	149	Eri
2983	149	Lobelia Iwaki
2984	149	Rachel Iwaki
2985	149	Aoi Seimoto
2986	149	Kyouko Yachigusa
2987	149	Lan Lan Iwaki
2988	149	Lux Iwaki
2989	149	Natsumi Ibata
2990	149	Papa A
2991	149	Papa B
2992	149	Papa C
2993	149	Ryuunosuke Hououin
2994	149	Tomonori Iwaki
2995	150	Azumi Hidaka
2996	150	Katie Minami
2997	150	Dylan Yuki
2998	150	Mirmo
2999	150	Rima
3000	150	Kyle Matsutake
3001	150	Mizuki Hidaka
3002	150	Momo Umezono
3003	150	Mulu
3004	150	Yamane
3005	150	Yatch
3006	151	Amane Kaunaq
3007	151	Kiriko Masaki
3008	151	Little Washu Hakubi
3009	151	Ryoko Balta
3010	151	Seina Yamada
3011	151	Seto Kamiki Jurai
3012	151	Washu Hakubi
3013	151	Airi Masaki
3014	151	Neju Na Melmas
3015	151	Mashisu Makibi
3016	151	Seiryo Tennan
3017	151	Tarant Shank
3018	152	Enho
3019	152	Rakushun
3020	152	Riyou
3021	152	Ryushi Risai
3022	152	Shoukei
3023	152	Shouryu (Komatsu Saburou Naotaka)
3024	152	Taiki
3025	152	Youko Nakajima
3026	152	Yuka Sugimoto
3027	152	Aozaru
3028	152	Atsuyu
3029	152	Gahou
3030	152	Gyousou Saku
3031	152	Ikuya Asano
3032	152	Kaname Takasato
3033	152	Kantai
3034	152	Keikei
3035	152	Keiki
3036	152	Kenroushinkun
3037	152	Koshou
3038	152	Kouya
3039	152	Kyouou
3040	152	Rangyoku
3041	152	Ribi
3042	152	Rokuta
3043	152	Saiou
3044	152	Sanshi Haku
3045	152	Seishu
3046	152	Sekki
3047	152	Shoukou
3048	152	Shukou
3049	152	Suzu Ooki
3050	152	Youka
3051	153	Kish
3052	153	Zoey Hanson
3053	153	Elliot Grant
3054	153	Bridget Verdant
3055	153	Kikki Benjamin
3056	153	Renee Roberts
3057	153	Corina Bucksworth
3058	153	Wesley J. Coolridge III
3059	153	 Berry Shirayuki
3060	153	Masaya Aoyama
3061	153	Tart
3062	153	Minimew
3063	153	Pai
3064	153	Blue Knight
3065	153	Deep Blue
3066	154	Ruri Sarasa
3067	154	Chelsea Rorec
3068	154	Ginosuke Isuzu
3069	154	Rumina Asagi
3070	154	Sui
3071	155	Demon Beast Astarot
3072	155	Demon Lord Satan
3073	155	Saori Utsugi
3074	155	Tamiko Utsugi
3075	155	Angelic Weapon Saori
3076	155	Astarot
3077	155	Beelzebub
3078	155	Carne
3079	155	Demon Beast Carne
3080	155	Demon Beast Gujion
3081	155	Demon Beast Samael
3082	155	Demon Beast Ura
3083	155	Demon Beast Zenon
3084	155	Demon Lord Dante
3085	155	Demon SX
3086	155	God
3087	155	Gushion
3088	155	Kosuke Utsugi
3089	155	Kujinba
3090	155	Lamia
3091	155	Medusa the Witch
3092	155	Professor Veil Zebub
3093	155	Ryo Utsugi
3094	155	Saeko Kodai
3095	155	Sakushi
3096	155	Samael
3097	155	Satan the Wise One
3098	155	Shi
3099	155	Sosuke Oshiba
3100	155	Ura
3101	155	Zenon
3102	156	Sue
3103	156	Agent L
3104	156	Agent S
3105	156	Chibisuke
3106	156	Daisuke Hagiwara
3107	156	Ensui
3108	156	Gokaku
3109	156	Hikaru Himuro
3110	156	Ichiro Sumishiba
3111	156	Komaki
3112	156	Kyoji Tachibana
3113	156	Maiko Yukino
3114	156	Meguru
3115	156	Reiji Ozora
3116	156	Rin
3117	156	Sally
3118	156	Sayaka Towa
3119	156	Taiyou
3120	157	Princess Kraehe
3121	157	Ahiru Arima
3122	157	Fakir
3123	157	Princess Tutu
3124	157	Mr. Cat
3125	157	Mytho
3126	157	Drosselmeyer
3127	157	Duck
3128	157	Edel
3129	157	Lilie
3130	157	Pike
3131	157	Rue Kuroha
3132	157	Uzura
3133	158	Chise
3134	158	Akemi
3135	158	Atsushi
3136	158	Fuyumi
3137	158	Mizuki
3138	158	Shuuji
3139	158	Tetsu
3140	159	Demon Eyes Kyo
3141	159	Yuya Shiina
3142	159	Mibu Kyoshiro
3143	159	Akari
3144	159	Akira
3145	159	Benitora
3146	160	Seiko Rikiishi
3147	160	Shizuka Midou
3148	160	Tama Hieda
3149	160	Yuzu Hieda
3150	160	Chika Yurikasa
3151	160	Izumi Sakibara
3152	160	Koma
3153	160	Kukuri Shirayama
3154	160	Kurako Hieda
3155	160	Masashi Kusugi
3156	160	Michimune Ayatachi
3157	160	Mizuho Hamaji
3158	160	Tadahiro Amatsu
3159	160	Yukie Uranami
3160	161	Akina Nanamura
3161	161	Chorus
3162	161	Hydra
3163	161	Laine
3164	161	Sanada
3165	161	Valkyrie (Child)
3166	161	Inarba
3167	161	Kazuto Tokino
3168	161	Mehm
3169	161	Nesty
3170	161	Pharm
3171	161	Rika Tokino
3172	161	Valkyrie (Adult)
3173	161	Valkyrie Ghost
3174	162	Robin Sena
3175	162	Amon
3176	162	Yurika Dojima
3177	162	Haruto Sakaki
3178	162	Michael Lee
3179	162	Miho Karasuma
3180	162	Shintaro Kosaka
3181	162	Takuma Zaizen
3182	162	Touko Masaki
3183	163	Rakka
3184	163	Reki
3185	163	Hikari
3186	163	Kana
3187	163	Kuu
3188	164	Motoko Kusanagi
3189	164	Togusa
3191	164	Aoi
3192	164	Borma
3193	164	Daisuke Aramaki
3194	164	Ishikawa
3195	164	Miki
3196	164	Paz
3197	164	Saito
3198	164	Tachikoma
3199	164	Togusa's Wife
3200	164	Abe
3201	164	Bosuerinofu Cruzkowa
3202	164	Daido
3203	164	Eka Turkuro
3204	164	Ernest Serano
3205	164	Fukami
3206	164	Gondo Kanekichi
3207	164	Harvard MacLachlan
3208	164	Hisashi Imakurusu
3209	164	Jerry
3210	164	Kubota
3211	164	Kuroha
3212	164	Kurutan
3213	164	Marcelo Jarti
3214	164	Marco Amoretti
3215	164	Nibu
3216	164	Niimi
3217	164	Nogi
3218	164	Pavlo Zaitsev
3219	164	Reiko Kanzaki
3220	164	Sano
3221	164	Seymour
3222	164	Shuuzou Kanzaki
3223	164	Toshibo Oba
3224	164	Wataru Kannadzuki
3225	164	Yamaguchi
3226	164	Yamaguchi's Wife
3227	165	Brigetta
3228	165	Leele Zeravire
3229	165	Mizuki Tachibana
3230	165	Alex Smith
3231	165	Anya
3232	165	Cecile
3233	165	Chuiru
3234	165	Dica
3235	165	Dr. Barnett
3236	165	Dr. Yoshizumi
3237	165	Eiji Shigure
3238	165	Eina
3239	165	Inoue
3240	165	Klein Sandman
3241	165	Luna Gusuku
3242	165	Marinia
3243	165	President
3244	165	Raven
3245	165	Rosa
3246	165	Rufiira Zeravire
3247	165	Tesera
3248	165	The Original Raven
3249	165	Toga Tenkuji
3250	165	Toria
3251	166	Eyes Rutherford
3252	166	Ayumu Narumi
3253	166	Rio Takeuchi
3254	166	Hiyono Yuizaki
3255	166	Kanone Hilbert
3256	166	Kei Shiranagatani
3257	166	Sayoko Shiranagatani
3258	166	Takako Adachi
3259	166	Hunter A
3260	166	Kousuke Asazuki
3261	166	Madoka Narumi
3262	166	Reiko Hatsuyama
3263	166	Ryoko Takamachi
3264	166	Suzuki
3265	166	Imasato
3266	166	Keishisei Kanzaka
3267	166	Raizou Shiranagatani
3268	166	Suemaru Wataya
3269	167	Sousuke Sagara
3270	167	Teletha 'Tessa' Testarossa
3271	167	Eri Kagurazaka
3272	167	Kaname Chidori
3273	167	Kurz Weber
3274	167	Melissa Mao
3275	167	Mizuki Inaba
3276	167	Ren Mikihara
3277	167	Xia Yu Fan
3278	167	Xia Yu Lan
3279	167	Gauron
3280	167	Kyouko Tokiwa
3281	167	Maya Murai
3282	167	Shinji Kazama
3283	167	Andrei Sergeivich Kalinin
3284	167	Belfangan Clouseau
3285	167	Gates
3286	167	Gavin Hunter
3287	167	Jerome Borda
3288	167	Leonard Testarossa
3289	167	Lord Mallory
3290	167	Mayer Amit
3291	167	Nora Lemming
3292	167	Richard Henry Mardukas
3293	167	Vincent Blueno
3294	168	Makoto Sawatari
3295	168	Ayu Tsukimiya
3296	168	Nayuki Minase
3297	168	Sayuri Kurata
3298	168	Mai Kawasumi
3299	168	Kaori Misaka
3300	168	Shiori Misaka
3301	168	Akiko Minase
3302	168	Mishio Amano
3303	168	Jun Kitagawa
3304	168	Kuze
3305	168	Yuuichi Aizawa
3306	169	Kai Sanpagita
3307	169	Maki Aikawa
3308	169	Renge Inui
3309	169	Kaori Sakiyama
3310	169	Michiru Kawamoto
3311	169	Mina Nakanotani
3312	169	Yuki Minaguchi
3313	169	Yuu Takigawa
3314	169	Akiko
3315	169	Baba 
3316	169	Carey
3317	169	Eternal
3318	169	Fukamichi
3319	169	Hanai
3320	169	Hanami Matoba
3321	169	Julietta Sakamoto
3322	169	Kawahara
3323	169	Kinjirou Kitaeda
3324	169	Kouji Ogata
3325	169	Lucha Master
3326	169	Masami Ishige
3327	169	Mika Utsumi
3328	169	Mio Hayase
3329	169	Miori Saeki
3330	169	Nagato
3331	169	Nobuhiko Fukamichi
3332	169	Rakuko Nono
3333	169	Reiichi Mishima
3334	169	Sawamura
3335	169	Sayama
3336	169	Shinnosuke Tokita
3337	169	Shirou Saeki
3338	169	Shizuna Kusaka
3339	169	Shun Yashiki
3340	169	Tachibana
3341	169	Tomiko Seriguchi
3342	169	Tsukio Taketsugu
3343	169	Yoshinori Konishi
3344	169	Yuukorin
3345	170	Kyu Renjo (Q)
3346	170	Ryu Amakusa
3347	170	Kazuma Narusawa
3348	170	Kintaro Tohyama
3349	170	Koutarou Nanami
3350	170	Kyousuke Gouda
3351	170	Megumi Minami
3352	170	Morihiko Dan
3353	170	Sakurako Yukihira
3354	170	Shino Katagiri
3355	170	Shintarou Maki
3356	171	Katana
3357	171	Aiko Mary Harmony
3358	171	Arashi Shinozuka
3359	171	Catherine Flober
3360	171	Hajiki Sanada
3361	171	Melissa
3362	171	Sayuri
3363	171	Seikai
3364	171	Takumi Kisaragi 
3365	172	Munto
3366	172	Ichiko Ono
3367	172	Irita
3368	172	Leica
3369	172	Nozomi Hidaka
3370	172	Suzume Imamura
3371	172	Yumemi Hidaka
3372	172	Act Puppet
3373	172	Chikara Hidaka
3374	172	Elder A
3375	172	Elder B
3376	172	Elder C
3377	172	Elder D
3378	172	Gass
3379	172	Gulidori
3380	172	Guntarl / Gntarl
3381	172	Kazuya Takamori
3382	172	Previous King
3383	172	Queen
3384	172	Raruko
3385	172	Reimon
3386	172	Rui / Louie
3387	172	Ryueli
3388	172	Shigeru Hidaka
3389	172	Takashi Tobe
3390	172	Tochye
3391	173	Fulle
3392	173	Pacifica Casull
3393	173	Raquel Casull
3394	173	Cz
3395	173	Celia Mauser
3396	173	Farfal Armalite
3397	173	Jill
3398	173	Shannon Casull
3399	173	Winia Chester
3400	173	Baroness Bailaha
3401	173	Berkens
3402	173	Christopher Armalite
3403	173	Dennis
3404	173	Doyle Barrett
3405	173	Eirote Borchard
3406	173	Kidaf Gillot
3407	173	Leopold Scorpos
3408	173	Luke Strum
3409	173	Peters-Stahl
3410	173	Prince Forsis
3411	173	Princess Elfitine
3412	173	Seness Giat
3413	173	Socom
3414	173	Steyr
3415	173	Sutton
3416	173	Zefiris
3417	174	Akira Kayama
3418	174	Arisa Glennorth
3419	174	Ren Renge
3420	174	Rinna Kazamatsuri
3421	174	Ayaka Machida
3422	174	Chiaki Katase
3423	174	Jinrai Shirogane
3424	174	Joey Jones
3425	174	Kent Austin
3426	174	Kouta Otoyama
3427	174	Leila Barthes
3428	174	Masaru Odawara 
3429	174	Masato Katase
3430	174	Najima Gable
3431	174	Pierre Takida
3432	174	Richard James
3433	174	Ritsuo Shojin
3434	174	Shima Katase
3435	174	Yayoi Fujisawa
3436	175	Akihisa Sonoda
3437	175	Eriko Kaneda 
3438	175	Fuminori Kowakura
3439	175	Gabe's Elder
3440	175	Hal 
3441	175	Haruhiko Tooyama
3442	175	Ichise
3443	175	Kano
3444	175	Kasuo Yoshii
3445	175	Keitarou Mizuno
3446	175	Kenichiro Tsujinaka
3447	175	Kimata Genji
3448	175	Kyougo Onishi
3449	175	Kyousuke Ishii
3450	175	Mana Onishi
3451	175	Michiko Hirota
3452	175	Ran
3453	175	Ryuuichi Izaki
3454	175	Saninuma
3455	175	Shinji
3456	175	Tatsuya Sakimura
3457	175	Toyama's Father
3458	175	Yoko Ryoko
3459	175	Zashi
3460	176	Ayu Tateishi
3461	176	Kaji Tetsushi
3462	176	Maya Orihara
3463	176	Nina Sakura 
3464	176	Tsujiai Hiroki
3465	177	Sherry Belmont
3466	177	Kiyomaro Takamine
3467	177	Megumi Oumi
3468	177	Penny
3469	177	Wonrei
3470	177	Zatch Bell
3471	177	Brago
3472	177	Kolulu
3473	177	Kotoha
3474	177	Li-en
3475	177	Parco Folgore
3476	177	Suzy Mizuno
3477	177	Tia
3478	177	Cherish
3479	177	Dufort
3480	177	Ellie
3481	177	Gensou
3482	177	Kalura
3483	177	Kanchome
3484	177	Koko
3485	177	Laila
3486	177	Ponygon
3487	177	Princess Natsuko
3488	177	Shion Hibiki
3489	177	Zeno Bell
3490	177	Albert
3491	177	Alishie
3492	177	Alm
3493	177	Alvin
3494	177	Apollo
3495	177	Arth
3496	177	Babiru
3497	177	Bago
3498	177	Bahking
3499	177	Bamu
3500	177	Baraho
3501	177	Belgim E.O.
3502	177	Blizzard Thing
3503	177	Boru Bora
3504	177	Buton
3505	177	Buzarai 
3506	177	Byonko
3507	177	Cut N' Paste
3508	177	Dalia Anje
3509	177	Dalmos
3510	177	Danny Boy
3511	177	Demolt
3512	177	Dinosaur Arm
3513	177	Djem 
3514	177	Dogmos
3515	177	Domu
3516	177	Dr. Hakase 
3517	177	Dr. Riddles 
3518	177	Eido
3519	177	Elle Chivas
3520	177	Erujo
3521	177	Fango
3522	177	Fausuto
3523	177	Fein
3524	177	Ferius
3525	177	Fire Elbow
3526	177	Flying Beat
3527	177	Future Wonder
3528	177	Ganz
3529	177	Garza
3530	177	Gein
3531	177	Gelios 
3532	177	Gofure
3533	177	Grisor
3534	177	Gustav
3535	177	Gyaron
3536	177	Hana Takamine
3537	177	Haru
3538	177	Henry Abbolt
3539	177	Hideaki
3540	177	Hiromi
3541	177	Hiroshi Yamanaka
3542	177	Hosokawa
3543	177	Hougan
3544	177	Hyde
3545	177	Ibaris
3546	177	Ivy Kinoyama
3547	177	Jed
3548	177	Jedun
3549	177	Jill
3550	177	Jobin
3551	177	John Owen
3552	177	Kafk Sunbeam
3553	177	Kamakku
3554	177	Kari
3555	177	Karudio
3556	177	Keith
3557	177	Kido
3558	177	Koral Q
3559	177	Kory
3560	177	Kyle
3561	177	Lady Susan
3562	177	Lightning Eye
3563	177	Lori
3564	177	Luccica
3565	177	Luke Brown
3566	177	Maestro
3567	177	Majirou
3568	177	Mamiko Takashi
3569	177	Mamoru Iwashima
3570	177	Marie Calnoa
3571	177	Mariko Nakamura
3572	177	Marlene Yanenz
3573	177	Maruss
3574	177	Maryl Caruno
3575	177	Minorusam
3576	177	Momon
3577	177	Mr. Touyama
3578	177	Nana
3579	177	Naomi
3580	177	Nicole
3581	177	Ninin
3582	177	Noumen
3583	177	Nya
3584	177	Oren
3585	177	Pamoon
3586	177	Paul Kahn
3587	177	Payom
3588	177	Psychic Jungle
3589	177	Rein
3590	177	Renji
3591	177	Reycom
3592	177	Riou
3593	177	Riya 
3594	177	Robnos
3595	177	Rocket Foot
3596	177	Rodeaux
3597	177	Second Sight
3598	177	Seitarou Takamine
3599	177	Seiu Ou
3600	177	Sherry's Mother
3601	177	Takos
3602	177	Ted
3603	177	Telepathy Radar
3604	177	Torowa
3605	177	Tremor Mole
3606	177	Tsao-Lon
3607	177	Tsuvai
3608	177	Tsuyoshi Kaneyama
3609	177	Urimire
3610	177	Victoream 
3611	177	Vincent Bari
3612	177	Wife
3613	177	Yuuta Akiyama
3614	177	Zaruchimu
3615	177	Zofis
3616	178	Kanu Unchou
3617	178	Hakufu Sonsaku
3618	178	Ryofu Housen
3619	178	Shimei Ryomou
3620	178	Ukitsu
3621	178	Koudai Chinkyu
3622	178	Bunwa Kaku
3623	178	Goei Sonsaku
3624	178	Chuei Toutaku
3625	178	Gakushu
3626	178	Genjou Kakouton
3627	178	Kouha Kannei
3628	178	Koukin Shuyu
3629	178	Motoku Sousou
3630	178	Saji Genpou / Shishi Ouin
3631	178	Shigi Taishiji
3632	178	Tokubou Teifu
3633	179	Kotori Shirakawa
3634	179	Misaki Sagisawa
3635	179	Mako Mizukoshi
3636	179	Miharu Amakase
3637	179	Junichi Asakura
3638	179	Moe Mizukoshi
3639	179	Nemu Asakura
3640	179	Sakura Yoshino
3641	179	Suginami
3642	179	Utamaru
3643	179	Koyomi Shirakawa
3644	180	Misaki Kureha 
3645	180	Suzanna Bluestein
3646	180	Lyar Von Ertiana
3647	180	Luxandra Frail
3648	180	Kiri Marialate
3649	180	Prim Snowlight
3650	180	Kotoko 01
3651	180	Bernard Firestar
3652	180	Comrie Rotblat
3653	180	Jean Luc Leblanc
3654	180	Juuzou Kureha
3655	180	Lieutenant Nodera
3656	180	Luke Walker
3657	180	Morozov
3658	180	Wolfgang Woerns
3659	181	Mizuho Kazami
3660	181	Karen Onodera
3661	181	Miina Miyafuji
3662	181	Ichigo Morino
3663	181	Tsubaki Oribe
3664	181	Koishi Herikawa
3665	181	Maiku Kamishiro
3666	181	Nat
3667	181	Akina Sagawa
3668	181	Futaba Mashita
3669	181	Haruko Shido
3670	181	Hyosuke Magumo
3671	181	Kaede Misumi
3672	181	Kousei Shimazaki
3673	181	Marie
3674	181	Masami Yamada
3675	181	Matagu Shidou
3676	181	Yuuka Yashiro
3677	182	Beauty
3678	182	Bobobo-bo Bo-bobo
3679	182	Gasser
3680	182	Don Patch
3681	182	Giga
3682	182	J
3683	182	Jelly Jiggler
3684	182	Softon
3685	182	Suzu
3686	182	Torpedo Girl
3687	183	Rosette Christopher
3688	183	Chrono
3689	183	Azmaria Hendrich
3690	183	Satella Harvenheit
3691	183	Aion
3692	183	Chrono Devil Form
3693	183	Joshua Christopher
3694	183	Father Ewan Remington
3695	183	Duke Duffau
3696	183	Edward Hamilton
3697	183	Florette Harvenheit
3698	183	Kate Valentine
3699	183	Mary Magdalena
3700	183	Shader
3701	184	Freddie 
3702	184	Akio Takejou
3703	184	Akira Maeda
3704	184	Akira Nakao
3705	184	Beta Mechazawa
3706	184	Gerotan
3707	184	Hiromi Gou
3708	184	Hokuto's Lackey
3709	184	Jackson Setouchi
3710	184	Jeeves
3711	184	Jun Ishikawa
3712	184	Ken Hirai
3713	184	Kiichi Fujimoto
3714	184	Maeda's Mother
3715	184	Makio Tanaka
3716	184	Masa
3717	184	Noboru Yamaguchi
3718	184	Osamu Kido
3719	184	Pootan
3720	184	Shin'ichi Mechazawa
3721	184	Shinjirou Hayashida
3722	184	Tabata
3723	184	Takashi Kamiyama
3724	184	Takeshi Hokuto
3725	184	Yutaka Takenouchi
3726	185	Edward Elric
3727	185	Roy Mustang
3728	185	Riza Hawkeye
3729	185	Alphonse Elric
3730	185	Winry Rockbell
3731	185	Maes Hughes
3732	185	Envy
3733	185	Izumi Curtis
3734	185	Lust
3735	185	Greed
3736	185	Scar
3737	185	Alex Louis Armstrong
3738	185	Nina Tucker
3739	185	Alphonse Elric
3740	185	Trisha Elric
3741	185	Wrath
3742	185	Black Hayate
3743	185	Rose Thomas
3744	185	Solf J. Kimblee
3745	185	Gluttony
3746	185	Jean Havoc
3747	185	Psiren
3748	185	Sheska
3749	185	Van Hohenheim
3750	185	Barry the Chopper
3751	185	Catherine Elle Armstrong
3752	185	Frank Archer
3753	185	Maria Ross
3754	185	Paninya
3755	185	Dorochet
3756	185	Fletcher Tringham
3757	185	King Bradley
3758	185	Lyra
3759	185	Martel
3760	185	Mrs. Bradley
3761	185	Selim Bradley
3762	185	Vato Falman
3763	185	Barry the Chopper
3764	185	Dante
3765	185	Denny Brosh
3766	185	Father Cornello
3767	185	Heymans Breda
3768	185	Ishvalan Exile
3769	185	Kain Fuery
3770	185	Law
3771	185	Lujon
3772	185	Lydia
3773	185	Majhal
3774	185	Philip Gargantos Armstrong
3775	185	Pinako Rockbell
3776	185	Rick
3777	185	Rio
3778	185	Russel Tringham
3779	185	Scar's Master
3780	185	Shou Tucker
3781	185	Sig Curtis
3782	185	Sloth
3783	185	Tim Marcoh
3784	186	Countess of Werdenberg
3785	186	Kiyoko Madoka
3786	186	Novem
3787	186	Tatsuya Madoka
3788	186	Terumichi Madoka
3789	186	Uno
3790	187	Brandon Heat
3791	187	Bunji Kugashira
3792	187	Dr. Tokioka
3793	187	Alzac Tino
3794	187	Balladbird Lee
3795	187	Bear Walken
3796	187	Big Daddy
3797	187	Biscoe
3798	187	Bob Poundmax 
3799	187	Brad Wong
3800	187	Butler Tokioka
3801	187	Cannon Vulcan
3802	187	Descartes
3803	187	Gary
3804	187	Harry MacDowell (Young)
3805	187	Jester
3806	187	Jolice
3807	187	Kenny
3808	187	Laguna Glock
3809	187	Maggie
3810	187	Maria Asagi
3811	187	Mika Asagi
3812	187	Milanda
3813	187	Nathan
3814	187	Norton
3815	187	Randy
3816	187	Sherry Walken
3817	187	Sid Galarde
3818	187	Widge Burns
3819	188	Yuuna Miyama
3820	188	Kuriko Kazetsubaki
3821	188	Rin Kamishiro
3822	188	Kaori Iba
3823	188	Chihaya Yamase
3824	188	Kamiyo Yamase
3825	188	Kazuki Shikimori
3826	188	Kazumi Matsuda
3827	188	Maiho Kurioka
3828	188	Sayumi Morisaki
3829	188	Elizabeth
3830	188	Haruaki Akai
3831	188	Maika Kazetsubaki
3832	188	Raika Naruo
3833	188	Shino Akai
3834	188	Shunji Kamishiro
3835	188	Yukihiko Nakamaru
3836	189	Isago 
3837	189	Mana
3838	189	Masato
3839	189	Nae Kogure
3840	189	Nanao
3841	189	Natsume 
3842	189	Rin
3843	189	Towa Kannagi
3844	189	Yuta
3845	190	Mitsuki Hayase
3846	190	Haruka Suzumiya
3847	190	Akane Suzumiya
3848	190	Ayu Daikuuji
3849	190	Miki
3850	190	Azusa Ishida
3851	190	Coach
3852	190	Fumio Hoshino
3853	190	Hotaru Amakawa
3854	190	Kaoru Suzumiya
3855	190	Kenzou Sakiyama
3856	190	Manami Homura
3857	190	Mayu Tamano
3858	190	Mitsuki's Mother
3859	190	Motoko Kouzuki
3860	190	Nessa Utsuki
3861	190	Shinji Taira
3862	190	Souchirou Suzumiya
3863	190	Takayuki Narumi
3864	190	Yoshiyuki Itou
3865	191	Lilith
3866	191	Meiling
3867	191	Layla
3868	191	Quill
3869	191	Suzaku
3870	191	Fujihime
3871	191	Hatsumi Azuma
3872	191	Hazuki Azuma
3873	191	Kogechibi
3874	191	Milka
3875	191	Youko Sumeragi
3876	191	Eskales
3877	191	Mariel
3878	191	Mau
3879	191	Ramuru
3880	191	Ritsuko
3881	191	Seiren
3882	191	Tamamonomae
3883	191	Ken-chan
3884	191	Arya
3885	191	Dadan Vartaniev
3886	191	Gargantua
3887	191	Kazuo Saiga
3888	191	Koutaro Nanbu
3889	191	Mariel's Father
3890	191	Taichou \\ Captain
3891	191	Yuri Nasduskii
3892	192	Blake
3893	192	Sweet
3894	192	Alpha Richter
3895	192	Amy
3896	192	Burton
3897	192	Ciao
3898	192	Dan
3899	192	Dart
3900	192	Deed
3901	192	Gummie
3902	192	Helmut Titan
3903	192	Hop
3904	192	Luke
3905	192	Marvis
3906	192	Matt
3907	192	Rastani
3908	192	RD
3909	192	Rebecca
3910	192	Reynard
3911	192	Sabre
3912	192	Sandra
3913	192	Sigma
3914	192	Vareth
3915	193	Ouka
3916	193	Balmung
3917	193	Mireille
3918	193	Michi
3919	193	Shugo Kunisaki
3920	193	Hotaru
3921	193	Katsuyuki
3922	193	Rena Kunisaki
3923	193	Aura
3924	193	Daisuke
3925	193	Hayato
3926	193	Kamui
3927	193	Komiyan III
3928	193	Magi
3929	193	Molti
3930	193	Mr. Grunty
3931	193	Reki
3932	193	Sanjuro
3933	194	Atsushi Hayami
3934	194	Hisaomi Sakaue
3935	194	Mai Shibamura
3936	194	Mio Mibuya
3937	194	Nonomi Higashihara
3938	194	Takayuki Setoguchi
3939	194	Yohei Takigawa
3940	195	Alice Beckham
3941	195	Arias Honoh
3942	195	Daichi Hayami
3943	195	Jay
3944	195	Kai Kitazawa
3945	195	Ken Minami
3946	195	Makoto Aikawa
3947	195	Rin Haruka
3948	195	Sayuri Suizenji
3949	195	Shoh Ashikawa
3950	195	Taiyoh Ohzora
3951	196	Hazuki Kakio
3952	196	Mei Momozono
3953	196	Sorata Muon
3954	196	Yayoi Kuribayashi
3981	198	Jinpachi Arashiyama
3982	198	Kuriko Aratama
3983	198	Magical Domiko
3984	198	Nanaka Kirisato
3985	198	Nenji Nagihara
3986	198	Satsuki Arashiyama
3987	198	Taizou Kirisato
3988	198	Yuriko Amemiya
3989	199	Nishiki Ii
3990	199	Aya Nabeshima
3991	199	Kasuri Hattori
3992	199	Kyoushiro Inukai
3993	199	Shuro Naoe
3994	199	Tsumugi Shima
3995	200	Honomi Asagi
3996	200	Angela Brooks
3997	200	Gota Midorikawa
3998	200	Hiyori Yamabuki
3999	200	Koji Kurokawa
4000	200	Masami Oyamada
4001	200	Saori Shiraishi
4002	200	Seiichiro Hara
4003	200	Sora Suzuki
4004	200	Yume Kikuchi
4005	201	Alice "Admiral"
4006	201	Mikaze Honjou
4007	201	Annette Kerry
4008	201	Ayame Honjou
4009	201	Ayamo Nakamura
4010	201	Betty Boozeman
4011	201	Boss Cat
4012	201	Chizuru Kubo
4013	201	Chris Carman
4014	201	Daizou Nakamura
4015	201	General Iwasaki
4016	201	Karin Kikuhara
4017	201	Karuto Doi
4018	201	Kazuma Iwasaki
4019	201	Kei Fujitani
4020	201	Kouichirou Sako
4021	201	Miharu Oozora
4022	201	Nagisa Kisaragi
4023	201	Norie Nakamura
4024	201	Onna
4025	201	Otoko
4026	201	Ran Mikuriya
4027	201	Reika Honjou
4028	201	Rin Mikuriya
4029	201	Robert Reynolds
4030	201	Sayaka Kisaragi
4031	201	Shizuha Doi
4032	201	Shoujo 
4033	201	Shuuhei Nakamura
4034	201	Sora Ikeda
4035	201	Teruhiko Honjou
4036	201	Touko Mukai
4037	201	Tsubasa Miyazaki
4038	201	Tsubasa's Father
4039	201	Tsukino
4040	202	Nadja Applefield
4041	202	Abel Geiger
4042	202	Anna Petrova
4043	202	Antonio Fabiani
4044	202	Bianco
4045	202	Chocolat
4046	202	Christian Strand
4047	202	Collette Preminger
4048	202	Cream
4049	202	Fernando Gonzales
4050	202	Francis Harcourt
4051	202	George Haskill
4052	202	Herman Preminger
4053	202	John Whittard
4054	202	Julietta Savellli
4055	202	Keith Harcourt
4056	202	Kennosuke Tsurugi
4057	202	Leonardo Cardinale
4058	202	Marianne Hamilton
4059	202	Oliver Campbell
4060	202	Oscar Colorado
4061	202	Rita Rossi 
4062	202	Rosemary Applefield
4063	202	Rosso
4064	202	Sylvie Arte
4065	202	Thierry Rothschild
4066	203	Toboe
4067	203	Kiba
4068	203	Blue
4069	203	Cheza
4070	203	Hige
4071	203	Hamona
4072	203	Tsume
4073	203	Cher Degre
4074	203	Cole
4075	203	Hubb Lebowski
4076	203	Iyek
4077	203	Leara
4078	203	Myu
4079	203	Quent Yaiden
4080	203	Darcia
4081	203	Jagara
4082	204	Meg
4083	204	Jo
4084	204	Sei
4085	204	Ishtar Empress
4086	204	Meg (young)
4087	204	Takane Katsu
4088	204	Amy
4089	204	Angelique
4090	204	Jo (young)
4091	204	Kazami
4092	204	Maria
4093	204	Ms. Hongo
4094	204	Kyohei Tachibana
4095	204	Lava
4096	204	Nadeshiko
4097	204	School Phantom
4098	204	Yoko
4099	204	Akio
4100	204	Charlie
4101	204	Chief Katsu
4102	204	Crow Psybot
4103	204	Cyberiod Doctor
4104	204	D'jango
4105	204	Director
4106	204	Dorothy
4107	204	Eiji
4108	204	ER Doctor
4109	204	Experimental Highway Patrol Vehicle
4110	204	Governor Ishihara
4111	204	Governor Ricky Glenford
4112	204	Hiro-yan
4113	204	Ichimongi
4114	204	Inspector Azuma Iriki
4115	204	Jei Kokuren
4116	204	Jumbo Psybot
4117	204	Kivay
4118	204	Laoban
4119	204	Lead RAPT Scientist
4120	204	Lee Harvey
4121	204	Leo Jinno
4122	204	Liang
4123	204	Masa-yan
4124	204	MCT Tour Guide
4125	204	Mega-Rider
4126	204	Mika
4127	204	Mutated Ultra Beast
4128	204	Nose Ring
4129	204	Old Man Lee
4130	204	Professor
4131	204	Sam
4132	204	Shirley
4133	204	Subway Monster
4134	204	Tatsuya
4135	204	Tetsuzo
4136	204	Thug Boss of Shibuya
4137	204	Ultra Beast
4138	204	Wanted Man
4139	204	Warrior Samurai
4140	204	Wong
4141	204	Wong Beast
4142	204	Yakuza Boss
4143	205	Eureka
4144	205	Talho Yuuki
4145	205	Anemone
4146	205	Maeter
4147	205	Moondoggie
4148	205	Renton Thurston
4149	205	Charles Beams
4150	205	Coda Lovell
4151	205	Gidget
4152	205	Ray Beams
4153	205	Adrock Thurston
4154	205	Ageha Swallowtails
4155	205	Alex Thurston
4156	205	Braya Mattingly
4157	205	Brittany
4158	205	Deckard
4159	205	Dewey Novak
4160	205	Diane Thurston
4161	205	Dominic Sorel
4162	205	Gonzy
4163	205	Greg Egan
4164	205	Gulliver
4165	205	Hap
4166	205	Hilda
4167	205	Holland Novak
4168	205	Jobs
4169	205	Jurgens
4170	205	Ken-Goh
4171	205	Kuzemi Swigert
4172	205	Linck
4173	205	Maria Schneider
4174	205	Martha Baxter
4175	205	Matthieu
4176	205	Maurice
4177	205	Mischa
4178	205	Morita
4179	205	Neal
4180	205	Norb
4181	205	Sakuya
4182	205	Sonia Wakabayashi
4183	205	Stoner
4184	205	Tiptory
4185	205	Uno
4186	205	William B. Baxter
4187	205	Woz
4188	205	Yukatan Iglasias
4189	206	Kei Kurono
4190	206	Reika Shimohira
4191	206	Joichiro Nishi
4192	206	Kei Kishimoto
4193	206	Sadayo Suzumura
4194	206	Sei Sakuraoka
4195	206	Ginji Furuta
4196	206	Hikawa
4197	206	Kanda Mika
4198	206	Kazuki Saito
4199	206	Masaru Katou
4200	206	Muroto Hajime
4201	206	Ryuji Kajiura
4202	206	Tae Kojima
4203	206	Yoshino Uehara
4204	207	Toune Requiem
4205	207	Bocca Serenade
4206	207	Elle Sonoda
4207	207	Hikari
4208	207	Horu
4209	207	Koko Ninna-Nanna
4210	207	Kurofune Ballad
4211	207	Kuron
4212	207	Nick
4213	207	Saburou Musashino
4214	207	Sayoko Tsukinomori
4215	207	Sky Blue
4216	207	Solo
4217	207	Tamakorogashi
4218	207	The Melody of Oblivion
4219	208	Midori Kasugano
4220	208	Seiji Sawamura
4221	208	Shiori Tsukishima
4222	208	Beniko Iwasaki
4223	208	Futoshi Sekiguchi
4224	208	Haruka Kasugano
4225	208	Jigorou
4226	208	Kouta Shingyoji
4227	208	Makie Tsukamoto
4228	208	Makoto Harada
4229	208	Masami Kyomoto
4230	208	Osamu Miyahara
4231	208	Rin Sawamura
4232	208	Shigeru Hirano
4233	208	Shiori's Father
4234	208	Shiori's Stepmother
4235	208	Shuichi Takamizawa
4236	208	Takako Ayase
4237	208	Ultra Marin
4238	208	Youko
4239	208	Yuka
4240	208	Yuma Takiguchi
4241	209	Fuu
4242	209	Jin
4243	209	Mugen
4244	209	Momo
4245	209	Buddhist Priest
4246	209	Budoukiba
4247	209	Bundai
4248	209	Bunta Ogura
4249	209	Daigorou
4250	209	Denkibo
4251	209	Enshirou Mariya
4252	209	Francisco de Xavier III
4253	209	Ginsa Momochi
4254	209	Heike Shige
4255	209	Heitarou Kawara 
4256	209	Hishikawa Moronobu
4257	209	Hotaru
4258	209	Ichiemon
4259	209	Inuyaka
4260	209	Isaac Kitching
4261	209	Ishimatsu
4262	209	Kariya Kagetoki
4263	209	Koza 
4264	209	Matsunosuke Shibui
4265	209	Mukuro
4266	209	Nagamitsu Sakonshougen
4267	209	Nagatomi Rikiei
4268	209	Nokogiri Manzou
4269	209	Okuru
4270	209	Oniwakamaru
4271	209	Osuzu
4272	209	Otawa Hankichi
4273	209	Ryuujirou Sasaki
4274	209	Sara
4275	209	Shino
4276	209	Shinsuke
4277	209	Shiren
4278	209	Sousuke Kawara
4279	209	Tomonoshin Shibui
4280	209	Ukon
4281	209	Umanosuke
4282	209	Yatsuha Imano
4283	209	Yuri
4284	210	Cossette d'Auvergne
4285	210	Eiri Kurahashi
4286	210	Hatsumi Mataki
4287	210	Marcello Orlando
4288	210	Michiru Yajiri
4289	210	Shoko Mataki
4290	210	Yuu Saiga
4291	210	Zenshinni of Shakado
4292	211	Mabel West
4293	211	Hercule Poirot
4294	211	Jane Marple
4295	211	Lee Hastings
4296	211	Oliver
4297	212	Mitsuka Yoshimine
4298	212	Ren
4299	212	Miu
4300	212	Xaki
4301	212	Nia
4302	212	Rubi 
4303	212	B-ko
4304	212	China
4305	212	Hirofumi Nonaka
4306	212	Khi
4307	212	Natsuki Ikuhara
4308	212	Eiko
4309	212	Gen
4310	212	Gramps
4311	212	Granny
4312	212	Harumi Ikuhara
4313	212	Hikorou Oikawa
4314	212	Kuwaoka
4315	212	Neneko Izumi
4316	212	No.2
4317	212	No.3
4318	212	Principal
4319	212	Riko
4320	212	Takeya Ikuhara
4321	212	Uchimura
4322	213	Lucy / Nyuu
4323	213	Nana
4324	213	Mariko Kurama 
4325	213	Yuka
4326	213	Mayu
4327	213	Wanta
4328	213	Kouta
4329	213	Number 3
4330	213	Kisaragi
4331	213	Chief Kurama
4332	213	Arakawa
4333	213	Kanae
4334	213	Bandou
4335	213	Hiromi Kurama
4336	213	Saitou
4337	213	Detective A
4338	213	Detective B
4339	213	Isobe
4340	213	Kakuzawa 
4341	213	Kouta's Father
4342	213	Oomori
4343	213	Shirakawa
4344	213	Tomohiro
4345	213	Yuu Kakuzawa
4346	214	Kenji Kondou
4347	214	Chisato Kodate
4348	214	Chizuru Toomi
4349	214	Fumihiko Makabe / Asagi
4350	214	Kanon Memphis
4351	214	Kazuki Makabe
4352	214	Kouyou Kasugai
4353	214	Kyouhei Mizoguchi
4354	214	Mamoru 'Goubain' Kodate
4355	214	Maya Toomi
4356	214	Sakura Kaname
4357	214	Seri Tatekami
4358	214	Shouko Hazama
4359	214	Soushi Minashiro
4360	214	Tsubaki Minashiro
4361	214	Yukie Kariya
4362	214	Yumiko Toomi
4363	215	Maharu Sena Kanaka
4364	215	Kirie Kojima
4365	215	Miharu Sena Kanaka
4366	215	Lisa Fukuyama
4367	215	Kosame
4368	215	Koyomi Hare Nanaka
4369	215	Yukinari Sasaki
4370	215	Ebi (human form)
4371	215	Elie Doll
4372	215	Hayate
4373	215	Kazuharu Fukuyama
4374	215	Lilica Stacy
4375	215	Machan
4376	215	Tomoka Lana Jude
4377	215	Asuha Hare Nanaka
4378	215	Ebi
4379	215	Fujii
4380	215	Hakana
4381	215	Hanasho
4382	215	Hand of Mabanya
4383	215	Hijiri Kanata
4384	215	Killer 50m Killty Doll
4385	215	Koyomi (young)
4386	215	Koyomi' Father
4387	215	LandLady
4388	215	Lisa (young)
4389	215	Mamoranger
4390	215	Mamoru Machida
4391	215	Mr. Yaoshichi
4392	215	Nanae Kuh Haruka
4393	215	Poyon
4394	215	Reporter
4395	215	The Boss
4396	215	Uogen
4397	215	Yukina
4398	215	Yukina Sasaki
4399	216	Doug
4400	216	Ayaka
4401	216	Christmas
4402	216	Dr. Hajime Amami
4403	216	Kurau Amami
4404	216	Ted
4405	217	Sachiko Ogasawara
4406	217	Sei Satou
4407	217	Eriko Torii
4408	217	Noriko Nijou
4409	217	Shimako Toudou
4410	217	Chisato Tanuma
4411	217	Suguru Kashiwagi
4412	217	Touko Matsudaira
4413	217	Tsutako Takeshima
4414	217	Kei Katou
4415	217	Mami Yamaguchi
4416	217	Minako Tsukiyama
4417	217	Rei Hasekura
4418	217	Shizuka Kanina
4419	217	Yamamura Sensei
4420	217	Yoshino Shimazu
4421	217	Youko Mizuno
4422	217	Yumi Fukuzawa
4423	217	Yuuki Fukuzawa
4424	217	Academy Principal
4425	217	Buddhist abbot
4426	217	Eiko Hoshina
4427	217	Eriko's Father
4428	217	Former Rosa Gigantea
4429	217	Kanako Hosokawa
4430	217	Professor Yamanobe
4431	218	Miyabi
4432	218	Shinobu
4433	218	Gomorrha
4434	218	Izumi
4435	218	Kaede Shiranui
4436	218	Kaede's Father
4437	218	Kaede's Mother
4438	218	Midori
4439	218	Onsakumaru
4440	218	Sasuke
4441	218	Sodom
4442	218	Takeru 
4443	219	Mikan Sakura 
4444	219	Natsume Hyuuga
4445	219	Ruka Nogi
4446	219	Tsubasa Andou
4447	219	Kokoro Yome
4448	219	Narumi L. Anju
4449	219	Persona
4450	219	Anna Umenomiya
4451	219	Hotaru Imai
4452	219	Misaki Harada
4453	219	Nonoko Ogasawara
4454	219	Serina Yamada
4455	219	Sumire Shouda
4456	219	Youichi Hijiri
4457	219	Yura Otonashi
4458	219	Ani Shouda
4459	219	Jinno
4460	219	Misaki
4461	219	Noda
4462	219	Reo Mouri
4463	219	Yuu Tobita
4464	220	Alside
4465	220	Beet
4466	220	Bluezam
4467	220	Cruss
4468	220	Jiiku
4469	220	King of Tragedy Belltoze
4470	220	Kissu
4471	220	Laio
4472	220	Milfa
4473	220	Poala
4474	220	Slade
4475	220	Toto
4476	220	Zenon
4477	221	Ichigo Kurosaki
4478	221	Rukia Kuchiki
4479	221	Orihime Inoue 
4480	221	Yoruichi Shihouin
4481	221	Rangiku Matsumoto
4482	221	Ulquiorra Schiffer
4483	221	Byakuya Kuchiki
4484	221	Toushirou Hitsugaya
4485	221	Grimmjow Jaegerjaques
4486	221	Renji Abarai
4487	221	Neliel Tu Oderschwank
4488	221	Kisuke Urahara
4489	221	Kenpachi Zaraki
4490	221	Kuukaku Shiba
4491	221	Gin Ichimaru 
4492	221	Juushirou Ukitake
4493	221	Tier Halibel
4494	221	Yachiru Kusajishi 
4495	221	Soi Fon
4496	221	Coyote Starrk
4497	221	Momo Hinamori
4498	221	Nel Tu
4499	221	Hisagi Shuuhei
4500	221	Kyoraku Shunsui
4501	221	Kaien Shiba
4502	221	Nemu Kurotsuchi
4503	221	Tatsuki Arisawa
4504	221	Nanao Ise 
4505	221	Ikkaku Madarame
4506	221	Kira Izuru
4507	221	Lisa Yadomaru
4508	221	Mayuri Kurotsuchi
4509	221	Uryuu Ishida
4510	221	Cirucci Sanderwicci
4511	221	Retsu Unohana
4512	221	Shinji Hirako
4513	221	Karin Kurosaki
4514	221	Komamura Sajin
4515	221	Szayelaporro Granz
4516	221	Cyan Sung-Sun
4517	221	Ggio Vega
4518	221	Loly Aivirrne
4519	221	Genryuusai Shigekuni Yamamoto 
4520	221	Mashiro Kuna
4521	221	Noba
4522	221	Yasudou 'Chad' Sado
4523	221	Hanataro Yamada
4524	221	Hisana Kuchiki 
4525	221	Inner Hollow Ichigo
4526	221	Lilynette Gingerback
4527	221	Masaki Kurosaki
4528	221	Haineko
4529	221	Isane Kotetsu 
4530	221	Kensei Muguruma
4531	221	Yoruichi Shihouin (cat form)
4532	221	Kiyone Kotetsu
4533	221	Nnoitra Gilga
4534	221	Yuzu Kurosaki
4535	221	Aizen Sosuke
4536	221	Hiyori Sarugaki
4537	221	Ganju Shiba
4538	221	Noba
4539	221	Isshin Kurosaki
4540	221	Riruka Dokugamine
4541	221	Baraggan Louisenbairn
4542	221	Hachigen Ushouda
4543	221	Miyako Shiba
4544	221	Shusuke Amagai
4545	221	Ururu Tsumugiya
4546	221	Aaroniero Arruruerie 
4547	221	Franceska Mila Rose
4548	221	Lily
4549	221	Love Aikawa
4550	221	Rojuro Otoribashi
4551	221	Zommari Rureaux
4552	221	Chizuru Honshou
4553	221	Luppi Antenor
4554	221	Yammy Llargo
4555	221	Kaname Tosen
4556	221	Menoly Mallia
4557	221	Ikumi Unagiya
4558	221	Jidanbou Ikkanzaka
4559	221	Katen Kyokotsu
4560	221	Yumichika Ayasegawa
4561	221	Zangetsu
4562	221	Ayame
4563	221	Keigo Asano
4564	221	Mizuho Asano
4565	221	Suzumebachi
4566	221	Wonderweiss Margera
4567	221	Sode no Shirayuki
4568	221	Choujirou Sasakibe
4569	221	Hyourinmaru
4570	221	Kon
4571	221	Ran Tao
4572	221	Ruri'iro Kujaku
4573	221	Rurichiyo Kasumioji
4574	221	Ashido Kanou
4575	221	Marechiyo Omaeda
4576	221	Wabisuke
4577	221	Ashisogi Jizo
4578	221	Jinta Hanakari
4579	221	Emilou Apacci
4580	221	Hozukimaru
4581	221	Senbonzakura
4582	221	Yoshino Souma
4583	221	Zabimaru 
4584	221	Tessai Tsukabishi
4585	221	Jackie Tristan 
4586	221	Sora Inoue
4587	221	Dordoni Alessandro Del Socaccio
4588	221	Ririn
4589	221	Hanza Nukui
4590	221	Tobiume
4591	221	Yoshi
4592	221	Gantenbainne Mosqueda
4593	221	Kanisawa
4594	221	Tsubaki
4595	221	Don Kanonji
4596	221	Kazeshini
4597	221	Muramasa
4598	221	Nozomi Kujo
4599	221	Cain
4600	221	Gou Koga
4601	221	Jin Kariya
4602	221	Koga Kuchiki
4603	221	Kukkapuro
4604	221	Kuroudo
4605	221	Mabashi
4606	221	Tesla Lindocruz
4607	221	Kuroudo
4608	221	Maki Ichinose
4609	221	Michiru Ogawa
4610	221	Ririn
4611	221	Ryo Kunieda
4612	221	Ryuken Ishida
4613	221	Ryusei Kenzaki
4614	221	Sayori
4615	221	Sogyo no Kotowari
4616	221	Yylfordt Granz
4617	221	Choe Neng Poww
4618	221	Edrad Liones
4619	221	Findorr Calius
4620	221	Mizuiro Kojima
4621	221	Oscar Joaquin de la Rosa
4622	221	Rusaburo Enkogawa
4623	221	Shu Kannogi
4624	221	Abirama Redder
4625	221	Ayon
4626	221	Baigon
4627	221	Ginrei Kuchiki
4628	221	Gunjo
4629	221	Jirobo Ikkanzaka
4630	221	Mahana Natsui
4631	221	Makoto Kibune
4632	221	Mayu
4633	221	Michel
4634	221	Saido Eikichiro
4635	221	Shun'ou
4636	221	Aida
4637	221	Aoga
4638	221	Ban
4639	221	Charlotte Chuhlhourne
4640	221	Garogai
4641	221	Gegetsuburi
4642	221	Gengoro Onabara
4643	221	Giriko Kutsuzawa
4644	221	Gonryomaru
4645	221	Goteitaishi
4646	221	Haru
4647	221	Harunobu Ogido
4648	221	Heita Toujoin
4649	221	Heizo Kasaki
4650	221	Hinagiku
4651	221	Hou
4652	221	Inose
4653	221	Izaemon Todo
4654	221	Kageroza Inaba
4655	221	Kano
4656	221	Kaoru Unagiya
4657	221	Kazuya Usaka
4658	221	Kei Uehara
4659	221	Kirikaze
4660	221	Kokichirou Takezoe
4661	221	Kugo Ginjo
4662	221	Makizo Aramaki
4663	221	Marenoshin Omaeda
4664	221	Masayoshi
4665	221	Moe Shishigawara
4666	221	Nirgge Parduoc
4667	221	Obuta
4668	221	Oko Yushima
4669	221	Rikichi
4670	221	Rudbornn Chelute
4671	221	Ryou Utagawa
4672	221	Ryu Kuzu
4673	221	Satoda
4674	221	Sawatari
4675	221	Seizo Harugasaki
4676	221	Shinobu Eishima
4677	221	Shukuro Tsukishima
4678	221	Shuren
4679	221	Souken Ishida
4680	221	Taikon
4681	221	Tatsufusa Enjoji
4682	221	Tenken
4683	221	Toshimori Umesada
4684	221	Ugaki
4685	221	Yokochini
4686	221	Yosuke
4687	222	Junko Asagiri
4688	222	Taiko Koizumi
4689	222	Fuyuo Kawaguchi
4690	222	Kanta Mizuno
4691	222	Mariko Marimo
4692	222	Rain Spider
4693	223	Tohma
4694	223	Ahgi
4695	223	Detective Cooks
4696	223	Duma (Damien)
4697	223	Duma (Damien)
4698	223	Georca
4699	223	Hasmodai
4700	223	Helga
4701	223	Helga
4702	223	Hesma
4703	223	Mel
4704	223	Palza
4705	223	Princess Tina
4706	223	Seth
4707	223	Soran
4708	223	Soreto
4709	223	Tarlant
4710	223	Titas
4711	223	Tohma
4712	224	Emiho Mutsu
4713	224	Yurika Menou
4714	224	Akane Mizuhara
4715	224	Miki Moriya
4716	224	Shizuka Masuda
4717	224	Haruki Mukasa
4718	224	Ryou Mizuhara
4719	225	Rushuna Tendo
4720	225	Touka Kurenai
4721	225	Yajiro Kojima 
4722	225	Ai Hotagoya
4723	225	Banmaru Zoushi 
4724	225	Clown 
4725	225	Empress Tenshi
4726	225	Fuuka Shirato
4727	225	Ganzou Tenma
4728	225	Kasumi 
4729	225	King Furon 
4730	225	Koto
4731	225	Mikan Kurenai
4732	225	Nagou 
4733	225	Sanzou Souma
4734	225	Senshi-sama 
4735	225	Setsuna Oomido
4736	225	Shinnoshin Hakubi
4737	225	Teppa Aizen
4738	225	Yamaishi 
4739	226	Yasuaki no Abe
4740	226	Akuram
4741	226	Eisen
4742	226	Minamoto no Yorihisa
4743	226	Princess Fuji
4744	226	Tachibana no Tomomasa
4745	226	Akane Motomiya
4746	226	Fujiwara no Takamichi
4747	226	Iktidal
4748	226	Inori
4749	226	Sefuru
4750	226	Shimon Nagareyama
4751	226	Shirin
4752	226	Tenma Morimura
4753	227	Howl
4754	227	Sophie Hatter
4755	227	Calcifer
4756	227	Heen
4757	227	Markl
4758	227	Grandma Sophie
4759	227	Honey Hatter
4760	227	Lettie Hatter
4761	227	Madame Suliman
4762	227	Prince Justin
4763	227	Witch of the Waste
4764	228	Chikane Himemiya
4765	228	Himeko Kurusugawa
4766	228	Corona
4767	228	Tsubasa
4768	228	Souma Oogami
4769	228	Yukihito
4770	228	Nekoko
4771	228	Reiko Ota
4772	228	Makoto Saotome
4773	228	Sister Miyako
4774	228	Girochi
4775	228	Kazuki Oogami
4776	228	Otoha Kisaragi
4777	229	Fate Testarossa
4778	229	Arf
4779	229	Nanoha Takamachi
4780	229	Lindy Harlaown
4781	229	Yuuno Scrya
4782	229	Alisa Bannings
4783	229	Precia Testarossa
4784	229	Suzuka Tsukimura
4785	229	Ai Makihara
4786	229	Alicia Testarossa
4787	229	Amy Limietta
4788	229	Chrono Harlaown
4789	229	Farin K. Ehrlichkeit
4790	229	Kyouya Takamachi
4791	229	Miyuki Takamachi
4792	229	Momoko Takamachi
4793	229	Noel K. Ehrlichkeit
4794	229	Shinobu Tsukimura
4795	229	Shirou Takamachi
4796	230	Natsuki Kuga
4797	230	Mai Tokiha
4798	230	Nao Yuuki
4799	230	Chie Harada
4800	230	Shizuru Fujino
4801	230	Akira Okuzaki
4802	230	Alyssa Searrs
4803	230	Fumi Himeno
4804	230	Mashiro Kazahana
4805	230	Midori Sugiura
4806	230	Mikoto Minagi 
4807	230	Miyu Glear
4808	230	Nagi Homura
4809	230	Reito Kanzaki
4810	230	Yukino Kikukawa
4811	230	Aoi Senou
4812	230	Haruka Suzushiro
4813	230	Shiho Munakata
4814	230	Takumi Tokiha
4815	230	Youko Sagisawa
4816	230	Akane Higurashi
4817	230	Joseph Glear
4818	230	Kaiji Sakomizu
4819	230	Kazuya Kurauchi
4820	230	Masashi Takeda
4821	230	Miya Suzuki
4822	230	Sayuri Ichinose
4823	230	Wataru Ishigami
4824	230	Yayoi Ota
4825	230	Yukariko Sanada
4826	230	Yuuichi Tate
4827	231	Lacus Clyne
4828	231	Cagalli Yula Athha
4829	231	Athrun Zala
4830	231	Kira Yamato
4831	231	Lunamaria Hawke
4832	231	Meer Campbell
4833	231	Murrue Ramius
4834	231	Yzak Joule
4835	231	Andrew Waltfeld
4836	231	Meyrin Hawke
4837	231	Miriallia Haw
4838	231	Mu La Flaga
4839	231	Rey Za Burrel
4840	231	Shin Asuka
4841	231	Stella Loussier
4842	231	Talia Gladys
4843	231	Abbey Windsor
4844	231	Amagi
4845	231	Arnold Neumann
4846	231	Arthur Trine
4847	231	Auel Neider
4848	231	Bart Heim
4849	231	Chen Jian Yee
4850	231	Coniel
4851	231	Dalida Lolaha Chandra II
4852	231	Dearka Elthman
4853	231	Gilbert Durandal
4854	231	Heine Westenfluss
4855	231	Herbert von Reinhard
4856	231	Hilda Harken
4857	231	Ian Lee
4858	231	Joachim Radol
4859	231	Joseph Copeland
4860	231	Kojiro Murdoch
4861	231	Ledonir Kisaka
4862	231	Lord Djibril
4863	231	Madd Aves
4864	231	Malchio Shi
4865	231	Malik Yardbirds
4866	231	Mars Simeon
4867	231	Martin Dacosta
4868	231	Mayu Asuka
4869	231	Neo Roanoke
4870	231	Sarah
4871	231	Sato
4872	231	Soga
4873	231	Sting Oakley
4874	231	Todaka
4875	231	Unato Ema Seiran
4876	231	Vino Dupre
4877	231	Yolant Kent
4878	231	Yuna Roma Seiran
4879	232	Horin Hiiragi
4880	232	Masaomi Oogami
4881	232	Mikazuchi
4882	232	Mizuki
4883	232	Momo Jouzenji
4884	232	Nazuna
4885	232	Riku Tachibana
4886	232	Rina Asou
4887	232	Ryuuji Kamiya
4888	232	Souma Asuka
4889	232	Teru Saigou
4890	232	Yakumo Yoshikawa
4891	232	Yuuma Asuka
4892	233	Suigintou
4893	233	Suiseiseki
4894	233	Shinku
4895	233	Souseiseki
4896	233	Hina-Ichigo
4897	233	Jun Sakurada
4898	233	Nori Sakurada
4899	233	Tomoe Kashiwaba
4900	233	Detective Kun Kun
4901	233	Kazuki Shibasaki
4902	233	Matsu Shibasaki
4903	233	Motoharu Shibasaki
4904	233	Yamamoto
4905	234	Haruka
4906	234	Sugino
4907	234	Kantarou Ichinomiya
4908	234	Muu-chan
4909	234	Raikou Minamoto
4910	234	Rosalie Hasumi
4911	234	Ryoukan Hasumi
4912	234	Suzu Edogawa
4913	234	Yoko
4914	235	Hiroki Fujisawa
4915	235	Maki Kasahara
4916	235	Okabe
4917	235	Sayuri Sawatari
4918	235	Takuya Shirakawa
4919	235	Tsuneo Tomisawa
4920	236	Artemis
4921	236	Hazuki
4922	236	Elfriede
4923	236	Haiji
4924	236	Hiromi Anzai
4925	236	Kouhei Morioka
4926	236	Ryuuhei Midou
4927	236	Seiji Midou
4928	237	Monica Adenauer
4929	237	Kai Suwabara
4930	237	Kazuma Azuma
4931	237	Ryo Kuroyanagi
4932	237	Brad Kidd
4933	237	Kaede Matsushiro
4934	237	Kageto Kinoshita
4935	237	Ken Matsushiro
4936	237	Kyousuke Kawachi
4937	237	Meister Kirisaki
4938	237	Mizuno Azusagawa
4939	237	Pierrot Bolneze
4940	237	Shigeru Kanmuri
4941	237	Sophie Balzac Kirisaki
4942	237	Spencer Henry
4943	237	Tsukino Azusagawa
4944	237	Yukino Azusagawa
4945	238	666 (Triple Six)
4946	238	777 (Triple Seven)
4947	238	Cheeco Drill
4948	238	Dr. Yabu
4949	238	Galactica
4950	238	Pandy
4951	238	Retro
4952	238	The Baby
4953	239	Motoko Kusanagi
4954	239	Togusa
4955	239	Batou
4956	239	Hideo Kuze
4957	239	Izumi Katsuhiko
4958	239	Kazundo Gouda
4959	239	Angelica
4960	239	Asuda
4961	239	Azuma
4962	239	Chay
4963	239	Gino
4964	239	Kaori Kawashima
4965	239	Proto
4966	239	Ruriko Asagi
4967	239	Theresa
4968	239	Ueda
4969	239	Yano
4970	239	Yoko Kayabuki
4971	240	Shin Sawada
4972	240	Fuji
4973	240	Haruhiko Uchiyama 
4974	240	Hiroki Kudoh
4975	240	Kouhei Iwamoto
4976	240	Kouzou Wakamatsu
4977	240	Kumiko Yamaguchi
4978	240	Kyotarou Ooshima
4979	240	Minoru Tatsukawa 
4980	240	Ryuichiro Kuroda
4981	240	Sayuri Kaede 
4982	240	Shizuka Fujiyama 
4983	240	Sonomura
4984	240	Takeshi Noda
4985	240	Teruo Kumai
4986	240	Tetsu Asakura
4987	240	Tomoya Shinohara
4988	240	Yasuhiko Hatoyama
4989	240	Youichi Minami
4990	241	Brigetta
4991	241	Leele Zeravire
4992	241	Mizuki Tachibana
4993	241	Alex Smith
4994	241	Anya
4995	241	Cecile
4996	241	Chuiru
4997	241	Dica
4998	241	Dick Ericmayer (Klein Sandman)
4999	241	Dr. Barnett
5000	241	Dr. Yoshizumi
5001	241	Eiji Shigure
5002	241	Eina
5003	241	Faye Xin Lu
5004	241	Hugi Zeravire
5005	241	Inoue
5006	241	Klein Sandman
5007	241	Luna Gusuku
5008	241	Marinia
5009	241	President
5010	241	Raven
5011	241	Rosa
5012	241	Rufiira Zeravire
5013	241	Tesera
5014	241	The Original Raven
5015	241	Toga Tenkuji
5016	241	Toria
5017	242	Martine
5018	242	Princess Reina
5019	242	Akira
5020	242	Arthur
5021	242	Bae Yo
5022	242	Barigari
5023	242	Bitcharapo
5024	242	Chinku
5025	242	Cinderella
5026	242	Coco
5027	242	Colette
5028	242	Cosmic Dust Princess
5029	242	Dandy Johnson
5030	242	Diari
5031	242	Dizzy
5032	242	Else
5033	242	Emi
5034	242	Emma King
5035	242	Gaon
5036	242	Gogerobetchi
5037	242	Gojimatsu
5038	242	Gokkun
5039	242	Gorgon
5040	242	Hawke
5041	242	Hebu
5042	242	Hinden
5043	242	Inupi
5044	242	Inutaku
5045	242	Ishishi
5046	242	Jean
5047	242	Kachina
5048	242	Karakasa
5049	242	Kayo-chan
5050	242	Kierunga
5051	242	Kindly
5052	242	King of Rich Bosque
5053	242	Kiri child
5054	242	Kiyoshi
5055	242	Kooro
5056	242	Large Octopus Priest
5057	242	Lightning brat
5058	242	Little Red Riding Hood
5059	242	Manii
5060	242	Marsal
5061	242	Meaux Meaux daughter
5062	242	Millie
5063	242	Myan Princess
5064	242	Nekonya
5065	242	Nelly
5066	242	Noshishi
5067	242	Peach
5068	242	Pepero
5069	242	Pierre
5070	242	Pomera
5071	242	Puppe
5072	242	Robert
5073	242	Roger
5074	242	Saisai
5075	242	Shaved urchin  
5076	242	Sludge Multi Ness  
5077	242	Snow
5078	242	The Little Mermaid
5079	242	Uni-Bowes
5080	242	Unjaroge
5081	242	We Kappa
5082	242	Who Gehrig
5083	242	Yumi
5084	242	Zorori
5085	243	Sachiko Ogasawara
5086	243	Sei Satou
5087	243	Eriko Torii
5088	243	Shimako Toudou
5089	243	Chisato Tanuma
5090	243	Katsura
5091	243	Shiori Kubo
5092	243	Suguru Kashiwagi
5093	243	Tomoko
5094	243	Tsutako Takeshima
5095	243	Mami Yamaguchi
5096	243	Mifuyu Uzawa
5097	243	Minako Tsukiyama
5098	243	Rei Hasekura
5099	243	Sasaki
5100	243	Shizuka Kanina
5101	243	Yamamura Sensei
5102	243	Yoshino Shimazu
5103	243	Youko Mizuno
5104	243	Yumi Fukuzawa
5105	243	Yuuki Fukuzawa
5106	243	Academy Principal
5107	243	Former Rosa Gigantea
5108	243	Seiko Kasuga
5109	244	Akio Kawazu
5110	244	Harumi Chono
5111	244	Keiichi Ikari
5112	244	Lil Slugger
5113	244	Makoto Kozuka
5114	244	Maromi
5115	244	Masami Hirukawa
5116	244	Misae Ikari
5117	244	Mitsuhiro Maniwa
5118	244	Mysterious Old Man
5119	244	Mysterious Old Woman
5120	244	Shogo Ushiyama
5121	244	Taeko Hirukawa
5122	244	Tsukiko Sagi
5123	244	Yuuichi Taira
5124	245	Hotarubi
5125	245	Gennosuke Kouga
5126	245	Okoi
5127	245	Akeginu
5128	245	Hyouma Muroga
5129	245	Kagerou
5130	245	Oboro
5131	245	Koshirou Chikuma
5132	245	Tenzen Yakushiji
5133	245	Yashamaru
5134	245	Danjou Kouga
5135	245	Gyoubu Kasumi
5136	245	Hanzou Hattori
5137	245	Ieyasu Tokugawa
5138	245	Jimushi Jyubei
5139	245	Jingorou Amayo
5140	245	Jousuke Udono
5141	245	Kunichiyo
5142	245	Kyouhachirou Hattori
5143	245	Munenori Yagyuu
5144	245	Nenki Mino
5145	245	Ofuku
5146	245	Ogen
5147	245	Rousai Azuki
5148	245	Saemon Kisaragi
5149	245	Shougen Kazamachi
5150	245	Takechiyo
5151	245	Tenkai Nankoubou
5152	246	Eiko Nagai
5153	246	Ayumu Oume
5154	246	Biiko Mikawa
5155	246	Kaori Izumi
5156	246	Reika Ryuuouin
5157	246	Rein Tsunomoto
5158	246	Rino Randou
5159	246	Sayuri Hida
5160	246	Chadayama
5161	246	Chieri Randou
5162	246	Cyndi Manabe
5163	246	Hazuki Oda
5164	246	Kanade Jinguji
5165	246	Karen Saitou
5166	246	Kotoha Kutsugi
5167	246	Kuon Ginga
5168	246	Maachi Hisakawa
5169	246	Mami Aoki
5170	246	Mayura Ichikawa
5171	246	Minamo Katsura
5172	246	Miura
5173	246	Nanaho Kinjo
5174	246	Seina Katsura
5175	246	Shirou Kinjo
5176	246	Wakana Hirata
5177	246	Yukimi Itami
5178	246	Yuuko Kimizuka
5179	246	Eliza Yamamoto
5180	246	Kazuhiro Kinjo
5181	246	Lance Bean
5182	246	Pucchan
5183	246	Ryuuheita Iwazakura
5184	246	Sachiko Iijima
5185	246	Shimon Kurisu
5186	246	Susie Yoshida
5187	246	Tomoko Egawa
5188	246	Urato Oume
5189	247	Dokuro Mitsukai
5190	247	Zakuro Mitsukai
5191	247	Sabato Mihashigo
5192	247	Shizuki Minakami
5193	247	Chieri Ono
5194	247	Haruna Numata
5195	247	Hiroshi Miyamoto
5196	247	Ichirou Binkan
5197	247	Matsunaga
5198	247	Minami-san
8144	372	Valar
5199	247	Mr. Yamazaki
5200	247	Reisuke Sasaki
5201	247	Sakura Kusakabe
5202	247	Sergeant
5203	247	Tamiya
5204	247	Yuuko Tanabe
5205	247	Zansu
5206	248	Reverie Metherlence (Ren)
5207	248	Coud Van Giruet
5208	248	Cisqua
5209	248	Kullweet Envatilia (Kuea)
5210	248	 Virzoeve Eclairouer (Viro)
5211	248	Chaton Vad Wolsloth (Challo)
5212	248	Lieutenant Cruz
5213	248	Lilica Tigres
5214	248	Rasati Tigres
5215	248	Rowen
5216	248	Sunweld
5217	249	Emma
5218	249	Dorothea Molders
5219	249	Eleanor Campbell
5220	249	Erich Molders
5221	249	Hakim Atawari
5222	249	Hans
5223	249	Ilse Molders
5224	249	Wilhelm Molders
5225	249	William Jones
5226	250	Sousuke Sagara
5227	250	Teletha 'Tessa' Testarossa
5228	250	Eri Kagurazaka
5229	250	Kaname Chidori
5230	250	Kurz Weber
5231	250	Melissa Mao
5232	250	Mizuki Inaba
5233	250	Ren Mikihara
5234	250	Shinji Kazama
5235	250	Youko Wakana
5236	250	Andrei Sergeivich Kalinin
5237	250	Atsunobu Hayashimizu
5238	250	Bonta-kun
5239	250	Ena Saeki
5240	250	Koutarou Onodera
5241	250	Pony Man
5242	250	Richard Henry Mardukas
5243	250	Takako Tsuboi
5244	251	Mitsuki Sawatari
5245	251	Alicia
5246	251	Anna Kurauchi
5247	251	Karin Sawatari
5248	251	Mizuho Sawatari
5249	251	Izumi Sawatari
5250	251	Sawatari Father
5251	251	Takami Sugita
5252	251	Yoshitaka Nakabayashi
5253	251	Nakabayashi's Father
5254	251	Nakabayashi's Mother
5255	251	Seiichirou Nakabayashi
5256	251	Shinji Kume
5257	252	Orie Kano
5258	252	Celonius 28 Asuka Yayoi
5259	252	Kazuko Iidabashi
5260	252	Miya Higashikazuno
5261	252	Miyabi Tsukuyomi
5262	252	Otome Chono
5263	252	Akiwo Suzuka
5264	252	Chuko Asakusabashi
5265	252	Hifumi Inokai
5266	252	Nokimi Hekusokazura
5267	252	Sakuya Kazamatsurisa
5268	252	Tetsurou Tanaka
5269	252	Yayoi Asuka
5270	252	Youko Suidoubashi
5271	253	Akihime
5272	253	Ekei Chourou Ankokuji
5273	253	Hideaki Chuunagon Nibayakawa
5274	253	Hideie Chuunagon Ukita
5275	253	Hidetada Chuunagon Tokugawa
5276	253	Ieyasu Naidaijin Tokugawa
5277	253	Isanyuudou Miyoshi
5278	253	Jinbachi Nedu
5279	253	Kaede
5280	253	Kamanosuke Yuri
5281	253	Kiyohime
5282	253	Kiyooki Sakon Shima
5283	253	Kosuke Anayama
5284	253	Masaie Ookurashouyuu Natsuka
5285	253	Masanobu Sadonokami Honda
5286	253	Masayuki Awanokami Sanada
5287	253	Masazumi Kouzukenosuke Honda
5288	253	Mitsunari Jibushouyuu Ishida
5289	253	Naomasa Hyoubushouyuu Ii
5290	253	Nobuyuki Izunokami Sanada
5291	253	Rokurou Motiduki
5292	253	Rokurou Unno
5293	253	Saizou Kirigakure
5294	253	Sasuke Sarutobi
5295	253	Seikainyuudou Miyosi
5296	253	Shuuzou Kakei
5297	253	Tadakatu Nakatsukasataifu Honda
5298	253	Tadayoshi Shimotsukenokami Matsudaira
5299	253	Yamate-dono
5300	253	Yasumasa Shikubutaifu Sakakibara
5301	253	Yoriyuki Sanjuurou Yazawa
5302	253	Yoshitugu Kyoubushouyu Ootani
5303	253	Yukimura Saemonnosuke Sanada
5304	253	Yukinaga Settsunokami Konishi
5305	254	Tsujido
5306	254	Chouji Suitengu
5307	254	Hibari Ginza
5308	254	Tatsumi Saiga
5309	254	Kaoru Koganei
5310	254	Katsuya Shirogane
5311	254	Shinzen Tennouzu
5312	254	Bob
5313	254	Ekoda
5314	254	Genba Ryougoku
5315	254	Goutokuji
5316	254	Kagura Tennouzu
5317	254	Katsuji Kamiya
5318	254	Makabe
5319	254	Miharu Tsurumaki
5320	254	Niihari
5321	254	Nishiya
5322	254	Ran Yurigaoka
5323	254	Seiji Ochiai
5324	254	Seijiro Togoshi
5325	254	Shiina
5326	254	Toshiki Mizonoguchi
5327	255	Kotona Elegance
5328	255	Rei Mii
5329	255	Ruuji Familon
5330	255	Seijuurou
5331	255	Felme
5332	255	Georg
5333	255	Jiin
5334	255	Major Zairin
5335	255	Ra Kan
5336	255	Ron Mangun
5337	255	Souta (Gin)
5338	255	Thunder Garaga
5339	256	Haruko Haruhara
5340	256	Mamimi Samejima
5341	256	Naota Nandaba
5342	256	Eri Ninamori
5343	256	Kitsurubami
5344	256	Canti
5345	256	Takkun
5346	256	Eri's Mom
5347	256	Kamon Nandaba
5348	256	Miyu-Miyu
5349	256	Amarao
5350	256	Atomsk
5351	256	Gaku Manabe
5352	256	Junko Miyaji
5353	256	Masashi Masamune
5354	256	Shigekuni Nandaba
5355	257	Ureshiko Asaba (Agnes Bell)
5356	257	Fuyuki Morino
5357	257	Tatsumi Kagura
5358	257	Maiko Motohira
5359	257	Mika Shimizu
5360	257	Nori Misuki
5361	257	Sayaka Kurenai
5362	257	Shinji Hosono
5363	257	Tamotsu Asaba
5364	257	Ururu Kinjou
5365	257	Yuki Tanishima
5366	257	Yuuko Ayase
5367	258	Akane Serizawa
5368	258	Ichijou
5369	258	Miyako Uehara
5370	258	Rebecca Miyamoto
5371	258	Rei Tachibana
5372	258	Behoimi
5373	258	Hibiki Watanuki
5374	258	Himeko Katagiri
5375	258	Kurumi Momose
5376	258	Sayaka Suzuki
5377	258	Suzune Shiratori
5378	258	Yuuma Kashiwagi
5379	258	Yuuna Kashiwagi
5380	258	Akira Miyata
5381	258	Misao Nanjo
5382	258	Miyuki Igarashi
5383	258	Old Geezer
5384	258	Otome Akiyama
5385	258	Saotome
5386	258	Shu Momose
5387	258	Tsurugi Inugami
5388	258	Yankee
5389	258	Yuzuko Kurusu
5390	258	Zula
5391	259	Primula
5392	259	Lisianthus
5393	259	Nerine
5394	259	Kaede Fuyou
5395	259	Asa Shigure
5396	259	Kareha
5397	259	Rin Tsuchimi
5398	260	Ana Coppola
5399	260	Chika Itou
5400	260	Matsuri Sakuragi
5401	260	Miu Matsuoka
5402	260	Nobue Itou
5403	261	Suzuka Asahina
5404	261	Yuuka Saotome
5405	261	Arima Emerson
5406	261	Ayano Fujikawa
5407	261	Honoka Sakurai
5408	261	Megumi Matumoto
5409	261	Miho Fujikawa
5410	261	Miki Hashiba
5411	261	Souichi Miyamoto
5412	261	Yamato Akitsuki
5413	261	Yasunobu Hattori
5414	262	Ichikawa
5415	262	Ishikawa
5416	262	Iwao Washizu
5417	262	Kawashima
5418	262	Keiji Yagi
5419	262	Kurosaki
5420	262	Nangou
5421	262	Ohgi
5422	262	Osamu
5423	262	Ryuzaki
5424	262	Shigeru Akagi
5425	262	Urabe
5426	262	Yasuoka
5427	262	Yukio Hirayama
5428	263	Ako Aomori 'Ako-sensei'
5429	263	Ami Matsuzaki
5430	263	Issa
5431	263	Iyo
5432	263	Kenta
5433	263	Kumiko 'Kuu-chan' Takeda
5434	263	Match & Pitch
5435	263	Mr. Yamanami
5436	263	Shima Shimako
5437	263	Yayoi-kun
5438	264	Karin Maaka
5439	264	Anju Marker
5440	264	Elda Marker
5441	264	Ren Marker
5442	264	Calera Marker
5443	264	Boogie
5444	264	Fumio Usui
5445	264	Kenta Usui
5446	264	Maki Tokitou
5447	264	Winner Sinclair
5448	264	Alfred Sinclair
5449	264	Class Teacher 
5450	264	Fukumi Naito 
5451	264	Makoto Fujitani 
5452	264	The Black Rose Denka
5453	264	Alfred's Father
5454	264	Henry Marker
5455	264	Julian's manager
5456	264	The Black Rose Prince
5457	264	Victor Sinclair 
5458	265	Kokuanten
5459	265	Amano Sakogami
5460	265	Kiku Sarasugawa 'Benten-Okiku'
5461	265	Kikunosuke Kagawa
5462	265	Kuriya Kuroda
5463	265	Mahiru Oki 'Ebisu'
5464	265	Miku Munakata
5465	265	Mina & Nami Kotobuki
5466	265	Tamon Kitayama
5467	265	Kuan Kitayama
5468	265	Mimi Masuko
5469	265	Nene Tokuda
5470	265	Shouko Shouda
5471	265	Tomoya Kuki
5472	266	Ai Enma
5473	266	Hone Onna
5474	266	Ren Ichimoku
5475	266	Nina
5476	266	Inori Ujiie
5477	266	Junko Kanno
5478	266	Kanako Sakuragi
5479	266	Mayumi Hashimoto
5480	266	Midori Kurenai
5481	266	Ryouko Takamura
5482	266	Tsugumi Shibata
5483	266	Wanyudou
5484	266	Yuka Kasuga
5485	266	Yuki
5486	266	Yumi
5487	266	Yuuko Murai
5488	266	Ai's father
5489	266	Ai's Grandmother
5490	266	Ai's mother
5491	266	Akane Sawai
5492	266	Akane's mother
5493	266	Aki Abe
5494	266	Aya Kuroda
5495	266	Ayaka Kurenai
5496	266	Ayumi Shibata / Ayumi Ogawa
5497	266	Chie Tanuma
5498	266	Daisuke Iwashita
5499	266	Ebisu-sensei
5500	266	Eguro
5501	266	Esper Watanabe
5502	266	Fujie Minato
5503	266	Fukumoto
5504	266	Gilles de L'Enfer
5505	266	Gorou Ishizu
5506	266	Gorou Suetsugu
8145	372	Varda
5507	266	Hajime Shibata
5508	266	Haruka Yasuda
5509	266	Haruki Kirino
5510	266	Hideo Yasuda
5511	266	Hiromi Kasuga
5512	266	Inko
5513	266	Iwashita's father
5514	266	Iwashita's mother
5515	266	Kaoruko Kurushima
5516	266	Katou-sensei
5517	266	Keiji Akimoto
5518	266	Keiji Kisaragi
5519	266	Keiko Yasuda
5520	266	Koukichi
5521	266	Kyogetsu Ujiie
5522	266	Mamoru Hanagasa
5523	266	Masami Sekimoto
5524	266	Masaya Kataoka
5525	266	Mayumi's mother
5526	266	Meiko Shimono
5527	266	Miki Kamikawa
5528	266	Mina Minato
5529	266	Minami Shibuya
5530	266	Minoru Higuchi
5531	266	Misato Tamura
5532	266	Miyabe
5533	266	Muroi's father
5534	266	Muroi's mother
5535	266	Namiko Todaka
5536	266	Noriko Hayashi
5537	266	Riho Kaifu
5538	266	Ryouko's father
5539	266	Ryouko's mother
5540	266	Ryousuke Sekine
5541	266	Ryuuji Todaka
5542	266	Ryuuzou Kusunoki
5543	266	Saki Kirino
5544	266	Satsuki Minato
5545	266	Sentarou
5546	266	Shinichi Muroi
5547	266	Shinya Morisaki
5548	266	Shiori Akasaka
5549	266	Takashi Inagaki
5550	266	Takashi Murai
5551	266	Takeshi
5552	266	The Spider
5553	266	Tsugumi's grandfather
5554	266	Tsugumi's grandmother
5555	266	Yoshiki Fukasawa
5556	266	Yoshiyuki Honjou
5557	266	Yoshiyuki Kusunoki
5558	266	Yukio Ujiie
5559	266	Yuria Todaka
5560	266	Yuuji
5561	266	Yuuji Numata
5562	266	Yuuko Kido
5563	267	Misora Ayukawa
5564	267	Suzuka Tomosaka
5565	267	Hikari Nakazato
5566	267	Hiromi Sakura
5567	267	Kagami Konoe
5568	267	Keimi Isawa
5569	267	Hatano
5570	267	Keisuke Isawa
5571	267	Keita Isawa
5572	267	Kenji Tomosaka
5573	267	Kenryuu Tomosaka
5574	267	Nanami Konoe
5575	267	Tae Isawa
5576	268	Ginko
5577	268	Mayu
5578	268	Sane
5579	268	Suzu
5580	268	Tanyuu Karibusa
5581	268	Toyo
5582	268	Watahiko
5583	268	Adashino
5584	268	Aki
5585	268	Akoya
5586	268	Akoya's Father
5587	268	Amane
5588	268	Aya
5589	268	Biki
5590	268	Biki's Mother
5591	268	Fuki
5592	268	Fumi
5593	268	Hana
5594	268	Hana's Mother
5595	268	Io
5596	268	Isana
5597	268	Isaza
5598	268	Ito
5599	268	Jin
5600	268	Kai
5601	268	Kaji
5602	268	Kenrou
5603	268	Kinu
5604	268	Kisuke
5605	268	Kodama
5606	268	Kourou
5607	268	Maho
5608	268	Mana
5609	268	Matsuno
5610	268	Michihi
5611	268	Miharu
5612	268	Mio
5613	268	Mio's Father
5614	268	Mujika
5615	268	Nagi
5616	268	Nami
5617	268	Nui
5618	268	Renzu Ioroi
5619	268	Saishu
5620	268	Saku
5621	268	Sayo
5622	268	Seijirou
5623	268	Setsu
5624	268	Shige
5625	268	Shinra Ioroi
5626	268	Shirasawa
5627	268	Shirou
5628	268	Sui
5629	268	Tagane
5630	268	Taku
5631	268	Taku's Father
5632	268	Tama Mirai
5633	268	Tetsu
5634	268	Yahagi
5635	268	Yakuno
5636	268	Yasuke
5637	268	Yoki
5638	268	Zen
5639	269	Miwako Sakurada
5640	269	George Koizumi
5641	269	Arashi Nagase
5642	269	Yukari Hayasaka
5643	269	Hiroyuki Tokumori
5644	269	Isabella Yamamoto
5645	270	Belldandy
5646	270	Urd
5647	270	Noble Scarlet 
5648	270	Peorth
5649	270	Skuld
5650	270	Hild
5651	270	Lind
5652	270	Gorgeous Rose 
5653	270	Cool Mint
5654	270	Holly Bell
5655	270	Mara / Marller
5656	270	Megumi Morisato
5657	270	Satoko Yamano
5658	270	Sayoko Mishima
5659	270	Sigel
5660	270	Spear Mint
5661	270	Troubador
5662	270	World of Elegance
5663	270	Chihiro Fujimi
5664	270	Chrono
5665	270	Ere
5666	270	Ex
5667	270	Hijiri
5668	270	Keiichi Morisato
5669	270	Koshian
5670	270	Lord of Terror
5671	270	Majin Senbee
5672	270	Morgan le Fay
5673	270	Otaki Aoyama
5674	270	Sentaro Kawanishi
5675	270	Shiho Sakakibara
5676	270	Shohei Yoshida
5677	270	Toraichi Tamiya
5678	270	Toshiyuki Aoshima
5679	271	Misuzu Kamio
5680	271	Minagi Tohno
5681	271	Hijiri Kirishima
5682	271	Haruko Kamio
5683	271	Michiru
5684	271	Potato
5685	271	Yukito Kunisaki
5686	271	Kanna / Kannabi no Mikoto
5687	271	Kano Kirishima
5688	271	Uraha
5689	271	Keisuke Tachibana
5690	271	Maika Shino
5691	271	Minagi's Mother
5692	271	Ryuya
5693	271	Saika Shino
5694	271	Saika's Mother
5695	271	Yaobikuni
5696	271	Shiraho
5697	271	Sora
5698	272	Monami Suzuki
5699	272	Capeta Taira
5700	272	Nanako Minamoto
5701	272	Naomi Minamoto
5702	272	Nobu Andou
5703	273	Kana Iriya
5704	273	Yuuko Asaba
5705	273	Akiho Sudou
5706	273	Enomoto
5707	273	Kunihiro Suizenji
5708	273	Mayumi Shiina
5709	273	Naoyuki Asaba
5710	273	Taizou Kawaguchi
5711	274	Aoba Tsuzaki
5712	274	Minami Kousaka
5713	274	Rui Kousaka
5714	274	Akao Hiiragi
5715	274	Elny Tachibana 
5716	274	Genta Ogawara
5717	274	Hiroshi Kawamoto
5718	274	Kouse
5719	274	Mel J. Vanette
5720	274	Ryouhei Ogawara
5721	274	Satsuki Kawamoto
5722	274	Shiva
5723	274	Shizuka Tsuzaki
5724	275	Asami Kurosaki
5725	275	Michiyo Asagi
5726	275	Erika Vermilion
5727	275	Kozue Aoba
5728	275	Mahiru Minazuki
5729	275	Miyabi Shirogane
5730	275	Saki Akasaka
5731	275	Sayoko Kurosaki
5732	275	Tamami Chanohata
5733	275	Yuu Minazuki 
5734	275	Chiyuri Midorikawa
5735	275	Hiro Utsugi
5736	275	Megumi Momono
5737	275	Mizuho Amane
5738	275	Nanako Kanazawa
5739	275	Natsume Konno
5740	275	Risona Aizawa
5741	275	Ryushi Shiratori
5742	275	Ryuusei Johnny
5743	275	Sakura Utsugi
5744	275	Satsuki  Matsuba
5745	275	Tsubasa Yamabuki
5746	275	Ushimitsu Minazuki
5747	275	Yukio Haibara
5748	276	Kairi Okayasu
5749	276	Momo Adachi
5750	276	Sae Kashiwagi
5751	276	Gorou Ooji
5752	276	Kazuya Toujigamori
5753	276	Misao Aki
5754	276	Morika
6396	302	Haseo
6397	302	Azure Flame Kite
6398	302	Midori
6399	302	Hideyo
6400	302	Ovan
6401	302	Pilocchio
6402	302	Tabby
6403	302	Asta
6404	302	B-set
6405	302	Bordeaux
6406	302	Cashmere
6407	302	Ender
6408	302	Gaspard
6409	302	Gord
6410	302	Grein
6411	302	Itta
6412	302	Iyoten
6413	302	Kuhn
6414	302	Naobi
6415	302	Nasubi
6416	302	Nazo Grunty
6417	302	Negimaru
6418	302	Ochi
6419	302	Phyllo
6420	302	Pi
6421	302	Saburou
6422	302	Sakisaka
6423	302	Seisaku
6424	302	Shino
6425	302	Silabus
6426	302	Silver Knight
6427	302	Smile
6428	302	Taihaku
6429	302	Tawalaya
6430	302	Tohta
6431	302	Wool
6432	302	Yata
6433	303	Akito Wanijima
6434	303	Agito Wanijima
6435	303	Simca
6436	303	Ringo Noyamano
6437	303	Itsuki Minami
6438	303	Kururu Sumeragi
6439	303	Mimasaka Ryo
6440	303	 Rika Noyamano
6441	303	Kazuma Mikura
6442	303	Noyamano Mikan
6443	303	Shiraume Noyamano
6444	303	Emily Adachi 
6445	303	Spitfire
6446	303	Benkei
6447	303	Kaito Wanijima
6448	303	Nue
6449	303	Om
6450	303	Yayoi Nakayama
6451	303	Akira Udou
6452	303	Canon
6453	303	Fuumei Goshogawara
6454	303	Inuyama
6455	303	Issa Mihotoke
6456	303	Mitsuru Bando
6457	303	Onigiri
6458	303	Ren Fa
6459	303	Sora Takeuchi
6460	303	Yasuyoshi Sano
6461	303	Yoshitsune
6462	304	Chris Ousaka
6463	304	Kai Misonou
6464	304	Kaoru Kimura
6465	304	Sena Mizuochi
6466	304	Shou Hamura
6467	304	Anri Chikura
6468	304	Shingo Souma
6469	304	Yukihiko Furuya
6470	304	Shion Toudou
6471	304	Yousuke Tsuji
6472	305	Sayaka Oki
6473	305	Fue
6474	305	Kimidori
6475	305	Mikiharu Kawaguchi
6476	305	Rondon
6477	305	Sanshirou Tamon
6478	305	Uta
6479	306	Momo
6480	306	Daniel
6481	306	Blue
6482	306	Mai Makihara
6483	306	Wako Miyazaki
6484	306	Yutaka Fujishima
6485	306	Ayame Kozakai
6486	306	Chiaki Kazama
6487	306	Chiaki's Father
6488	306	Chiaki's Mother
6489	306	Doctor
6490	306	Eko Miyazaki
6491	306	Eko's Mother
6492	306	Fuyuki Kazama
6493	306	Kanako
6494	306	Kantarou Ichihara
6495	306	Kouta Seto
6496	306	Kouta's Mother
6497	306	Koutaro Ichihara
6498	306	Matsumoto
6499	306	Mitsuki Asano
6500	306	Mitsuki's Mother
6501	306	Mizuki
6502	306	Nakayama
6503	306	Saiki Ikuma
6504	306	Sakura Kosakai
6505	306	Sakura's Father
6506	306	Sakura's Mother
6507	306	Sawako
6508	306	Subaru Asano
6509	306	Tomato Fujikawa
6510	307	Revy
6511	307	Vladilena Balalaika
6512	307	Eda
6513	307	Roberta
6514	307	Shenhua
6515	307	Benny
6516	307	Mr. Chang (Bai Ji-Shin Chang)
6517	307	Rock
6518	307	Garcia Fernando Lovelace
6519	307	Kageyama's daughter
6520	307	Leigharch
6521	307	Abrego
6522	307	Agent Blend
6523	307	Agent Sugar
6524	307	Bao
6525	307	Boris Gunsou
6526	307	Captain
6527	307	Chief Watsup
6528	307	Chin
6529	307	Diego Jose San Fernando Lovelace
6530	307	Dutch
6531	307	Fritz Stanford
6532	307	Fujiwara
6533	307	Gruppenfuhrer
6534	307	Hill Myna
6535	307	Ibraha
6536	307	Kageyama
6537	307	Lieutenant Colonel Matsuda
6538	307	Luak
6539	307	Masahiro Takenaka
6540	307	Meyer
6541	307	Mrs. Kageyama
6542	307	Oumu
6543	307	Rachmann
6544	307	Rowan 'Jackpot' Pigeon
6545	307	Salaryman
6546	307	Senmu
6547	307	Sergeant Menshov
6548	307	Sir Alfred
6549	307	Spielberger
6550	307	Storm
6551	307	Takanori Kageyama
6552	307	Verrocchio
6553	307	Wentzel H. Ahbe
6554	307	Yolanda
6555	307	Zhou
6556	308	Nana Sendo
6557	308	Hinzo
6558	308	Hitto Tamaga
6559	308	Jubee Sanada
6560	308	Kodoh Kuraki
6561	308	Konta Tsukino
6562	308	Kurogoma
6563	308	Kyousuke Arasaki
6564	308	Sugei
6565	308	Teruma Kamioka
6566	309	Agumon
6567	309	Falcomon
6568	309	Marcus Damon
6569	309	Thomas H. Norstein
6570	309	Gaomon
6571	309	Keenan Crier
6572	309	Kristy Damon
6573	309	Yoshino Fujieda
6574	309	Homer Yushima
6575	309	Lalamon
6576	309	Megumi Shirakawa
6577	309	Miki Kurosaki
6578	309	Richard Sampson
6579	309	Sarah Damon
6580	310	Rinko Mishima
6581	310	Hajime Tachibana
6582	310	Misako Mijima
6583	310	Satoka Sagawa
6584	310	Touko Mishima
6585	311	Re-l Mayer
6586	311	Pino
6587	311	Ergo Proxy
6588	311	MCQ
6589	311	Raul Creed
6590	311	Vincent Law
6591	311	Daedalus Yumeno
6592	311	Donov Mayer
6593	311	Dorothy
6594	311	Hoody
6595	311	Iggy
6596	311	Kazkis Hauer
6597	311	Kazkis Proxy (Kazkis Hauer)
6598	311	Kristeva
6599	311	Mayahuel
6600	311	Monad / New Re-L
6601	311	Monad Proxy (New Re-L)
6602	311	Quinn
6603	311	Senex Proxy
6604	311	Swan
6605	311	Timothy
6606	311	Will B. Good
6607	312	Kazuki Endo
6608	312	Keita Ito
6609	312	Tetsuya Niwa
6610	312	Hideaki Nakajima
6611	312	Yukihiko Naruse
6612	312	Koji Shinomiya
6613	312	Shunsuke Taki
6614	312	Hiroya Yoshizumi
6615	312	Jin Matsuoka
6616	312	Kakeru Ozawa
6617	312	Kaoru Saionji
6618	312	Omi Shichijou
6619	312	Satoshi Umino
6620	312	Takuto Iwai
6621	312	Wataru Ozawa
6622	312	Keiji Kuganuma
6623	313	Amane Higashimiya
6624	313	Aonako
6625	313	Futaba Yoshinaga
6626	313	Gargoyle
6627	313	Iyo Takahara
6628	313	Kaitou Hyakushiki
6629	313	Kazumi Yoshinaga
6630	313	Lili Hamilton
6631	313	Mama
6632	313	Mimori Onodera
6633	313	Numata
6634	313	Papa
6635	313	Rim
6636	313	Ripu
6637	313	Son
6638	313	Tabeki
6639	314	Kagura
6640	314	Gintoki Sakata
6641	314	Kotarou Katsura
6642	314	Shinsuke Takasugi
6643	314	Sougo Okita
6644	314	Ayame Sarutobi
6645	314	Kyuubei Yagyuu
6646	314	Toshiro Hijikata
6647	314	Kamui
6648	314	Shinpachi Shimura
6649	314	Bansai Kawakami
6650	314	Tsukuyo
6651	314	Goemon
6652	314	Mitsuba Okita
6653	314	Tama
6654	314	Abuto
6655	314	Crystel Ketsuno
6656	314	Elizabeth
6657	314	Eromes
6658	314	Gedomaru
6659	314	Gengai Hiraga
6660	314	Hanako
6661	314	Hedoro
6662	314	Imai Nobume
6663	314	Isao Kondo
6664	314	Kamotarou Itou
6665	314	Kanshichirou Hashida
6666	314	Katakuriko Matsudaira 
6667	314	Kimiko
6668	314	Mutsu
6669	314	Noriko Mahha
6670	314	Ofusa
6671	314	Pako
6672	314	Rei
6673	314	Sadaharu
6674	314	Sagaru Yamazaki
6675	314	Seita
6676	314	Shige Shige Tokugawa
6677	314	Tae Shimura
6678	314	Taizou Hasegawa
6679	314	Tatsuma Sakamoto
6680	314	Tatsumi
6681	314	Tetsuko Murata
6682	314	Tsuu Terakado
6683	314	Yoshida Shouyou
6684	314	Yuri Tsukishima
6685	314	Zenzou Hattori
6686	314	Zurako
6687	314	Akage Janki
6688	314	Ane
6689	314	Ayano Terada 
6690	314	Ayumu Tojo
6691	314	Azumi
6692	314	Baneko
6693	314	Banzou
6694	314	Ben
6695	314	Binbokusai Yagyuu
6696	314	Catherine
6697	314	Danzo Tobita
6698	314	Daraku
6699	314	Doman Shirino
6700	314	Doushin
6701	314	Ebina
6702	314	Gou
6703	314	Hachibei Takaya
6704	314	Hachirou
6705	314	Haga
6706	314	Henpeita Takechi
6707	314	Hinowa
6708	314	Honjou Kyoushirou
6709	314	Housen
6710	314	Ichi Terakado
6711	314	Ikumatsu Nishiki
6712	314	Inoue
6713	314	Ishida Pierre Genpachi Zeamon
6714	314	Itsuki Kitaooji
6715	314	Jirochou Doromizu
6716	314	Jugem Jugem
6717	314	Kaguzou Mashiroi
6718	314	Kahei Hashida
6719	314	Kaikei
6720	314	Kanbei
6721	314	Kankichi
6722	314	Kantarou Hashida
6723	314	Kariya
6724	314	Katsuo Kurogoma
6725	314	Ken Katou
6726	314	Kikuya
6727	314	Kinya
6728	314	Koshinori Yagyuu
6729	314	Kujaku Hime Kada
6730	314	Kurikan
6731	314	Kuriko Matsudaira
6732	314	Kuzunoha
6733	314	Kyoujirou Nakamura
6734	314	Marinosuke
6735	314	Matako Kijima
6736	314	Matsuo
6737	314	Mone
6738	314	Mori Mori
6739	314	Mr. Terakado
6740	314	Musashi
6741	314	Muu
6742	314	Nizou Okada
6743	314	No.305
6744	314	No.502
6745	314	Ochi
6746	314	Okaru
6747	314	Okuni
6748	314	Oonishi
6749	314	Oryou
6750	314	Otose
6751	314	Pirako Chin
6752	314	Prince Hata
6753	314	Professor Meguro
6754	314	Recycle-shop Proprietress
6755	314	Saki Hanano
6756	314	Seimei Ketsuno
6757	314	Shichibei
6758	314	Shimomoto
6759	314	Shoji Gindou
6760	314	Shuwa
6761	314	Soyo Tokugawa
6762	314	Sui Minamito
6763	314	Suitsu
6764	314	Taka-tin
6765	314	Tamo
6766	314	Tasuke
6767	314	Tatsugorou Terada
6768	314	Teruhiko Saigo
6769	314	Tetsuya Murata
6770	314	Tokumori Saigou
6771	314	Tsukamu Nishino
6772	314	Umibozu
6773	314	Unkei
6774	314	Utsuzou Mashiroi
6775	314	Vanessa
6776	314	Wakane
6777	314	Wakikaoru
6778	314	Yashichi
6779	315	Akari Kouda
6780	315	Ikue Ogawa
6781	315	Ayano Sato
6782	315	Eriko Takahashi 
6783	315	Yuma Suzuki
6784	315	Kyoko Himeji
6785	315	Momoka Suzuki
6786	315	Fumino Sato
6787	315	Kaoru Matsuo
6788	315	Mari Saionji
6789	315	Takanori Shimotakatani
6790	315	Yuuichirou Odagiri
6791	316	Rena Ryuuguu
6792	316	Shion Sonozaki
6793	316	Rika Furude
6794	316	Mion Sonozaki
6795	316	Satoko Houjou
6796	316	Keiichi Maebara
6797	316	Satoshi Houjou
6798	316	Miyo Takano
6799	316	Kyousuke Irie
6800	316	Rumiko Chie
6801	316	Jirou Tomitake
6802	316	Kuraudo Ooishi
6803	316	Mamoru Akasaka
6804	316	Nomura
6805	316	Rina Mamiya
6806	316	Tatsuyoshi Kasai
6807	316	Kiichirou Kimiyoshi
6808	316	Oryou Sonozaki
6809	316	Tamae Houjou
6810	316	Teppei Houjou
6811	316	Tetsuro Okonogi 
6812	317	Yusura
6813	317	Azami
6814	317	Himawari Hinata
6815	317	Tsukiyohime
6816	317	Hayato Marikoji
6817	317	Himeji
6818	317	Shikimi
6819	318	Bem
6820	318	Bera
6821	318	Bero
6822	318	Genpoku Hinata
6823	318	Genrousai Tanashi
6824	318	Kira Hinata
6825	318	Mitsuki Kisaragi
6826	318	Riku Kaidou
6827	318	Ritsuko Kaidou
6828	318	Ryouko Kisaragi
6829	318	Shigeru Kaidou
6830	318	Sora Kaidou
6831	318	Tetsuo Kaidou
6832	318	Umi Kaidou
6833	318	Urara Hinata
6834	318	Yuuzou Mikami
6835	319	Sendan
6836	319	Tomohane
6837	319	Yoko
6838	319	Dai Yoko
6839	319	Furano
6840	319	Gokyoya
6841	319	Hake
6842	319	Igusa
6843	319	Imari
6844	319	Keita Kawahira 
6845	319	Nadeshiko
6846	319	Sayoka
6847	319	Tayune
6848	319	Tensou
6849	320	Zed
6850	320	Cloud
6851	320	Deucem
6852	320	Hugh
6853	320	Jyure
6854	320	Robes Redondo
6855	320	Gale
6856	320	Ginga
6857	320	Gitra
6858	320	Herrick
6859	320	Keith
6860	320	Mikki
6861	320	Mirred
6862	320	Morima
6863	320	Noah
6864	320	Rebecca
6865	320	Roia
6866	320	Rushia
6867	320	Aisha
6868	320	Aval
6869	320	Baccam
6870	320	Despara
6871	320	Diana
6872	320	Dimitri Khan
6873	320	Dumas Schuramux
6874	320	Elmeida
6875	320	Garuba
6876	320	Glaudio
6877	320	Guzman
6878	320	Hyrum / Hairam
6879	320	Jesara
6880	320	Jii
6881	320	Korubo
6882	320	Moreno
6883	320	Morocco
6884	320	Nudeu
6885	320	Philip
6886	320	Professor Bender
6887	320	Sagiri
6888	320	Sara 
6889	320	Xeem
6890	320	Zico
6891	321	Nero
6892	321	Al Azif
6893	321	Winfield
6894	321	Allison
6895	321	Augustus
6896	321	Chiaki
6897	321	Doctor West
6898	321	Elsa
6899	321	Etheldreda
6900	321	George
6901	321	Leica Crusade
6902	321	Makoto
6903	321	Master Therion
6904	321	Ruri Hadou
6905	321	Titus
6906	321	Caligula
6907	321	Claudius
6908	321	Colin
6909	321	Kurou Daijuuji
6910	321	Ness
6911	321	Nya
6912	321	Sandalphon
6913	321	Sonya
6914	321	Stone
6915	321	Tiberius
6916	321	Vespasianus
6917	322	Amane Ohara
6918	322	Atari Maeda
6919	322	Eri Daimon
6920	322	Minato Ichinose
6921	322	Mitsuko Takemiya
6922	322	Momoko Ichihara
6923	322	Rinka Suzuki
6924	322	Tsubasa Onodera
6925	322	Yurika Sasaki
6926	323	'Paya-Tan' Paya Livingston 
6927	323	Anego
6928	323	Potaru Tanaka
6929	323	Pyun Tanaka
6930	323	Elise von Barbaroque
6931	323	Gesoumi
6932	323	Inumi
6933	323	Kabaka
6934	323	King Kimihiko Tanaka
6935	323	Nekoe
6936	323	Potato
6937	323	Punie Tanaka
6938	323	Queen Esmeralda Tanaka
6939	323	Tateno
6940	323	Tetsuko Koku
6941	323	Torari
6942	323	Yamada 
6943	323	Zephiel Ietsura
6944	323	Zouko 
6945	324	Etna
6946	324	Laharl
6947	324	Flonne
6948	324	Mid Boss / Vyers
6949	324	Jennifer
6950	324	Seraph Lamington
6951	324	Captain Gordon
6952	324	Kurtis
6953	324	Prinny Squad
6954	324	Thursday
6955	325	Nana Osaki
6956	325	Shinichi Okazaki
6957	325	Nana Komatsu
6958	325	Nobuo Terashima
6959	325	Takumi Ichinose
6960	325	Layla Serizawa
6961	325	Misato Uehara
6962	325	Yasushi Takagi
6963	325	Junko Saotome
6964	325	Kyousuke Takakura
6965	325	Nami Komatsu
6966	325	Naoki Fujieda
6967	325	Ren Honjo
6968	325	Sachiko Kawamura
6969	326	Hikaru Hitachiin
6970	326	Kaoru Hitachiin
6971	326	Tamaki Suou
6972	326	Kyoya Ootori
6973	326	Mitsukuni Haninozuka
6974	326	Takashi Morinozuka
6975	326	Haruhi Fujioka
6976	326	Umehito Nekozawa
6977	326	Ritsu Kasanoda
6978	326	Belzeneff
6979	326	Renge Houshakuji
6980	326	Ryoji Fujioka
6981	326	Shirou Taokaouji
6982	326	Arai
6983	326	Kirimi Nekozawa
6984	326	Ayame Jonouchi
6985	326	Eclair Tonnerre
6986	326	Fuyumi Ootori
6987	326	Hina Kamishiro
6988	326	Kanako Kasugasaki
6989	326	Kazukiyo Soga
6990	326	Kuretake
6991	326	Misuzu Sonoda
6992	326	Momoka Kurakano
6993	326	Tetsuya Sendou
6994	326	Akira Komatsuzawa
6995	326	Benio Amakusa
6996	326	Chizuru Maihara
6997	326	Hinako Tsuwabuki
6998	326	Shima Maezono
6999	326	Yasuchika Haninozuka
7000	326	Yoshio Ootori
7001	326	Yuzuru Suoh
7002	327	The Eastern Princess
7003	327	The Western Princess
7004	327	Toru Kouno (Princess)
7005	327	Yuujirou Shihoudani
7006	327	Akira Sakamoto
7007	327	Harumi Sakamoto
7008	327	Mikoto Yutaka
7009	327	Shuya Arisada 
7010	327	Touru Kouno
7011	327	Kaoru Natashou 
7012	327	Makoto Yutaka
7013	327	Masayuki Koshino
7014	327	Megumi Yoshikawa
7015	327	Sayaka Kouno
7016	327	Shinnosuke Shihoudani
7017	327	Takahiro Tadasu
7018	327	Wataru Harue
7019	328	Liru
7020	328	Pachira
7021	328	Uma
7022	328	Aiko
7023	328	Dr. K-Ko
7024	329	Amitav
7025	329	Itoki
7026	329	Makoto Hozumi
7027	329	Sasami Iwakura
7028	329	Washu Kozuka
7029	329	Anri Misugi
7030	329	Chiaki Miyazawa
7031	329	Daimon
7032	329	Ginji Iwakura
7033	329	Honoka Iwakura
7034	329	Kozue Matsubara
7035	329	Mihoshi Sensei
7036	329	Misao Shinohara
7037	329	Toshihiko Saruta
7038	329	Tsukasa Takamine
7039	330	Yakumo Tsukamoto
7040	330	Eri Sawachika
7041	330	Tenma Tsukamoto
7042	331	Rimone
7043	331	Aer
7044	331	Floe
7045	331	Neviril
7046	331	Roatreamon
7047	331	Wapourif
7048	331	Yun
7049	331	Amuria
7050	331	Anglas
7051	331	Dominura
7052	331	Mamina
7053	331	Morinas
7054	331	Alty
7055	331	Anubituf 
7056	331	Elly
7057	331	Kaim
7058	331	Paraietta
7059	331	Vura
7060	331	Aer's Father
7061	331	Guragief 
7062	331	Halconf
7063	331	Mastif
7064	331	Mastif's Captain
7065	331	Onasia
7066	331	Wauf
7067	332	Chikaru Minamoto
7068	332	Shizuma Hanazono
7069	332	Tamao Suzumi
7070	332	Nagisa Aoi
7071	332	Kaname Kenjou
7072	332	Miyuki Rokujou
7073	332	Sakiko Minase
7074	332	Amane Ootori
7075	332	Hikari Konohana
7076	332	Kagome Byakudan
7077	332	Kaori Sakuragi
7078	332	Kizuna Hyuuka
7079	332	Mizuho Kanou
7080	332	Tsubomi Okuwata
7081	332	Chihaya Takemura
7082	332	Chiyo Tsukidate
7083	332	Hitomi Tougi
7084	332	Mizuki Takakura
7085	332	Momomi Kiyashiki
7086	332	Noriko Mizushima
7087	332	Remon Natsume
7088	332	Yaya Nanto
7089	332	Ayame Umekouji
7090	332	Shion Toumori
7091	332	Sayuri Kaganoi
7092	333	Haruhi Suzumiya
7093	333	Yuki Nagato
7094	333	Mikuru Asahina
7095	333	Tsuruya
7096	333	Kyon
7097	333	Itsuki Koizumi
7098	333	Ryoko Asakura
7099	333	Kyon's Sister
7100	333	Shamisen
7101	333	Emiri Kimidori
7102	333	Taniguchi
7103	333	Kunikida
7104	333	Miyuki Enomoto
7105	333	Sonou Mori
7106	333	Arakawa
7107	333	Computer Club President
7108	333	Keiichi Tamaru
7109	333	Mai Zaizen
7110	333	Mizuki Okajima
7111	333	Takako Nakanishi
7112	334	Eigetsu / Yogetsu To
7113	334	Ryuuki Shi
7114	334	Kijin Kou
7115	334	Sa Sakujun (Senya Rin)
7116	334	Seiran Shi
7117	334	Shuuei Ran
7118	334	Kourin
7119	334	Kouyuu Ri
7120	334	Riou Hyou
7121	334	Ryuuren Ran
7122	334	Shouka Hong
7123	334	Shuurei Hong
7124	334	Toushu
7125	334	Ensei Rou
7126	334	Kokujun Sa
7127	334	Kurou Hong
7128	334	Reishin Hong
7129	334	Rin Sai
7130	334	Shunki Sa
7131	334	Yousen Shou
7132	334	Yuushun Tei
7133	335	Eruruu
7134	335	Aruruu
7135	335	Touka
7136	335	Derihourai
7137	335	Dori
7138	335	Gura
7139	335	Karurauatsuurei
7140	335	Benawi
7141	335	Kamyu
7142	335	Urtoriy
7143	335	Yuzuha
7144	335	Hakuoro
7145	335	Kurou
7146	335	Mutsumi
7147	335	Nuwangi
7148	335	Oboro
7149	335	Sopoku
7150	335	Teoro
7151	335	Inkara
7152	335	Sasante
7153	335	Tusukuru
7154	336	Masane Amaha
7155	336	Reina Soho
7156	336	Maria
7157	336	Mariko Natsuki
7158	336	Naomi
7159	336	Nora
7160	336	Reiji Takayama
7161	336	Shiori Tsuzuki
7162	336	Witchblade
7163	336	Aoi
7164	336	Asagi
7165	336	Hiroki Segawa
7166	336	Nanko
7167	336	Rie Nishida
7168	336	Rihoko Amaha
7169	336	Satomi
7170	336	Yusuke Tozawa
7171	336	Akira Nakata
7172	336	Aoi(cloneblade)
7173	336	Arachnid Ex-con
7174	336	Arachnid Ex-con (human frorm)
7175	336	Asagi (cloneblade)
7176	336	Bunta
7177	336	Captain
7178	336	EM Ex-con
7179	336	EM Ex-con(human form)
7180	336	ER Doctor
7181	336	Homeless Wino
7182	336	Homeless Wino Ex-con
7183	336	iWeapon
7184	336	Kyoko Sasaki
7185	336	Maitre d'
7186	336	Maria (cloneblade)
7187	336	Masaya Wado
7188	336	Michael
7189	336	Miki
7190	336	Mr. Cho
7191	336	Muraki
7192	336	Muraki Ex-con
7193	336	News Reporter
7194	336	Nora (cloneblde)
7195	336	Oda
7196	336	Osada
7197	336	Reina Soho (cloneblade)
7198	336	Sakuma
7199	336	Satoko Sakurai
7200	336	Shiori Tsuzuki (cloneblade)
7201	336	Social Worker
7202	336	Tatsuoki Furumizu
7203	336	Witchblade(ultimate)
7204	336	Yagi
7205	336	Yagi(ultimate blade)
7206	336	Yuuki Sasaki
7207	337	Yuuko Ichihara
7208	337	Mokona Modoki 
8350	381	Maki 
7209	337	Kimihiro Watanuki
7210	337	Mokona
7211	337	Marudashi
7212	337	Shizuka Doumeki
7213	337	Ame Warashi
7214	337	Himawari Kunogi
7215	337	Kohane Tsuruyi
7216	337	Morodashi
7217	337	Pipe Fox
7218	337	Zashiki-warashi
7219	337	Chibi Kitsune
7220	337	Dream Collector
7221	337	Haruka Doumeki
7222	337	Jorougumo
7223	337	Kitsune
7224	337	Mayuko
7225	337	Nekomusume
7226	337	Rin
7227	337	Tanpopo
7228	338	Ryoko Kaminagi
7229	338	Arque Avenir
7230	338	Chris Avenir
7231	338	Fosseta
7232	338	Irie Ayaka
7233	338	Isola
7234	338	Jen May-Yen
7235	338	Jen May-Yu
7236	338	Kei Tomigai
7237	338	Kyo Sogoru
7238	338	Mao Lu-Shen
7239	338	Meivelle Transferre
7240	338	Minato
7241	338	Mio Readiness
7242	338	Mizuki Tachibana
7243	338	Ricerca
7244	338	Sarah
7245	338	Shizuno Misaki
7246	338	Toya Hayase
7247	338	Abyss
7248	338	Dita
7249	338	Hayato Kuroshio
7250	338	Kenta Kawaguchi
7251	338	Lemures
7252	338	Mizusawa
7253	338	Sen'ichi Kurashige
7254	338	Shima
7255	338	Shin
7256	338	So
7257	338	Takeru Ushio
7258	338	Tarbo
7259	338	Toga Vital
7260	339	Alucard
7261	339	Seras Victoria
7262	339	Alexander Anderson
7263	339	Sir Integra Fairbrook Wingates Hellsing
7264	339	Walter C. Dornez
7265	339	Schrodinger
7266	339	Jan Valentine
7267	339	Rip Van Winkle
7268	339	Heinkel Wolfe
7269	339	Pip Bernadotte
7270	339	The Captain
7271	339	The Doctor 'Doc'
7272	339	Zorin Blitz
7273	339	The Major
7274	339	Enrico Maxwell
7275	339	Leif
7276	339	Luke Valentine
7277	339	M'quve
7278	339	Tubalcain Alhambra
7279	339	Cheddar Priest
7280	339	Dr. Abraham Van Helsing
7281	339	Father Renaldo
7282	339	Jessica
7283	339	Queen of England
7284	339	Richard Hellsing
7285	339	Rob Walsh
7286	339	Sir Arthur Hellsing
7287	339	Sir Hugh Irons
7288	339	Sir Shelby M. Penwood
7289	339	Yumie Takagi
7290	340	Chihiro Enomoto
7291	340	Izumi Tachibana
7292	340	Kaoruko Yamada
7293	340	Kasumi Kisaragi
7294	340	Komaki Asagiri
7295	340	Koyuki Asagiri
7296	340	Lisa Humvee
7297	340	Mugio Rokuhara
7298	340	Renko Kamishakujii
7299	340	Ritsuko Kubel Kettenkrad
7300	340	Shinobu Enomoto
7301	340	Tokino Akiyama
7302	341	Misaki Nakahara
7303	341	Hitomi Kashiwa
7304	341	Kaoru Yamazaki
7305	341	Tatsuhiro Satou
7306	341	Megumi Kobayashi
7307	342	Mylene Hoffman (009-1)
7308	342	Loki
7309	342	Number Zero
7310	343	Genha
7311	343	Lian
7312	343	Quon
7313	343	Ren Mizusaka 'Wired Ghost'
7314	343	Akira Nikaidou
7315	343	Ayane Shidou
7316	343	Bachelor
7317	343	Gen Gondou
7318	343	Kirsten Kaira
7319	343	Minori Segawa 
7320	343	Reika Tachibana
7321	343	Souji Yagisawa
7322	343	Toru Souma
7323	343	Tsukina Sasagiri
7324	343	Yousuke Kashiwagi 
7325	343	Yuusuke Shidou
7326	343	Yuuya Nonomura 
7327	344	Minoru Higashiyama
7328	344	Miwa Kurushima
7329	344	Ryuu Sasakura
7330	344	Ryuuichi Kuzuhara
7331	345	Jirou Mochizuki
7332	345	Zelman Clock
7333	345	Kotaro Mochizuki
7334	345	Cassandra Jill Warlock
7335	345	Mimiko Katsuragi
7336	345	Rinsuke Akai
7337	345	Alice Eve
7338	345	Cain Warlock
7339	345	Chan
7340	345	Jinnai Shougo
7341	345	Johan Tsang
7342	345	Kelly Wong
7343	345	Sayuka Shiramine
7344	345	Sei
7345	345	Yafuri Chao
7346	345	Zaza
7347	346	Revy
7348	346	Vladilena Balalaika
7349	346	Eda
7350	346	Shenhua
7351	346	Gretel
7352	346	Hansel
7353	346	Benny
7354	346	Janet Bhai
7355	346	Mr. Chang (Bai Ji-Shin Chang)
7356	346	Rock
7357	346	Sawyer The Cleaner
7358	346	Vladilena N. Vasilinov
7359	346	Private Eugene
7360	346	''Groovy Guy'' Russell 
7361	346	Abrego
7362	346	Bao
7363	346	Bikey
7364	346	Boris Gunsou
7365	346	Chaka
7366	346	Chief Watsup
7367	346	Claude Weaver 'Torch'
7368	346	Corporal Podolovsky
7369	346	Dutch
7370	346	Elroy
7371	346	Elvis
7372	346	Ginji Matsuzaki
7373	346	Ishiguro
7374	346	Lobos
7375	346	Lotton The Wizard
7376	346	Maki
7377	346	Masami Kousa
7378	346	Master Sergeant Polanski
7379	346	Moretti
7380	346	Morozumi
7381	346	Morozumi
7382	346	Private Sakharov
7383	346	Rico
7384	346	Rowan 'Jackpot' Pigeon
7385	346	Sergeant Menshov
7386	346	Tsugio Bando
7387	346	Vasili Laptev
7388	346	Verrocchio
7389	346	Yolanda
7390	346	Yoshida
7391	346	Yukio Washimine
7392	347	Kazuki Muto
7393	347	Tokiko Tsumura
7394	347	Shousei Sakaguchi
7395	347	Alexandria Powered
7396	347	Angel Gozen 
7397	347	Captain Bravo
7398	347	Chisato Wakamiya
7399	347	Chitose Tateyama
7400	347	Doktor Butterfly
7401	347	Genji Ikusabe
7402	347	Gouta Nakamura
7403	347	Hanabusa
7404	347	Hanaka Busujima
7405	347	Hideyuki Okakura
7406	347	Kawazui
7407	347	Kinjou
7408	347	Koji Rokumasu
7409	347	Mahiro Muto
7410	347	Masashi Daihama
7411	347	Mita
7412	347	Moonface
7413	347	Ouka Hayasaka
7414	347	Papilion
7415	347	Saori Kawai
7416	347	Saruwatari
7417	347	Sekima Hiwatari
7418	347	Shinobu Negoro
7419	347	Shusui Hayasaka
7420	347	Victor Powered
7421	347	Victoria Powered
7422	347	Washio
7423	348	C.C.
7424	348	Lelouch Lamperouge
7425	348	Kallen Stadtfeld
7426	348	Shirley Fenette
7427	348	Suzaku Kururugi
7428	348	Zero
7429	348	Euphemia li Britannia
7430	348	Villetta Nu
7431	348	Nunnally Lamperouge
7432	348	Cornelia li Britannia
7433	348	Milly Ashford
7434	348	Lloyd Asplund
7435	348	Kaguya Sumeragi
7436	348	Cecile Croomy
7437	348	Li Xingke
7438	348	Sayoko Shinozaki
7439	348	Gino Weinberg
7440	348	Mao
7441	348	Raksharta Chawla
7442	348	Clovis la Britannia
7443	348	Jeremiah Gottwald
7444	348	Rivalz Cardemonde
7445	348	V. V.
7446	348	Charles zi Britannia
7447	348	Gilbert G.P. Guilford
7448	348	Kaname Ohgi
7449	348	Britannian Knight Doctor
7450	348	Cornelia (young)
7451	348	Kewell Soresi
7452	348	Kyoshiro Tohdoh
7453	348	Lelouch Lamperouge (young)
7454	348	Naomi Inoue
7455	348	Nina Einstein
7456	348	Schneizel el Britannia
7457	348	Shinichiro Tamaki
7458	348	Alfred G. Darlton
7459	348	Andreas Darlton
7460	348	Arthur
7461	348	Atsushi Sawasaki
7462	348	Bart L. Darlton
7463	348	Bartley Asprius
7464	348	Chigusa
7465	348	City Engineer
7466	348	Claudio S. Darlton
7467	348	Commanding Officer
7468	348	Curator
7469	348	David T. Darlton
7470	348	Diethard Ried
7471	348	Edgar N. Darlton
7472	348	Euphemia's Guard
7473	348	Gawain
7474	348	Genbu Kururugi
7475	348	General Katase
7476	348	General Tsao
7477	348	Guren Mark-II
7478	348	Hidenobu Kubouin
7479	348	History Teacher
7480	348	HITV Reporter
7481	348	Hotdog Vender
7482	348	Jeremiah Orange
7483	348	Joseph Fennette
7484	348	Kento Sugiyama
7485	348	Kizuna Kagesaki
7486	348	Kosetsu Urabe
7487	348	Lancelot
7488	348	Lt Colonel Fayer
7489	348	Lt. Col. Kusakabe
7490	348	Marianne vi Britannia
7491	348	Mayor of Saitama
7492	348	Minister of Domestic Affairs
7493	348	Miss Kouzuki
7494	348	Mr. Nobleman
7495	348	Mrs. Fenette
7496	348	Mrs. Stadfeld
7497	348	Nagata
7498	348	Nagisa Chiba
7499	348	Naoto Kozuki
7500	348	News Reader
7501	348	Reporter
7502	348	Ryoga Senba
7503	348	Shogo Asahina
7504	348	Social Studies Teacher
7505	348	Sonthi Khun-moo
7506	348	Sophie Wood
7507	348	Superintendent
7508	348	Suzaku Kururugi (young)
7509	348	Taizou Kirihara
7510	348	Tatsunori Osakabe
7511	348	Toru Yoshida
7512	348	Tousai Munakata
7513	348	Weapons Merchant
7514	348	Yoshitaka Minami
7515	348	Yusk
7516	349	Milfeulle Sakuraba
7517	349	Vanilla H
7518	349	Mint Blancmanche
7519	349	Ranpha Franboise
7520	349	Lily C Sherbet
7521	349	Nano-nano Pudding
7522	349	Kahlua Marjoram
7523	349	Anise Azeat
7524	349	Apricot Sakuraba
7525	349	Mimolette
7526	349	Tequila Marjoram
7527	350	Yukari Kamishiro
7528	350	Nene Himekura
7529	350	Rinka Hokazono
7530	350	Chisa Fujimiya
7531	350	Kirino Konosaka
7532	350	Marie
7533	350	Miyu Akihara
7534	350	Riko Fukamine
7535	350	Sena Asakawa
7536	350	Ayako
7537	350	Fujiko
7538	350	Fujin Fujimiya
7539	350	Haru Amami
7540	350	Haruhiko Amami
7541	350	Ibuki Yajima
7542	350	Jinta
7543	350	Kasai-sensei
7544	350	Lily
7545	350	Maiko
7546	350	Masaki Edo
7547	350	Matsuura
7548	350	Minagi Nonomura
7549	350	Mr. Oomasa
7550	350	Nami Satoo
7551	350	Ruili
7552	350	Souichi Amami
7553	350	Tamami Konoe
7554	351	Ai Enma
7555	351	Hone Onna
7556	351	Ren Ichimoku
7557	351	Kikuri
7558	351	Takuma Kurebayashi
7559	351	Chinami Yagisawa
7560	351	Emi Mogi
7561	351	Kei Takada
7562	351	Kiyo (Spirit)
7563	351	Kyouko Nihei
7564	351	Reiko Kurebayashi
7565	351	Rina Takeda
7566	351	Tsugumi Shibata
7567	351	Tsuyu
7568	351	Waka Ikami
7569	351	Wanyudou
7570	351	Yumie Hanamura
7571	351	Yumie's boyfriend
7572	351	Ai's Grandmother
7573	351	Atsuko Ozaki
7574	351	Chikaraya Hashitsume
7575	351	Eiichi Kurebayashi
7576	351	Eiko Kamishiro
7577	351	Genzou Naitou
7578	351	Hachiroku Toyoda
7579	351	Hajime Shibata
7580	351	Harumi Kanno
7581	351	Heitarou Kenmochi
7582	351	Hirohisa Sugita
7583	351	Hiroki
7584	351	Hiroyuki Mogi
7585	351	Hitomi Nakase
7586	351	Honami Chiwaki
7587	351	Hotaru Meshiai
7588	351	Ichiko Aida
7589	351	Ichirou Kurobe
7590	351	Ikue Nonohara
7591	351	Izumi Miyahara
7592	351	Juri Moriuchi
7593	351	Kahei
7594	351	Kazuhito Kameoka
7595	351	Kazuko Mogi
7596	351	Kihachi Kusumi
7597	351	Kimihiko Komaki
7598	351	Kimiko Maruyama
7599	351	Kitazaki
7600	351	Kiwako Nitta
7601	351	Kiyo (Alive)
7602	351	Kouhei Takeda
7603	351	Kouta Kizaki
7604	351	Kumiko Yukimura
7605	351	Kuniji Kanno
7606	351	Kyouko Tachibana
7607	351	Maho Suzaki
7608	351	Maki Onda
7609	351	Makoto Tomaru
7610	351	Mami Kuriyama
7611	351	Mari Fujimaki
7612	351	Mari's father
7613	351	Mari's mother
7614	351	Masaharu Date
7615	351	Masato Ikegaki
7616	351	Masato's father
7617	351	Matsu Uetsuki
7618	351	Michirou Itou
7619	351	Michiyo Takeda
7620	351	Miki Suzaki
7621	351	Mikio Suzaki
7622	351	Misuzu Hasue
7623	351	Morio Kurayoshi
7624	351	Mutsumi Kurayoshi
7625	351	Nene Chiwaki
7626	351	Numako Kenmochi
7627	351	Osamu Tejima
7628	351	Ran Henmi
7629	351	Reion Yamada
7630	351	Rui Yokoyama
7631	351	Sakuma
7632	351	Satoko Komaki
7633	351	Sayaka Yoshizaki
7634	351	Seiichi Meshiai
7635	351	Seri Mizutani
7636	351	Shigeki Ozaki
7637	351	Shizuko Amagi
7638	351	Shouji Maruyama
7639	351	Shouko Baba
7640	351	Shun Shishido
7641	351	Shuuichi Yagisawa
7642	351	Souta Hosono
7643	351	Souta's father
7644	351	Souta's mother
7645	351	Sumie
7646	351	Tae Sakairi
7647	351	Tanidenki
7648	351	Tatsuhiko Makimura
7649	351	Tatsuya Mogi
7650	351	Tetsu
7651	351	Tetsurou Negoro
7652	351	The Spider
7653	351	Tomoko Tsuda
7654	351	Tooru Tsujimura
7655	351	Toshiya Kakinuma
7656	351	Toyosumi P
7657	351	Utae Negoro
7658	351	Yaoharu
7659	351	Yasushi Hasue
7660	351	Yasushi Tsuyuki
7661	351	Yayoi Kurayoshi
7662	351	Yohei
7663	351	Yoshirou Sawazaki
7664	351	Youko Kisugi
7665	351	Yurie Yumoto
7666	351	Yuriko Kanno
7667	352	Akizuki Youjirou
7668	352	Kanna Sakyounosuke
7669	352	Ebisu no Zukin
7670	352	Oryou
7671	352	Ibaragi Soutetsu
7672	352	Kobako
7673	352	Koma Tabigeisha
7674	352	Kotoha
7675	352	Yuyama Kakunojou
7676	352	Benimaru
7677	352	H.S. Parkes
7678	352	Hario Genba
7679	352	Jules Brunet
7680	352	Kakashi no Keishin
7681	352	Katsu Kaishuu
7682	352	Kawai Tsuginosuke
7683	352	Koma no Shouten-sama
7684	352	Nakaiya Juubee
7685	352	Ryouun Takamatsu
7686	352	Saiga Magozou
7687	352	Saigou Takamori
7688	352	Sakamoto Ryouma
7689	352	Shinzaemon Tatewaki
7690	352	Shiranui Kozo
7691	352	Shizou Hijikatato
7692	352	Shou Saineno
7693	352	Souji Okita
7694	352	Suke Gotousouno
7695	352	Takeaki Enomoto
7696	352	Tatsugoro Shinmon
7697	352	Zagashira
7698	353	Sachiko Ogasawara
7699	353	Sei Satou
7700	353	Noriko Nijou
7701	353	Shimako Toudou
7702	353	Suguru Kashiwagi
7703	353	Touko Matsudaira
7704	353	Tsutako Takeshima
7705	353	Hidemi Takachi
7706	353	Itsue Karube
7707	353	Kieko Kyougoku
7708	353	Mami Yamaguchi
7709	353	Rei Hasekura
7710	353	Shizuka Kanina
7711	353	Yoshino Shimazu
7712	353	Yumi Fukuzawa
7713	353	Yuuki Fukuzawa
7714	353	Akimitsu Yakushiji
7715	353	Buddhist abbot
7716	353	Gensuke Sawamura
7717	353	Kanako Hosokawa
7718	353	Kikuyo Ayanokouji
7719	353	Kintarou Arisugawa (Alice-kun)
7720	353	Kiyo Sawamura
7721	353	Magane Takada
7722	353	Masamune Kobayashi
7723	353	Miki Fukuzawa
7724	353	Tomomitsu Yakushiji
7725	353	Tooru Ogasawara
7726	353	Yukari Saionji
7727	353	Yuuichirou Fukuzawa
7728	354	Arthur C. Eos
7729	354	Luna Platz
7730	354	Sonia Strumm
7731	354	Aaron Boreal
7732	354	Acid
7733	354	Apollo Flame
7734	354	Bob Copper
7735	354	Bud Bison
7736	354	Cepheus
7737	354	Clark
7738	354	Claud Pincer
7739	354	Damian Wolfe
7740	354	Dr Vega
7741	354	General Auriga
7742	354	Geo Stelar
7743	354	Gerry Romero
7744	354	Heartless
7745	354	Hollow
7746	354	Hope Stelar
7747	354	Hyde
7748	354	Jack
7749	354	Joker
7750	354	Kelvin Stelar
7751	354	Ken Suther
7752	354	Kidd Gruff
7753	354	Legendary Master Shin
7754	354	Lyra
7755	354	Mitch Shepar
7756	354	Moon Destroyer
7757	354	Mr King
7758	354	Omega Xis / Mega / Warrock
7759	354	Osa Agame
7760	354	Patrick Sprigs / Futaba Tsukasa
7761	354	Queen Tia
7762	354	Rey Sprigs
7763	354	Rich Dotcom
7764	354	Sirius
7765	354	Solo / Rogue - Burai
7766	354	Tom Dubius
7767	354	Zack Temple
7768	355	Nodoka Miyazaki
7769	355	Setsuna Sakurazaki
7770	355	Asuna Kagurazaka
7771	355	Evangeline A.K. McDowell
7772	355	Makie Sasaki
7773	355	Yue Ayase
7774	355	Kazumi Asakura
7775	355	Nekane Springfield
7776	355	Kaede Nagase
7777	355	Chachahamaru Karakuri 
7778	355	Fei Ku
7779	355	Mana Tatsumiya
7780	355	Negi Springfield
7781	355	Chizuru Naba
7782	355	Konoka Konoe
7783	355	Yuna Akashi
7784	355	Chao Lingshen
7785	355	Chisame Hasegawa
7786	355	Fuka Narutaki
7787	355	Satsuki Yotsuba
7788	355	Zazie Rainyday
7789	355	Ako Izumi
7790	355	Anna 'Anya' Yurievna Cocolova
7791	355	Fumika Narutaki
7792	355	Sayo Aisaka
7793	355	Akira Okochi
7794	355	Haruna Saotome
7795	355	Madoka Kugimiya
7796	355	Misa Kakizaki
7797	355	Natsumi Murakami
7798	355	Sakurako Shiina
7799	355	Satomi Hakase
7800	355	Albert Chamomile
7801	355	Ayaka Yukihiro
7802	355	Misora Kasuga
7803	355	Nagi Springfield
7804	355	Shizuna Minamoto
7805	355	Takamichi T. Takahata
7806	355	Konoemon Konoe
7807	356	Shion Jyuujyou
7808	356	Takako Itsukushima
7809	356	Mizuho Miyanokouji
7810	356	Kana Suoin
7811	356	Yukari Kamioka
7812	356	Ichiko Takashima
7813	356	Kei Takanashi
7814	356	Mariya Mikado
7815	356	Kimie Sugawara
7816	356	Michiko Takane
7817	356	Hisako Kajiura
7818	357	Alice L. Malvin
7819	357	Randel Oland
7820	357	Webner
7821	357	Lionel Taylor
7822	357	Martis
7823	357	Captain Hunks
7824	357	Connery
7825	357	Lili Stecchin
7826	357	Mercury
7827	357	Muse Kauplan
7828	357	Oreldo
7829	358	Kyoya Hibari
7830	358	Mukuro Rokudo
7831	358	Belphegor
7832	358	Hayato Gokudera
7833	358	Giotto Vongola I
7834	358	Flan
7835	358	Tsunayoshi Sawada
7836	358	Superbi Squalo
7837	358	Chrome Dokuro
7838	358	Dino
7839	358	Takeshi Yamamoto
7840	358	Byakuran
7841	358	Colonnello (adult)
7842	358	Lambo Bovino (adult)
7843	358	Shouichi Irie
7844	358	Reborn
7845	358	Xanxus
7846	358	Alaude
7847	358	Bianchi
7848	358	Lambo Bovino
7849	358	Reborn (adult)
7850	358	Spanner
7851	358	Uri
7852	358	Basilicum
7853	358	Bluebell
7854	358	Chikusa Kakimoto
7855	358	Colonello
7856	358	Daemon Spade
7857	358	Enma Kozato
7858	358	Fuuta
7859	358	Fuuta (adult)
7860	358	G.
7861	358	Lal Mirch (adult)
7862	358	Lampo
7863	358	Esper Mammon
7864	358	Fon
7865	358	Fon (adult)
7866	358	Haru Miura
7867	358	I-Pin
7868	358	I-Pin (adult)
7869	358	Ken Joshima
7870	358	Leon
7871	358	Nana Sawada
7872	358	Ryohei Sasagawa
7873	358	Verde (adult)
7874	358	Yuni
7875	358	Dr. Shamal
7876	358	Gamma
7877	358	Iemitsu Sawada
7878	358	Kyoko Sasagawa
7879	358	Lal Mirch
7880	358	Lavina
7881	358	Lussuria
7882	358	Natsu
7883	358	Romario
7884	358	Skull
7885	358	Skull (adult)
7886	358	Verde
7887	358	Viper (Mammon)
7888	358	Asari Ugetsu
7889	358	Genkishi
7890	358	Giannini
7891	358	Glo Xinia
7892	358	Gola Mosca
7893	358	Hana Kurokawa
7894	358	Kikyo
7895	358	Knuckle
7896	358	Leviathan
7897	358	Yamamoto Tsuyoshi
7898	358	Zakuro
7899	359	Yoko Kirishima
7900	359	Anna Hase
7901	359	Ayako Takasu
7902	359	Emelenzia Beatrix Rudiger
7903	359	Itsumi Yoshimura
7904	359	Kosuke Yagi
7905	359	Mamoru Yoshimura
7906	359	Maya Sudo
7907	359	Mitsuki Fujita
7908	359	Shione Sudo
7909	359	Shizue Yoshimura
7910	359	Soshi Kikukawa
7911	359	Tsuneo Abiko
7912	359	Yuka Maruyama
7913	360	Kouya Inukai
7914	360	Mina Yayoi
7915	360	Sayuri Amamiya
7916	360	Tsukasa Kasuga
7917	360	Fumihiko Kinosaki
7918	360	Haru Sakurai
7919	360	Riku Aoba
7920	361	Saber
7921	361	Rin Tohsaka
7922	361	Rider
7923	361	Illyasviel von Einzbern 'Ilya'
7924	361	Gilgamesh
7925	361	Sakura Matou
7926	361	Archer
7927	361	Kiritsugu Emiya
7928	361	Kirei Kotomine
7929	361	Shirou Emiya               
7930	361	Assassin
7931	361	Taiga Fujimura
7932	361	Caster
7933	361	Lancer
7934	361	Souichirou Kuzuki
7935	361	Ayako Mitsuzuri
7936	361	Berserker
7937	361	Issei Ryuudou
7938	361	Shinji Matou
7939	362	Michiru Kiryuu
7940	362	Flappy
7941	362	Kaoru Kiryuu
7942	362	Kurone
7943	362	Mai Mishou / Cure Egret
7944	362	Saki Hyuuga / Cure Bloom
7945	362	Akudaikaan
7946	362	Choppy
7947	362	Daisuke Hyuuga
7948	362	DoroDoron
7949	362	Fupu
7950	362	Gooyan
7951	362	Kanako Mishou
7952	362	Karehaan
7953	362	Kayo Andou
7954	362	Kazuya Mishou
7955	362	Kenta Hoshino
7956	362	Kintoleski
7957	362	Minori Hyuuga
7958	362	Moerumba
7959	362	Ms. Shitataare
7960	362	Mupu
7961	362	Queen Filia
7962	362	Saori Hyuuga
7993	364	Ayuki Mari
7994	364	Hazumu Osaragi
7995	364	Jan Puu
7996	364	Kahoru Osaragi
7997	364	Yasuna Kamiizumi
7998	364	Asuta Soro
7999	364	Hazumu Osaragi (male)
8000	364	Hitoshi Sora
8001	364	Namiko Tsuki
8002	364	Tomari Kurusu
8003	364	Toru Osaragi
8004	365	Kanon Takano
8005	365	Asuka Suwa
8006	365	Chiyuri Yuuri
8007	365	Kiraha Kirihara
8008	365	Shimako Yagishima
8009	365	Akane Akatsuki 
8010	365	Alice Twins
8011	365	Arisu Arisugawa
8012	365	Aya Ayase
8013	365	Chisa Koutouchi
8014	365	Fuuka Futaba
8015	365	Jack Jacqueline 
8016	365	Kirika Kagarigi 
8017	365	Kisa Misaki
8018	365	Liddell
8019	365	Lisa Kirisaki
8020	365	Lorena-Ririna
8021	365	Mika Oogami 
8022	365	Miko Mikoshiba
8023	365	Nami Narumi
8024	365	Touko Toukouin
8025	365	Alternate Takion 
8026	365	Aruto Kirihara
8027	365	Moyu Moegihara
8028	366	Fuyuno Yoshikawa
8029	366	Yuri Kurosu
8030	366	Ayumi Mamiya
8031	366	Chiaki Yoshikawa
8032	366	Maika Yoshikawa
8033	366	Marin Nijihara 
8034	366	Michiru Mamiya
8035	366	Rika Anju
8036	366	Haruo Yoshikawa
8037	366	Tetsuko Hongou
8038	367	Hyousuke Nagimiya
8039	368	Alice Gehabich
8040	368	Chan Lee
8041	368	Runo Misaki
8042	368	Shun Kazami 
8043	368	Daniel Kuso
8044	368	Jenny
8045	368	Daisy Makimoto
8046	368	Jewels
8047	368	Julie Makimoto
8048	368	Klaus Von Herzon
8049	368	Akira 
8050	368	Billy Gilbert
8051	368	Brandon
8052	368	Christopher
8053	368	Hal-G
8054	368	Joe Brown
8055	368	Julio Santana 
8056	368	Kato
8057	368	Kenji
8058	368	Kenta
8059	368	Kia Marukura
8060	368	Komba O'Charlie
8061	368	Kosuke
8062	368	Makoto 
8063	368	Marucho
8064	368	Masquerade
8065	368	Michael Gehabich
8066	368	Miu
8067	368	Miyoko Kuso
8068	368	Nene
8069	368	Rikimaru
8070	368	Ryo
8071	368	Saki Misaki
8072	368	Shinjiro Kuso
8073	368	Shiori Kazami
8074	368	Shuji 
8075	368	Shuuko Marukura
8076	368	Takashi
8077	368	Tatsuya
8078	368	Travis
8079	369	Ren Mihashi
8080	369	Maria Momoe
8081	369	Takaya Abe
8082	369	Azusa Hanai
8083	369	Fumiki Mizutani
8084	369	Kazutoshi Oki
8085	369	Kousuke Izumi
8086	369	Yoshirou Hamada
8087	369	Yuuichirou Tajima
8088	369	Chiyo Shinooka
8089	369	Yuuto Sakaeguchi
8090	370	Clare
8091	370	Teresa of the Faint Smile
8092	370	Galatea 
8093	370	Riful
8094	370	Flora
8095	370	Isley
8096	370	Miria
8097	370	Cynthia
8098	370	Ophelia
8099	370	Priscilla
8100	370	Rigaldo
8101	370	Clair (young)
8102	370	Elena
8103	370	Eva
8104	370	Helen
8105	370	Ilena
8106	370	Jean
8107	370	Queenie
8108	370	Sophia
8109	370	Undine
8110	370	Veronica
8111	370	Dauf
8112	370	Deneve
8113	370	Diana
8114	370	Eliza
8115	370	Emelia
8116	370	Ermita
8117	370	Father Vincent
8118	370	Galk
8119	370	Lily
8120	370	Noel
8121	370	Orsay
8122	370	Pamela
8123	370	Rafaela
8124	370	Raki
8125	370	Rubel
8126	370	Tabitha
8127	370	Wendy
8128	370	Yuma
8129	371	Yuuko Amasawa
8130	371	Daichi Sawaguchi
8131	371	Fumie Hashimoto
8132	371	Kenichi Harakawa (Haraken)
8133	371	Kyoko Okonogi
8134	371	Maiko-sensei
8135	371	Tamako Harakawa
8136	371	Yuuko Okonogi
8137	372	Shu Aiba
8138	372	Aguri Io
8139	372	Shu Nanao
8140	372	Iera Hamon
8141	372	Noa Rukina
8142	372	Roki Demon
8143	372	Vaire
8146	372	Yuno Rukina
8177	374	Nilval Nephew
8178	374	Age
8179	374	Dhianeila Y Leisha Altoria Ol Yunos
8180	374	Prome Ou
8181	374	Yuty La
8182	374	Aneasha Ol Megarla
8183	374	Atalantes Az Yunos
8184	374	Iolaous Oz Mehelim
8185	374	Karkinos Rucan
8186	374	Lekty Leque
8187	374	Mail Al Mehelim
8188	374	Mehitak Bore
8189	374	Meleagros E Leisha Altria Oz Yunos
8190	374	Mobeedo Oz Mehelim
8191	374	Phaetho O
8192	374	Rom Ror
8193	374	Tail Ol Mehelim
8194	375	Chitose Kanna
8195	375	Kai Nishida
8196	375	Kayo Touyama
8197	375	Mirei Sakaki
8198	375	Mugi Asai
8199	375	Nono Ichinose
8200	375	Risaki Nishida
8201	375	Takashi Katsuragi
8202	376	Hitomi Aida
8203	376	Hitomi Landsknecht
8204	376	Julia
8205	376	Satsuki
8206	376	Aoi
8207	376	Kisaragi
8208	376	Mint
8209	376	Murasaki
8210	376	Rinne
8211	376	Usuha
8212	376	Yuki Ice-T
8213	377	Koumei Shokatsuryou (Zhuge Liang)
8214	377	Hakugen Rikuson (Lu Xun)
8215	377	Kouha Kannei (Gan Ning)
8216	377	Shiryuu Chou'un (Zhao Yun)
8217	377	Chouryou Bun'en (Zhang Liao)
8218	377	Hakufu Sonsasku (Sun Ce)
8219	377	Koukin Shuuyu (Zhou Yu)
8220	377	Ryoutou Kouseki (Ling Tong)
8221	377	Shimei Ryoumou (Lu Meng)
8222	377	Shiyu Shokatsukin (Zhuge Jin)
8223	377	Shuutai Youhei (Zhou Tai)
8224	377	Choujou Kofu (Zhang Zhao)
8225	377	Ekitoku Chouhi (Zhang Fei)
8226	377	Gentoku Ryuubi (Liu Bei)
8227	377	Genyou Kouso (Huang Zu)
8228	377	Kougai Koufuku (Huang Gai)
8229	377	Kouketsu Ryousou (Ling Cao)
8230	377	Kyocho Chuukou (Xu Zhu)
8231	377	Moutoku Sousou (Cao Cao)
8232	377	Shikei Roshoku (Lu Su)
8233	377	Shikou Soujin (Cao Ren)
8234	377	Sonken Chuubou (Sun Quan)
8235	377	Taishiji Shigi (Taishi Ci)
8236	377	Unchou Kan'u (Guan Yu)
8237	378	Atsushi Ootani
8238	378	Risa Koizumi
8239	378	Seishirou Kotobuki (Seiko)
8240	378	Chiharu Tanaka
8241	378	Umibozu
8242	378	Heikichi Nakao
8243	378	Nobuko Ishihara
8244	378	Ryouji Suzuki
8245	378	Haruka Fukagawa
8246	378	Kazuki Kohori
8247	378	Kuniumi Maitake
8248	378	Mimi Yoshioka
8249	378	Mayu Kanzaki
8250	379	Arf
8251	379	Fate Testarrosa Harlaown
8252	379	Caro Ru Lushe
8253	379	Teana Lanster
8254	379	Agito
8255	379	Signum
8256	379	Vivio Takamachi
8257	379	Lutecia Alpine
8258	379	Nanoha Takamachi
8259	379	Sankt Kaiser Vivio
8260	379	Subaru Nakajima
8261	379	Carim Gracia
8262	379	Cinque
8263	379	Erio Mondial
8264	379	Hayate Yagami
8265	379	Nove Nakajima
8266	379	Otto
8267	379	Reinforce Zwei
8268	379	Sein
8269	379	Vita
8270	379	Alto Krauetta
8271	379	Auris Gaiz
8272	379	Chrono Harlaown
8273	379	Deed
8274	379	Dieci
8275	379	Due
8276	379	Genya Nakajima
8277	379	Ginga Nakajima
8278	379	Griffith Lowran
8279	379	Jail Scaglietti
8280	379	Laguna Granscenic
8281	379	Lucino Lilie
8282	379	Mariel Atenza
8283	379	Megane Alpine
8284	379	Quattro
8285	379	Quint Nakajima
8286	379	Regius Gaiz
8287	379	Schach Nouera
8288	379	Sette
8289	379	Shamal
8290	379	Shario Finieno
8291	379	Tiida Lanster
8292	379	Tre
8293	379	Uno
8294	379	Verossa Acous
8295	379	Vice Granscenic
8296	379	Wendi
8297	379	Yuuno Scrya
8298	379	Zafira
8299	379	Zest Grangeitz
8300	380	Ana
8301	380	Cecilia
8302	380	Falis as Alita Forland
8303	380	Alita as Falis
8304	380	Alita as Milano Entolasia
8305	380	Alita Forland
8306	380	Alita Forland(young)
8307	380	Andre
8308	380	Capt. Roderim
8309	380	Direwolf
8310	380	Dominikov
8311	380	Dominikov (true form)
8312	380	Dr. Akamashi
8313	380	Falis
8314	380	Fenella
8315	380	Frankenstein
8316	380	Goblin
8317	380	Guitano
8318	380	High Priest of Forland
8319	380	Jitterbug
8320	380	Jodo Entolasia
8321	380	Kaito Forland
8322	380	King Forland
8323	380	Kleiveldt
8324	380	Milano Entolasia
8325	380	Pete Armstrong
8326	380	Pete Armstrong (true form)
8327	380	Synthetic Beast
8328	380	The Dark Knight
8329	380	Yuna
8330	380	Zenos
8331	381	Sun Seto
8332	381	Akeno Shiranui
8333	381	Luna Edomae
8334	381	Mawari Zenigata
8335	381	Nagasumi Michishio 
8336	381	Class President
8337	381	Nagasumi's Mother
8338	381	Ren Seto
8339	381	Gouzaburou Seto 
8340	381	Hideyoshi Sarutobi
8341	381	Kai Mikawa 
8342	381	Luna-Papa / Edomae
8343	381	Masa 
8344	381	Nagasumi's Father
8345	381	Octopus Nakajima
8346	381	Shark Fujishiro
8347	381	Ajitarou
8348	381	Burio
8349	381	Magurou
8351	381	Nagasumi's Grandmother
8352	381	Yoshiuo Minamoto
8353	382	Takeshi Yamato
8354	382	Asahi Kaho
8355	382	Kouichi Terao
8356	382	Mikoto Shinozaki
8357	382	Naoto Hyoudou
8358	382	Yousuke Fukazawa
8359	382	Yuki Fukazawa
8360	383	Reiri Kamura
8361	383	Hime / Hinoki Lillianne
8362	383	Riza Wildman
8363	383	Sawawa Hiyorimi
8364	383	Flandre
8365	383	Hiro Hiyorimi
8366	383	Sherwood
8367	383	Ciel
8368	383	Hiroko
8369	383	Witch
8370	384	Akira Midorino
8371	384	Andou
8372	384	Beppu
8373	384	Hana Hoshikawa
8374	384	Iwamuro
8375	384	Junki Saiga
8376	384	Kujiraoka
8377	384	Kuraka Saiga
8378	384	Ringo Saiga
8379	384	Rokkus
8380	384	Shiori Kobayakawa
8381	384	Souji Terasaki
8382	384	Tarou Maedasaki
8383	384	Toshihisa Takahashi
8384	384	Yamada
8385	385	Tybalt
8386	385	Francisco
8387	385	Curio
8388	385	Juliet Capulet
8389	385	Antonio
8390	385	Cordelia
8391	385	Balthazar
8392	385	Benvolio de Frescobaldi
8393	385	Conrad
8394	385	Giovanni
8395	385	Lancelot
8396	385	Mercutio
8397	385	Petruchio
8398	385	Portia Clemenza di Ebe
8399	385	Regan
8400	385	Romeo Montague
8401	385	The Old Man
8402	385	Vittorio di Frescobaldi
8403	385	William de Farnase
8404	385	Ariel de Farnase
8405	385	Camilo
8406	385	Emilia
8407	385	Hermione de Borromeo
8408	385	Leontes van de Montague 
8409	385	Ophelia
8410	385	Titus
8411	386	Byakko no Gai
8412	386	Kagero no Shiva
8413	386	Genbu no Shin
8414	386	High Angel Gabriel
8415	386	High Angel Lucifer
8416	386	Kirin no Judas
8417	386	Ryusei no Kira
8418	386	Seiryuu no Gou
8419	386	Supreme God Zeus
8420	386	Ayumi
8421	386	Fuuga no Maya
8422	386	Hiro of the Hawk
8423	386	Houou no Luca
8424	386	Kamui of the Golden Wolf 
8425	386	Natsuki of the White Sands
8426	386	Pinky
8427	386	Suzaku no Rei
8428	386	Tamami
8429	386	The Goddess Yuki
8430	386	Tsubasa
8431	387	Zero
8432	387	Blanc Niege
8433	387	Touka Kureha
8434	387	Elwyn
8435	387	Kaito Kiriya
8436	387	Mao
8437	387	Souma Akitsuki
8438	387	Haruto Saionji
8439	387	Kanon Sheena
8440	387	Reia Hiruda
8441	387	Ryuna
8442	387	Houmei
8443	388	Kenji Kusanagi
8444	388	Kyou Misumi
8445	388	Miwa Tamashiro
8446	388	Monko Saotome 
8447	388	Senjirou Shiba
8448	388	Tatsuko Midou
8449	388	Tsubaki Tamashiro
8450	388	Yagyuu
8451	389	Firo Prochainezo
8452	389	Isaac Dian
8453	389	Claire Stanfield
8454	389	Ladd Russo
8455	389	Jacuzzi Splot
8456	389	Miria Harvent
8457	389	Czeslaw Meyer 'Czes'
8458	389	Graham Spector
8459	389	Luck Gandor
8460	389	Carol
8461	389	Chane Laforet
8462	389	Ennis
8463	389	Lua Klein
8464	389	Rachel
8465	389	Eve Genoard
8466	389	Huey Laforet
8467	389	Maiza Avaro
8468	389	Mary Beriam
8469	389	Nice Holystone
8470	389	Samatha
8471	389	Barnes
8472	389	Bartolo Runorata
8473	389	Begg Garotto
8474	389	Benjamin
8475	389	Berga Gandor
8476	389	Bill Sullivan
8477	389	Chick Jefferson
8478	389	Chief of Police 
8479	389	Dallas Genoard
8480	389	Donald Brown
8481	389	Donnie
8482	389	Dune
8483	389	Edward Noa
8484	389	Elderly Conductor
8485	389	Elmer C. Albatros
8486	389	Erean Dooger
8487	389	Fan Linshan
8488	389	Fermeto
8489	389	Goose Perkins
8490	389	Gretto / Goulet Avaro
8491	389	Gustave St. Germain
8492	389	Gustavo Bagetta
8493	389	Hat Seller
8494	389	Homeless Man
8495	389	Kakuzatou
8496	389	Kanshichirou Yaguruma
8497	389	Keith Gandor
8498	389	Lia Linshan
8499	389	Manfred Beriam
8500	389	Natalie Beriam
8501	389	Nicholas Wayne
8502	389	Nick
8503	389	Nile
8504	389	Old lady
8505	389	Old Man
8506	389	Pezzo
8507	389	Placido Russo
8508	389	Randy
8509	389	Ronnie Sukiart / Ronny Skiatto
8510	389	Shaft
8511	389	Sidaris
8512	389	Spike
8513	389	Sylvie Lumiere
8514	389	Szilard Quates
8515	389	Tony
8516	389	Vicky
8517	389	Youn Parnell
8518	390	Dokuro Mitsukai
8519	390	Zakuro Mitsukai
8520	390	Sabato Mihashigo
8521	390	Babel Mihashigo
8522	390	Shizuki Minakami
8523	390	Hiroshi Miyamoto
8524	390	Ichirou Binkan
8525	390	Matsunaga
8526	390	Minami-san
8527	390	Mr. Yamazaki
8528	390	Sakura Kusakabe
8529	390	Zansu
8530	391	Mitsuki Ebihara
8531	391	Adol Brinberg
8532	391	Akane Kuramoto
8533	391	Chinami Ebihara
8534	391	Keiko Komatsuna
8535	391	Keisuke Ebihara
8536	391	Koutarou Kannagi
8537	391	Mils Brinberg
8538	391	Sonomi Kujo
8539	391	Tokio Hiiragi
8540	391	Yuma Saihashi
8541	392	Hei
8542	392	Yin
8543	392	Kiko Kayanuma
8544	392	Mao
8545	392	Misaki Kirihara
8546	392	November 11
8547	392	Amber
8548	392	Havoc
8549	392	July
8550	392	Alice Wang
8551	392	Maki
8552	392	Pai
8553	392	Wei Zhijun
8554	392	Gai Kurasawa
8555	392	Kanami Ishizaki
8556	392	Mayu Outsuka
8557	392	Amitabh Kapoor
8558	392	Annie
8559	392	April
8560	392	Bertha
8561	392	Brita
8562	392	Eric Nishijima
8563	392	Huang
8564	392	Mai Kashiwagi
8565	392	Masashi Hitotsubashi
8566	392	Mina Kandaswamy
8567	392	Nick Hillman
8568	392	Alma
8569	392	Amagiri
8570	392	Arisa Yuzuki
8571	392	Babo
8572	392	Chiaki Shinoda
8573	392	Corinna Moku
8574	392	Decade
8575	392	Elis Kastinen
8576	392	Gorou Kobayashi
8577	392	Harris Barnum
8578	392	Irene
8579	392	Itzhak
8580	392	Jean
8581	392	Joshua
8582	392	Kenji Sakurai
8583	392	Kenneth
8584	392	Kirk Lindsay
8585	392	Kouzou Tahara
8586	392	Kunio Matsumoto
8587	392	Lewis
8588	392	Louis
8589	392	Luc
8590	392	Madam Stargazer
8591	392	Mayuko
8592	392	Misuzu Ooyama
8593	392	Nakazawa
8594	392	Naoyasu Kirihara
8595	392	Paul
8596	392	Reiji Kikuchi
8597	392	Rika Ou
8598	392	Robert Schroeder
8599	392	Sergei Vectrof
8600	392	Shihoko Kishida
8601	392	Toshiro Ooyama
8602	392	Yoshimitsu Hourai
8603	392	Yuka
8604	392	Yutaka Kouno
8605	392	Yuusuke Saitou
8606	393	Dante
8607	393	Lady
8608	393	Trish
8609	393	Elena Huston
8610	393	J.D. Morisson
8611	393	Modeus
8612	393	Patty Lowell
8613	393	Vincent
8614	394	Mirei Shizuoka
8615	394	Amuro Ninagawa
8616	394	Momoko Orizuka
8617	394	Maaya Nanako
8618	394	Makio Ikuta
8619	394	Sanae Kise
8620	394	Ai Shindou
8621	394	Kaname Okiura
8622	394	Karena Nanjou
8623	394	Masa Ikariya
8624	394	Seito Takeda
8625	394	Tomoko Naruko
8626	395	Azusa Horizaki
8627	395	Ubuki Shirakashi
8628	395	Daisuke Kusuriya
8629	395	Erii Horiuchi
8630	395	Reiji Shirotani
8631	395	Rina Tachibana
8632	395	Yaeko Miguruma
8633	395	Akatsuki Ogata
8634	395	Annerize Mitake
8635	395	Chami Konomura
8636	395	Chiharu Ayukawa
8637	395	Harukiyo Sehateno
8638	395	Inuko Shishidou
8639	395	Keigo Haji
8640	395	Oogui
8641	395	Senri Haji
8642	395	Shachito Shiohara
8643	395	Shiika Anmoto
8644	395	Shinpu
8645	395	Touko Goroumaru
8646	396	Asami Onohara
8647	396	Iwao Onohara
8648	396	Kasumi Horiguchi
8649	396	Kohei Iwasaki
8650	396	Kyousuke Ichimaru
8651	396	Miss Iwasaki
8652	396	Sakura Mizunosaki
8653	396	Sasuke Mizunosaki
8654	396	Satomi Endou
8655	396	Sonoda
8656	397	Guchuko
8657	397	Mikan Natsu
8658	397	Potemayo
8659	397	Kyou Takamimori
8660	397	Nene Kasugano
8661	397	Mudou Kirihara
8662	397	Sunao Moriyama
8663	398	Claire Forrest
8664	398	Kate Ashley
8665	398	Rachel Benning
8666	398	Rose Sheedy
8667	399	Eika Ichijyo
8668	399	Elise Von Dietrich
8669	399	Ranko Mikogami
8670	399	Haruko Mikogami
8671	399	Karen Sonomiya
8672	399	Nanae Fujieda
8673	399	Otoha Sakurano
8674	399	Takumi Hayami
8675	399	Yuko Aki
8676	399	Kiriko Suoh
8677	399	Rei Hizuki
8678	399	Ryohei Tachibana
8679	399	Souya Togo
8680	399	Zin Hizaki
8681	400	Akane Kawashima
8682	400	Yuuko Sagawara
8683	400	Azanael
8684	400	Hagino Senkouji (Ekaril)
8685	400	Mari Wakatake
8686	400	Onomil
8687	400	Tsubael
8688	400	Director Maiyama
8689	400	Fukamachi School Headmaster
8690	400	Hiroko Funatsumaru
8691	400	Michiko Kozuki
8692	400	Shivariel
8693	401	Rin
8694	401	Suzu
8695	401	Machi
8696	401	Shinobu
8697	401	Ayane
8698	401	Mei Mei
8699	401	Sakuya
8700	401	Yukino
8701	401	Chikage
8702	401	Ikuto Touhouin
8703	401	Kagami
8704	401	Mikoto
8705	401	Misaki Touhouin
8706	401	Obaba
8707	401	Pantarou
8708	401	Risa
8709	401	Sashimi
8710	401	Shima-Tora
8711	401	Tonkatsu
8712	401	Bake-Bake
8713	401	Beniyasha
8714	401	Fuku-Fuku
8715	401	Genjuumaru
8716	401	Karaage
8717	401	Kuma Kuma
8718	401	Maikun (The Genius)
8719	401	Panako
8720	401	Ritsu
8721	401	Shizuka
8722	401	Taiga
8723	401	Tohno
8724	402	Kotomi Ichinose
8725	402	Nagisa Furukawa
8726	402	Tomoyo Sakagami
8727	402	Kyou Fujibayashi
8728	402	Fuuko Ibuki
8729	402	Tomoya Okazaki
8730	402	Mei Sunohara
8731	402	Ryou Fujibayashi
8732	402	Misae Sagara
8733	402	Sanae Furukawa
8734	402	Akio Furukawa
8735	402	Girl from the Illusionary World
8736	402	Yukine Miyazawa
8737	402	Youhei Sunohara
8738	402	Rie Nishina
8739	402	Katsuki Shima (cat form)
8740	402	Kouko Ibuki
8741	402	Sugisaka
8742	402	Botan
8743	402	Junk Robot
8744	402	Yusuke Yoshino
8745	402	Mitsui
8746	402	Naoyuki Okazaki
8747	402	Toshio Koumura
8748	403	Nanaka Shirakawa
8749	403	Yume Asakura
8750	403	Akane Hanasaki
8751	403	Anzu Yukimura
8752	403	Minatsu Amakase
8753	403	Otome Asakura
8754	403	Sakura Yoshino
8755	403	Suginami
8756	403	Wataru Itabashi
8757	403	Maika Mizukoshi
8758	403	Maya Sawai
8759	403	Mu
8760	403	Koko Tsukishima
8761	403	Mayuki Kousaka
8762	403	Yoshiyuki Sakurai 'Otouto-kun'
8763	404	Kouta Koga
8764	404	Byakko
8765	404	Hatsumi Mieno
8766	404	Mayuki Hyuuga
8767	404	Minori Izumi
8768	404	Miyako Tomaru
8769	404	Rakuta Koga
8770	404	Ryusuke Inogami
8771	404	Sanae Izumi
8772	404	Seiran Shinano
8773	404	Souka
8774	404	Yae Yatomi
8775	404	Yuhi
8776	405	Yoshinoya
8777	405	Hiro
8778	405	Maiko Kishi
8779	405	Kuwahara-sensei
8780	405	Miyako
8781	405	Natsume
8782	405	Sae
8783	405	The Principal
8784	405	Toudou
8785	405	Ume-sensei
8786	405	Yuno
8787	405	Chika
8788	405	Chocolat
8789	405	Chocoyama
8790	405	Maiko's father
8791	405	Maiko's mother
8792	405	Misato
8793	405	Naoi-san
8794	405	Ooya-san
8795	405	Yuno's father
8796	405	Yuno's mother
8797	406	Hyoudou Kazutaka
8798	406	Jouji Funai
8799	406	Kaiji Itou
8800	406	Kitami
8801	406	Kouji Ishida
8802	406	Makoto Sahara
8803	406	Mamoru Andou
8804	406	Okabayashi
8805	406	Oota
8806	406	Takada
8807	406	Takeshi Furuhata
8808	406	Yukio Tonegawa
8809	406	Yuuji Endou
8810	407	Lockon Stratos
8811	407	Setsuna F Seiei
8812	407	Feldt Grace 
8813	407	Allelujah Haptism
8814	407	Nena Trinity
8815	407	Wang Liu Mei
8816	407	Christina Sierra
8817	407	Graham Aker
8818	407	Louise Halevy
8819	407	Soma Peries
8820	407	Tieria Erde
8821	407	Aeolia Schenberg
8822	407	Brian Stegmeyer
8823	407	Hong Long
8824	407	Lasse Aeon
8825	407	Marina Ismail
8826	407	Patrick Colasour
8827	407	Ribbons Almark
8828	407	Saji Crossroad
8829	407	Sumeragi Lee Noriega
8830	407	Alejandro Corner
8831	407	Ali Al-Saachez
8832	407	Billy Katagiri
8833	407	Daryl Dodge
8834	407	David Carnegie
8835	407	Howard Mason
8836	407	Ian Vashti
8837	407	Johann Trinity
8838	407	Joshua Edwards
8839	407	Joyce Moreno
8840	407	Kati Mannequin
8841	407	Kim
8842	407	Kinue Crossroad
8843	407	Laguna Harvey
8844	407	Lichtendahl Tsery
8845	407	Michael Trinity
8846	407	Ming
8847	407	Ralph Eifman
8848	407	Rasa Massoud Rachmadi
8849	407	Sergei Smirnov
8850	408	Sumi Kuroi
8851	408	Ink Nijihara
8852	408	Tempera Sumi
8853	408	Pastel Ink
8854	408	Alice
8855	408	Mio Tezuka
8856	408	Ah-kun (Arcs Sheldart El Vias)
8857	408	Alice Shiratori
8858	408	Dandy
8859	408	Ink's mother
8860	408	Ka-kun (Kaks Gilbert Guy Seryus)
8861	408	Na-kun (Nadi Pochette)
8862	408	Nao Tezuka
8863	408	Police Officer
8864	408	Remi Suzuki
8865	408	Rihoko Furuta
8866	408	Rina Tanaka
8867	408	Ruriko
8868	408	Old Man
8869	409	Kei Yuuki
8870	409	Kei Yuuki (v2)
8871	409	Haruka Hasegawa
8872	409	Tadayasu Souemon Sawaki
8873	409	Aoi Mutou
8874	409	Hazuki Oikawa
8875	409	Kaoru Misato
8876	409	Keizou Itsuki
8877	409	Takuma Kawahama
8878	410	Neuro Nogami
8879	410	Yako Katsuragi
8880	410	Sai Kaitou
8881	410	Yuuya Higuchi
8882	410	Aya Aizawa
8883	410	Ayumi Kaku
8884	410	David Rice
8885	410	Dokuta Kuroo
8886	410	Eishi Sasazuka
8887	410	Eisuke Harukawa
8888	410	Eri Hoshino
8889	410	HAL
8890	410	Haruka Katsuragi
8891	410	Hayami Shouko
8892	410	Hideyasu
8893	410	Hiroshi Kanno
8894	410	Hiroto Asanaga
8895	410	Itoda
8896	410	Jun Ishigaki
8897	410	Junsa Saodake
8898	410	Kagayaki Ootsuka
8899	410	Kamata
8900	410	Kanae Kagohara
8901	410	Kaoruko Noma
8902	410	Kazushige Maguri
8903	410	Kuwabatake Charango
8904	410	Makoto Suzumoya
8905	410	Masakage Shirota
8906	410	Masakatsu Washio
8907	410	Mei Nishida
8908	410	Mio Kakei
8909	410	Myou Eishiya
8910	410	Naohiro Usui
8911	410	Noriyuki Ihara
8912	410	Pedro Nishikawa
8913	410	Ranko Ikeda
8914	410	Rijin Maguri
8915	410	Ruri Himemiya
8916	410	Sakura Tsuyuki
8917	410	Saotome Kuniharu
8918	410	Setsuna Honjou
8919	410	Shiho Ezaki
8920	410	Shinobu Godai
8921	410	Tadanobu Asada
8922	410	Takayasu Mozu
8923	410	Tarou Manbuku
8924	410	Tetsuyuki Homura
8925	410	Togashi
8926	410	Wataru Doudou
8927	410	Yoshie Iriyama
8928	410	Yoshino Kuroo
8929	410	Yui Shimose
8930	410	Yuka Eishiya
8931	410	Yuusuke Sugita
8932	411	Akari Himuro
8933	411	Bell Zephyr
8934	411	Lion Gunta
8935	411	Renji Hiiragi
8936	411	Anzelotte
8937	411	Elis Shihou
8938	411	Kirihito 
8939	411	Kureha Akabane
8940	412	Adelicia Lenn Mathers
8941	412	Itsuki Iba
8942	412	Honami Takase Ambler
8943	412	Kaori Katsuragi
8944	412	Lapis
8945	412	Mikan Katsuragi
8946	412	Sakuya Isurugi
8947	412	Daphne
8948	412	Diana
8949	412	Fin Cruda
8950	412	Gara
8951	412	Kei Isurugi
8952	412	Kikyou Katsuragi
8953	412	Manami Kuroha
8954	412	Ren Nekoyashiki
8955	412	Clive
8956	412	Judaix Tholoide
8957	412	Kagezaki
8958	412	Sekiren
8959	412	Suzuka Katsuragi
8960	412	Tatsumi Shitou
8961	413	Shion Yasuoka
8962	413	Ayumi Saitou
8963	413	Makoto Hani
8964	413	Osamu Kamizono
8965	413	Sachiko Yasuoka
8966	413	Saori Nikaidou
8967	413	Satoru Hani
8968	413	Shinji Yasuoka
8969	413	Tooru Hisatani
8970	414	Ikuto Tsukiyomi
8971	414	Amu Hinamori
8972	414	Yoru
8973	414	Kukai Souma
8974	414	Utau Hoshina
8975	414	Nadeshiko Fujisaki
8976	414	Miki
8977	414	Ran
8978	414	Tadase Hotori
8979	414	Nagihiko Fujisaki
8980	414	Rima Mashiro
8981	414	Yaya Yuiki
8982	414	Daichi
8983	414	Il
8984	414	Kiseki
8985	414	Pepe
8986	414	Saaya Yamabuki
8987	414	Su
8988	414	Tsukasa Amakawa
8989	414	Dia
8990	414	Ryousuke Yamada
8991	414	Shuraiya
8992	414	Sion
8993	414	Temari
8994	414	Yuu Nikaidou
8995	414	Ami Hinamori
8996	414	El
8997	414	Kairi Sanjo
8998	414	Kusukusu
8999	414	Kuuta
9000	414	Manta
9001	414	Marimo Hatanaka
9002	414	Midori Hinamori
9003	414	Mifuyu Torii
9004	414	Musashi
9005	414	Nobuko Saeki
9006	414	Rhythm
9007	414	Seiichirou Suzuki
9008	414	Shouta
9009	414	Shuuji Hinamori
9010	414	Takuya Nakagura
9011	414	Tsukumo
9012	414	Tsumugu Hinamori
9013	414	Yukari Sanjo
9014	414	Yuki Hatoba
9015	414	Zero
9016	414	Amanda Chichimaru
9017	414	Kazuomi Hoshina
9018	415	Albert Valentino
9019	415	Ranmaru Oumi
9020	415	Kaoru Oumi
9021	415	Ryuuji Gondou
9022	416	Momoha Odori
9023	416	Mika Inamori
9024	416	Kyouko Kibukawa
9025	416	Mai Takeuchi
9026	416	Manami Amamiya
9027	416	Sakura Odori
9028	416	Takefumi Amamiya
9029	416	Mei Etou
9030	416	Takako Kakuzawa
9031	416	Maki Tao
9032	416	Mutsuki Uehara
9033	416	Shimojima ''Shimojii''
9034	416	Tomiko Sakura
9035	417	Miina Tsukishiro
9036	417	Daisuke Kiryuu
9037	417	Escartin Mutsumune
9038	417	Kanchi Hazemi
9039	417	Miina Ootsuki
9040	417	Mina Tsukuda
9041	417	Minamo Haibara
9042	417	Nakoru Hazemi
9043	417	Nanashi
9044	417	Onoue Producer
9045	417	Suiren Koushuu
9046	418	Mayu Tsukimura
9047	418	Reika Houjou
9048	418	Irori Okushiro
9049	418	Hinako Ayakawa
9050	418	Ryouko Ninomiya
9051	418	Shinobu Kirishima
9052	418	Shungo Ninomiya
9053	418	Heisuke Yoshida
9054	418	Mikihiro Tsukimura
9055	418	Tasuku Okushiro
9056	418	Yukie Nakamura
9057	418	Bunny
9058	418	Mitsuru Hosaka
9059	418	Taichi Inoue
9060	418	Youichi Koumoto
9061	419	Alex McKenzie
9062	419	Celestine Bunuel
9063	419	Daisaku Kusama
9064	419	Katsumi Arashi
9065	419	Sugao Yamabe
9066	419	V
9067	420	Yoshinoya
9068	420	Hiro
9069	420	Maiko Kishi
9070	420	Kuwahara-sensei
9071	420	Miyako
9072	420	Natsume
9073	420	Sae
9074	420	The Principal
9075	420	Ume-sensei
9076	420	Yuno
9077	420	Chika
9078	420	Maiko's father
9079	420	Maiko's mother
9080	421	Charlotte
9081	421	Cosette
9082	421	Enjolras
9083	421	Jean Valjean
9084	421	Madame Thenardier
9085	421	Mademoiselle Gillenormand 
9086	421	Marius Pontmercy 
9087	421	Alan 
9088	421	Audrey
9089	421	Azelma
9090	421	Babet
9091	421	Beatrice
9092	421	Bressole
9093	421	Claquesous
9094	421	Combeferre
9095	421	Courfeyrac
9096	421	Eponine
9097	421	Fantine
9098	421	Fauchelevent
9099	421	Feuilly
9100	421	Gavroche
9101	421	Grantaire
9102	421	Gueulemer
9103	421	Hugues
9104	421	Javert
9105	421	Jean Prouvaire
9106	421	Joly
9107	421	Laigle
9108	421	Mabeuf
9109	421	Monsieur Gillenormand
9110	421	Montparnasse
9111	421	Mylene
9112	421	Sister Simplice
9113	421	Thenardier
9114	421	Toussaint
9115	422	Warage Black
9116	422	Bukotsu
9117	422	Cognite Announcer
9118	422	Collon
9119	422	Monio
9120	422	Rono
9121	422	Warage Blue
9122	422	Warage Green
9123	422	Warage Pink
9124	422	Warage Yellow
9125	423	Hinata Hyuga
9126	423	Itachi Uchiha
9127	423	Gaara
9128	423	Kakashi Hatake
9129	423	Naruto Uzumaki
9130	423	Sakura Haruno
9131	423	Sasuke Uchiha
9132	423	Deidara
9133	423	Shikamaru Nara
9134	423	Minato Namikaze (Fourth Hokage)
9135	423	Sasori
9136	423	Tsunade
9137	423	Temari
9138	423	Neji Hyuga
9139	423	Kiba Inuzuka
9140	423	Konan
9141	423	Kushina Uzumaki
9142	423	Jiraiya
9143	423	Anko Mitarashi
9144	423	Kurenai Yuuhi
9145	423	Madara Uchiha
9146	423	Pein
9147	423	Suigetsu Houzuki
9148	423	Orochimaru
9149	423	Sai
9150	423	Hidan
9151	423	Kisame Hoshigaki
9152	423	Tobi
9153	423	TenTen
9154	423	Nagato
9155	423	Rock Lee
9156	423	Shizune
9157	423	Karin
9158	423	Mikoto Uchiha
9159	423	Yamato
9160	423	Kankurou
9161	423	Shino Aburame
9162	423	Tobirama Senju (Second Hokage)
9163	423	Mei Terumi
9164	423	Iruka Umino
9165	423	Might Guy
9166	423	Kakuzu
9167	423	Samui
9168	423	Tsunade (young)
9169	423	Guren
9170	423	Hashirama Senju (First Hokage)
9171	423	Jiraiya (young)
9172	423	Kabuto Yakushi
9173	423	Konohamaru Sarutobi
9174	423	Yahiko
9175	423	Zetsu
9176	423	A (Fourth Raikage)
9177	423	Izuna Uchiha
9178	423	Killer Bee
9179	423	Rin Nohara
9180	423	Obito Uchiha
9181	423	Yugito Nii
9182	423	Ayame
9183	423	Chouji Akimichi
9184	423	Kimimaro
9185	423	Third Hokage
9186	423	Hanabi Hyuga
9187	423	Juugo
9188	423	Omoi
9189	423	Fugaku Uchiha
9190	423	Izumo Kamizuki
9191	423	Karui
9192	423	Pakura
9193	423	C
9194	423	Darui
9195	423	Fuu
9196	423	Hotaru
9197	423	Ibiki Morino
9198	423	Kurotsuchi
9199	423	Mangetsu Houzuki
9200	423	Ohnoki
9201	423	Akatsuchi
9202	423	Hiruko
9203	423	Maki
9204	423	Matsuri
9205	423	Sari
9206	423	Yukimaru
9207	423	Ameyuri Ringo
9208	423	Fuka
9209	423	Genma Shiranui
9210	423	Hanare
9211	423	Hiruzen Sarutobi
9212	423	Jinin Akebino
9213	423	Chojuro
9214	423	Shiho
9215	423	Shin
9216	423	Bansai
9217	423	Chouza Akimichi
9218	423	Hayate Gekkou
9219	423	Utakata
9220	423	Moegi
9221	423	Teuchi
9222	423	Tokuma Hyuuga
9223	423	Ao
9224	423	Raido Namiashi
9225	423	Shibi Aburame
9226	423	Muta Aburame
9227	423	Shisui Uchiha
9228	423	Hagoromo Otsutsuki
9229	423	Mito Uzumaki
9230	423	Udon
9231	423	Baki
9232	423	Benten
9233	423	Biwako Sarutobi
9234	423	Chiyo
9235	423	Sora
9236	423	Ebisu
9237	423	Ebizou
9238	423	Homura Mitokado
9239	423	Kisuke Maboroshi
9240	423	Koharu Utatane
9241	423	Tazuna
9242	423	Misumi Tsurugi
9243	423	 Akane
9244	423	Akaboshi
9245	423	Baji
9246	423	Danzo Shimura
9247	423	Sabiru
9248	423	Yura
9249	423	Chiyo
9250	423	Ganryuu
9251	423	Jako
9252	423	Kandachi
9253	424	Megumi Noda
9254	424	Charles Auclair
9255	424	Elise
9256	424	Franz von Stresemann
9257	424	Kiyora Miki
9258	424	Kouzou Etou
9259	424	Makiko Tanaka
9260	424	Masumi Okuyama
9261	424	Oliver
9262	424	Ryuutarou Mine
9263	424	Saiko Tagaya
9264	424	Sebastiano Vieira
9265	424	Seiko Miyoshi
9266	424	Shinichi Chiaki
9267	424	Takehiko Miyoshi
9268	424	Tooru Kikuchi
9269	424	Toshihiko Miyoshi
9270	424	Yasunori Kuroki
9271	425	Matsuri
9272	425	Akane Miura
9273	425	Satsuki Asahikawa
9274	425	Yukari Morita
9275	426	Esmeralda
9276	426	Ewan
9277	426	Misaki Hijiri
9278	426	Artista
9279	426	Kotono Hayama
9280	426	Natsuki Shirafuji
9281	426	Sofia
9282	426	Ash
9283	426	Edie Tsukahara
9284	426	Father Joshua
9285	426	Herlock
9286	426	Koushirou Kuroki
9287	426	Kurtz
9288	426	Ryouhei Mikado
9289	426	Tsubaki Seo
9290	427	Kaon
9291	427	Kazuya Ayanokouji
9292	427	Kuu Shiratori
9293	427	Jin Oogami 
9294	427	Kozue Satou
9295	427	Himiko
9296	427	Kyoshiro Ayanokoji
9297	427	Mika Ayanokoji
9298	427	Setsuna
9299	427	Tarlotte
9300	427	Valteishia
9301	427	Soujirou Ayanokoji
9302	428	Ayu Daikuuji
9303	428	Akane Suzumiya
9304	428	Fumio Hoshino
9305	428	Haruka Suzumiya
9306	428	Kaoru Suzumiya
9307	428	Kenzou Sakiyama
9308	428	Mayu Tamano
9309	428	Mitsuki Hayase
9310	428	Motoko Kouzuki
9311	428	Shinji Taira
9312	428	Souchirou Suzumiya
9313	428	Takayuki Narumi
9314	429	Tatsuma Hiyuu
9315	429	Aoi Misato
9316	429	Kyouichi Horaiji
9317	429	Marie Claire
9318	429	Yukino Oribe
9319	429	Hinano Oribe
9320	429	Hisui Kisaragi
9321	429	Komaki Sakurai
9322	429	Kyouko Tohno
9323	429	Maria Alucard
9324	429	Morihito Inugami
9325	429	Raito Umon
9326	429	Tendo Kozunu
9327	429	Yuuya Daigo
9328	430	Lucia Nahashi
9329	430	Layla
9330	430	Sumire Takahana
9331	430	Ruka
9332	430	Lola
9333	430	Guy
9334	430	Kyoko
9335	430	Lilith
9336	430	Lucif
9337	430	Tsukiyo Nogami
9338	430	Mika
9339	430	Nene Mikumo
9340	430	Riku Mikumo
9341	430	Risa
9342	430	Shizu
9343	430	Sonoka
9344	430	Souichirou Nahashi
9345	430	Yoshiki Kusanagi
9346	430	Youji Nogami
9347	431	Bunbee
9348	431	Karen Minazuki / Cure Aqua
9349	431	Koji Kokoda / Coco
9350	431	Komachi Akimoto / Cure Mint
9351	431	Nozomi Yumehara / Cure Dream
9352	431	Otaka
9353	431	Rin Natsuki / Cure Rouge
9354	431	Urara Kasugano / Cure Lemonade
9355	431	Ai Natsuki
9356	431	Aki Yamamoto
9357	431	Arachnea
9358	431	Bloody
9359	431	Desparaia
9360	431	Eri Nakazawa
9361	431	Gamao
9362	431	Girinma
9363	431	Hadenya
9364	431	Heizou Kasugano
9365	431	Kanako Miyamoto
9366	431	Kaori Konno
9367	431	Kawarino
9368	431	Kazuyo Natsuki
9369	431	Kouta Washio
9370	431	Madoka Akimoto
9371	431	Mayu Kudou
9372	431	Megumi Yumehara
9373	431	Michel Kasugano
9374	431	Miho Saitou
9375	431	Mika Masuko
9376	431	Miku Suehiro
9377	431	Milk 
9378	431	Mimino Kurumi/ Milky Rose
9379	431	Natts
9380	431	Sakamoto
9381	431	Tsutomu Yumehara
9382	431	Yuu Natsuki
9383	432	Allison Whittington
9384	432	Lillia / Lillianne Aicasia Corazon Whittington Schultz
9385	432	Mathilda
9386	432	Treize
9387	432	Allison Schultz
9388	432	Ann
9389	432	Carlo
9390	432	Carr Benedict
9391	432	Claire Nihito
9392	432	Corazon Muto
9393	432	Fiona
9394	432	Megmica Strauski
9395	432	Merielle
9396	432	Oscar Whittington
9397	432	Owen Nicht
9398	432	Thomas Ian
9399	432	Travis
9400	432	Wilhem Schultz
9401	433	Amanda Werner
9402	433	Elea
9403	433	Gerd  Frentzen
9404	433	Joseph Jobson
9405	433	Bradley Guilford
9406	433	Hermann Saltza
9407	433	Malek Yildrim Werner
9408	433	Wolf Goring
9409	434	Nobuto Nakajou
9410	434	Kazuo Saitou
9411	434	Toki Mishiba
9412	434	Keiko Ichinomiya
9413	434	Kiryuu
9414	434	Yoshida
9415	435	Kanade Sakurai
9416	435	Yukino Sakurai
9417	435	Shizuku Sakurai
9418	435	Sakuya Kamiyama
9419	436	C.C.
9420	436	Lelouch Lamperouge
9421	436	Kallen Stadtfeld
9422	436	Shirley Fenette
9423	436	Suzaku Kururugi
9424	436	Zero
9425	436	Villetta Nu
9426	436	Nunnally Lamperouge
9427	436	Anya Alstreim
9428	436	Cornelia li Britannia
9429	436	Milly Ashford
9430	436	Lloyd Asplund
9431	436	Kaguya Sumeragi
9432	436	Cecile Croomy
9433	436	Li Xingke
9434	436	Sayoko Shinozaki
9435	436	Gino Weinberg
9436	436	Raksharta Chawla
9437	436	Rivalz Cardemonde
9438	436	V. V.
9439	436	Jiang Li Hua
9440	436	Charles zi Britannia
9441	436	Gilbert G.P. Guilford
9442	436	Kaname Ohgi
9443	436	Kanon Maldini
9444	436	Ayame Futaba
9445	436	C.C.(young)
9446	436	Kyoshiro Tohdoh
9447	436	Lelouch Lamperouge (young)
9448	436	Monica Kruszewski
9449	436	Nina Einstein
9450	436	Rolo Lamperouge
9451	436	Schneizel el Britannia
9452	436	Shinichiro Tamaki
9453	436	Agent Scorpion
9454	436	Alfred G. Darlton
9455	436	Alice
9456	436	Alicia Lohmeyer
9457	436	Arthur
9458	436	Bart L. Darlton
9459	436	Bartley Asprius
9460	436	Bismarck Waldstien
9461	436	Black King
9462	436	Cai Li Shi
9463	436	Carline le Britannia
9464	436	Cheng Zhong
9465	436	Chinese Federation Guard
9466	436	Claudio S. Darlton
9467	436	David T. Darlton
9468	436	Diethard Ried
9469	436	Dorothea Ernst
9470	436	Edgar N. Darlton
9471	436	Galahad
9472	436	Gau Hai
9473	436	General Upson
9474	436	Guinevere su Britannia
9475	436	Guren Mark-II
9476	436	Hong Gu
9477	436	Huang Qian
9478	436	Ichijiku Hinata
9479	436	Jeremiah Orange
9480	436	Jiang li Hua (young)
9481	436	Kento Sugiyama
9482	436	Kinoshita
9483	436	Kosetsu Urabe
9484	436	Lancelot
9485	436	Liliana Vergamon
9486	436	Luciano Bradley
9487	436	Marianne vi Britannia
9488	436	Marika Soresi
9489	436	Mary
9490	436	Miya I. Hillmick
9491	436	Mordred
9492	436	Mori
9493	436	Mr. Kolchak
9494	436	Mrs. Fenette
9495	436	Mutsuki Minase
9496	436	Nagisa Chiba
9497	436	Nonette Enneagram
9498	436	Odysseus eu Britannia
9499	436	Omotesando Mall Security
9500	436	OSI Commander
9501	436	Percival
9502	436	Reporter
9503	436	Ryoga Senba
9504	436	Shen Hu
9505	436	Shinkiro
9506	436	Shogo Asahina
9507	436	Siegfried
9508	436	Sister
9509	436	Sonthi Khun-moo
9510	436	Tong Lun
9511	436	Tristan
9512	436	Viceroy Duke Calares
9513	436	Vincent
9514	436	Xia Wang
9515	436	Xiang Sheng
9516	436	Yoshitaka Minami
9517	436	Yusk
9518	436	Zangetsu
9519	436	Zhoa Hao
9520	436	Zhou Xianglin
9521	437	Nanaka Shirakawa
9522	437	Yume Asakura
9523	437	Akane Hanasaki
9524	437	Anzu Yukimura
9525	437	Otome Asakura
9526	437	Sakura Yoshino
9527	437	Suginami
9528	437	Wataru Itabashi
9529	437	Maika Mizukoshi
9530	437	Maya Sawai
9531	437	Mu
9532	437	Yuzu Kohinata
9533	437	Junichi Asakura
9534	437	Koko Tsukishima
9535	437	Mayuki Kousaka
9536	437	Shin Kohinata
9537	437	Yoshiyuki Sakurai 'Otouto-kun'
9538	438	Fubuki The Maid Guy Tamer
9539	438	Elizabeth K. Strawberryfield (Liz)
9540	438	Maid Guy Kogarashi
9541	438	Eiko Izumi
9542	438	Naeka Fujiwara
9543	438	Miwa Hirano
9544	438	Kousuke Fujiwara
9545	438	Shizuku
9546	438	Tsurara
9547	438	Zenjurou Fujiwara
9548	439	Chizuru Minamoto
9549	439	Chizuru Minamoto 
9550	439	Nozomu Ezomori 
9551	439	Nozomu Ezomori
9552	439	Ai Nanao
9553	439	Tamamo Minamoto
9554	439	Yukihana
9555	439	Akane Asahina
9556	439	Kiriko Takana
9557	439	Minori Mitama
9558	439	Ren Nanao
9559	439	Iku Sahara
9560	439	Mio Osakabe
9561	439	Tayura Minamoto
9562	439	Yuki Sasamori
9563	439	Kouta Oyamada
9564	439	Nue
9565	439	Omi Kiriyama
9566	439	Ryusei Kumada
9567	439	Saku Ezomori
9568	439	Takao Yatsuka
9569	440	Murasaki Kuhouin 
9570	440	Shinkurou Kurenai
9571	440	Yayoi Inuzuka
9572	440	Yuuno Houzuki
9573	440	Benika Juuzawa
9574	440	Ginko Murakami
9575	440	Kazuko Kuhouin
9576	440	Lin Cheng Shin
9577	440	Renjou Kuhouin
9578	440	Ryuuji Kuhouin
9579	440	Tamaki Mutou
9580	440	Yamie 
9581	441	Atsushi Doujou
9582	441	Asako Shibasaki
9583	441	Iku Kasahara
9584	441	Mikihisa Komaki
9585	441	Hikaru Tezuka
9586	441	Kazuichi Inamine
9587	441	Maki Orikuchi
9588	441	Ryusuke Genda
9589	442	Shirogane
9590	442	Akira Nikaidou
9591	442	Shuuichi Wagatsuma
9592	442	Haruka Kujou
9593	442	Kengo Asamura
9594	442	Nanaya
9595	442	Aya Suzuno
9596	442	Homurabi
9597	443	Kei Takishima
9598	443	Hikari Hanazono
9599	443	Megumi Yamamoto
9600	443	Ryuu Tsuji
9601	443	Tadashi Karino
9602	443	Akira Toudou
9603	443	Aoi Ogata
9604	443	Jun Yamamoto
9605	443	Yahiro Saiga
9606	443	Atsushi Hanazono
9607	443	Chitose Saiga
9608	443	Hajime Kakei
9609	443	Sakura Ushikubo
10841	480	Laura
9610	443	Satoru Takishima
9611	443	Sui Takishima
9612	443	Finn Coupe Schuzette
9613	443	Sumire Karino
9614	443	Yui Oikawa
9615	444	Death the Kid
9616	444	Soul Eater Evans
9617	444	Blair
9618	444	Maka Albarn
9619	444	Franken Stein
9620	444	Crona
9621	444	Tsubaki Nakatsukasa
9622	444	Black Star
9623	444	Patty Thompson
9624	444	Lord Death
9625	444	Liz Thompson
9626	444	Medusa Gorgon
9627	444	Spirit Albarn (Death Scythe)
9628	444	Excalibur
9629	444	Asura
9630	444	Giriko
9631	444	Eruka Frog
9632	444	Justin Law
9633	444	Marie Mjolnir
9634	444	Mifune
9635	444	Free
9636	444	Angela Leon
9637	444	Arachne
9638	444	Mira Naigus
9639	444	Yumi Azusa
9640	444	Jacqueline O Lantern Dupre
9641	444	Kim Diehl
9642	444	Mizune
9643	444	Ragnarok
9644	444	Sid Barrett (alive)
9645	444	Harvar de Eclair
9646	444	Joe Buttataki
9647	444	Kilik Rung
9648	444	Little Demon
9649	444	Pot of Fire
9650	444	Pot of Thunder
9651	444	Sid Barrett (dead)
9652	444	Masamune Nakatsukasa
9653	444	Mosquito
9654	444	Hiro
9655	444	Ox Ford
9656	444	White Star
9657	445	Lala Satalin Deviluke
9658	445	Yui Kotegawa
9659	445	Yami / Golden Darkness
9660	445	Mikan Yuuki
9661	445	Haruna Sairenji
9662	445	Run Elsie Jewelria 
9663	445	Kyoko Kirisaki
9664	445	Rito Yuuki
9665	445	Ryoko Mikado
9666	445	Rin Kujou
9667	445	Risa Momioka
9668	445	Ren Elsie Jewelria 
9669	445	Oshizu Murasame 
9670	445	Saki Tenjoin
9671	445	Mio Sawada
9672	445	Zastin Deviluke
9673	445	Peke
9674	445	Ayako 'Aya' Fujisaki
9675	445	Gid Lucion Deviluke 
9676	445	Kenichi Saruyama
9677	445	Principal
9678	446	Zero Kiryuu
9679	446	Kaname Kuran
9680	446	Senri Shiki
9681	446	Takuma Ichijou
9682	446	Toga Yagari
9683	446	Rima Touya
9684	446	Yuki Cross
9685	446	Hanabusa Aidou
9686	446	Kaien Cross
9687	446	Akatsuki Kain
9688	446	Ichiru Kiryuu
9689	446	Ruka Souen
9690	446	Maria Kurenai
9691	446	Shizuka Hiou
9692	446	Sayori 'Yori' Wakaba
9693	446	Seiren
9694	446	Asato Ichijo
9695	447	Divine Forest
9696	447	Ecolon
9697	447	Hikaru Sofue
9698	447	Jin Kazama
9699	447	Karin Yukitani
9700	447	Mamoru Shindo
9701	447	Pat
9702	447	Pit
9703	447	Pot
9704	447	Sayaka Erenkova
9705	447	Seiren
9706	447	Web Venus
9707	447	Yuuta Akikawa
9708	447	Yuzuru Aizawa
9709	448	Kyousuke Hyoubu
9710	448	Aoi Nogami
9711	448	Fujiko Tsubomi
9712	448	Kaoru Akashi
9713	448	Naomi Umegae
9714	448	Shiho Sannomiya
9715	448	Hotaru Nowaki
9716	448	Mio Tsukushi
9717	448	Muscle Okama
9718	448	Natsuko Tokiwa
9719	448	Patty Crew
9720	448	Shuuji Sakaki
9721	448	Ichirou Tanizaki
9722	448	Kouichi Minamoto
9723	448	Momotarou
9724	448	Oboro Kashiwagi
9725	448	Taizou Kiritsubo
9726	449	Chikage Kobayakawa
9727	449	Eiji Kanda
9728	449	Keiichirou Tachibana
9729	449	Yusuke Ono
9730	449	Atsushi
9731	449	Ayako Hosoda
9732	449	Haruka Nakatsu
9733	449	Itou
9734	449	Jean Baptiste Hevens
9735	449	Kaedeko Sakaki
9736	449	Nagiko Ono
9737	449	Namiko
9738	449	Sakaki Sakurako
9739	449	Sawako Akutagawa
9740	449	Tadahiro Akutagawa
9741	449	Toru Onizuka
9742	449	Urushibara
9743	449	Yukari Ooshima
9744	450	Number Eight 
9745	450	Fumiko Otonashi
9746	450	Galaxy Seven
9747	450	J (Juri Sawaragi)
9748	450	Kakeru Nohara
9749	450	Kawatou Kyouji
9750	450	King Uchuuchouten
9751	450	Kyouka Sawaragi
9752	450	Nazootona
9753	450	Smile
9754	450	Suiren
9755	450	Toppa Bashin
9756	451	Haruka Nogizaka
9757	451	Mika Nogizaka
9758	451	Nobunaga Asakura
9759	451	Yuukari Kamishiro
9760	451	Yuuto Ayase
9761	451	Akiho Nogizaka
9762	451	Nanami Nanashiro
9763	451	Ruko Ayase
9764	451	Ryouko Sawamura
9765	451	Shiina Amamiya
9766	451	Clumsy Girl Aki-chan
9767	451	Connelly Sutherland
9768	451	Hazuki Sakurazaka
9769	451	Mai Asahina
9770	451	Nagai
9771	451	Ogawa
9772	451	Ouki Nogizaka
9773	451	Shute Sutherland
9774	451	Takashi Ogasawara
9775	451	Takenami
9776	452	Adol Brinberg
9777	452	Akane Kuramoto
9778	452	Chinami Ebihara
9779	452	Keiko Komatsuna
9780	452	Kiriku
9781	452	Koutarou Kannagi
9782	452	Maori Kimizuka
9783	452	Mils Brinberg
9784	452	Sonomi Kujo
9785	452	Tokio Hiiragi
9786	452	Yuma Saihashi
9787	453	Holon
9788	453	Eiichirou Kushima
9789	453	Masamichi Haru
9790	453	Minamo Aoi
9791	453	Souta Aoi
9792	454	Lina Inverse (Reena)
9793	454	Zelgadis Greywords
9794	454	Amelia Wil Tesla Seyrunn
9795	454	Xellos
9796	454	Gourry Gabriev (Gaudy)
9797	454	Milfina / Martina Zoana Mel Navratilova
9798	454	Sylphiel Nels Lahda
9799	454	Filia Ul Copt
9800	454	Gracia Ul Naga Saillune (Naga The Serpent)
9801	454	Ozer
9802	454	Philionel El Di Saillune
9803	454	Duclis
9804	454	Gioconda
9805	454	Ladock Lanzard
9806	454	Pokota / Korba Taforashia
9807	454	Valgaav
9808	454	Zuuma
9809	455	Francesca Lucchini
9810	455	Lynette Bishop
9811	455	Charlotte E. Yeager
9812	455	Erica Hartmann
9813	455	Sanya V. Litvyak
9814	455	Yoshika Miyafuji
9815	455	Gertrud Barkhorn
9816	455	Mio Sakamoto
9817	455	Eila Ilmatar Juutilainen
9818	455	Minna-Dietlinde Wilcke
9819	455	Perrine Clostermann
9820	455	Michiko Yamakawa
9821	455	Hanna-Justina Marseille
9822	455	Sayaka Miyafuji
9823	456	Louise Francoise le Blanc de la Valliere
9824	456	Kirche Augusta Frederica von Anhalt Zerbst 
9825	456	Siesta
9826	456	Illococoo
9827	456	Henrietta de Tristain
9828	456	Tiffania Westwood 
9829	456	Saito Hiraga
9830	456	Tabitha o Tabasa
9831	456	Sheffield
9832	456	Agnes Chevalier de Milan
9833	456	Jessica
9834	456	Cattleya Yvette la Baume le Blanc de la Fontaine
9835	456	Eleanor Albertine le Blanc de la Blois de la Valliere
9836	456	Julio Cesare
9837	456	Montmorency Margarita la Fere de Montmorency
9838	456	Beatrice Yvonne von Guldenhorf
9839	456	Derflinger
9840	456	Gimli
9841	456	Guiche de Gramont
9842	456	Lady Orleans de Gallia
9843	456	Osmond
9844	456	Verdandi
9845	456	Colbert Jean
9846	456	Flame
9847	456	Joseph
9848	456	Malicorn de Grand Pre
9849	456	Marteau
9850	456	Miscour
9851	456	Reynarl
9852	456	Robin
9853	456	Scarron
9854	456	Sylphid
9855	457	Yuuhi Katagiri
9856	457	Minato Nagase
9857	457	Tsukasa Kiryuu
9858	457	Sai Fujimiya
9859	457	Junichi Nagase
9860	457	Mikoto Tachibana
9861	457	Nagomi Shiraishi
9862	457	Mitsuki Shiina
9863	458	Sebastian Michaelis
9864	458	Ciel Phantomhive 
9865	458	Grell Sutcliff
9866	458	Undertaker
9867	458	Finnian
9868	458	Drocell Cains
9869	458	Pluto
9870	458	Mey Rin
9871	458	Prince Soma Asman Kadar
9872	458	Ran-Mao
9873	458	Lau
9874	458	Agni
9875	458	Bardroy 
9876	458	William T. Spears
9877	458	Angelina Durless (Madame Red)
9878	458	Viscount of Druitt
9879	458	Elizabeth Midford
9880	458	Vincent Phantomhive
9881	458	Tanaka
9882	458	Ash Landers
9883	458	Paula
9884	458	Grell Sutcliff (Butler)
9885	458	Angela Blanc
9886	458	Rachel Phantomhive
9887	458	Fred Aberlaine
9888	458	Richard
9889	458	Alan Humphries
9890	458	Mina
9891	458	Queen Victoria
9892	458	King Edward V
9893	458	Azzurro Vanel
9894	458	Damian
9895	458	Harold West Jeb
9896	458	Lord Arthur Randall
9897	458	Lord Henry Barrymore
9898	459	Rimi Sakihata
9899	459	Ayase Kishimoto
9900	459	Sena Aoi
9901	459	Hazuki Shino
9902	459	Orgel Seira
9903	459	Kozue Arihara
9904	459	Takumi Nishijou
9905	459	Yua Kusunoki
9906	459	Katsuko Momose
9907	459	Nanami Nishijou
9908	459	Mia Kusunoki
9909	459	Daisuke Misumi
9910	459	Genichi Norose
9911	459	Issei Hatano
9912	459	Mamoru Suwa
9913	459	Takashina Fumio
9914	459	The General
9915	459	Yasuji Ban
9916	460	Kotomi Ichinose
10842	480	Genta
9917	460	Nagisa Furukawa
9918	460	Tomoyo Sakagami
9919	460	Kyou Fujibayashi
9920	460	Fuuko Ibuki
9921	460	Tomoya Okazaki
9922	460	Ushio Okazaki
9923	460	Mei Sunohara
9924	460	Ryou Fujibayashi
9925	460	Misae Sagara
9926	460	Sanae Furukawa
9927	460	Akio Furukawa
9928	460	Girl from the Illusionary World
9929	460	Yukine Miyazawa
9930	460	Youhei Sunohara
9931	460	Rie Nishina
9932	460	Katsuki Shima (cat form)
9933	460	Kouko Ibuki
9934	460	Katsuki Shima
9935	460	Sugisaka
9936	460	Botan
9937	460	Junk Robot
9938	460	Shino Okazaki
9939	460	Yusuke Yoshino
9940	460	Naoyuki Okazaki
9941	460	Toshio Koumura
9942	460	Yuu
9943	461	Chihiro Shindou
9944	461	Yuko Amamiya
9945	461	Kei Shindou
9946	461	Nagi Hirono 
9947	461	Akane Himura
9948	461	Emi Izumi
9949	461	Hiro Hirono
9950	461	Kyosuke Tsutsumi
9951	461	Miyako Miyamura
9952	461	Mizuki Hayama
9953	461	Renji Asou
9954	461	Shuuichi Kuze
9955	461	Sumire Asou
9956	461	Akira Amamiya
9957	461	Yuu Himura
9958	462	Yomi Isayama
9959	462	Aoi Houshou
9960	462	Chizuru Yanase
9961	462	Kagura Tsuchimiya 
9962	462	Kazuhiro Mitogawa
9963	462	Mami Izumi
9964	462	Miku Manabe
9965	462	Natsuki Kasuga
9966	462	Ayame Jinguuji
9967	462	Itabashi
9968	462	Mei Isayama
9969	462	Misuzu Nakabayashi
9970	462	Noriyuki Izuna
9971	462	Tooru Kanze
9972	462	Garaku Tsuchimiya
9973	462	Kazuki Sakuraba
9974	462	Kensuke Nimura
9975	462	Kiri Nikadou
9976	462	Kiriya Komparu
9977	462	Kouji Iwahata
9978	462	Kudagitsune
9979	462	Kudou Kuzuno
9980	462	Masaki Shindou
9981	462	Michael Kohara
9982	462	Nabuu
9983	462	Naraku Isayama
9984	462	Yuu Isayama
9985	463	Ai Enma
9986	463	Hone Onna
9987	463	Ren Ichimoku
9988	463	Yamawaro
9989	463	Kikuri
9990	463	Yuzuki Mikage
9991	463	Kayo Shigeta
9992	463	Natsuki Katou
9993	463	Sora Egami
9994	463	Wanyudou
9995	463	Ai's Grandmother
9996	463	Akie Takasugi
9997	463	Akihiro Nawa
9998	463	Akira Kitayama
9999	463	Atsushi Inuo
10000	463	Azusa Aketagawa / Azusa Mayama
10001	463	Chiriko Hamano
10002	463	Chizuru Nishino
10003	463	Fujiko Ashiya
10004	463	Fujiko Ashiya
10005	463	Fumio Mizuhara
10006	463	Fumio's mother
10007	463	Hajime Shibata
10008	463	Haruko
10009	463	Hidemi Kashiwagi
10010	463	Hideto Tange
10011	463	Hiroto Ochi
10012	463	Holmes
10013	463	Itsuko Hiraishi
10014	463	Jinichi Nakayama
10015	463	Jun Moriyama
10016	463	Kadokura
10017	463	Kaede Inao
10018	463	Kaito Kikuchi
10019	463	Kanako Senoo
10020	463	Kanako's mother
10021	463	Kaname Shimura
10022	463	Kaori Nakiri
10023	463	Kayo's mother
10024	463	Kazuhiko Mikage
10025	463	Kazuya Ichimura
10026	463	Kengo Saegusa
10027	463	Kimie Ichimura
10028	463	Kinya Tsuzuki
10029	463	Kira Morohoshi
10030	463	Kobayashi
10031	463	Kokoro Sasayama
10032	463	Kouji Nakajima
10033	463	Kunihiko Yagami
10034	463	Manager Yoshizawa
10035	463	Masako Momota
10036	463	Masato Shirota
10037	463	Michiru Shintani
10038	463	Michito Shinohara
10039	463	Mioi Hatsumi
10040	463	Mitsuko Yamaoka
10041	463	Miwa Niiyama
10042	463	Momo
10043	463	Moriya-Sensei
10044	463	Nakasago
10045	463	Nanami Kikuchi
10046	463	Nobuo Nomura
10047	463	Norihisa Takasugi
10048	463	Nozomi Bitou
10049	463	Oikawa
10050	463	Oikawa's wife
10051	463	President Inomoto
10052	463	Rangoku Nakiri
10053	463	Ririka Katase
10054	463	Risaburou Ashiya
10055	463	Risaburou Ashiya
10056	463	Rokurou Kamisaka
10057	463	Ryou Kou
10058	463	Ryuu
10059	463	Saeko Kitase
10060	463	Sakura Inuo
10061	463	Sayoko Mikage
10062	463	Seiji Yamaoka
10063	463	Shin Nishida
10064	463	Shinji Kikyou
10065	463	Shougo Mizorogi
10066	463	Something Yoshimatsu
10067	463	Sorimachi
10068	463	Sumi Asaba
10069	463	Sumika Misono
10070	463	Suzumi Matsuda
10071	463	Takamichi Gamou
10072	463	Takeru Yukawa
10073	463	Takeru's father
10074	463	Takeru's mother
10075	463	Takumi Tsujinobashi
10076	463	Tamayo Shiina
10077	463	Terutaka Washizu
10078	463	The Spider
10079	463	Tomohide Matsuda
10080	463	Tsugumi Shibata
10081	463	Tsukio Shima
10082	463	Usagi Shinohara
10083	463	Usagi's father
10084	463	Usagi's mother
10085	463	Yasushi Endo
10086	463	Yoshio Ichimura
10087	463	Yui Michio
10088	463	Yuki Miyajima
10089	463	Yukihiko Kikuchi
10090	463	Yukihiro Saitou
10091	463	Yukina Kurotsuka
10092	463	Yume Kiuchi
10093	463	Yuuna Serizawa
10124	465	Koma Kobayashi
10125	465	Torako Kageyama
10126	465	Inori Tsubomiya
10127	465	Minato Ooba
10128	465	Nene Andou
10129	465	Oniyuri Kageyama
10130	465	Ushio Makunouchi
10131	465	Ayumi Nonomura
10132	465	Chie Suzugasaki
10133	465	Hitsugi Nikaidou
10134	465	Kitsune Kageyama
10135	465	Kyouichirou Amagasa
10136	465	Suzume Saotome
10137	465	Yanagi Kyougoku
10138	465	Yuki Yagi
10139	465	Shishimaru Sengoku
10140	465	Tatsuki Iizuka
10141	465	Touma Kazamatsuri
10142	466	Shawn Frost
10143	466	Bryce Withingale
10144	466	Byron Love
10145	466	Claude Beacons
10146	466	David Samford
10147	466	 Shadow Cimmerian 
10148	466	Aquilina Schiller
10149	466	Camelia Travis
10150	466	Celia Hills
10151	466	Daisy Fields
10152	466	Dave Quagmire
10153	466	Galen Thunderbird
10154	466	Jordan Greenway
10155	466	Joseph King
10156	466	Mark Evans
10157	466	Nathan Swift
10158	466	Nelly Raimon
10159	466	Rachel Hobbes
10160	466	Silvia Woods
10161	466	Suzette Heartland
10162	466	Victoria Vanguard
10163	466	Xavier Foster
10164	466	Aaron Adams
10165	466	Abigol
10166	466	Adam Ropes
10167	466	Adrian Speed
10168	466	Aiden Froste
10169	466	Aiel
10170	466	Alan Downhill
10171	466	Alan Master
10172	466	Albert Denver
10173	466	Albert Green
10174	466	Alessandro Rossa 
10175	466	Alex Hawke
10176	466	Alexander Brave
10177	466	Alexia Sand 
10178	466	Amy Spires
10179	466	Andre Pinson
10180	466	Angelo Cabrini
10181	466	Anorel
10182	466	Anton Gattuso
10183	466	Antonio Bagre
10184	466	Anzai Masaru
10185	466	Apollo Light
10186	466	Arachnes
10187	466	Archer Hawkins
10188	466	Argie Bargie
10189	466	Arion Matlock
10190	466	Arnold Horrel
10191	466	Artie Mishman
10192	466	Ashton Malone/ Ark
10193	466	Astaroth
10194	466	Astram Schiller
10195	466	Austin Hobbes
10196	466	Axel Blaze
10197	466	Bael
10198	466	Barack Daniels
10199	466	Barbatos
10200	466	Behemoth
10201	466	Bela Bluebells 
10202	466	Beldio Smeraldo
10203	466	Belial
10204	466	Ben Blowton
10205	466	Ben North
10206	466	Ben Simmons
10207	466	Bernie White
10208	466	Bianco Perla
10209	466	Bilal Khalil
10210	466	Billy Rapid
10211	466	Bob Bobbins
10212	466	Bobby Shearer
10213	466	Bonnie Sparks
10214	466	Borboleta Barboza
10215	466	Brad Coldwater
10216	466	Brenda Firequest
10217	466	Brendan Water
10218	466	Bri Spark
10219	466	Bruce Monkey
10220	466	Buffalo
10221	466	Burt Wolf
10222	466	Cadence Soundtown
10223	466	Caleb Stonewall
10224	466	Cannon Random
10225	466	Carl Kappa
10226	466	Carlos Lagarto
10227	466	Carrie McCuring
10228	466	Chad Taylor
10229	466	Cham Lion
10230	466	Chang Su Che
10231	466	Charles Riverboat 
10232	466	Charlie Boardfield
10233	466	Chris Tytan
10234	466	Christopher Nichols
10235	466	Claire Lesnow
10236	466	Connor Murray
10237	466	Connor Shuttle
10238	466	Corey Washington
10239	466	Coyote
10240	466	Crane Kik
10241	466	Craven Kenville
10242	466	Cress Heavens/Sanctus
10243	466	Crow
10244	466	Crowe
10245	466	Cyril Fox
10246	466	Dan Mirthful
10247	466	Daniel Dawson
10248	466	Daniel Hatch
10249	466	Daniel Stavin
10250	466	Daniele Santini
10251	466	Danny Wood
10252	466	Dante Diavolo
10253	466	Dany Destiny
10254	466	Darren Lachance
10255	466	Davi Peroque
10256	466	David Buckingham
10257	466	David Waterman
10258	466	Dawson Foxx 
10259	466	Dean Goddard
10260	466	Denzel Freezer
10261	466	Derek Rabson
10262	466	Derek Swing
10263	466	Diego Oro
10264	466	Dirk Artz
10265	466	Dolph Hensen
10266	466	Donovan Lardy
10267	466	Dooyoon Hong
10268	466	Dora Delight 
10269	466	Dr Blaze
10270	466	Drago Hill
10271	466	Drancis Fake
10272	466	Dylan Bluemoon
10273	466	Dylan Keats
10274	466	Edgar Partinus
10275	466	Edge Ripper
10276	466	Ekadel
10277	466	Eliza Manon
10278	466	Enrico Oliviero
10279	466	Eric Eagle
10280	466	Eric Purpleton
10281	466	Esteban Carlos
10282	466	Esther Greenland
10283	466	Ethan Whitering
10284	466	Eunyeong Kim
10285	466	Falcao Da Silva
10286	466	Fedora
10287	466	Felipe Palacios
10288	466	Fermin Sanchez
10289	466	Finn Stoned
10290	466	Formiga Clemens
10291	466	Francis Poujol
10292	466	Francis Tell
10293	466	Freddy McQueen
10294	466	Gabriel Jax
10295	466	Gaiel
10296	466	Gail Baker
10297	466	Gareth Flare
10298	466	Gary Lancaster
10299	466	Gary Mane
10300	466	Gato Carvalho
10301	466	Gene Whalon
10302	466	George Firewill
10303	466	Giacomo Yani
10304	466	Gianluca Zanardi
10305	466	Gigi Biasi
10306	466	Giulio Acuto
10307	466	Giuseppe Carnivale
10308	466	Godric Wyles
10309	466	Grande Diaz
10310	466	Grant Cook 
10311	466	Grant Icewater
10312	466	Gregory Smith
10313	466	Grengo
10314	466	Gus Martin
10315	466	Hamilton Reith
10316	466	Hank Sullivan
10317	466	Hank Tennyson
10318	466	Hans Randall
10319	466	Harry Evans
10320	466	Harry Leading
10321	466	Harry Snake
10322	466	Hector Helio
10323	466	Hector Redding
10324	466	Heinrich Farber
10325	466	Hekyll Jyde
10326	466	Hellen Hearth
10327	466	Henry House
10328	466	Herb Sherman
10329	466	Herman Samuel
10330	466	Herman Waldon
10331	466	Hernan Tevez
10332	466	Hide Jekyll
10333	466	Hillary Bush
10334	466	Holly Mirror
10335	466	Holly Summers
10336	466	Hugo Tallgeese
10337	466	Hunt Mercer
10338	466	Hurley Kane
10339	466	Ian Ferrum
10340	466	Ian Smith
10341	466	Ian Telektual
10342	466	Ike Steiner
10343	466	Indigo Lazuli
10344	466	Io Shuntaro
10345	466	Isaac Glass
10346	466	Isabelle Trick
10347	466	Jack Wallside
10348	466	Jackal
10349	466	Jamie Cool
10350	466	Jamila Wali
10351	466	Jan Oster
10352	466	Jarell Mangrove
10353	466	Jason Jones
10354	466	Jazzy Hedgeer
10355	466	Jeff Iron
10356	466	Jeongsu Cho
10357	466	Jerome Hervaud
10358	466	Jerry Fulton
10359	466	Jez Shell
10360	466	Jim Hillfort
10361	466	Jim Landing
10362	466	Jim Wraith
10363	466	Jimi Gaines
10364	466	Joaquine Downtown
10365	466	Joe Dawes
10366	466	Joe Kenneddy
10367	466	Joe Poker
10368	466	Joe Small
10369	466	Johan Tassman
10370	466	John Bloom
10371	466	John Neville
10372	466	Johnny Gascoigne
10373	466	Jonas Demetrius
10374	466	Jonathan Luckyman
10375	466	Jonathan Seller
10376	466	Jose Costa
10377	466	Jose Lopez
10378	466	Joston Easton
10379	466	Juan Nadal
10380	466	Jude Sharp
10381	466	Julia Blaze
10382	466	Julien Rousseau
10383	466	Junior Fardream
10384	466	Jupiter Jumper
10385	466	Karen Ripton
10386	466	Katie Brown
10387	466	Kayson Wattever
10388	466	Keenan DiFortune
10389	466	Keith Ryan
10390	466	Ken Crackham
10391	466	Ken Furan
10392	466	Ken Ironwall
10393	466	Kent Work
10394	466	Kerry Bootgaiter
10395	466	Kevin Dragonfly
10396	466	Kim Powell
10397	466	Kjell Snapper
10398	466	Kyle Hells/Destra
10399	466	Lance Rawton
10400	466	Lane War
10401	466	Lee Dinglite
10402	466	Lee Jin Sung
10403	466	Leon Sams
10404	466	Leonard O'Shea
10405	466	Leonardo Almeida
10406	466	Leonart Hole
10407	466	Leone Batigo
10408	466	Lephiel
10409	466	Levin Murdoch
10410	466	Li Leung
10411	466	Lilly Willow
10412	466	Lou Edmonds
10413	466	Louis Leave
10414	466	Luca
10415	466	Lucy Hailstone
10416	466	Mac Robingo
10417	466	Mack Scride
10418	466	Mackenzie Fordline
10419	466	Maddie Moonlight
10420	466	Maddox Rock
10421	466	Majdi Ismail
10422	466	Malcolm Night
10423	466	Malphas
10424	466	Mansur Jasim
10425	466	Mantis
10426	466	Marco Maseratti
10427	466	Marge Fielding
10428	466	Mario Saviola
10429	466	Mark Hillvalley
10430	466	Mark Krueger
10431	466	Marshall Artz
10432	466	Marvin Murdock
10433	466	Mary Moor 
10434	466	Matt Fischer
10435	466	Maurice Badgame
10436	466	Max Fortune
10437	466	Maximino Cruz 
10438	466	Maxter Land
10439	466	Maxwell Carson
10440	466	Michael Riverside
10441	466	Mick Mishap
10442	466	Miguel Pereira
10443	466	Mikey Richards
10444	466	Miles Ryan
10445	466	Minho Cho
10446	466	Mister Newfield
10447	466	Monica Maule/mole
10448	466	Monstro Ximenes
10449	466	Morgan Sanders
10450	466	Mr. Veteran
10451	466	Musa Sylla
10452	466	Nacho Ortega
10453	466	Nasir Mustafa
10454	466	Natalie Sunrise
10455	466	Nathan Jones
10456	466	Neil Turner
10457	466	Nelson Rockwell
10458	466	Nenel
10459	466	Nereo Agata
10460	466	Newton Flust
10461	466	Nigel August
10462	466	Noel Good
10463	466	Norbert Poindexter
10464	466	Nuel
10465	466	Orville Newman
10466	466	Otto Nobili
10467	466	Pablo Castiglione
10468	466	Paekyeong Park
10469	466	Paolo Bianchi
10470	466	Parry Waxon
10471	466	Pat Box
10472	466	Paul Appleton
10473	466	Paul Siddon
10474	466	Pedro Moreno
10475	466	Percival Travis
10476	466	Peter Cole
10477	466	Peter Drent
10478	466	Peter Johnson
10479	466	Phil A. Minion
10480	466	Phil Wingate
10481	466	Philip Marvel
10482	466	Philip Owen
10483	466	Pierre Godin
10484	466	Quentin Rackner
10485	466	Quint Hampton
10486	466	Raffaele Generani
10487	466	Ramon Martinez
10488	466	Rhona Countdown
10489	466	Ricky Clover
10490	466	Robert Cliser
10491	466	Robert Silver
10492	466	Robert Skipolson
10493	466	Roberto Torinni
10494	466	Rocky Black
10495	466	Roger Pialat
10496	466	Roland Climbstein
10497	466	Romeo Diamante
10498	466	Ronny Metcalf
10499	466	Rose Pinkpetal 
10500	466	Rosso Granato
10501	466	Rushe
10502	466	Russel Walk
10503	466	Sail Bluesea
10504	466	Sakinel
10505	466	Sam Kincaid
10506	466	Sam Samurai
10507	466	Sammy Igajima
10508	466	Samuel Buster
10509	466	Samuel Mayo
10510	466	Scott Vanian
10511	466	Sean Snowfield
10512	466	Sedgley Scofield
10513	466	Sergio Lopez
10514	466	Seth Hedges
10515	466	Seth Nichols
10516	466	Seward Hayseed
10517	466	Seymour Hillman
10518	466	Shane Pierce
10519	466	Sharon Evans
10520	466	Shawn Princeton
10521	466	Songhwan Ko
10522	466	Sonny Shore
10523	466	Spencer Duskplay
10524	466	Spring Millpond
10525	466	Stephane Henault
10526	466	Steve Eagle
10527	466	Steve Grim
10528	466	Steve Woodmark
10529	466	Stuart Racoonfur
10530	466	Stuart Vanguard
10531	466	Sue Sparrow
10532	466	Sulayk Sulaiman
10533	466	Tae Utsonomiya
10534	466	Taylor Higgins
10535	466	Terry Stronger
10536	466	Thanatos
10537	466	Thomas Feldt
10538	466	Thomas Murdock
10539	466	Thomas Thommo
10540	466	Thor Stoutberg
10541	466	Tiago Torres
10542	466	Tim Sanders
10543	466	Toby Damian
10544	466	Tod Ironside
10545	466	Tom Contented
10546	466	Tom Walters
10547	466	Tony Strider
10548	466	Troy Moon
10549	466	Tyke Wando
10550	466	Tyler Murdock
10551	466	Tyron Rock
10552	466	Ulric Richmen
10553	466	Vento Galliano
10554	466	Victor Garcia
10555	466	Victor Hills
10556	466	Victor Kind
10557	466	Ving Rice
10558	466	Vittorio Amatista
10559	466	Walter Mountain
10560	466	Wenel
10561	466	Wesley Knox
10562	466	Wilbur Watkins
10563	466	Willy Glass
10564	466	Wilson Fishman
10565	466	Xavier Schiller
10566	466	Yakker Plantsworm
10567	466	Yasir Haddad
10568	466	York Nashmith
10569	466	Zachary Moore
10570	466	Zack Abdulla
10571	466	Zack Cummings
10572	466	Zak Wallside
10573	466	Zeke Valanche
10574	466	Zephyr Vitesse
10575	466	Zoolan Rice
10576	467	Ryooko Kurosaki
10577	467	Aoi-chan
10578	467	M.M.
10579	467	Misaki Hayakawa
10580	467	Sanpeita Kobayashi
10581	467	Tamako Kobayashi
10582	467	Fumiko Kobayashi
10583	467	Izumi Makihara
10584	467	Ryoota Minamino
10585	467	Kemeko
10586	468	Kurou / Minamoto no Yoshizune
10587	468	Arashiyama
10588	468	Benkei Musashibou / Bou Yamato
10589	468	Izana
10590	468	Karuta
10591	468	Kuon
10592	468	Kuromitsu
10593	468	Rai
10594	469	Kenshirou
10595	469	Juda
10596	469	Ryuroh
10597	469	Souga
10598	469	Gaiya
10599	469	Isabella
10600	469	Meioh
10601	469	Raoh
10602	469	Reina
10603	469	Ryuga
10604	469	Sakuya
10605	469	Souther the Holy Emperor
10606	469	Toki
10607	470	Emi Kizaki
10608	470	Kouichi Hayase
10609	470	Reiji Moritsugu
10610	470	Satoru Yamashita
10611	471	Asatarou
10612	471	Kyuubee
10613	471	Nikichi
10614	471	Temomo
10615	472	Megumi Noda
10616	472	Rui Son
10617	472	Yuuko Namiki
10618	472	Charles Auclair
10619	472	Elise
10620	472	Frank Latoine
10621	472	Franz von Stresemann
10622	472	Hajime Katahira
10623	472	Jean Donnadieu
10624	472	Katsuhiro Osada
10625	472	Oliver
10626	472	Paul Dubois
10627	472	Pierre de Benoit
10628	472	Roland Chevalier
10629	472	Sebastiano Vieira
10630	472	Shinichi Chiaki
10631	472	Takehiko Miyoshi
10632	472	Tatiana Vishneva
10633	472	Theo
10634	472	Toshihiko Miyoshi
10635	472	Yasunori Kuroki
10636	472	Yunlong Li
10637	473	Toua Tokuchi
10638	473	Jun'ichi Kawanaka
10639	473	Akio Saejima
10640	473	Asakura
10641	473	Big Mama
10642	473	Brooklyn
10643	473	Dennis Johnson
10644	473	Fujita
10645	473	Hayashi
10646	473	Hideo Arai
10647	473	Hiromichi Kojima
10648	473	Hitoshi Yoshida
10649	473	Imai
10650	473	Ishiyama
10651	473	Itsuki Takami
10652	473	Jack
10653	473	Katsurou Shirooka
10654	473	Kawabata
10655	473	Kinosaki
10656	473	Kinouchi
10657	473	Kouji Tashiro
10658	473	Michio Okabe
10659	473	Mishima
10660	473	Mitsui
10661	473	Mitsuo Oikawa
10662	473	Miyama
10663	473	Nakane
10664	473	Naoyuki Satou
10665	473	Nishimura
10666	473	Nishioka
10667	473	Nobumitsu Kira
10668	473	Pedro Rodrigo
10669	473	Satoshi Ideguchi
10670	473	Sawamura
10671	473	Scott Williams
10672	473	Shiba Minami
10673	473	Shinji Mizuhashi
10674	473	Shirokami
10675	473	Somekawa
10676	473	Takashi Shirooka
10677	473	Tetsuharu Tendou
10678	473	Tomas
10679	473	Tomioka
10680	473	Tomosaka
10681	473	Tsuneo Saikawa 'Owner Saikawa'
10682	473	Yoshikuni
10683	473	Yoshirou Imawano
10684	473	Yuuzaburou Mihara
10685	474	Mizore Shirayuki
10686	474	Moka Akashiya
10687	474	Kurumu Kurono
10688	474	Moka Akashiya (monster form)
10689	474	Kokoa Shuzen
10690	474	Ruby Tojo
10691	474	Yukari Sendo
10692	474	Kurumu Kurono(monster form)
10693	474	Shizuka Nekonome
10694	474	Tsukune Aono
10695	474	Moka Akashiya(young)
10696	474	Tsurara Shirayuki
10697	474	Yukari Sendo(adult)
10698	474	Ginei Morioka
10699	474	Ageha Kurono
10700	474	Ageha Kurono(young)
10701	474	Deshiko Deshi
10702	474	Kokoa Shuzen(young)
10703	474	Ririko Kagome
10704	474	Issa Shuzen
10705	474	Kahlua Shuzen
10706	474	Kyoko Aono
10707	474	Tsurara Shirayuki (young)
10708	474	Bus Driver
10709	474	Fujiko Sendo
10710	474	Kasumi Aono
10711	474	Koutarou Ijuuin
10712	474	Kubisaku Nagai
10713	474	Lilith
10714	474	Miss Apsara
10715	474	Mr. Shirayuki
10716	474	Mysterious Bat
10717	474	Saizo Komiya
10718	474	Shijimi Chono
10719	474	Sumae Mizuno
10720	474	Tonko Oniyama
10721	474	Awa the Umibozu
10722	474	Awa the Umibozu(Monster form)
10723	474	Bozaburo Taira
10724	474	Bozaburo Taira(Monster form)
10725	474	Ginei Morioka(Monster form)
10726	474	Gonzo Komiya
10727	474	Gonzo Komiya(young)
10728	474	Koji Aono
10729	474	Kozo Kasahara
10730	474	Kozo Kasahara(Monster form)
10731	474	Kubisaku Nagai(Monster form)
10732	474	Mako Yakumaru
10733	474	Mako Yakumaru(Monster form)
10734	474	Miss Apsara(Monster form)
10735	474	Mr. Yeti
10736	474	Mrs. Komiya
10737	474	Okuto Kotsubo
10738	474	Ririko Kagome(Monster form)
10739	474	Saizo Komiya(Monster form)
10740	474	Sanuki the Shiranui
10741	474	Sanuki the Shiranui(Monster form)
10742	474	Shijimi Chono (Monster form)
10743	474	Sumae Mizuno(Monster form)
10744	474	Taminori Sendo
10745	474	Tenmei Mikogami(Headmaster)
10746	474	Tonko Oniyama(Monster form)
10747	474	Tosa the Tengu
10748	474	Tosa the Tengu(Monster form)
10749	474	Zashiki-warashi
10750	474	Zashiki-warashi(Monster form)
10751	475	Kazumi Aihara
10752	475	Chika Koizumi
10753	475	Kouji Imai
10754	475	Megumi Hidaka
10755	475	Natsumi Hirakawa
10756	475	Ryota Sato
10757	475	Tsubasa Kawai
10758	475	Yuki Asano
10759	476	Taiga Aisaka
10760	476	Minori Kushieda
10761	476	Ryuuji Takasu
10762	476	Ami Kawashima
10763	476	Sumire Kanou
10764	476	Yasuko Takasu
10765	476	Yuusaku Kitamura
10766	476	Inko-chan
10767	476	Hisamitsu Noto
10768	476	Maya Kihara
10769	476	Nanako Kashii
10770	476	Kouji Haruta
10771	476	Yuri Koigakubo
10772	476	Kota Tomiie
10773	476	Kuroma
10774	477	Soh-yon
10775	477	Damiya
10776	477	Erin
10777	477	Esal
10778	477	Joh-on Tousana
10779	477	Karisa
10780	477	La-lu
10781	477	Nugan
10782	477	Seimiya
10783	477	Shin-Oh Harumiyah
10784	477	Shunan
10785	477	Taikou (Oran)
10786	477	Tomura
10787	477	Yuyan
10818	479	Kana Minami
10819	479	Chiaki Minami
10820	479	Haruka Minami
10821	479	Makoto
10822	479	Yuka Uchida
10823	479	Touma Minami
10824	479	Riko
10825	479	Atsuko
10826	479	Hayami
10827	479	Hiroko
10828	479	Hosaka
10829	479	Keiko
10830	479	Maki
10831	479	Natsuki Minami
10832	479	Yoshino
10833	479	Yuu
10834	479	Akira Minami
10835	479	Fujioka
10836	479	Shuuichi
10837	479	Takeru
10838	480	Rin Asogi
10839	480	Mimi
10840	480	Apos
10843	480	Informant
10844	480	Tajimamori
10845	480	Ihika
10846	480	Informant's Assistant 
10847	480	Katsuyuki Kamiyama 
10848	480	Kei Tajima
10849	480	Mishio Maeno
10850	480	Sayara Yamanobe
10851	480	Stamp
10852	480	Tamotsu Yanagihara
10853	480	Teruki Maeno
10854	481	Mizore Shirayuki
10855	481	Moka Akashiya
10856	481	Kurumu Kurono
10857	481	Moka Akashiya (monster form)
10858	481	Ruby Tojo
10859	481	Yukari Sendo
10860	481	Kurumu Kurono(monster form)
10861	481	Shizuka Nekonome
10862	481	Tsukune Aono
10863	481	Tamao Ichinose
10864	481	Ginei Morioka
10865	481	Deshiko Deshi
10866	481	Ririko Kagome
10867	481	Kyoko Aono
10868	481	Bus Driver
10869	481	Kasumi Aono
10870	481	Kubisaku Nagai
10871	481	Kuyo
10872	481	Mysterious Bat
10873	481	Saizo Komiya
10874	481	Shijimi Chono
10875	481	Sumae Mizuno
10876	481	Tonko Oniyama
10877	481	Amalgamated Fan club
10878	481	Bozaburo Taira
10879	481	Bozaburo Taira(Monster form)
10880	481	Deshiko Deshi(Monster form)
10881	481	Ginei Morioka(Monster form)
10882	481	Keito
10883	481	Keito (Monster form)
10884	481	Koji Aono
10885	481	Kozo Kasahara
10886	481	Kozo Kasahara(Monster form)
10887	481	Kubisaku Nagai(Monster form)
10888	481	Kuyo(Monster form)
10889	481	Kuyo(Ultimate-Monster form)
10890	481	Lady Oyakata
10891	481	Mega Garigari Plant
10892	481	Morisaki
10893	481	Morisaki(Monster form)
10894	481	Okuto Kotsubo
10895	481	Ririko Kagome(Monster form)
10896	481	Saizo Komiya(Monster form)
10897	481	Sato
10898	481	Sato(Monster form)
10899	481	Shijimi Chono (Monster form)
10900	481	Sumae Mizuno(Monster form)
10901	481	Tadashi Wanibuchi
10902	481	Tadashi Wanibuchi(Monster form)
10903	481	Tamao Ichinose(Monster form)
10904	481	Tenmei Mikogami(Headmaster)
10905	481	Tonko Oniyama(Monster form)
10906	482	Chiaki
10907	482	Asuna Ayase
10908	482	Fumika
10909	482	Shunsuke Morishita
10910	482	Daiki Senkawa
10911	482	Haruno Kasai
10912	482	Kaname Nojima
10913	482	Kirameki Mikawa
10914	482	Kouichi Kikukawa
10915	482	Miku Ayase
10916	482	Nanae Yotsugi
10917	482	Natsuka Kasai
10918	482	Ran Yahiro
10919	482	Shouta Machiya
10920	482	Takehiko Hibiya
10921	482	Tatsumi Nojima
10922	482	Tooru Kotake
10923	482	Touko Shirakawa
10924	483	Holo
10925	483	Kraft Lawrence
10926	483	Nora Arendt
10927	483	Chloe
10928	483	Jacob Tarantino
10929	483	Richten Marlheit
10930	483	Weiz
10931	483	Zheren
10932	483	Hans Remerio
10933	483	Martin Liebert
10934	484	Erys Jerand
10935	484	Ioshua Jerand
10936	484	Ashlay Bernbeldt
10937	484	Cyuss Warren
10938	484	Ilia Silvestri
10939	484	Mavelle Froesson
10940	484	Pericci
10941	484	Ronyx J. Kenny
10942	485	Kai Eto
10943	485	Hal Kurabayashi
10944	485	Masami Ibu
10945	485	Masataka Hiki
10946	485	Akito Kagura
10947	485	Keigo Kajiyama
10948	485	Shouhei Kuzuya
10949	486	Arisa Yuki
10950	486	Matsuri Amachi
10951	486	Iori Yuzuki
10952	486	Nanami Minami
10953	486	Nono Nekomiya
10954	486	Daisuke Shiba ''Bon''
10955	486	Makoto Yuuki
10956	486	Ren Tsubaki
10957	486	Ruu Sakurai
10958	486	Yamamoto-sensei
10959	486	Yukie Satou
10960	487	Mikage
10961	487	Teito Klein
10962	487	Hakuren Oak
10963	487	Frau
10964	487	Castor
10965	487	Labrador
10966	487	Kuroyuri
10967	487	Haruse
10968	487	Ayanami
10969	487	Razette
10970	487	Hyuuga
10971	487	Bastien
10972	487	Konatsu Warren
10973	487	Girl Kor
10974	487	Katsuragi
10975	487	Miroku
10976	487	Sister Athena
10977	487	Sister Libelle
10978	487	Sister Rosalie
10979	487	Taijo
10980	488	Misao Minkami
10981	488	Shuri Kurosaki
10982	488	Tomoharu Natsume 
10983	488	Reishirou Saeki
10984	488	Tohru Kitsutaka
10985	488	An Oohara
10986	488	Ania Fortuna Crowzenbruhi
10987	488	Kanade Takatsuki 
10988	488	Takaya Kagakagari
10989	488	Christina Fortuna Crowzenbruhi
10990	488	Rikka Kurasawa
10991	488	Shuu Mahiwa
10992	488	Takuma Higuchi
10993	488	You Susugihara
10994	488	Aine Shizuma
10995	488	Bismuth
10996	488	Haruna Chiyohara
10997	488	Himezasa
10998	488	Hisui
10999	488	Ingrid
11000	488	Kirie Shizuma
11001	488	Kotori Arayashiki
11002	488	Kurogane
11003	488	Kyomu Satomi
11004	488	Reiko Saeki
11005	488	Rhodonite
11006	488	Ritsu Shioizumi
11007	488	Shioizumi
11008	488	Shirogane
11009	488	Suishou
11010	488	Vivian
11011	488	Yukari Kurosaki
11012	489	Alice Gehabich
11013	489	Chan Lee
11014	489	Runo Misaki
11015	489	Shun Kazami 
11016	489	Spectra Phantom
11017	489	Baron Leltoy
11018	489	Daniel Kuso
11019	489	Hydron
11020	489	Lync Volan 
11021	489	Mira Clay
11022	489	Mylene Farrow
11023	489	Shadow Prove
11024	489	Ace Grit
11025	489	Annie
11026	489	Brandon
11027	489	Gus Grav
11028	489	Kato
11029	489	Maron Leltoy
11030	489	Marucho
11031	489	Professor Clay
11032	489	Vanessa 
11033	489	Volt Luster
11034	489	Zenoheld
11035	490	Haruka Gracia
11036	490	Miyuki Ayukawa 
11037	490	Rouge
11038	490	Bel Lindon
11039	490	Citron
11040	490	Coco JD
11041	490	Dan JD
11042	490	Flora Skybloom
11043	490	Ganz Bogard
11044	490	Iceman Hotty
11045	490	James Loane
11046	490	Naviga Stelte
11047	490	Sela D. Miranda 
11048	490	Slash Keenz
11049	490	Violette
11050	491	Anne Shirley
11051	491	Kathy Megan
11052	491	Maria Emerson
11053	491	Melissa Henderson
11054	491	Amy Carlisle
11055	491	Bert Thomas
11056	491	Charlotte Hammond
11057	491	Cyrus
11058	491	Edna Godfrey
11059	491	Edward Thomas
11060	491	Eggman (Robert Johnson)
11061	491	Elen
11062	491	Eliza Thomas
11063	491	Ella Hammond
11064	491	Gertie Hammond
11065	491	Harry Thomas
11066	491	Horace Thomas
11067	491	Jessie (MacIntyre) Gleeson
11068	491	Joanna (Harrigan) Thomas
11069	491	Kathy
11070	491	Kendrick Hammond
11071	491	Mildred Primson
11072	491	Morgan
11073	491	Mrs. Minton
11074	491	Nina Smith
11075	491	Noah Thomas
11076	491	Randolph McGavin
11077	491	Roger Emerson
11078	491	Sadie Brown
11079	491	Sally
11080	491	Tessa 'Della'
11081	492	Chii
11082	492	Dad
11083	492	Kuroino
11084	492	Mom
11085	492	Youhei
11086	493	Aoba Tsukishima
11087	493	Ichiyo Tsukishima
11088	493	 Kou Kitamura
11089	493	Akane Takikawa
11090	493	Momiji Tsukishima
11091	493	Osamu Akaishi
11092	493	Wakaba Tsukishima
11093	493	Yuuhei Azuma
11094	494	Akira Takizawa
11095	494	Saki Morimi
11096	494	Mikuru Katsuhara
11097	494	Kuroha Daiana Shiraroti
11098	494	Ryou Yuuki
11099	494	Asako Morimi
11100	494	Daiju Mononobe
11101	494	Hajime Hiura
11102	494	Haruo Kasuga
11103	494	Jintarou Tsuji
11104	494	Kazuomi Hirasawa
11105	494	Onee
11106	494	Ryousuke Morimi
11107	494	Satoshi Oosugi
11108	494	Yutaka Itazu
11109	494	Yuusei Kondou
11110	495	Bunji Kamohara
11111	495	Fumi Kamohara
11112	495	Jou Kamohara
11113	495	Rieko Kamohara
11114	496	Baron Von Volff
11115	496	General Below
11116	496	Leo
11117	496	Marat
11118	496	Monk
11119	496	Nadya
11120	496	Obergruppenfuhrer SS Linz
11121	496	Valya 'Valentine'
11122	496	Zena 'Zinaida'
11123	497	Edward Elric
11124	497	Roy Mustang
11125	497	Riza Hawkeye
11126	497	Alphonse Elric
11127	497	Winry Rockbell
11128	497	Maes Hughes
11129	497	Envy
11130	497	Ling Yao
11131	497	Izumi Curtis
11132	497	Lust
11133	497	Greed
11134	497	Olivier Milla Armstrong
11135	497	Scar
11136	497	Alex Louis Armstrong
11137	497	Nina Tucker
11138	497	Alphonse Elric
11139	497	May Chang
11140	497	Trisha Elric
11141	497	Lan Fan
11142	497	Rose Thomas
11143	497	Solf J. Kimblee
11144	497	Gluttony
11145	497	Jean Havoc
11146	497	Sheska
11147	497	Van Hohenheim
11148	497	Barry the Chopper
11149	497	Maria Ross
11150	497	Paninya
11151	497	Pride
11152	497	Dorochet
11153	497	Elicia Hughes
11154	497	Fu
11155	497	King Bradley
11156	497	Mrs. Bradley
11157	497	Selim Bradley
11158	497	Vato Falman
11159	497	Bido
11160	497	Buccaneer
11161	497	Clemin
11162	497	Damiano
11163	497	Denny Brosh
11164	497	Father Cornello
11165	497	Focker
11166	497	Gamelan
11167	497	Grumman
11168	497	Halling
11169	497	Heathcliff Erbe
11170	497	Henry Douglas
11171	497	Heymans Breda
11172	497	Jerso
11173	497	Kain Fuery
11174	497	Khayal
11175	497	Law
11176	497	Miles
11177	497	Pinako Rockbell
11178	497	Raven
11179	497	Rick
11180	497	Sara Rockbell
11181	497	Scar's Master
11182	497	Shou Tucker
11183	497	Sig Curtis
11184	497	Sloth
11185	497	Smith
11186	497	Tim Marcoh
11187	497	Ulchi
11188	497	Urey Rockbell
11189	497	Yoki
11190	498	Remus Farseer
11191	498	Rinda Farseer
11192	498	Aldross the Third
11193	498	Amnelis Vlad Mongoru
11194	498	Astrias
11195	498	Feldrik
11196	498	Gayus
11197	498	Grans
11198	498	Hei Paro
11199	498	Irrim
11200	498	Istvan
11201	498	Marus
11202	498	Naris Aldo
11203	498	Nemu
11204	498	Orro
11205	498	Pollack
11206	498	Queen Tonya
11207	498	Ran
11208	498	Regan
11209	498	Rickard
11210	498	Riya
11211	498	Rokandorasu
11212	498	Rozan
11213	498	Runan
11214	498	Ruto
11215	498	Shido
11216	498	Tangado
11217	498	Vlad
11218	498	Waron
11219	499	Li-Ren Huang
11220	499	Rumaty Ivan Di Raginei 
11221	499	Carl Rosenthal
11222	499	Eugene Alenxandr de Volkan
11223	499	Isaac Neuei
11224	499	Kajika Louisa Kugami Burnsworth
11225	499	Mahaty Sheik Di Raginei
11226	499	Harry Burnsworth
11227	499	Isabella 
11228	499	Katherine Burnsworth
11229	499	Lin Li Fang
11230	499	Monchen Zao
11231	499	Najayra Issa Shadli
11232	499	Quinza Hafez
11233	499	Sezun Hafez
11234	499	Toranosuke V Haga
11235	499	Yui Yamate
11236	500	Ayumi Arihara
11237	500	Kei Enomoto
11238	500	Misaki Yamamoto
11239	500	Rika Dobashi
11240	500	Sumire Fudounomiya
11241	500	Haruto Terai
11242	500	Hiroyuki Sogabe
11243	500	Koyoi Bessho
11244	500	Mamoru Zaitsu
11245	500	Meguru Watase
11246	500	Nanoka Kyuuma
11247	500	Nao Chikura
11248	500	Yuuji Arihara
11249	500	Etsu Kusuda
11250	500	Gengorou Takei
11251	500	Misao Zaitsu
11252	500	Yoshihiko Bessho
11253	500	Yukito Renjou
11254	501	Hinagiku Katsura
11255	501	Nagi Sanzenin
11256	501	Ayumu Nishizawa
11257	501	Athena Tenoushuu
11258	501	Hayate Ayasaki
11259	501	Izumi Segawa
11260	501	Isumi Saginomiya
11261	501	Maria
11262	501	Saki Kijima
11263	501	Sakuya Aizawa
11264	501	Chiharu Harukaze
11265	501	Himuro Saeki
11266	501	Kashiwagi
11267	501	Yukiji Katsura
11268	501	Fumi Hibino
11269	501	Ginka Saginomiya
11270	501	Kaede Nonohara
11271	501	Kaoru Kyounosuke
11272	501	Kirika Kuzuha
11273	501	Ruka Suirenji
11274	501	Shinichi 'Nabeshin' Watanabe
11275	501	Shion Kuresato
11276	501	Taiga Ookouchi
11277	501	Wataru Tachibana
11278	501	Himegami
11279	501	Itsuki
11280	501	Kotetsu Segawa
11281	501	Mikado Sanzenin
11282	501	Miki Hanabishi 
11283	501	Risa Asakaze
11284	501	Seishirou Klaus
11285	501	Shion Kuresato
11286	501	Shunji
11287	501	Tama
11288	502	Aoi Arisugawa
11289	502	Aqua
11290	502	Brownie
11291	502	Dian
11292	502	Garnet
11293	502	Kris
11294	502	Lapis
11295	502	Minami Asaoka
11296	502	Nix
11297	502	Peridot
11298	502	Rinko Kougyoku
11299	502	Ruby
11300	502	Alex
11301	502	Amelie
11302	502	Angela
11303	502	Charotte
11304	502	Chite
11305	502	Diana / Jill
11306	502	Flora
11307	502	Io
11308	502	Jasper
11309	502	Kaiya
11310	502	Keigo Taitou
11311	502	King
11312	502	Kohaku
11313	502	Labra
11314	502	Luna
11315	502	Milky
11316	502	Nephrite
11317	502	Opal
11318	502	Prase
11319	502	Raako Menma
11320	502	Raku Majou
11321	502	Rald
11322	502	Rin
11323	502	Ryl
11324	502	Sango
11325	502	Sapphie
11326	502	Tata
11327	502	Titana
11328	502	Topaz
11329	502	Tour
11330	502	Yuke
11331	503	Mio Akiyama
11332	503	Azusa Nakano
11333	503	Yui Hirasawa
11334	503	Ritsu Tainaka
11335	503	Tsumugi Kotobuki
11336	503	Ui Hirasawa
11337	503	Sawako Yamanaka
11338	503	Jun Suzuki
11339	503	Nodoka Manabe
11340	503	Mio Akiyama (child)
11341	503	Yui Hirasawa (child)
11342	503	Megumi Sokabe
11343	503	Eri Taki
11344	503	Nodoka Manabe (child)
11345	503	Ui Hirasawa (child)
11346	503	Azu-nyan 2
11347	503	Satoshi Tainaka
11348	503	Satoshi's Friend
11349	504	Hajime Yasaka
11350	504	Hideo "Gurasan" Murata
11351	504	Jun Kamigamo
11352	504	Kaja Bergmann
11353	504	Kanako Yamazaki
11354	504	Master (Sayaka)
11355	504	Sayoko Arashiyama
11356	504	Yayoi Fushimi
11357	505	Alice
11358	505	Xerxes Break
11359	505	Raven / Gilbert Nightray
11360	505	Oz Vessalius
11361	505	Jack Vessalius
11362	505	Vincent Nightray
11363	505	Cheshire Cat
11364	505	Will of the Abyss
11365	505	Echo
11366	505	Oswald Baskerville
11367	505	Sharon Rainsworth
11368	505	Ada Vessalius 
11369	505	B Rabbit
11370	505	Elliot Nightray
11371	505	Reim Lunettes 
11372	505	Emily
11373	505	Leo Baskerville
11374	505	Charlotte
11375	505	Phillipe West 
11376	505	Rufus Barma 
11377	505	Shelly Rainsworth
11378	505	Eques
11379	505	Fang Baskerville
11380	505	Albus
11381	506	Zwei
11382	506	Claudia McCunnen
11383	506	Cal Devens
11384	506	Ein
11385	506	Mio Fujieda
11386	506	Atsushi Motegi
11387	506	Daisuke Godou
11388	506	Hirono Inada
11389	506	Issac Wisemel
11390	506	Lizzie Garland
11391	506	Raymond McGuire
11392	506	Sanae Kubota
11393	506	Scythe Master
11394	506	Tooru Shiga
11395	507	Airi
11396	507	Tomoe
11397	507	Melona
11398	507	Nanael
11399	507	Risty
11400	507	Shizuka
11401	507	Alleyne
11402	507	Echidna
11403	507	Cattleya
11404	507	Aldra
11405	507	Elina
11406	507	Irma
11407	507	Menace
11408	507	Nyx
11409	507	Leina
11410	507	Claudette
11411	507	Melpha
11412	507	Ymir
11413	507	Nowa
11414	507	Anarista
11415	507	Hachiel
11416	507	Rana
11417	507	Head Angel
11418	507	Owen
11419	508	Angela
11420	508	Francesco
11421	508	Furio Facchini
11422	508	Gian Luigi Orsini
11423	508	Lorenzo Orsini
11424	508	Luciano De Luca
11425	508	Nicoletta
11426	508	Olga
11427	508	Santo Claudio Paradiso
11428	508	Teo
11429	508	Vito
11430	509	Nodoka Haramura
11431	509	Yuuki Kataoka
11432	509	Mihoko Fukuji
11433	509	Momoko Touyoko
11434	509	Saki Miyanaga
11435	509	Hajime Kunihiro
11436	509	Koromo Amae
11437	509	Hisa Takei
11438	509	Hagiyoshi
11439	509	Kana Ikeda
11440	509	Teru Miyanaga
11441	509	Touka Ryuumonbochi
11442	509	Anetai Toyone
11443	509	Awai Oohoshi
11444	509	Kaori Senoo
11445	509	Kazue Nanpo
11446	509	Mako Someya
11447	509	Mutsuki Tsuyama
11448	509	Yumi Kajiki
11449	509	Ayumu Sugino
11450	509	Hiroko Murohashi
11451	509	Jun Inoue
11452	509	Junko Nishida
11453	509	Kazuko Nagamori
11454	509	Kyoutarou Suga
11455	509	Maho Yumeno
11456	509	Miharu Yoshitome
11457	509	Satomi Kanbara
11458	509	Seika Bundou
11459	509	Sumire Hirose
11460	509	Sumiyo Fukabori
11461	509	Takako Kubo
11462	509	Takami Shibuya
11463	509	Tomoki Sawamura
11464	509	Yasuko Fujita
11465	509	Announcer
11466	509	Daisuke Yamaguchi
11467	509	Mai Tanaka
11468	509	Megumi Kamigaki
11469	509	Mr. Haramura
11470	509	Mr. Miyanaga
11471	509	Nanpo
11472	509	Seiko Matano
11473	509	Vice President
11474	509	Youko Kadomatsu
11475	509	Yuri Tsuchiya
11476	510	Masamune Date
11477	510	Mitsuhide Akechi
11478	510	Motochika Chousokabe
11479	510	Sanada Yukimura
11480	510	Keiji Maeda
11481	510	Sarutobi Sasuke
11482	510	Kasuga
11483	510	Motonari Mouri
11484	510	Oichi
11485	510	Kojuurou Katakura
11486	510	Kotarou Fuuma
11487	510	Nouhime 
11488	510	Tsuruhime
11489	510	Ieyasu Tokugawa
11490	510	Nagamasa Azai
11491	510	Shingen Takeda
11492	510	Takenaka Hanbei
11493	510	Toshiie Maeda
11494	510	Itsuki
11495	510	Kenshin Uesugi
11496	510	Mitsunari Ishida
11497	510	Tadakatsu Honda
11498	510	Hisahide Matsunaga
11499	510	Imagawa Yoshimoto
11500	510	Matsu Maeda
11501	510	Nobunaga Oda
11502	510	Ranmaru Mori
11503	510	Yoshihiro Shimazu
11504	511	Kuniko Houjou
11505	511	Mikuni
11506	511	Karin Ishida
11507	511	Klaris Lutz
11508	511	Kunihito Kusanagi
11509	511	Leon Imaki
11510	511	Miiko
11511	511	Momoko
11512	511	Nagiko Houjou
11513	511	Ryouko Naruse
11514	511	Sayoko
11515	511	Shion Imaki
11516	511	Shougo Kudo
11517	511	Soichirou Hata
11518	511	Takehiko
11519	511	Tomoka Yamazaki
11520	511	Yuri Gamagoori
11521	512	Corticarte Apa Lagranges
11522	512	Mizeldorido
11523	512	Phoron Tatara
11524	512	Prinesca Yugiri
11525	512	Shidara Leitos
11526	512	Danguis Komaro
11527	512	Elaindos
11528	512	Eufinley Tsuge
11529	512	Perserte Yugiri
11530	512	Renbart Saiki
11531	513	Capensis
11532	513	Danjin
11533	513	Ixia Jun
11534	513	Jeda Raxpa
11535	513	Ryunmei Ranka
11536	513	Stella
11537	513	Alberto
11538	513	Barain Ranka
11539	513	Baron Abel
11540	513	Beck
11541	513	Breeze
11542	513	Celia
11543	513	Datton
11544	513	Fuujin
11545	513	Fuurei
11546	513	G S D
11547	513	Gale
11548	513	Haine
11549	513	Harsen
11550	513	Hiria
11551	513	Irbek
11552	513	Kagon
11553	513	Kanna
11554	513	Keraha
11555	513	Kerun
11556	513	Lang
11557	513	Leon
11558	513	Linus
11559	513	Mintai
11560	513	Ophelia
11561	513	Orca
11562	513	Pinosh
11563	513	Raika
11564	513	Roger
11565	513	Roxanne
11566	513	Roxy
11567	514	Cao Cao
11568	514	Liu Bei
11569	514	Xiahou Dun
11570	514	Xu Chu
11571	515	Agnes Mone
11572	515	Buruberiusa
11573	515	Charlotte Ferelle
11574	515	Francoise Dupont
11575	515	Kapuchinousa
11576	515	Shirousa
11577	515	Sophia Cherbourg
11578	515	Sutoroberiusa
11579	515	Aomimiusa
11580	515	Aousa
11581	515	Bernard Cherbourg
11582	515	Buchiusa
11583	515	Butler Diya
11584	515	Hanausa
11585	515	Komugiusa
11586	515	Kurousa
11587	515	Maroon Debushan
11588	515	Mintousa
11589	515	Momousa
11590	515	Pandausa
11591	515	Pierre Jeunet
11592	515	Queen Aaru
11593	515	Queen Sucre
11594	515	Rateusa
11595	515	Rosary Cherbourg
11596	516	Mashiro Mito
11597	516	Ameri Kawai
11598	516	Mifuyu Kisaragi
11599	516	Nue
11600	516	Yumina Takanashi
11601	516	Genzou Kawai
11602	516	Sankurou Kaname
11603	516	Yuudou Mito
11604	516	Yuuri Mito
11605	517	Octavia
11606	517	Morgan
11607	517	Limwris
11608	517	Riannon
11609	517	Arawn
11610	517	Ermin
11611	517	Llyr
11612	517	Rathy
11613	517	Taliesin
11614	517	Arthur
11615	517	Epona
11616	517	Gaius
11617	517	Lidia
11618	517	Ogam
11619	518	Mimi Kitagami
11620	518	Rika Sakashita
11621	518	Arisa Yukishita
11622	518	Anju Sano
11623	518	Ao Nishizaki
11624	518	Himeka Hoshino
11625	518	Kaho Harui
11626	518	Karen Himeno
11627	518	Namito Nagumo
11628	518	Nanoka Toda
11629	518	Rei Kenzaki
11630	518	Rika Sakashita (ganguro)
11631	518	Sein Kouzuki
11632	518	Temotemo
11633	518	Ushio Toujou
11634	518	Yuusaku Toono
11635	519	Selvaria Bles
11636	519	Alicia Melchiott
11637	519	Edy Nelson
11638	519	Isara Gunther
11639	519	Marina Wulfstan
11640	519	Welkin Gunther
11641	519	Brigitte 'Rosie' Stark 
11642	519	Susie Evans
11643	519	Eleanor Varrot 
11644	519	Ramal Valt
11645	519	Zaka
11646	519	Aisha Neumann
11647	519	Berthold Gregor
11648	519	Emile Bielert
11649	519	Faldio Landzaat
11650	519	Homer Peron
11651	519	Irene Ellet
11652	519	Jann Walker
11653	519	Karl Landzaat
11654	519	Largo Potter
11655	519	Maximilian
11656	519	Oscar Bielert
11657	519	Radi Jaeger
11658	520	Hitagi Senjougahara
11659	520	Shinobu Oshino
11660	520	Karen Araragi
11661	520	Mayoi Hachikuji
11662	520	Nadeko Sengoku
11663	520	Tsukihi Araragi
11664	520	Suruga Kanbaru
11665	520	Koyomi Araragi
11666	520	Tsubasa Hanekawa
11667	520	Meme Oshino
11878	522	Fumi Manjoume
11879	522	Akira Okudaira
11880	522	Ayako Kawasaki
11881	522	Chizu Hanashiro
11882	522	Kaori Ueno
11883	522	Kyouko Ikumi
11884	522	Shinako Sugimoto
11885	522	Yasuko Sugimoto
11886	522	Youko 'Pon-chan' Hon`atsugi
11887	522	Akio Manjoume
11888	522	Chie Sugimoto
11889	522	Hanae
11890	522	Kaori Miura
11891	522	Kazusa Sugimoto
11892	522	Kou Sawanoi
11893	522	Kuri Sugimoto
11894	522	Masanori Kagami
11895	522	Misako 'Yassan' Yasuda
11896	522	Miwa 'Mogii' Motegi
11897	522	Sakiko Okudaira
11898	522	Shinobu Okudaira
11899	522	Yoshie Manjoume
11900	522	Yoshimichi Okudaira
11901	523	Alphard Alshaya
11902	523	Canaan
11903	523	Hakkoo
11904	523	Yunyun
11905	523	Liang Qi
11906	523	Maria Oosawa
11907	523	Minoru Minorikawa
11908	523	Natsume
11909	523	Santana
11910	523	Cummings
11911	523	Nene
11912	524	Chiara Farina
11913	524	Ally Connolly
11914	524	Dr. Aimee Carr
11915	524	Hannah Weber
11916	524	Homi Nandie
11917	524	Juno
11918	524	Ren Karas
11919	524	Rodney Ford
11920	524	Tom Benson
11921	525	Kuran Shunt
11922	525	Plug Cryostat
11923	525	Reika Galvini
11924	525	Arresta Blanket
11925	525	Bloody Celica
11926	525	Hakone Oumi
11927	525	Tenchou
11928	525	Iono Tomogana
11929	525	Maako
11930	525	Rona Elmo
11931	525	Sokko
11932	525	Chiiko
11933	525	Pulse Trans
11934	525	Sento Oumi
11935	525	Sweetie Milly
11936	525	Rinko
11937	525	Taako
11938	526	Miyabi Oomichi
11939	526	Tomokane
11940	526	Chikako Awara
11941	526	Homura
11942	526	Kisaragi Yamaguchi
11943	526	Mayumi Usami
11944	526	Miki Noda
11945	526	Mizubuchi
11946	526	Namiko Nozaki
11947	526	Sasamoto
11948	526	Takuma Sotoma
11949	526	Uozumi
11950	526	Yoshikawa
11981	528	Russia (Ivan Braginsky)
11982	528	England (Arthur Kirkland)
11983	528	North Italy (Feliciano Vargas)
11984	528	The United States of America (Alfred F. Jones)
11985	528	Canada (Matthew Williams)
11986	528	Japan (Kiku Honda)
11987	528	Poland (Feliks Łukasiewicz)
11988	528	Prussia (Gilbert Beilschmidt)
11989	528	Germany (Ludwig)
11990	528	China (Yao Wang)
11991	528	South Italy/Romano (Lovino Vargas)
11992	528	Finland (Tino Väinämöinen)
11993	528	Greece (Heracles Karpusi)
11994	528	Hungary (Elizaveta Hedervary)
11995	528	Sealand (Peter Kirkland)
11996	528	Switzerland (Vash Zwingli)
11997	528	Belarus (Natalia Arlovskaya)
11998	528	Iceland (Emil Steilsson)
11999	528	Denmark (Mathias Køhler)
12000	528	France (Francis Bonnefoy)
12001	528	Spain (Antonio Fernandez Carriedo)
12002	528	Australia 
12003	528	Latvia (Raivis Galante)
12004	528	Lithuania (Toris Laurinaitis)
12005	528	Holy Roman Empire
12006	528	Norway (Lukas Bondevik)
12007	528	Sweden (Berwald Oxenstierna)
12008	528	Austria (Roderich Edelstein)
12009	528	Chibiromano 
12010	528	Hong Kong (Wang Jia Long)
12011	528	Liechtenstein (Lili Zwingli)
12012	528	Turkey (Sadiq Adnan)
12013	528	Ukraine (Yekaterina Braginskaya)
12014	528	Chibitalia
12015	528	Egypt (Gupta Muhammad Hassan)
12016	528	Seychelles
12017	528	The Netherlands
12018	528	 Taiwan (Xiao Mei)
12019	528	Bulgaria
12020	528	Chibi Prussia
12021	528	Germania
12022	528	South Korea (Im Yong Soo)
12023	528	Belgium
12024	528	Chibi England
12025	528	Chibi Japan
12026	528	Estonia (Eduard von Bock)
12027	528	Romania
12028	528	Scotland (Allistor Kirkland)
12029	528	Chibi America
12030	528	Chibi Austria
12031	528	Chibi France
12032	528	Chibi Switzerland
12033	528	New Zealand
12034	528	Roma Antiqua
12035	528	Turkish Republic of Northern Cyprus
12036	528	Chibi Lithuania
12037	528	Chibi Ukraine
12038	528	Cuba
12039	528	India
12040	528	Thailand
12041	528	Wales (Dylan Kirkland)
12042	528	Chibi Hungary
12043	528	Cyprus
12044	528	Kugelmugel
12045	528	Ladonia
12046	528	Macau
12047	528	Molossia
12048	528	Northern Ireland (Cailean Kirkland-O'Hara)
12049	528	Picardy
12050	528	Seborga
12051	528	Cameroon
12052	528	Hutt River
12053	528	Joan of Arc
12054	528	Monaco
12055	528	Osaka
12056	528	Tony
12057	528	Vietnam
12058	528	Wy
12059	529	Kana Nakamachi
12060	529	Mika Kujiin
12061	529	Saki Amano
12062	529	Fumi
12063	529	Haruka Nishida
12064	529	Marimo
12065	529	Ohtsuka-san
12066	529	Yume Kitaoka
12067	529	Yuuki Minami
12068	529	Bunta
12069	529	Hinata Azuma
12070	529	Kaniko Echizen
12071	529	Nao
12072	530	Karasubon
12073	530	Kobou
12074	530	Kuruneko Yamato 
12075	530	Miwa no Mon-san
12076	530	Poko
12077	530	Tomekichi
12078	531	Yumiko Christina Ichinose
12079	531	Koyomi Morishita
12080	531	Kaho Sakazaki 
12081	531	Misa Anehara
12082	531	Soushirou Anehara
12312	539	Warin
12211	533	Eve Neuschwanstein
12212	533	Set
12213	533	Mio
12214	533	Kuchinashi
12215	533	Aruka Schild
12216	533	Adam Blade
12217	533	Disk
12218	533	Adam Arclight
12219	533	Setsuna
12220	533	Kurumi
12221	533	Solva
12222	533	Misaki
12223	533	Uten
12224	533	Yamada Nadeshiko
12225	533	Honoka
12226	533	Kafka
12227	533	Kana
12228	533	Kasumi Ogiha
12229	533	Momiji Teruyama
12230	533	Nanami
12231	533	Natsuki
12232	533	Primaria
12233	533	Riru Roukakuji
12234	533	Saten
12235	533	Yua
12236	533	Bakuu
12237	533	Cruz Schild
12238	533	Gido
12239	533	Gin Rikudo
12240	533	Ishiyama
12241	533	Kyouji Kannazuki
12242	533	Yuuma Koutarou
12243	533	Zakard
12244	534	Sylvia Van Hossen
12245	534	Charlotte Hazelrink
12246	534	Yuu Fujikura
12247	534	Seika Houjouin
12248	534	Ayano Kaneko
12249	534	Haruhiko Nezu
12250	534	Maria Van Hossen
12251	534	Arlfred
12252	534	Erika Takezono
12253	534	Kobayashi Kanae
12254	534	Teppei Arima
12255	534	Vincent Van Hossen
12256	534	Hartmann Bezelheim
12257	534	Isshin Arima
12258	534	Josephine
12259	534	Mr. Todomura
12260	534	Teppei's Father
12261	535	Fumie Kotozuka
12262	535	Mihoshi Akeno
12263	535	Hime Makita
12264	535	Masashi Edogawa
12265	535	Saku Ooyagi
12266	535	Sayo Yarai
12267	535	Takeyasu Roma
12268	536	Holo
12269	536	Kraft Lawrence
12270	536	Fermi Amati
12271	536	Dian Rubens
12272	536	Diana's messenger
12273	536	Adele Cole
12274	536	Eu Lanto
12275	536	Fleur / Abe Boland
12276	536	Ghe Batos
12277	536	Harold Eklund
12278	536	Kolker Kues
12279	536	Mark Cole
12280	536	Rigoro Deidre
12281	536	Weiz
12282	536	Helena
12283	536	Lutz Eringin
12284	536	Merta
12285	536	Monogoi
12286	537	Anna Curtland
12287	537	Kochou Kikusaka
12288	537	Kyouko Sakurami
12289	537	Tamaki Ishigaki
12290	537	Yuki Souya
12291	537	Akiko Ogasawara
12292	537	Koume Suzukawa
12293	537	Noe Kawashima
12294	537	Noriko Owari
12295	537	Shizuka Tsukubae
12296	537	Tomoe Tsukubae
12297	538	Mari Kusakabe
12298	538	Aya Kawasaki
12299	538	Hina Kusakabe
12300	538	Itsuki Kawashima
12301	538	Kento Nonomiya
12302	538	Masami Onozawa
12303	538	Mayu
12304	538	Megu
12305	538	Mirai Onozawa
12306	538	Seiji Onozawa
12307	538	Yuuki Onozawa
12308	539	Urin
12309	539	Kanon Miyamori
12310	539	Marin
12311	539	Sam
12313	539	Ichikawa
12314	539	Kojima
12315	539	Matsumoto
12316	539	Miyako Miyamori
12317	539	Ooshima
12318	539	Suzuki
12319	540	Beatrice
12320	540	Battler Ushiromiya
12321	540	Frederica Bernkastel
12322	540	Lucifer Of Pride
12323	540	Sakutarou
12324	540	Belphegor of Sloth
12325	540	Kanon
12326	540	Asmodeus of Lust
12327	540	Beelzebub of Gluttony
12328	540	George Ushiromiya
12329	540	Juuza Amakusa
12330	540	Kinzo Ushiromiya
12331	540	Lambdadelta
12332	540	Rosa Ushiromiya
12333	540	Shanon
12334	540	Ange Ushiromiya
12335	540	Chiester 00
12336	540	Chiester 410
12337	540	Chiester 45
12338	540	Chiyo Kumasawa
12339	540	Eva Beatrice
12340	540	Eva Ushiromiya
12341	540	Gaap
12342	540	Genji Ronoue
12343	540	Goat Butlers
12344	540	Hideyoshi Ushiromiya
12345	540	Jessica Ushiromiya
12346	540	Kasumi Sumadera
12347	540	Krauss Uchiromiya
12348	540	Kyrie Ushiromiya
12349	540	Leviathan of Envy
12350	540	Mammon of Greed
12351	540	Maria Ushiromiya
12352	540	Natsuhi Ushiromiya
12353	540	Ronove
12354	540	Rudolf Ushiromiya
12355	540	Satan of Wrath
12356	540	Terumasa Nanjo
12357	540	Toshiro Gouda
12358	540	Virgilia
12359	541	Michi
12360	541	Joe
12361	541	Operetta 
12362	541	Takeshi 
12363	541	Cal 
12364	541	Shisu 
12365	541	VS-jii-san 
12366	542	Kiri Komori
12367	542	Nozomu Itoshiki
12368	542	Kafuka Fuura
12369	542	Tarou Maria Sekiutsu
12370	542	Chiri Kitsu
12371	542	Meru Otonashi
12372	542	Mikoto Itoshiki
12373	542	Abiru Kobushi
12374	542	Harumi Fujiyoshi
12375	542	Matoi Tsunetsuki
12376	542	Nami Hito
12377	542	Ai Kaga
12378	542	Chie Arai
12379	542	Jun Kudou
12380	542	Kaere Kimura
12381	542	Majiru Itoshiki
12382	542	Mayo Mitama
12383	543	Misuzu Kusakabe 
12384	543	Shiori Momono
12385	543	Kaori Natsuki
12386	543	Lieselotte Werckmeister
12387	543	Takahisa Tajima
12388	543	Yuka Minase 
12389	543	Kakeru Satsuki 
12390	543	Kukuri Tachibana
12391	543	Misao Kusakabe
12392	543	Yukiko Hirohara
12393	543	Saeko Akamine
12394	543	Tadashi Teruya
12395	544	Mikoto Misaka
12396	544	Kuroko Shirai 
12397	544	Ruiko Saten
12398	544	Kazari Uiharu
12399	544	Last Order
12400	544	Kakine Teitoku
12401	544	Sogiita Gunha
12402	545	Riko Mikogami
12403	545	Kanon Hatori
12404	545	Nagisa Mikogami
12405	545	Rimu Mikogami
12406	545	Haruka Mikogami
12407	545	Ken Inomata
12408	545	Pulse Ryuudou
12409	545	Tamao Kijima
12410	545	Tamotsu Mikogami
12443	547	Aki Kitsutaka
12444	547	Hiwako Torishima
12445	547	Naotaka Natsume
12446	547	Tokiya Kagayaki
12447	548	Hideto Suzuri
12448	548	Magisa
12449	548	Yuuki Momose
12450	548	Clackey Ray
12451	548	Dan Bashin
12452	548	Kajitsu Momose
12453	548	Kenzo Hyodo
12454	548	Mai Viore
12455	548	Zungurii
13574	577	Honey
12666	550	Yozo Oba
12667	550	Sensei 
12668	550	Kandata
12669	550	Melos
12670	550	Akiko 
12671	550	Big man 
12672	550	Dionysius 
12673	550	Horiki
12674	550	Joshima Kiichi
12675	550	K
12676	550	King
12677	550	Madam
12678	550	Melos' Sister 
12679	550	Mitsuki
12680	550	Ojousan 
12681	550	Sayo
12682	550	Serinentius 
12683	550	Shigeko
12684	550	Shigemaru 
12685	550	Shizuko
12686	550	Takada
12687	550	Tsuneko 
12688	550	Widow
12689	550	Yoshihide
12690	550	Yoshiko
12691	551	Hei
12692	551	Kiko Kayanuma
12693	551	Mina Hazuki
12694	551	Misaki Kirihara
12695	551	Suou Pavlichenko
12696	551	July
12697	551	Gai Kurasawa
12698	551	Kanami Ishizaki
12699	551	April
12700	551	August 7
12701	551	Shion Pavlichenko
12702	551	Tanya Akulova
12703	551	Ariel & Berenice
12704	551	Asako Makimiya
12705	551	Elena
12706	551	Genma Shizume
12707	551	Goran
12708	551	Gorou Kobayashi
12709	551	Ilya Sokolov
12710	551	John Smith
12711	551	Lebanon
12712	551	Madame Oreille
12713	551	Mayuko
12714	551	Michiru
12715	551	Mikhail Pavlichenko
12716	551	Nika Lobanov
12717	551	Norio
12718	551	Petya
12719	551	Repnin
12720	551	Rikako
12721	551	Sasha
12722	551	Youko Sawasaki
12723	551	Yuusuke Saitou
12724	552	Erza Scarlet
12725	552	Lucy Heartfilia
12726	552	Natsu Dragneel
12727	552	Gray Fullbuster
12728	552	Mirajane Strauss 
12729	552	Jellal Fernandes
12730	552	Gajeel Redfox
12731	552	Juvia Lockser
12732	552	Wendy Marvell 
12733	552	Cana Alberona
12734	552	Levy McGarden
12735	552	Virgo
12736	552	Loke
12737	552	Aries
12738	552	Happy
12739	552	Mystogan
12740	552	Aquarius
12741	552	Lisanna Strauss
12742	552	Laxus Dreyar
12743	552	Mavis Vermilion
12744	552	Leo
12745	552	Elfman Strauss
12746	552	Freed Justine
12747	552	Ultear Milkovich
12748	552	Zeref
12749	552	Erza Knightwalker
12750	552	Igneel
12751	552	Sherry Blendy
12752	552	Ur
12753	552	Alzack Connell
12754	552	Simon
12755	552	Layla Heartfilia
12756	552	Lyon Vastia
12757	552	Millianna
12758	552	Pantherlily
12759	552	Rogue Cheney
12760	552	Zancrow
12761	552	Bisca Connell
12762	552	Gildarts Clive
12763	552	Kagura Mikazuchi
12764	552	Makarov Dreyar
12765	552	Meldy
12766	552	Michelle Lobster
12767	552	Yukino Aguria
12768	552	Bickslow
12769	552	Capricorn
12770	552	Carla
12771	552	Chelia Blendy
12772	552	Hibiki Lates
12773	552	Laki Olietta
12774	552	Plue
12775	552	Bisca Mulan
12776	552	Cobra
12777	552	Evergreen
12778	552	Gemini
12779	552	Karen Lilica
12780	552	Sting Eucliffe
12781	552	Taurus
12782	552	Scorpio
12783	552	Cancer
12784	552	Ikaruga
12785	552	Jet / Sarusuke
12786	552	Lyra
12787	552	Reedus Jonah
12788	552	Wendy Marvell
12789	552	Flare Corona 
12790	552	Lucy Ashley 
12791	552	Angel
12792	552	Jenny Realight
12793	552	Macao Conbolt
12794	552	Mary Hughes
12795	552	Natsu Dragion
12796	552	Alzack Connell
12797	552	Aria
12798	552	Asuka Connell
12799	552	Kinana
12800	552	Midnight
12801	552	Romeo Conbolt
12802	552	Sagittarius
12803	552	Wally Buchanan
12804	552	Warren Rocko
12805	552	Azuma 
12806	552	Jura Neekis
12807	552	Lector
12808	552	Minerva
12809	552	Ren Akatsuki
12810	552	Frosch
12811	552	Rufus Lore
12812	552	Bluenote Stinger
12813	552	Enno
12814	552	Hoteye
12815	552	Iwan Dreyar
12816	552	Lahar
12817	552	Libra
12818	552	Sho
12819	552	Aceto
12820	552	Bacchus Groh
12821	552	Droy
12822	552	Horologium
12823	552	Kurohebi 
12824	552	Obra
12825	552	Orga Nanagear
12826	552	Racer
12827	552	Risley Law
12828	552	Sue
12829	552	Gray Surge
12830	552	Rustyrose
12831	552	Nab Lasaro
12832	552	Nalpudding
12833	552	Porlyusica
12834	552	Bob
12835	552	Coco (Earth Land)
12836	552	Dobengal
12837	552	Eve Tearm
12838	552	Goldmine
12839	552	Max Alors
12840	552	Arania Web
12841	552	Beth Vanderwood 
12842	552	Daphne
12843	552	Ichiya Vandalay Kotobuki
12844	552	Rob
12845	552	Totomaru
12846	552	Crux
12847	552	Toby Horhorta
12848	552	Acnologia
12849	552	Coco
12850	552	Wakaba Mine
12851	552	Celestial Spirit King
12852	552	Erigor
12853	552	Gajeel (Edolas)
12854	552	Rocker
12855	552	Semmes
12856	552	Caelum
12857	552	Mest Gryder
12858	552	Nobarly
12859	552	War Cry
12860	552	Yeagar
12861	552	Yuka Suzuki
12862	552	Fukuro
12863	552	Kageyama
12864	552	Katja
12865	552	Sol
12866	552	Vidaldus Taka
12867	552	Alexei
12868	552	Pyxis
12869	552	Chico C Hammitt 
12870	552	Roubaul
12871	552	Lulu
12872	552	Bobo
12873	552	Moka
12874	552	Mickey Chickentiger
12875	552	Org
12876	552	Vanish Brothers
12877	552	Brain
12878	552	Nadi
12879	552	Shitou Yajima
12880	552	Vijeeter Ecor
12881	552	Droy (Edolas)
12882	552	Hades
12883	552	Hughes
12884	552	Jet (Edolas)
12885	552	Jose Porla
12886	552	Nichiya
12887	552	Shagotte
12888	552	Dan Straight
12889	552	Marl
12890	552	Bora
12891	552	Duke Everlue 
12892	552	Leiji
12893	552	Lucky
12894	552	Michello
12895	552	Reedus Jonah
12896	552	Yomazu
12897	552	Angelica
12898	552	Banaboster
12899	552	Belno
12900	552	Boze
12901	552	Byro Cracy
12902	552	Jude Heartfilia
12903	552	Kain Hikaru
12904	552	Mato
12905	552	Ooba Babasaama
12906	552	Rayule
12907	552	Usagi
12908	552	Byard
12909	552	Byro
12910	552	Count Balsamico
12911	552	Faust
12912	552	Gato
12913	552	Guran Doma
12914	552	Hargeon Magic Shop Owner
12915	552	Jackpot
12916	552	Joy Fullbun
12917	552	Karacka
12918	552	Kawazu
12919	552	Klodoa
12920	552	Krov
12921	552	Lapointe
12922	552	Niggy
12923	552	Samagui
12924	552	Sugarboy
12925	552	Sugarboy (Earth Land)
12926	552	Thibault
12927	552	Vulcan
12928	552	Wang ChanJi
12929	552	Zato
12930	552	Zoldeo
12931	552	Arcadios
12932	552	Chapati Lola
12933	552	Datong 
12934	552	Jason
12935	552	Jiemma
12936	552	Velveno
12937	552	Zekua Melon
12938	553	Sawako Kuronuma
12939	553	Shouta Kazehaya
12940	553	Ryuu Sanada
12941	553	Chizuru Yoshida
12942	553	Tooru Sanada
12943	553	Ayane Yano
12944	553	Kazuichi Arai
12945	553	Kento Miura
12946	553	Ume Kurumizawa 'Kurumi'
12947	553	Chigusa Takahashi
12948	553	Eriko Hirano
12949	553	Genji Sanada
12950	553	Haruka Katayama
12951	553	Mr. Kuronuma
12952	553	Shino
12953	553	Souichi Jounouchi
12954	553	Tomoko Endou
12955	553	Touta Kazehaya
12956	553	Yoshiyuki Arai
12957	553	Youko Kuronuma
12958	553	Yuka
12959	554	Ikaros
12960	554	Nymph
12961	554	Mitsuki Sohara
12962	554	Mikako Satsukitane
12963	554	Daedalus
12964	554	Tomoki Sakurai
12965	554	Eishiro Sugata
12966	555	Inuyasha
12967	555	Sesshomaru
12968	555	Kagome Higurashi
12969	555	Sango
12970	555	Kikyo
12971	555	Miroku
12972	555	Rin
12973	555	Shippo
12974	555	Kagura
12975	555	Koga
12976	555	Bankotsu
12977	555	Kohaku
12978	555	Kanna
12979	555	Kirara
12980	555	Naraku
12981	555	Ayame
12982	555	Jakotsu
12983	555	Ayumi
12984	555	Eri
12985	555	Izayoi
12986	555	Myoga
12987	555	Totosai
12988	555	Yura
12989	555	Bad Suikotsu
12990	555	Good Suikotsu
12991	555	Grandpa
12992	555	Nodoka Higurashi
12993	555	Renkotsu
12994	555	Ginta
12995	555	Hakkaku
12996	555	Hakudoshi
12997	555	Hojo
12998	555	Jaken
12999	555	Kaede
13000	555	Kyokotsu
13001	555	Mukotsu
13002	555	Saya
13003	555	Souta Higurashi
13004	555	Tsubaki
13005	555	Yuka
13006	556	Inuyasha
13007	556	Sesshomaru
13008	556	Kagome Higurashi
13009	556	Kikyo
13010	556	Miroku
13011	556	Rin
13012	556	Shippo
13013	556	Kagura
13014	556	Koga
13015	556	Kohaku
13016	556	Kanna
13017	556	Naraku
13018	556	Ayumi
13019	556	Eri
13020	556	Myoga
13021	556	Totosai
13022	556	Grandpa
13023	556	Ginta
13024	556	Hakkaku
13025	556	Hakudoshi
13026	556	Kaede
13027	556	Souta Higurashi
13028	557	Chizuru Minamoto
13029	557	Chizuru Minamoto 
13030	557	Nozomu Ezomori 
13031	557	Nozomu Ezomori
13032	557	Ai Nanao
13033	557	Akane Asahina
13034	557	Kiriko Takana
13035	557	Minori Mitama
13036	557	Ren Nanao
13037	557	Iku Sahara
13038	557	Mio Osakabe
13039	557	Tayura Minamoto
13040	557	Yuki Sasamori
13041	557	Kouta Oyamada
13042	557	Omi Kiriyama
13043	557	Ryusei Kumada
13044	557	Takao Yatsuka
13045	558	Kobato Hanato
13046	558	Chiho Mihara
13047	558	Chise Mihara
13048	558	Chitose Mihara
13049	558	Hiroyasu Ueda
13050	558	Kiyokazu Fujimoto
13051	558	Sayaka Okiura
13052	558	Ginsei
13053	558	Kazuto Okiura
13054	558	Kohaku
13055	558	Marina
13056	558	Genko
13057	558	Ioryogi
13058	558	Keita Yoshimura
13059	558	Miyata
13060	558	Naomi
13061	558	Natsuki Mizuhashi
13062	558	Shuuichirou Kudou
13063	558	Takashi Doumoto
13064	558	Toshihiko
13065	558	Yoshio
13066	558	Yukari
13067	558	Yukino Morikawa
13068	558	Yumi Oomura
13069	558	Yuzuru
13070	558	Zuishou
13071	559	Lag Seeing
13072	559	Gauche Suede
13073	559	Niche
13074	559	Jiggy Pepper
13075	559	Noir
13076	559	Sylvette Suede
13077	559	Aria Link
13078	559	Largo Lloyd
13079	559	Roda
13080	559	Roda (dog form)
13081	559	Signal
13082	559	Steak
13083	559	Zazie Winters
13084	559	Connor Kluff
13085	559	Signales
13086	559	Dr. Thunderland Jr.
13087	559	Gus
13088	559	Lawrence 
13089	559	Nelli
13090	559	Nero
13091	560	Mahoro Andou
13092	560	Saori Shikijo
13093	560	Guri
13094	560	Minawa Andou
13095	560	Miyuki Sakura
13096	560	Tou Ryuga
13097	560	 Ryo Misato
13098	560	Chizuko Oe
13099	560	Eimi Shiina
13100	560	Feldrance
13101	560	Harune Sakura
13102	560	Hayato Daimon
13103	560	Kiyomi Kawahara
13104	560	Masa
13105	560	Minato Hokaze
13106	560	Mizutani
13107	560	Natsune Sakura
13108	560	Nobu
13109	560	Professor Mephlis
13110	560	Red Headed Andou
13111	560	Rin Todoriki
13112	560	Sera
13113	560	Slash
13114	560	Slipheed
13115	560	Suguru Misato
13116	560	Tiazo Sakura
13117	560	Toshiya Hamaguchi
13118	560	Yoshihiko Gunji
13119	560	Yukie Sakura
13120	561	Rintaro Shinjuku
13121	561	Akari
13122	561	Izayoi Tsukishima
13123	561	Airi
13124	561	Fuku Nishi-shinjuku-gochome
13125	561	Fumi Roppongi
13126	561	Gaku Yoyogi
13127	561	Iku Shiodome
13128	561	Itsumi Ryogoku
13129	561	Reiji Higashi-shinjuku
13130	561	Remu Iidabashi
13131	561	Saki Tocho
13132	561	Shasho
13133	561	Tetsuya Daimon
13134	561	Chinatsu
13135	561	Hajime Shinjuku-nishiguchi
13136	561	Himeno
13137	561	Keita Sakuraba
13138	561	Mai
13139	561	Makoto Kogure
13140	561	Mayu
13141	561	Michi
13142	561	Mirai
13143	561	Noriko
13144	561	Saburo Toshimaen
13145	561	Tokugawa
14302	602	Opal
13274	563	Hajime Yasaka
13275	563	Hideo "Gurasan" Murata
13276	563	Jun Kamigamo
13277	563	Kaja Bergmann
13278	563	Kanako Yamazaki
13279	563	Master (Sayaka)
13280	563	Sayoko Arashiyama
13281	563	Yayoi Fushimi
13282	564	Haruka Nogizaka
13283	564	Mika Nogizaka
13284	564	Nobunaga Asakura
13285	564	Yuukari Kamishiro
13286	564	Yuuto Ayase
13287	564	Milan Himemiya
13288	564	Nanami Nanashiro
13289	564	Ruko Ayase
13290	564	Shiina Amamiya
13291	564	Shiino
13292	564	Touka Tennouji
13293	564	Alistia Rein
13294	564	Ayame Rokujou
13295	564	Eri Tougasaki
13296	564	Gentou Nogizaka
13297	564	Haruna
13298	564	Hazuki Sakurazaka
13299	564	Hikari Hatsuse
13300	564	Iwai Hinasaki
13301	564	Juri Rokujou
13302	564	Koayu Nagikawa
13303	564	Maria Yukinohara
13304	564	Minamo Kusumoto
13305	564	Miruka
13306	564	Miu Fujinomiya
13307	564	Mudou Koinugawa
13308	564	Nozomi Kobayakawa
13309	564	Rio Munakata
13310	564	Sara Rokujou
13311	564	Yayoi Kayahara
13312	565	Kaede Mizuno
13313	565	Kanako Sumiyoshi
13314	565	Akari Kirishima
13315	565	Kotone Kirishima
13316	565	Chizuru Mochizuki
13317	565	Nagi Ichinose
13318	565	Junpei Kousaka
13319	565	Noir
13320	565	Suzu Kousaka
13321	565	Hinako Hashimoto
13322	565	Kumaneko
13323	565	Nyamsus
13324	565	Shizue Kousaka
13325	565	Tama
13326	565	Chatora
13327	565	Haruhiko Endou
13328	565	Josephine
13329	565	Keizou Kirishima
13330	565	Ken Itou
13331	565	Komasa
13332	565	Kouta Kawamura
13333	565	Micchi
13334	566	Hikari Tojo
13335	566	Ichigo Tamura
13336	566	Miyuki Asami
13337	566	Momoka Ono
13338	566	Cappy
13339	566	Kyosuke Hikami
13340	566	Yuuji Tamura
13341	567	Kan'u Unchou (Aisha)
13342	567	Ryofu
13343	567	Sousou
13344	567	Sonshoko
13345	567	Kouchuu Kanshou (Shion)
13346	567	Ryuubi Gentoku/ Toka
13347	567	Shokatsuryou Komei (Shuri)
13348	567	Bachou Mouki (Sui)
13349	567	Chouhi Yokutoku (RinRin)
13350	567	Bunshuu
13351	567	Chou'un Shiryu (Sei)
13352	567	Chouryou
13353	567	Sonken
13354	567	Kayuu
13355	567	Junniku
13356	567	Kakouen
13357	567	Kakouton
13358	567	Kaku Bunwa
13359	567	Rikuson
13360	567	Shoukyou
13361	567	Gakushin Bunken (Nagi)
13362	567	Ganryou
13363	567	Kakuka Houkou
14303	602	Prase
13364	567	Kannei
13365	567	Kousonsan
13366	567	Shuuyu Koukin (Meirin)
13367	567	Sonsaku Hakufu
13368	567	Chinkyuu Koudai (Nenene)
13369	567	Choukun (Nanano)
13370	567	Daikyou
13371	567	Enshou Honsho (Reiha)
13372	567	Houtou (Hinari)
13373	567	Kyocho
13374	567	Riri
13375	567	Riten Mansei (Maou)
13376	567	Teni
13377	567	Toutaku
13378	567	Batai (Tanpopo)
13379	567	Chouryou (Renhou)
13380	567	Enjutsu Kouro (Miu)
13381	567	Tei'iku Chuutoku (Fuu)
13382	567	Ukin Bunsoku (Sawa)
13383	567	Chouhou (Chiihou)
13384	567	Choukaku (Tenhou)
13385	567	Chousen
13386	568	Ikuto Tsukiyomi
13387	568	Amu Hinamori
13388	568	Yoru
13389	568	Kukai Souma
13390	568	Utau Hoshina
13391	568	Nadeshiko Fujisaki
13392	568	Miki
13393	568	Ran
13394	568	Tadase Hotori
13395	568	Rima Mashiro
13396	568	Yaya Yuiki
13397	568	Il
13398	568	Kiseki
13399	568	Pepe
13400	568	Su
13401	568	Tsukasa Amakawa
13402	568	Dia
13403	568	Hikaru Ichinomiya
13404	568	Temari
13405	568	Ami Hinamori
13406	568	El
13407	568	Hotaru
13408	568	Kairi Sanjo
13409	568	Kusukusu
13410	568	Lulu de Morcerf
13411	568	Rhythm
13412	568	Rikka Hiiragi
13413	568	Yukari Sanjo
13414	569	Kurimu Sakurano
13415	569	Mafuyu Shiina
13416	569	Chizuru Akaba
13417	569	Ken Sugisaki
13418	569	Minatsu Shiina
13419	569	Elise Toudou
13420	569	Lilicia Toudou
13421	569	Satori Magiru
13422	569	Yoshiki Nakameguro
13423	569	Kanade Miyashiro
13424	570	Arkit Chroma
13425	570	Noloty Maruchie
13426	570	Volken Macmani
13427	570	Alme Noten
13428	570	Chacoly Cocotte
13429	570	Colio Tonies
13430	570	Enrique Bishilie
13431	570	Feekiee Quen
13432	570	Ganbanzel Groph
13433	570	Greihn
13434	570	Hamyuts 
13435	570	Hyoue Janfus
13436	570	Iea Mira
13437	570	Ireia Kitty
13438	570	Kayas 
13439	570	Kyasariro Totona
13440	570	Lascall Othello
13441	570	Luimon Mahaton
13442	570	Mattalast Balory
13443	570	Minth Chesain
13444	570	Mirepoch Finder
13445	570	Mokkania Fleur
13446	570	Niiniu
13447	570	Qumola 
13448	570	Relia Bookwatt
13449	570	Renas Fleur
13450	570	Risley Charon
13451	570	Ronkeny Loinemoney
13452	570	Ruruta Coozancoona
13453	570	Ruweek Hartain
13454	570	Sassali
13455	570	Segal Crekessa
13456	570	Shiron Byacornise
13457	570	Winkeny Bizee
13458	570	Wizahk 
13459	570	Yukizona
13460	570	Yuri
13461	570	Zatoh Rondohoon
13462	571	Aura Shurifon
13463	571	Lashara Earth XXVIII
13464	571	Yukine Mare
13465	571	Doll
13466	571	Kenshi Masaki
13467	571	Mexiah Furan
13468	571	Chiaia Furan
13469	571	Flora Nanadan
13470	571	Emera
13471	571	Koro
13472	571	Lithia Po Chiina
13473	571	Vanessa
13474	571	Wahanly Shume
13475	571	Angela
13476	571	Babalun Mesut
13477	571	Ceres Taito
13478	571	Dagmyer Mest
13479	571	Hannah
13480	571	Lapis Lars
13481	571	Mahya
13482	571	Maria Nanadan
13483	571	Naua Furan
13484	571	Neizai One
13485	571	Principal
13486	571	Ulyte Mesut
13487	572	General Vamp 
13488	572	Kayoko Uchida
13489	572	Sunred 
13490	572	Ant Killer 
13491	572	Armour Tiger
13492	572	Ceiling-Dwelling Monster 
13493	572	Devil Cat
13494	572	Geiras 
13495	572	General Hengel 
13496	572	Godom
13497	572	Hell Wolf
13498	572	Khamenman 
13499	572	Medaleo
13500	572	P-chan Kai 
13501	572	Sodorrah
13502	572	Taiza
13503	572	Taremimi 
13504	572	Usacots 
13505	573	Cecily Cambell
13506	573	Aria
13507	573	Lisa
13508	573	Elsa
13509	573	Luke Ainsworth
13510	573	Charlotte E Firobisher
13511	573	Lisa Oakwood
13512	573	Margot
13513	573	Siegfried
13514	573	Doris
13515	573	Evadne
13516	573	Hugo Housman
13517	573	Penelope
13518	574	Ichiro Irabu
13519	574	Eiyu Tsuda
13520	574	Fukuicchi 
13521	574	Hiromi Yasukawa
13522	574	Junichi Hoshiyama
13523	574	Kohei Yamashita
13524	574	Mayumi
13525	574	Mitsuo Tanabe
13526	574	Seiji Ino
13527	574	Shinichi Bando
13528	574	Tatsurou Ikeyama
13529	574	Tetsuya Taguchi
13530	574	Yoshio Iwamura
13531	574	Yuta Tsuda
13532	575	Sumika Murasame
13533	575	Manaka Akemiya
13534	575	Tomoe Hachisuka
13535	575	Ushio Kazama
13536	575	Akemi Yamasaki
13537	575	Aki Sekidera
13538	575	Chizuka Nishikigi
13539	575	Isuzu Akitsuki
13540	575	Kako Furutaka
13541	575	Kasuga Wakaba
13542	575	Kiyori Torioi
13543	575	Konomi
13544	575	Miyako Taema
13545	575	Sayaka
13546	575	Seito Joshi
13547	575	Azusa Aoi
13548	575	Chouno
13549	575	Masaki Akemiya
13550	575	Noe Hayasumi
13551	575	Norio Kazama
13552	575	Sumika's Brothers
13553	575	Tenkai Murasame
13554	575	Teruaki
13555	576	Kang Joon-Sang / Lee Min-Hyeong 
13556	576	Jeong Yoo-jin
13557	576	Jin Seok
13558	576	Kang Mee-hi
13559	576	Kim Sang-Hyeok 
13560	576	Kim Yeonhee 
13561	576	Oh Che-lin 
13562	576	Park Jong-ho 
13563	576	Professor Kim Jin-woo 
13564	576	Supervisor Min 
13565	576	Yong Guk 
13566	577	Satsuki Hanabusa
13567	577	Andy
13568	577	Cafe
13569	577	Henri Lucas
13570	577	Almond
13571	577	Black Cherry
13572	577	Cherry
13573	577	Chocolat
13575	577	Ikue Nakajima
13576	577	Ken Ichimatsu
13577	577	Makoto Kashino
13578	577	Miya Koshiro
13579	577	Orange
13580	577	Ringo Koizumi
13581	577	Sennosuke Andou
13582	577	Sugar
13583	577	Ayu
13584	577	Court Pâtissiere B
13585	577	Hanabusa's Dad
13586	577	Hitomi
13587	577	Ichigo Amano
13588	577	Kyouko Amano
13589	577	Marie Tennouji
13590	577	Marron
13591	577	Mayu
13592	577	Miki Mori
13593	577	Momoe Andou
13594	577	Natsume Amano
13595	577	Peach
13596	577	Reiya Shima
13597	577	Rumi Katou
13598	577	Ryou Saeki
13599	577	Sully
13600	577	Vanilla
13601	577	Yomogi
13602	577	Amelie
13603	577	Anouk
13604	577	Antonio Vangelis
13605	577	Apprentice Chef A
13606	577	Azuki Tachibana
13607	577	Basil
13608	577	Caramel
13609	577	Chairman Moriyama
13610	577	Chef
13611	577	Chinatsu Sayama
13612	577	Cinnamon
13613	577	Clara Hunt
13614	577	Court Pâtissier A
13615	577	Dabaron
13616	577	Director
13617	577	Dominique Darrieux
13618	577	Driver
13619	577	Elizabeth
13620	577	Emi Uehara
13621	577	Emma
13622	577	Erika Hayami
13623	577	Estragon
13624	577	Female Clerk
13625	577	Floor Manager
13626	577	Francois Adjani
13627	577	French Language Teacher
13628	577	Harue Kirishima
13629	577	Hikaru Amano
13630	577	Hiro-kun
13631	577	Host
13632	577	Ichita Andou
13633	577	Isabella Antonetti
13634	577	Jose Domingo
13635	577	Kanako Koizumi
13636	577	Karashima-sensei
13637	577	Kasshy
13638	577	Katie Capucine
13639	577	Kazuhiko Kirishima
13640	577	Ken’ichi Morino
13641	577	Kobayakawa
13642	577	Laurier
13643	577	Lemon Yamagishi
13644	577	Mankichi Andou
13645	577	Mantarou Kujou
13646	577	Mariko
13647	577	Marjoram
13648	577	Masayo Andou
13649	577	Matsumoto
13650	577	Michiko Amano
13651	577	Miguel Santiago
13652	577	Mika Chinen
13653	577	Mint
13654	577	Miya's Father
13655	577	Miyabi Kashino
13656	577	Monsieur Leon
13657	577	Morris
13658	577	Mother
13659	577	Muraoka
13660	577	Mylene
13661	577	Nakamura
13662	577	Narcy
13663	577	Natsuki Aragaki
13664	577	Nicolas Hayashi
13665	577	Noriko Ameya
13666	577	Nurse
13667	577	Queen of the Sweets Kingdom
13668	577	Rei Kashino
13669	577	Reiji Takigawa
13670	577	Reiko-sensei
13671	577	Ricardo Benigni
13672	577	Rie Mihara
13673	577	Rina Uehara
13674	577	Robert Blanc
13675	577	Rui Kaidou
13676	577	Ryou Amikawa
13677	577	Sakata
13678	577	Satou
13679	577	Sayuri Kanda
13680	577	Shigeru Amano
13681	577	Shigeru Yokoyama
13682	577	Shiotani
13683	577	Ushijima
13684	577	Yayoi Hanabusa
13685	577	Youko Ayukawa
13686	577	Yousuke Sakaguchi
13687	578	Felli Loss
13688	578	Layfon Wolfstein Alseif
13689	578	Savaris Qaulafin Luckens
13690	578	Dalsiena Che Matelna
13691	578	Mayshen Torinden
13692	578	Naruki Gelni
13693	578	Nina Antalk
13694	578	Queen Alsheyra Almonis
13695	578	Sharnid Elipton
13696	578	Barmeleen Swattis Norne
13697	578	Gorneo Luckens
13698	578	Harley Sutton
13699	578	Kalian Loss
13700	578	Kauntia Valmon Farnes
13701	578	Leerin Marfes
13702	578	Lintens Savoled Harden
13703	578	Mifi Rotten
13704	578	Shante Laite
13705	579	Michika Michikusa
13706	579	Main Hiiragi
13707	579	Misanga
13708	579	Shin Yasuno
13709	580	Eas
13710	580	Setsuna Higashi / Cure Passion
13711	580	Hayato Nishi
13712	580	Jeffrey
13713	580	Nayuta Kita
13714	580	Animal Yoshida
13715	580	Asou
13716	580	Ayumi Momozono
13717	580	Azukina
13718	580	Chiffon
13719	580	Chika
13720	580	Chika's Mother
13721	580	Daisuke Chinen
13722	580	Genkichi Momozono
13723	580	Gordon
13724	580	Inori Yamabuki / Cure Pine
13725	580	Juliane
13726	580	Kaoru
13727	580	Kazuki Ichijo
13728	580	Keitarou Momozono
13729	580	Kento Mikoshiba
13730	580	King
13731	580	King Waffle
13732	580	Klein
13733	580	Love Momozono / Cure Peach
13734	580	Masayasu Wakabayashi
13735	580	Miki Aono / Cure Berry
13736	580	Miyuki Chinen
13737	580	Moebius
13738	580	Nana
13739	580	Naoko Yamabuki
13740	580	Northa
13741	580	Queen
13742	580	Reika
13743	580	Remi Aono
13744	580	Shun Minami
13745	580	Soular
13746	580	Tadashi Yamabuki
13747	580	Takeshi
13748	580	Tart
13749	580	Tiramisu
13750	580	Toshiaki Kasuga
13751	580	Westar
13752	580	Yumi
13753	580	Yuuki Sawa
13784	582	Russia (Ivan Braginsky)
13785	582	England (Arthur Kirkland)
13786	582	North Italy (Feliciano Vargas)
13787	582	The United States of America (Alfred F. Jones)
13788	582	Canada (Matthew Williams)
13789	582	Japan (Kiku Honda)
13790	582	Poland (Feliks Łukasiewicz)
13791	582	Prussia (Gilbert Beilschmidt)
13792	582	Germany (Ludwig)
13793	582	China (Yao Wang)
13794	582	South Italy/Romano (Lovino Vargas)
13795	582	Finland (Tino Väinämöinen)
13796	582	Greece (Heracles Karpusi)
13797	582	Hungary (Elizaveta Hedervary)
13798	582	Sealand (Peter Kirkland)
13799	582	Switzerland (Vash Zwingli)
13800	582	Belarus (Natalia Arlovskaya)
13801	582	Iceland (Emil Steilsson)
13802	582	Denmark (Mathias Køhler)
13803	582	France (Francis Bonnefoy)
13804	582	Spain (Antonio Fernandez Carriedo)
13805	582	Australia 
13806	582	Latvia (Raivis Galante)
13807	582	Lithuania (Toris Laurinaitis)
13808	582	Holy Roman Empire
13809	582	Norway (Lukas Bondevik)
13810	582	Sweden (Berwald Oxenstierna)
13811	582	Austria (Roderich Edelstein)
13812	582	Chibiromano 
13813	582	Hong Kong (Wang Jia Long)
13814	582	Liechtenstein (Lili Zwingli)
13815	582	Turkey (Sadiq Adnan)
13816	582	Ukraine (Yekaterina Braginskaya)
13817	582	Chibitalia
13818	582	Egypt (Gupta Muhammad Hassan)
13819	582	Seychelles
13820	582	The Netherlands
13821	582	 Taiwan (Xiao Mei)
13822	582	Bulgaria
13823	582	Chibi Prussia
13824	582	Germania
13825	582	South Korea (Im Yong Soo)
13826	582	Belgium
13827	582	Chibi England
13828	582	Chibi Japan
13829	582	Estonia (Eduard von Bock)
13830	582	Romania
13831	582	Scotland (Allistor Kirkland)
13832	582	Chibi America
13833	582	Chibi Austria
13834	582	Chibi France
13835	582	Chibi Switzerland
13836	582	New Zealand
13837	582	Roma Antiqua
13838	582	Turkish Republic of Northern Cyprus
13839	582	Chibi Lithuania
13840	582	Chibi Ukraine
13841	582	Cuba
13842	582	India
13843	582	Thailand
13844	582	Wales (Dylan Kirkland)
13845	582	Chibi Hungary
13846	582	Cyprus
13847	582	Kugelmugel
13848	582	Ladonia
13849	582	Macau
13850	582	Molossia
13851	582	Northern Ireland (Cailean Kirkland-O'Hara)
13852	582	Picardy
13853	582	Seborga
13854	582	Cameroon
13855	582	Hutt River
13856	582	Joan of Arc
13857	582	Monaco
13858	582	Osaka
13859	582	Tony
13860	582	Vietnam
13861	582	Wy
13862	583	Mariya Shidou
13863	583	Dorm Mistress / Ryouchou-sensei
13864	583	Kanako Miyamae
13865	583	Matsurika Shinouji
13866	583	Maki Natsuru
13867	583	Ryuken Ishima
13868	583	Shizu Shidou
13869	583	Nanami Kiri
13870	583	Toichirou Kanae
13871	583	Yuzuru Inamori
13872	583	Ayano Enjouzi
13873	583	Ei Hitotsubashi
13874	583	Fumi Kumagai
13875	583	Honoka Tsutsui
13876	583	Mii Habutae
13877	583	Sachi Momoi
13878	583	Tonomura
13879	583	Ayari Shiki
13880	583	Nishizaki-Sensei
13881	583	Yonakuni-san
13882	584	Sachiko Ogasawara
13883	584	Sei Satou
13884	584	Eriko Torii
13885	584	Noriko Nijou
13886	584	Shimako Toudou
13887	584	Chisato Tanuma
13888	584	Suguru Kashiwagi
13889	584	Touko Matsudaira
13890	584	Hidemi Takachi
13891	584	Nana Arima
13892	584	Rei Hasekura
13893	584	Shouko Naitou
13894	584	Tsukasa Takagi
13895	584	Yoshino Shimazu
13896	584	Youko Mizuno
13897	584	Yumi Fukuzawa
13898	584	Yuuki Fukuzawa
13899	584	Yuuko Hosokawa
13900	584	Akimitsu Yakushiji
13901	584	Chikako Hosokawa
13902	584	Hosokawa
13903	584	Kanako Hosokawa
13904	584	Kintarou Arisugawa (Alice-kun)
13905	584	Tomomitsu Yakushiji
13906	585	Ayame Ikaruga
13907	585	Ibuki Ikaruga
13908	585	Angela Takatsuka
13909	585	Chihaya Ikaruga
13910	585	Kagome Ikaruga
13911	585	Sakon Saginomiya
13912	585	Shiomaru Mizunagi
13913	585	Yoichi Karasuma
13914	585	Yui Hinagata
13915	585	Tsubasa Tsubame
13916	585	Ukyou Saginomiya
13917	585	Uzumaru Mizunagi
13918	585	Jinjuro Nuezume
13919	585	Keita Torigaya
13920	585	Masashi
13921	585	Masayuki
13922	585	Ryou Washizu
13923	586	Lina Inverse (Reena)
13924	586	Zelgadis Greywords
13925	586	Amelia Wil Tesla Seyrunn
13926	586	Xellos
13927	586	Gourry Gabriev (Gaudy)
13928	586	Sylphiel Nels Lahda
13929	586	Rezo the Red Priest
13930	586	Ozer
13931	586	Philionel El Di Saillune
13932	586	Gduza
13933	586	Pokota / Korba Taforashia
13934	586	Ruby Eye Shabranigudu
13935	586	Zuuma
13936	587	Munto
13937	587	Ichiko Ono
13938	587	Irita
13939	587	Leica
13940	587	Nozomi Hidaka
13941	587	Suzume Imamura
13942	587	Yumemi Hidaka
13943	587	Chikara Hidaka
13944	587	Elder A
13945	587	Elder B
13946	587	Elder C
13947	587	Elder D
13948	587	Gass
13949	587	Gulidori
13950	587	Guntarl / Gntarl
13951	587	Kazuya Takamori
13952	587	Previous King
13953	587	Queen
13954	587	Raruko
13955	587	Reimon
13956	587	Rui / Louie
13957	587	Ryueli
13958	587	Shigeru Hidaka
13959	587	Takashi Tobe
13960	587	Tochye
13961	588	Takane Shishidou
13962	588	Akiha Shishidou
13963	588	Itsuki Kannagi
13964	588	Nami Shishido
13965	588	Sakura Shishidou
13966	588	Bougainvillea
13967	588	Byakuya Subaru
13968	588	Erika
13969	588	Kazane Shishidou
13970	588	Lily
13971	588	Mintao
13972	588	Neneko Ookura
13973	588	Tsutsuji Baba
13974	588	Yurii Sakharov
13975	588	Akira Mikagami
13976	588	Elle Surre
13977	588	Emilio Surre
13978	588	Friedrich Otto Noblemain
13979	588	Honoka Kawai
13980	588	Imoko Shishidou
13981	588	Julio Surre
13982	588	Nina Stratoski
13983	588	Shigure Shinguji
13984	588	Soldier Ul
13985	589	Kanade Tachibana 
13986	589	Yuri Nakamura
13987	589	Yui
13988	589	Eri Shiina
13989	589	Ayato Naoi
13990	589	Hinata Hideki
13991	589	Masami Iwasawa
13992	589	Yuzuru Otonashi
13993	589	TK
13994	589	Shiori Sekine
13995	589	Miyuki Irie
13996	589	Noda
13997	589	Yusa
13998	589	Hatsune Otonashi
13999	589	Takamatsu
14000	589	Hisako
14001	589	Matsushita
14002	589	Ooyama
14003	589	Fujimaki
14004	589	Takeyama
14005	589	Chaa
14006	589	Saitou
14007	589	Shadow
14008	590	Maria
14009	590	Sister
14010	590	Hoshi
14011	590	Nino
14012	590	P-ko
14013	590	Stella
14014	590	Village Chief
14015	590	Kou Ichinomiya
14016	590	Shimazaki
14017	590	Tetsuo Tetsujin
14018	590	Tetsurou Tetsujin
14019	590	Billy
14020	590	Jacqueline
14021	590	Last Samurai
14022	590	Seki Ichinomiya
14023	590	Terumasa Takai
14024	590	Tooru Shirai 
14025	591	Runo Misaki
14026	591	Shun Kazami 
14027	591	Daniel Kuso
14028	591	Airzel
14029	591	Casey 
14030	591	Elright
14031	591	Fabia Sheen
14032	591	Gill
14033	591	Jake Vallory
14034	591	Jesse Glenn 
14035	591	Jin
14036	591	Kato
14037	591	Kazarina 
14038	591	Koji Beetle
14039	591	Lena Isis
14040	591	Linus Claude
14041	591	Luin Pam
14042	591	Marucho
14043	591	Mason Brown
14044	591	Nurzak
14045	591	Ren Krawler 
14046	591	Robin
14047	591	Serena Sheen
14048	591	Sid Arkale 
14049	591	Siem Pam
14050	591	Stoica 
14051	591	Taylor
14052	591	Zenet Surrow
14053	592	Zess (Luka Crosszeria)
14054	592	Tsukumo Murasame
14055	592	Shusei Usui
14056	592	Hotsuma Renjou 
14057	592	Yuki Giou (Sakurai)
14058	592	Kanata Wakamiya
14059	592	Toko Murasame
14060	592	Kuroto Hourai
14061	592	Senshirou Furuori
14062	592	Sodom
14063	592	Tachibana Giou
14064	592	Aya Kureha
14065	592	Takashiro Giou
14066	592	Ashley
14067	592	Cadenza
14068	592	Elegy
14069	592	Fuyutoki Kureha
14070	592	Hyde
14071	592	Ibuki Shikibe
14072	592	Isuzu Fujiwara
14073	592	Jekyll
14074	592	Katsumi Tooma
14075	592	Masamune Shinmei
14076	592	Reiga Giou
14077	592	Tsubaki Shikibe
14078	592	Yomi Giou
14079	593	Tohko Amano
14080	593	Chia Takeda
14081	593	Nanase Kotobuki
14082	593	Kazushi Akutagawa
14083	593	Konoha Inoue
14084	593	Maki Himekura
14085	593	Miu Asakura
14086	593	Mori Kurara
14087	593	Ryuuto Sakurai
14088	594	Narvi Sutoraizu
14089	594	Rygart Arrow
14090	594	Sigyn Erster
14091	594	Leda
14092	594	Zess
14093	594	Ailes
14094	594	Argath
14095	594	Bades
14096	594	Captain Sakura
14097	594	Cleo Saburafu
14098	594	Colonel Io
14099	594	Elekt
14100	594	General Baldr
14101	594	General Borcuse
14102	594	General True
14103	594	Girge
14104	594	Greta
14105	594	Hodr
14106	594	Lee
14107	594	Leto
14108	594	Loggin
14109	594	Loquis
14110	594	Nike
14111	594	Nile Sutoraizu
14112	594	Regatz Arrow
14113	595	Korone
14114	595	Junko Hattori
14115	595	Lily Shiraishi
14116	595	Fujiko Etou
14117	595	Keena Soga
14118	595	Eiko Teruya
14119	595	Akuto Sai
14120	595	Michie Ootake
14121	595	Yuuko Hattori
14122	595	Kanna Kamiyama
14123	595	Peterhausen
14124	595	Arnoul
14125	595	Mitsuko Torii
14126	595	Yukiko
14127	595	Bag
14128	595	Boichiro Yamato
14129	595	Hiroshi Miwa
14130	595	2V
14131	595	Brother Etou
14132	595	Captain of the Black Crane
14133	595	Headmaster
14134	595	Hiroshi's Father
14135	595	Junko's Grandmother
14136	595	Keizou Teruya
14137	595	Me
14138	595	Mr. X
14139	595	Rubbers
14140	595	Snake
14141	595	Yatagarasu
14142	595	You Yanrii
14143	595	Youzou Hattori
14144	596	Yuri Nagata
14145	596	Daisuke Tsubaki
14146	596	Hiroshi Midorikawa
14147	596	Kazuki Kuroda
14148	596	Kazumi Kiyokawa
14149	596	Kenji Hotta
14150	596	Kosei Goto
14151	596	Kyohei Sera
14152	596	Luigi Yoshida
14153	596	Osamu Ishihama
14154	596	Ryo Akasaki
14155	596	Satoshi Tanba
14156	596	Shigeyuki Murakoshi
14157	596	Shingo Yano
14158	596	Tadashi Sano
14159	596	Takeshi Kamei
14160	596	Takeshi Tatsumi
14161	596	Tatsuo Ishigami
14162	596	Tsuyoshi Miyano
14163	596	Yoshinori Sakai
14164	596	Yotaro Natsuki
14165	596	Yusaku Sugie
14166	597	Toshizo Hijikata
14167	597	Hajime Saito
14168	597	Souji Okita
14169	597	Heisuke Toudou
14170	597	Chikage Kazama
14171	597	Chizuru Yukimura
14172	597	Sanosuke Harada
14173	597	Keisuke Yamanami
14174	597	Shinpachi Nagakura
14175	597	Isami Kondo
14176	597	Kyou Shiranui
14177	597	Sen-hime
14178	597	Genzaburou Inoue
14179	597	Kai Shimada
14180	597	Kaoru Nagumo
14181	597	Keisuke Ootori
14182	597	Koudou Yukimura
14183	597	Kyuujuu Amagiri
14184	597	Takeaki Enomoto
14185	598	Joseph Carter Jones
14186	598	Lina Davis
14187	598	Matthew Denton
14188	598	Nicholas de Carlo
14189	598	Simon Kaina
14190	598	Vera Collins
14191	598	William Davis
14192	599	Natsuki Sasahara
14193	599	Wish / Prince Chris
14194	599	Azuki Yamamori
14304	602	Rald
14195	599	Botan Yamamori
14196	599	Mamoru
14197	599	Mimiko Kuchiki
14198	599	Momoka Hoshino
14199	599	Ringo Yukimori
14200	599	Ai Sakaki
14201	599	Dai
14202	599	Fujiko Yukimori
14203	599	Kakeru
14204	599	Koutarou Saotome
14205	599	Leila Takashiro 
14206	599	Lili
14207	599	Marco Peperoncino
14208	599	Maruko Takashiro
14209	599	Masaki Oka
14210	599	Miho
14211	599	Moeko Achichi
14212	599	Queen
14213	599	Ran
14214	599	Ringo's Septuplet Brothers
14215	599	Ringorou Yukimori
14216	599	Roo
14217	599	Ryoku
14218	599	Saotome's mother
14219	599	Sei
14220	599	Seifu Kiyokaze
14221	599	Tarou Atsui
14222	599	Tenko Okamoto
14223	599	Tsugumi Kawabe
14224	599	Vivi
14225	600	Akitsu Masanosuke
14226	600	Heizaemon Yagi
14227	600	Matsukichi
14228	600	Okinu
14229	600	Otake
14230	600	Souji
14231	600	Umezou
14232	600	Yaichi
14233	601	Kanu Unchou
14234	601	Hakufu Sonsaku
14235	601	Gentoku Ryuubi
14236	601	Ryofu Housen
14237	601	Shiryu Chou'un
14238	601	Shimei Ryomou
14239	601	Ekitoku Chouhi
14240	601	Bunwa Kaku
14241	601	Chuukou Kyocho
14242	601	Myosai Kakouen
14243	601	Moukaku
14244	601	Goei Sonsaku
14245	601	Shifu Chosho
14246	601	Yojo Bashoku
14247	601	Bachou Mouki
14248	601	Chuei Toutaku
14249	601	Shikou Soujin
14250	601	Chubou Sonken / Shokyo
14251	601	Chutatsu Shibai
14252	601	Teni
14253	601	Genpou Saji
14254	601	Moyu
14255	601	Gakushu
14256	601	Genjou Kakouton
14257	601	Koumei Shokatsuryo
14258	601	Hakugen Rikuson
14259	601	Koukin Shuyu
14260	601	Motoku Sousou
14261	601	Saji Genpou / Shishi Ouin
14262	601	Shigi Taishiji
14263	602	Akari Sakura
14264	602	Sara
14265	602	Alma Kamiuchi
14266	602	Angelina Grand Maniel Chocola Julliangeli
14267	602	Aqua
14268	602	Brownie
14269	602	Catherine Grand Maniel Chocola Julliangeli
14270	602	Dian
14271	602	Garnet
14272	602	Judy
14273	602	Kris
14274	602	Lapis
14275	602	Leon
14276	602	Miria Marigold Mackenzie
14277	602	Monica Sakura
14278	602	Nix
14279	602	Peridot
14280	602	Ruby
14281	602	Yuma Kamiuchi
14282	602	Alex
14283	602	Amelie
14284	602	Angela
14285	602	Celine Bright
14286	602	Charotte
14287	602	Chite
14288	602	Diana / Jill
14289	602	Flora
14290	602	Io
14291	602	Jasper
14292	602	Kaiya
14293	602	King
14294	602	Kohaku
14295	602	Labra
14296	602	Laiya
14297	602	Luna
14298	602	Marianne Grand Maniel Chocola Julliangeli
14299	602	Milky
14300	602	Nephrite
14301	602	Nicola
14305	602	Rin
14306	602	Ryl
14307	602	Sango
14308	602	Sapphie
14309	602	Tata
14310	602	Titana
14311	602	Topaz
14312	602	Tour
14313	602	Yuke
14332	604	Mio Akiyama
14333	604	Azusa Nakano
14334	604	Yui Hirasawa
14335	604	Ritsu Tainaka
14336	604	Tsumugi Kotobuki
14337	604	Ui Hirasawa
14338	604	Sawako Yamanaka
14339	604	Jun Suzuki
14340	604	Nodoka Manabe
14341	604	Yui Hirasawa (child)
14342	604	Jane
14343	604	Megumi Sokabe
14344	604	Ton-chan
14345	604	Eri Taki
14346	604	Ichigo Wakaouji
14347	604	Mika Saeki
14348	604	Nodoka Manabe (child)
14349	604	Ui Hirasawa (child)
14350	604	Akane Satou
14351	604	Chika Nojima
14352	604	Chizuru Shima
14353	604	Fuuko Takahashi
14354	604	Himeko Tachibana
14355	604	Mifuyu Matsumoto
14356	604	Satoshi Tainaka
14357	604	Shizuka Kinoshita
14358	604	Student Council Accountant
14359	604	Ushio Oota
14360	604	Youko Sasaki
14361	604	Aya
14362	604	Della
14363	604	Haruko Chikada
14364	604	Keiko Iida
14365	604	Mrs. Kawakami
14366	604	Nobuyo Nakajima
14367	604	Norimi Kawaguchi
14368	604	Toshimi Shibaya
14369	604	Horikomi-sensei
14370	604	Maki
14371	604	Tomi Ichimonji
14372	605	Takumi Usui
14373	605	Misaki Ayuzawa
14374	605	Hinata Shintani
14375	605	Soutarou Kanou
14376	605	Aoi Hyoudou
14377	605	Sakura Hanazono
14378	605	Subaru
14379	605	Shouichirou Yukimura
14380	605	Aoi Hyoudou
14381	605	Erika
14382	605	Gouki Aratake
14383	605	Honoka
14384	605	Kuuga Sakurai
14385	605	Ryuunosuke Kurosaki
14386	605	Sayu
14387	605	Hayase Kouta
14388	605	Ikuto Sarashina
14389	605	Kenji Sawa
14390	605	Minako Ayuzawa
14391	605	Naoya Shirakawa
14392	605	Satsuki Hyoudou
14393	605	Shizuko Kaga
14394	605	Suzuna Ayuzawa
14395	605	William Adam Yuuji
14396	605	Yuuta Utsumi
14397	605	Gon-chan
14398	605	Kouma Yabu
14399	605	Nagisa Hyoudou
14400	605	Takezawa
14401	605	Tora Igarashi
14402	605	Ruri Yukimura
14403	605	Hirofumi Koganei
14404	606	Riko Suminoe
14405	606	Ako Suminoe
14406	606	Yuuzuki Kiryuu
14407	606	Keita Suminoe
14408	606	Miharu Mikuni
14409	606	Mikazuki Kiryuu
14410	606	Toda Edogawa
14411	606	Kenta
14412	606	Mother
14413	606	Mr. Suminoe
14414	607	Aoi Miyoshi
14415	607	Feng Lan
14416	607	Ichinose
14417	607	Ichishi
14418	607	Isao Takachiho
14419	607	Kazura Iha
14420	607	Natsume Kagiya
14421	607	Shizune Yusa
14422	607	Yukina Sonogi
14423	608	Aritou
14424	608	Eriko Watanabe
14425	608	Gisuke Sasaki
14426	608	Hana
14427	608	Hayakawa
14428	608	Ishihara 
14429	608	Jeffrey
14430	608	Jimmy Brown
14431	608	Jou Yokosuka
14432	608	Junko Yoshida
14433	608	Kawamata
14434	608	Kumagai 
14435	608	Lily
14436	608	Mansaku Matsuura
14437	608	Mario Minakami
14438	608	Meg Yokosuka 
14439	608	Mickey
14440	608	Naoko Yamauchi
14441	608	Noboru Maeda
14442	608	Rokurouta Sakuragi
14443	608	Ryuuji no Haha
14444	608	Ryuuji Nomoto
14445	608	Setsuko Koike / Norimatsu
14446	608	Sugi
14447	608	Tadayoshi Tooyama
14448	608	Tanaka
14449	608	Tsubouchi
14450	608	Yokoyama
14451	608	Yoshitaka Kogure
14452	609	Kan'u Unchou (Aisha)
14453	609	Ryofu
14454	609	Sousou
14455	609	Sonshoko
14456	609	Kouchuu Kanshou (Shion)
14457	609	Ryuubi Gentoku/ Toka
14458	609	Shokatsuryou Komei (Shuri)
14459	609	Bachou Mouki (Sui)
14460	609	Chouhi Yokutoku (RinRin)
14461	609	Bunshuu
14462	609	Chou'un Shiryu (Sei)
14463	609	Chouryou
14464	609	Sonken
14465	609	Kayuu
14466	609	Junniku
14467	609	Kakouen
14468	609	Kakouton
14469	609	Kaku Bunwa
14470	609	Rikuson
14471	609	Shoukyou
14472	609	Gakushin Bunken (Nagi)
14473	609	Ganryou
14474	609	Kakuka Houkou
14475	609	Kannei
14476	609	Kousonsan
14477	609	Shuuyu Koukin (Meirin)
14478	609	Sonsaku Hakufu
14479	609	Chinkyuu Koudai (Nenene)
14480	609	Choukun (Nanano)
14481	609	Daikyou
14482	609	Enshou Honsho (Reiha)
14483	609	Gengan (Kikyou)
14484	609	Houtou (Hinari)
14485	609	Kyocho
14486	609	Riri
14487	609	Riten Mansei (Maou)
14488	609	Ryomou Shimei (Ashe)
14489	609	Teni
14490	609	Toutaku
14491	609	Batai (Tanpopo)
14492	609	Chouryou (Renhou)
14493	609	Enjutsu Kouro (Miu)
14494	609	Gien Bunchou (En'ya)
14495	609	Kougai Koufuku (Sai)
14496	609	Moukaku (Mii)
14497	609	Shuutai Youhei (Minmei)
14498	609	Tei'iku Chuutoku (Fuu)
14499	609	Ukin Bunsoku (Sawa)
14500	609	Chouhou (Chiihou)
14501	609	Choukaku (Tenhou)
14502	609	Mike
14503	609	Shamu
14504	609	Tora
14505	610	Nozomi Kiriya
14506	610	Fumino Serizawa
14507	610	Kaho Chikumaen
14508	610	Chise Umenomori
14509	610	Otome Tsuzuki
14510	610	Tamao Fujino
14511	610	Satou 
14512	610	Daigorou Kouya
14513	610	Honoka
14514	610	Ieyasu Kikuchi
14515	610	Kanae Naruko
14516	610	Shimako Murasame
14517	610	Suzuki
14518	610	Takumi Tsuzuki
14519	611	Akashi
14520	611	Protagonist
14521	611	Ryouko Hanuki
14522	612	Vash the Stampede
14523	612	Meryl Stryfe
14524	612	Milly Thompson 
14525	612	Amelia Ann McFly
14526	612	Kuroneko
14527	613	Yachiyo Todoroki
14528	613	Popura Taneshima
14529	613	Aoi Yamada
14530	613	Izumi Takanashi
14531	613	Jun Satou
14532	613	Kyouko Shirafuji
14533	613	Nazuna Takanashi
14534	613	Hiroomi Souma
14535	613	Mahiru Inami
14536	613	Kozue Takanashi
14537	613	Maya Matsumoto
14538	613	Souta Takanashi
14539	613	Hyougo Otoo
14540	613	Kazue Takanashi
14541	613	Kotori-chan 
14542	613	Mahiru's Father 
14543	613	Mahiru's Mother
14544	614	Yamada
14545	614	Keiichi Kanejou
14546	614	Aoi Katase
14547	614	Chika Yamada
14548	614	Kazuki Kosuda
14549	614	Kyouka Kanejyou
14550	614	Mami Misato
14551	614	Mayu Miyano
14552	614	Miyano's Little Sex God 
14553	614	Takashi Kosuda
14554	614	Akai
14555	614	Chika's Boyfriend 
14556	614	Daisuke Matsuo
14557	614	Ero Gamisama
14558	614	Futoshi Kurokawa
14559	614	Ichihara
14560	614	Kaori Sakai
14561	614	Kouta Akimoto
14562	614	Mahiro Miyano
14563	614	Maki Kobayashi 
14564	614	Miharu Takeshita
14565	614	Mori 
14566	614	Mrs. Kosuda
14567	614	Shun'ichi Kudou
14568	615	Ai Nanasaki
14569	615	Haruka Morishima
14570	615	Kaoru Tanamachi
14571	615	Hibiki Tsukahara
14572	615	Tsukasa Ayatsuji
14573	615	Risa Kamizaki
14574	615	Miya Tachibana
14575	615	Rihoko Sakurai
14576	615	Sae Nakata
14577	615	Kanae Itou
14578	615	Manaka Hiba
14579	615	Ruriko Yuzuki
14580	615	Junichi Tachibana
14581	615	Keiko Tanaka
14582	615	Masayoshi Umehara
14583	615	Maya Takahashi
14584	615	Yayoi
14585	615	Yukari Ayatsuji
14586	616	Sebastian Michaelis
14587	616	Ciel Phantomhive 
14588	616	Grell Sutcliff
14589	616	Undertaker
14590	616	Alois Trancy
14591	616	Finnian
14592	616	Mey Rin
14593	616	Prince Soma Asman Kadar
14594	616	Ran-Mao
14595	616	Lau
14596	616	Agni
14597	616	Bardroy 
14598	616	William T. Spears
14599	616	Viscount of Druitt
14600	616	Elizabeth Midford
14601	616	Claude Faustus
14602	616	Hannah Anafeloz
14603	616	Tanaka
14604	616	Ronald Knox
14605	616	Paula
14606	616	Luka Macken
14607	616	Cantebury
14608	616	Thompson
14609	616	Timber
14610	616	Edward Aberline
14611	616	Lady Trancy
14612	616	Arnold Trancy
14613	616	Former Trancy Head
14614	617	Revy
14615	617	Vladilena Balalaika
14616	617	Eda
14617	617	Roberta
14618	617	Shenhua
14619	617	Benny
14620	617	Mr. Chang (Bai Ji-Shin Chang)
14621	617	Rock
14622	617	Sawyer The Cleaner
14623	617	Garcia Fernando Lovelace
14624	617	Abrego
14625	617	Agent Blend
14626	617	Agent Sugar
14627	617	Alberto Camarasa
14628	617	Bao
14629	617	Biu Yuen
14630	617	Burrows
14631	617	Cathy
14632	617	Deckard
14633	617	Diego Jose San Fernando Lovelace
14634	617	Dutch
14635	617	Fabiola Iglesias
14636	617	Gardener
14637	617	Gustavo
14638	617	Hironobu Satou
14639	617	Horner
14640	617	Larkin
14641	617	Lotton The Wizard
14642	617	Marero
14643	617	Praiyachat
14644	617	Raymond MacDougal
14645	617	Richie Leroy
14646	617	Ronnie 'The Jaws'
14647	617	Sanchez
14648	617	Shane J. Caxton
14649	617	Tou Chi
14650	617	Willy
14651	617	Wright
14652	617	Yolanda
14653	618	Eris
14654	618	Aoi Futaba
14655	618	Dr. Durel
14656	618	JACK: Janis Alectos Carotenas Karinato
14657	618	Manami Kinjou
14658	618	Maya
14659	618	Janes
14660	618	Antonia
14661	618	Chaika
14662	618	Maki Itokazu
14663	618	Melwin
14664	618	Aiko Ishimine
14665	618	Ichika
14666	618	Kio Kakazu
14667	618	Lawry
14668	618	Sadayan 
14669	618	Sarah
14670	618	Arisa Ooshiro
14671	618	Assistroid
14672	618	Captain Qoone
14673	618	Chiba-chan
14674	618	Chief Flight Attendant
14675	618	Kin-chan
14676	618	Luros
14677	618	Mariko 
14678	618	Unaa-tan
14679	618	Unyaa-kun
14680	618	Yun-Fat
14681	618	Armory Clerk
14682	618	Dara
14683	618	DIA Agent
14684	618	Director of Foreign Relations
14685	618	DogDroid
14686	618	Endou
14687	618	Enemy Boat Captain
14688	618	Flight Attendant
14689	618	General Arshukowa
14690	618	Muttley
14691	618	News Reporter
14692	618	Nursedroid
14693	618	Patrol Boat Captain
14694	618	Rulos (ship)
14695	618	Satoshi Fukuhara
14696	618	Secretary of Foreign Relations
14697	618	Takao Kawasaki
14698	618	Toni Grimdenbaum
14699	618	Yuichi Miyagi
14700	619	Greymon
14701	619	Nene Amano
14702	619	Mikey Kudo
14703	619	Shoutmon
14704	619	Angie Hinomoto
14705	619	Cutemon
14706	619	Gumdramon
14707	619	Ryouma Mogami
14708	619	Airu Suzaki
14709	619	Christopher Aonuma
14710	619	Ewan Amano
14711	619	Jeremy Tsurgi
14712	619	Ren Tobari
14713	619	Sparrowmon
14714	619	Tagiru Akashi
14929	621	Kenji Meshiya
14930	621	Anna Katou
14931	621	Hishiyasu Ichikawa
14932	621	Komugi Musashi
14933	621	Makiko Gregory
14934	621	Miwako Mizukoshi
14935	621	Nanako Matsutaka
14936	621	Yesterday Taguchi
14937	622	Saeko Busujima
14938	622	Shizuka Marikawa
14939	622	Rika Minami
14940	622	Rei Miyamoto
14941	622	Saya Takagi
14942	622	Yuriko Takagi
14943	622	Takashi Komuro
14944	622	Alice Maresato
14945	622	Kouta Hirano
14946	622	Asami Nakaoka
14947	622	Zeke
14948	622	Hisashi Igou
14949	622	Kyoko Hayashi 
14950	622	Koichi Shido
14951	622	Miku Yuuki
14952	622	Souichiro Takagi
14953	622	Kazu Ishii
14954	622	Misuzu Ichijou 
14955	622	Teshima
14956	622	Toshimi Niki
14957	623	Hiyori Nishiyama
14958	623	Ritsuka Nakano
14959	623	Yuushin Hirose
14960	623	Misa 
14961	623	Natsuki Aizawa
14968	625	Aaya Saitou
14969	625	Kiiko Kawakami
14970	625	Kouta Saitou
14971	626	Ferris Eris
14972	626	Ryner Lute
14973	626	Sion Astal
14974	626	Tiir Rumibul
14975	626	Claugh Klom
14976	626	Lir Orla
14977	626	Luke Stokkart
14978	626	Sui Orla
14979	626	The Lonely Demon
14980	626	Lear Rinkal
14981	626	Miran Froaude
14982	626	Moe Velariore
14983	626	Riphal Edia
14984	626	Arua
14985	626	Calne Kaiwel
14986	626	Fiole Folkal
14987	626	Iluna Lieutolu
14988	626	Iris Eris
14989	626	Kuku
14990	626	Kuu Orla
14991	626	Lieral Lieutolu
14992	626	Lucile Eris
14993	626	Noa Ehn
14994	626	Eslina Folkal
14995	626	Kiefer Knolles
14996	626	Lach Velariore
14997	626	Lafra
14998	626	Milk Callaud
14999	626	Pueka
15000	626	Rahel Miller
15001	626	Sarawel Seal
15002	626	The Mad Hero
15003	626	Toale Nelphi
15004	626	Toni
15005	626	Tyle
15134	628	Yuki Onna \\ Tsurara Oikawa
15135	628	Kurotabou
15136	628	Nurarihyon (young)
15137	628	Rikuo Nura
15138	628	Hagoromo-Gitsune
15139	628	Kana Ienaga
15140	628	Akifusa Keikain
15141	628	Kubinashi
15142	628	Mamiru Keikain
15143	628	Ryota Neko
15144	628	Ryuuji Keikain
15145	628	Saori Maki
15146	628	Torii Natsumi
15147	628	Kokehime
15148	628	Kuroumaru
15149	628	Mezumaru
15150	628	Rihan Nura
15151	628	Shoei
15152	628	Shoukera
15153	628	Gozumaru
15154	628	Ibaraki Doji
15155	628	Itaku
15156	628	Kappa
15157	628	Nue
15158	628	Saburou Neko
15159	628	Sasami
15160	628	Yosuzume
15161	628	Yura Keikain
15162	628	Zen
15163	628	Akagappa
15164	628	Anzan
15165	628	Aotabou
15166	628	Asajigahara no Kijo
15167	628	Crow Messenger Youkai
15168	628	Errand Rat
15169	628	Fake Aotabou
15170	628	Fake Kurotabou
15171	628	Gagoze
15172	628	Gaijirou
15173	628	Gairouta
15174	628	Gaitarou
15175	628	Gangi Kozou
15176	628	Gashadokuro
15177	628	Gora Keikain
15178	628	Great Tengu of Mount Kurama
15179	628	Gyuuki 
15180	628	Haigo Keikain
15181	628	Hakuzouzu
15182	628	Hanako
15183	628	Hari-onna
15184	628	Hebidayu
15185	628	Hibari Torii
15186	628	Hidemoto Keikain (13th)
15187	628	Hidemoto Keikain (27th)
15188	628	Hideshima Shrine's Priest
15189	628	Hihi
15190	628	Hitotsume Nyudou
15191	628	Inugami
15192	628	Inugami-gyoubu Tamazuki
15193	628	Inugamigyoubu Danuki
15194	628	Inuhouou
15195	628	Jami
15196	628	Jirou Shima
15197	628	Karasu Tengu
15198	628	Kejorou
15199	628	Kiyotsugu Kiyojyuji
15200	628	Ko-oni
15201	628	Koremitsu Keikain
15202	628	Kusuritsubo
15203	628	Kyoukotsu (daughter)
15204	628	Kyoukotsu (father)
15205	628	Kyuuso
15206	628	Lady Yodo
15207	628	Mamedanuki
15208	628	Masatsugu Keikain
15209	628	Minagoroshi Jizou
15210	628	Mokugyo Daruma
15211	628	Mottainai Obake
15212	628	Muchi
15213	628	Natto Kid
15214	628	Nijunanamen Senju Mukade
15215	628	Nurarihyon
15216	628	Oboro-guruma
15217	628	Oomukade
15218	628	Pato Keikain
15219	628	Professor Adashibara
15220	628	Rokuson 
15221	628	Sanmoto Gorozaemon
15222	628	Sannokuchi
15223	628	Satori
15224	628	Senba
15225	628	Setsura
15226	628	Sewagakari no Medanuki
15227	628	Shinako Suganuma
15228	628	Shiragiku
15229	628	Sodemogi-sama
15230	628	Sumiko
15231	628	Takarabune
15232	628	Te no Me
15233	628	Tearai Oni
15234	628	Tofu Kid
15235	628	Tosakamaru
15236	628	Tsuchigumo
15237	628	Ungaikyou
15238	628	Wakana Nura
15239	628	Yamabuki Otome
15240	628	Yohime
15241	628	Yohime's Father
15242	628	Yoshidano Shosho Korefusa
15243	629	Maya Kumashiro
15244	629	JK
15245	629	Kozue Naruse
15246	629	Ami Kuroki
15247	629	Chihiro Kawashima
15248	629	Fumiaki's Mother
15249	629	Fumiaki Uchida
15250	629	Junichirou Kumashiro
15251	629	Mikaze Nakagawa
15252	629	Shigeru Kuroki
15253	629	Smile
15254	630	Ryouko Ookami
15255	630	Otohime Ryuuguu
15256	630	Mimi Usami
15257	630	Momoko Kibitsu
15258	630	Ringo Akai
15259	630	Gretel
15260	630	Otsuu Tsurugaya
15261	630	Ryoushi Morino
15262	630	Alice Kiriki
15263	630	Hansel
15264	630	Himeno Shirayuki
15265	630	Liszt Kiriki
15266	630	Machiko Himura
15267	630	Majolica le Fay
15268	630	Tarou Urashima
15269	630	Kakari Haibara
15270	630	Suzume Shitagiri
15271	630	Ami Jizou
15272	630	Reiko Kokonoo
15273	630	Shirou Hitsujikai
15274	630	Yukime Murano
15275	631	Shino Amakusa
15276	631	Aria Shichijou
15277	631	Mutsumi Mitsuba
15278	631	Naruko Yokoshima
15279	631	Suzu Hagimura
15280	631	Ranko Hata
15281	631	Kotomi Tsuda
15282	631	Sayaka Dejima
15283	631	Kaede Igarashi
15284	631	Uomi
15285	631	Nene Todoroki
15286	631	Takatoshi Tsuda
15287	631	Chiri Nakazato
15288	631	Kenji Yanagimoto
15289	631	Nanako Umibe
15290	631	Toki
15291	632	Matsu
15292	632	Tsukiumi
15293	632	Miya Asama
15294	632	Musubi
15295	632	Kusano
15296	632	Uzume
15297	632	Kagari
15298	632	Kazehana
15299	632	Yahan
15300	632	Benitsubasa
15301	632	Karasuba
15302	632	Minato Sahashi
15303	632	Kuruse
15304	632	Takami Sahashi
15305	632	Akitsu
15306	632	Chiho Hidaka
15307	632	Haihane
15308	632	Haruka Shigi
15309	632	Hayato Mikogami
15310	632	Hikari
15311	632	Kaoru Seo
15312	632	Kuno
15313	632	Mutsu 
15314	632	Natsuo Ichinomi
15315	632	Shiina 
15316	632	Veiled Sekirei
15317	632	Yukari Sahashi
15318	632	Yume 
15319	632	Director
15320	632	Hibiki
15321	632	Hiroto Minaka
15322	632	Hiroto Minaka (young)
15323	632	Homura
15324	632	Kakizaki
15325	632	Landlord
15326	632	MBI Deliver Agent
15327	632	MBI Sargent
15328	632	MBI Soldier
15329	632	Mitsuha
15330	632	Mr. Cat
15331	632	Natsu
15332	632	Reiji Koya
15333	632	Takami Sahashi (young)
15334	632	Yomi
15335	632	Yukari Sahashi (young)
15336	633	Natsuno Yuuki
15337	633	Megumi Shimizu
15338	633	Sunako Kirishiki
15339	633	Tooru Mutou
15340	633	Ritsuko Kunihiro
15341	633	Toshio Ozaki
15342	633	Akira Tanaka
15343	633	Chizuru Kirishiki
15344	633	Shizuka Matsuo
15345	633	Tatsumi
15346	633	Yoshie Kurahashi
15347	633	Kaori Tanaka
15348	633	Nao Yasumori
15349	633	Seishin Muroi
15350	633	Yuuki
15351	633	Aoi Mutou
15352	633	Azusa Koide
15353	633	Chiyomi Hasegawa
15354	633	Ebuchi
15355	633	Hasegawa
15356	633	Hayami
15357	633	Hirosawa
15358	633	Kazuko Ookawa
15359	633	Kyouko Ozaki
15360	633	Masao Murasako
15361	633	Mikiyasu Yasumori
15362	633	Motoko Maeda
15363	633	Mutou
15364	633	Seishirou Kirishiki
15365	633	Tamotsu Mutou
15366	633	Yasuyo Hashiguchi
15381	635	Garnet
15382	635	Chelsea Arcot
15383	635	Shelley Maycraft
15384	635	Agnes Boulange
15385	635	Ritos Tortilla
15386	635	Salsa Tortilla
15387	635	Minette
15388	635	Miriam Roland
15389	635	Aberdeen Roland
15390	635	Carina Verritti
15391	635	Fiore Verritti
15392	635	Nina Lindberg
15393	635	Avril
15394	635	Fabious Verritti
15395	635	Leicester Maycraft
15396	635	Nagan Maycraft
15397	635	Nick Lajuck
15398	636	Souichi Tatsumi
15399	636	Tetsuhiro Morinaga
15400	636	Hiroto
15401	636	Tomoe Tatsumi
15402	636	Kanako Tatsumi
15403	636	Mitsugu Kurokawa
15404	637	Mitsuba Marui
15405	637	Miyashita
15406	637	Sakiko Matsuoka
15407	637	Aiko Kuriyama
15408	637	Airi Ogata
15409	637	Futaba Marui
15410	637	Hitoha Marui
15411	637	Mayumi Katou
15412	637	Miku Sugisaki
15413	637	Shiori Itou
15414	637	Yuki Yoshioka
15415	637	Kazuya
15416	637	Marina Sugisaki
15417	637	Nipples
15418	637	Noda
15419	637	Ryuuta Sugisaki
15420	637	Satoshi Yabe
15421	637	Shinya Satou
15422	637	Soujirou Marui
15423	637	Yuudai Chiba
15424	638	Kyouta Tsubaki 
15425	638	Tsubaki Hibino
15426	638	Miho Ichikura
15427	638	Sakura Hibino
15428	639	Dawn
15429	639	Ash Ketchum
15430	639	Pikachu
15431	639	James
15432	639	Jessie
15433	639	Brock
15434	639	Jenny
15435	639	Goone
15436	639	Grings Kodai
15437	639	Joe
15438	639	Karl
15439	639	Peg
15440	639	Rowena
15441	639	Tammy
15442	640	Mikoto Misaka
15443	640	Kaori Kanzaki
15444	640	Kuroko Shirai 
15445	640	Accelerator
15446	640	Index Librorum Prohibitorum
15447	640	Kazari Uiharu
15448	640	Seiri Fukiyose
15449	640	MISAKA 10032
15450	640	Touma Kamijou
15451	640	Aisa Himegami
15452	640	Laura Stuart
15453	640	Maika Tsuchimikaido
15454	640	Motoharu Tsuchimikado
15455	640	Itsuwa
15456	640	Orsola Aquinas
15457	640	Stiyl Magnus
15458	640	Agnese Sanctis
15459	640	Amata Kihara
15460	640	Awaki Musujime
15461	640	Biagio Busoni
15462	640	Lidvia Lorenzetti
15463	640	Misuzu Misaka
15464	640	Oriana Thomson
15465	640	Ritoku Komaba
15466	640	Saiji Tatemiya
15467	640	Shiina Kamijou
15468	640	Vasilisa
15469	640	Vento of the Front
15470	641	Hotori Arashiyama
15471	641	Eri Isezaki
15472	641	Futaba Kon
15473	641	Harue Haribara
15474	641	Hiroyuki Sanada
15475	641	Natsuhiko Moriaki
15476	641	Shizuka Kameido
15477	641	Toshiko Tatsuno
15478	641	Uki Isohata
15479	642	Maria
15480	642	Sister
15481	642	Hoshi
15482	642	Nino
15483	642	P-ko
15484	642	Stella
15485	642	Village Chief
15486	642	Kou Ichinomiya
15487	642	Shimazaki
15488	642	Tetsuo Tetsujin
15489	642	Tetsurou Tetsujin
15490	642	Amazoness
15491	642	Billy
15492	642	C-cup Tengu
15493	642	Earth Defense Troop Captain
15494	642	Jacqueline
15495	642	Last Samurai
15496	642	Seki Ichinomiya
15497	642	Terumasa Takai
15498	642	Tooru Shirai 
15499	642	Young Tsubame
15500	643	Akito Takagi
15501	643	Eiji Niizuma
15502	643	Kaya Miyoshi
15503	643	Kazuya Hiramaru
15504	643	Miho Azuki
15505	643	Shinta Fukuda
15506	643	Yuriko Aoki
15507	643	Hyde
15508	643	Kayoko Mashiro
15509	643	Koji Makaino 'Koogy'
15510	643	Miyuki Azuki 
15511	643	Moritaka Mashiro
15512	643	Aiko Iwase 
15513	643	Akira Hattori
15514	643	Fumio Mashiro 
15515	643	Gorou Miura
15516	643	Hidemitsu Ishizawa
15517	643	Hiroyuki Nakano 
15518	643	Hisashi Sasaki
15519	643	Kim Seong
15520	643	Kouji Yoshida
15521	643	Masahiro Mashiro
15522	643	Mina Azuki
15523	643	Nobuhiro Mashiro
15524	643	Souichi Aida
15525	643	Taiki Uchida
15526	643	Takuro Nakai
15527	643	Yahagi
15528	643	Yoshihisa Heishi
15529	643	Yujiro Hattori
15740	645	Rat / Jiro Nezu
15741	645	Cordelia Glauca
15742	645	Hercule 'Elly' Barton
15743	645	Saku Tooyama
15744	645	Sherlock 'Sheryl' Shellinford
15745	645	Tsugiko Zenigata
15746	645	Claris
15747	645	Henriette Mystere
15748	645	Kamaboko
15749	645	Kokoro Akechi
15750	645	Nero Yuzurizaki
15751	645	Opera Kobayashi
15752	645	Stone River / Souseki Ishinagare
15753	645	Twenty / Kai Nijuuri
15754	645	Arsene
15755	645	Hirano Hasegawa
15756	646	Iori Sendo
15757	646	Shiro Togi
15758	646	Erika Sendo
15759	646	Kiriha Kuze
15760	646	Seichiro Togi
15761	646	Haruna Yuki
15762	646	Kohei Hasekura
15763	646	Tsukasa Hachimandaira
15764	646	Kanade Yuki
15765	647	Zakuro
15766	647	Kei Agemaki
15767	647	Susukihotaru
15768	647	Riken Yoshinokazura
15769	647	Houzuki
15770	647	Bonbori
15771	647	Enaga
15772	647	Ganryuu Hanakiri
15773	647	Takatoshi Hanadate
15774	647	Tsukuhane
15775	648	Toshizo Hijikata
15776	648	Hajime Saito
15777	648	Souji Okita
15778	648	Heisuke Toudou
15779	648	Chikage Kazama
15780	648	Chizuru Yukimura
15781	648	Sanosuke Harada
15782	648	Keisuke Yamanami
15783	648	Shinpachi Nagakura
15784	648	Isami Kondo
15785	648	Kyou Shiranui
15786	648	Kai Shimada
15787	648	Kaoru Nagumo
15788	648	Kyuujuu Amagiri
15789	649	Cure Moonlight
15790	649	Yuri Tsukikage
15791	649	Cure Blossom
15792	649	Dark Precure
15793	649	Dune
15794	649	Erika Kurumi
15795	649	Aki Horiuchi
15796	649	Akira's Father
15797	649	Akira's Mother
15798	649	Aya Ikeda
15799	649	Aya Mizushima
15800	649	Ayumi Kumazawa
15801	649	Azusa Takagishi
15802	649	Chizuko Harano
15803	649	Chypre
15804	649	Cobraja
15805	649	Coffret
15806	649	Cologne
15807	649	Cure Marine
15808	649	Cure Sunshine
15809	649	Gentarou Myoudouin
15810	649	Gou Sugiyama
15811	649	Haruka
15812	649	Haruka's Mother
15813	649	Haruna Tsukikage
15814	649	Hayato
15815	649	Hideo Saitani
15816	649	Hifumi Satou
15817	649	Hiroto
15818	649	Itsuki Myoudouin
15819	649	Kanae Tada
15820	649	Kaoruko Hanasaki
15821	649	Karin Tsuyuki
15822	649	Kasumi
15823	649	Keiko Ban
15824	649	Kenji Ban
15825	649	Kumojacky
15826	649	Lisa Shibata
15827	649	Mao Ogasawara
15828	649	Masahiro Harano
15829	649	Masakazu Harano
15830	649	Masato Sakai
15831	649	Master Coupe
15832	649	Mayu Kudou
15833	649	Mayuka Tachibana
15834	649	Mitsuru Nakano
15835	649	Mizuki Hanasaki
15836	649	Momoka Kurumi
15837	649	Mysterious Guy
15838	649	Nanami Shiku
15839	649	Nanami's Father
15840	649	Nanami's Mother
15841	649	Naomi Sawai
15842	649	Noriko
15843	649	Obata
15844	649	Potpourri
15845	649	Professor Sabark
15846	649	Rumi Shiku
15847	649	Rumiko Kuroda
15848	649	Ryuunosuke Kurumi
15849	649	Sakura Kurumi
15850	649	Sasorina
15851	649	Satsuki Myoudouin
15852	649	Sayaka Uejima
15853	649	Shoujirou Harano
15854	649	Snackeys
15855	649	Tadashi Horiuchi
15856	649	Toshiko Sakuma
15857	649	Tsubaki Myoudouin
15858	649	Tsubomi Hanasaki
15859	649	Tsurusaki
15860	649	Yoshito Sakai
15861	649	Youichi Hanasaki
15862	649	Yuuki Hayashi
15863	649	Yuuto Toshioka
15864	650	Ikaros
15865	650	Nymph
15866	650	Astraea
15867	650	Mitsuki Sohara
15868	650	Mikako Satsukitane
15869	650	Hiyori Kazane
15870	650	Chaos
15871	650	Tomoki Sakurai
15872	650	Eishiro Sugata
15873	651	Gisen Yagyuu
15874	651	Juubei Yagyuu
15875	651	Kanetsugu Naoe
15876	651	Yukimura Sanada
15877	651	Sen Tokugawa
15878	651	Charles d'Artanian
15879	651	Matabee Gotou
15880	651	Muneakira Yagyuu
15881	651	Hanzou Hattori
15882	651	Principal
15883	651	Yoshihiko Tokugawa
15884	652	Harukai
15885	652	Juu
15886	652	Kou
15887	652	Leena
15888	652	Lippi
15889	652	Miiko
15890	652	Morii
15891	652	Motsu
15892	652	Non
15893	652	Noritsuchi
15894	652	Sasayan
15895	652	Shima
15896	652	Taro
15897	652	Urin
15898	652	Yotsuchi
15899	652	Yuyu
15900	653	Natsuru Senou (female form)
15901	653	Shizuku Sango
15902	653	Akane Mishima
15903	653	Kaede Sakura
15904	653	Mikoto Kondou
15905	653	Hitomi Minagawa
15906	653	Rika Ueda
15907	653	Ryouka Yamakawa
15908	653	Committee Chairperson
15909	653	Masumi Nishino
15910	653	Natsuru Senou (male form)
15911	653	Treasurer
15912	653	Vice-Rep
15913	653	Sayaka Nakao
15914	653	Black Seppuku Rabbit
15915	653	Mikihito Higashida
15916	653	Burnt Alive Lion
15917	653	Disemboweled Tiger
15918	653	Electrocuted Wildcat
15919	653	Strangled Stray Dog
15920	654	Kanna Aoyagi
15921	654	Fumika Warasono
15922	654	Fuyumi Hirobe
15923	654	Hazuki Nouge
15924	654	Kotori Makino
15925	654	Motoki Kaidzu
15926	654	Nagatoshi Hioki
15927	654	Natsumi Harie
15928	654	Shigeichi Sakanami
15929	654	Yayoi Aoyagi
15930	655	Mio Isurugi
15931	655	Arashiko Yuno
15932	655	Noa Hiiragi
15933	655	Yumi Mamiya
15934	655	Taroko
15935	655	Shizuka Sado
15936	655	Taro Sado
15937	655	Tatsukichi Hayama
15938	655	Michiru Onigawara
15939	655	Tatsumi Antoinette XVI
15940	655	Tomoko Sado
15941	655	Manager Domyoji
15942	655	Kirino Ayasegawa
15943	655	Kirino's Father
15944	655	Yoshioka
15945	655	Yukinojo Himura
15946	656	Lala Satalin Deviluke
15947	656	Yui Kotegawa
15948	656	Yami / Golden Darkness
15949	656	Momo Velia Deviluke
15950	656	Nana Aster Deviluke 
15951	656	Mikan Yuuki
15952	656	Haruna Sairenji
15953	656	Run Elsie Jewelria 
15954	656	Kyoko Kirisaki
15955	656	Rito Yuuki
15956	656	Ryoko Mikado
15957	656	Rin Kujou
15958	656	Risa Momioka
15959	656	Ren Elsie Jewelria 
15960	656	Oshizu Murasame 
15961	656	Saki Tenjoin
15962	656	Celine
15963	656	Mio Sawada
15964	656	Zastin Deviluke
15965	656	Peke
15966	656	Akiho Sairenji
15967	656	Ayako 'Aya' Fujisaki
15968	656	Yuu Kotegawa
15969	656	Gid Lucion Deviluke 
15970	656	Haruko Nitta
15971	656	Kenichi Saruyama
15972	656	Principal
15973	656	Ringo Yuuki
15974	656	Saibai Yuuki
15975	657	Ruri Goko / Kuroneko
15976	657	Kirino Kousaka
15977	657	Ayase Aragaki
15978	657	Kanako Kurusu
15979	657	Manami Tamura
15980	657	Saori Makishima / Saori Bajeena
15981	657	Kyousuke Kousaka
15982	657	Bridget Evans
15983	657	Meruru
15984	657	Alpha Omega
15985	657	Comet-kun
15986	657	Hinata Gokou
15987	657	Daisuke Kousaka
15988	657	Iori Fate Setsuna
15989	657	Iwao Tamura
15990	657	Kirara Hoshino
15991	657	Kouhei Akagi
15992	657	Kurara Hoshino
15993	657	Queen of Nightmare
15994	657	Shikkoku
15995	657	Tamaki Gokou
15996	657	Thanatos Eros
15997	657	Yoshino Kousaka
18503	737	Kaoru
16235	660	Stocking Anarchy
16236	660	Panty Anarchy
16237	660	Kneesocks Demon
16238	660	Scanty Demon
16239	660	Briefers 'Brief' Rock
16240	660	Garterbelt
16241	660	Chuck
16242	660	Corset
16243	660	Fastener
16244	661	Kuranosuke Koibuchi
16245	661	Tsukimi Kurashita
16246	661	Jiji
16247	661	Mayaya
16248	661	Banba
16249	661	Chieko
16250	661	Clara
16251	661	Shouko Inari
16252	661	Shu Koibuchi
16253	662	Yakumo Saitou
16254	662	Yuutarou Ishii
16255	662	Ayaka Ozawa
16256	662	Haruka Ozawa
16257	662	Atsuko Gotou
16258	662	Azusa Saitou
16259	662	Hideyoshi Hata
16260	662	Isshin Saitou
16261	662	Kazutoshi Gotou
16262	662	Keiko Ozawa
16263	662	Makoto Hijikata
16264	662	Miyuki Nanase
16265	662	Nao Saitou
16266	662	Sakakibara Genichirou
16267	662	Yoshiko Mamiya
16268	663	Squid Girl
16269	663	Alex
16270	663	Cindy Campbell
16271	663	Eiko Aizawa
16272	663	Ayumi Tokita
16273	663	Chizuru Aizawa
16274	663	Kiyomi Sakura
16275	663	Mini Squid Girl
16276	663	Nagisa Saitou
16277	663	Sanae Nagatsuki
16278	663	Clark
16279	663	Depp
16280	663	Gorou Arashiyama
16281	663	Harris
16282	663	Johny
16283	663	Kozue Tanabe
16284	663	Martin
16285	663	Takeru Aizawa
16286	663	Tatsuo Isozaki
16287	663	The Southern Winds Owner 
16288	663	Yuuta Matsumoto
16289	663	Yuuta's father
16290	664	Takuto Tsunashi
16291	664	Reiji Miyabi
18817	750	Cluck
16292	664	Keito Nichi
16293	664	Sugata Shindou
16294	664	Takashi Dai
16295	664	Tetsuya Gouda
16296	664	Fish Girl
16297	664	Jaguar Yamasugata
16298	664	Kanako Watanabe
16299	664	Ryousuke Katashiro
16300	664	Sarina Endou
16301	664	Wako Agemaki
16302	664	Benio Shinada
16303	664	George Honda
16304	664	Hideki Shibuya
16305	664	Midori Okamoto
16306	664	Ruri Makina
16307	664	Simone Aragon
16308	664	Tiger Sugatame
16309	665	Excellen Browning
16310	665	Ibis Douglas
16311	665	Lamia Loveless
16312	665	Seolla Schweitzer
16313	665	Aya Kobayashi
16314	665	Latooni Subouta
16315	665	Zengar Zombolt
16316	665	Andoh Masaki
16317	665	Axel Almar
16318	665	Gilliam Yager
16319	665	Kusuha Mizuha
16320	665	Kyosuke Nanbu
16321	665	Lemon Browning
16322	665	Mai Kobayashi
16323	665	Nagisa Ouka
16324	665	Raidiese F. Branstein
16325	665	Ratsel Feinschmecker
16326	665	Ryune Zoldark
16327	665	Ryuusei Date
16328	665	Shuu Shirakawa
16329	665	Viletta Vadim
16330	665	Arado Balanga
16331	665	Archibald Grims
16332	665	Azuki Sawa
16333	665	Brooklyn Luckfield
16334	665	Irmgard Kazahara
16335	665	Kai Kitamura
16336	665	Kenneth Garret
16337	665	Lee Linjun
16338	665	Lefina Enfield
16339	665	Leona Garstein
16340	665	Mekiboss
16341	665	Minase Daitetsu
16342	665	Nadaka Eita
16343	665	Rilcarla Borgnine
16344	665	Rio Meilong
16345	665	Ryouto Hikawa
16346	665	Shine Hausen
16347	665	Tetsuya Onodera
16348	665	Vigagi
16349	665	Vindel Mauser
16350	665	Yuuki Jaggar
16351	666	Kaoru Hanawa
16352	666	Maon Sakurada
16353	666	Fu Sawatari 'Potte'
16354	666	Kou Sawatari
16355	666	Norie Okazaki
16356	666	Chimo Yakusa
16357	666	Manami Hoshi
16358	666	Riho Shihomi
16359	666	Sayomi Hanawa
16360	667	Lag Seeing
16361	667	Gauche Suede
16362	667	Niche
16363	667	Jiggy Pepper
16364	667	Noir
16365	667	Sylvette Suede
16366	667	Aria Link
16367	667	Largo Lloyd
16368	667	Ray Attlee
16369	667	Roda
16370	667	Roda (dog form)
16371	667	Signal
16372	667	Steak
16373	667	Zazie Winters
16374	667	Connor Kluff
16375	667	Kimidori
16376	667	Niche's Sister
16377	667	Sandra Gobeni
16378	667	Signales
16379	667	Colbasso
16380	667	Dr. Thunderland Jr.
16381	667	Gus
16382	667	Jacob Gobeni
16383	667	Lawrence 
16384	667	Maka
16385	668	Haqua du Lot Herminium
16386	668	Elcea de Rux Ima
16387	668	Kanon Nakagawa
16388	668	Shiori Shiomiya
16389	668	Kusunoki Kasuga
16390	668	Keima Katsuragi
16391	668	Ayumi Takahara
16392	668	Jun Nagase
16393	668	Mio Aoyama
16394	668	Tenri Ayukawa
16395	668	Tsukiyo Kujyo
16396	668	Chihiro Kosaka
16397	668	Sora Asuka
16398	669	Gunji
16399	669	Shiki
16400	669	Akira
16401	669	Kau
16402	669	Rin
16403	669	Keisuke
16404	669	Motomi
16405	669	Emma
16406	669	n / Nano
16407	669	Takeru
16408	669	Arbitro
16409	669	Tomoyuki
16410	669	Ace
16411	669	Dee
16412	669	Gwen
16413	670	Sora Kasugano
16414	670	Kazuha Migiwa
16415	670	Akira Amatsume
16416	670	Haruka Kasugano
16417	670	Yahiro Ifukube
16418	670	Motoka Nogisaka
16419	670	Nao Yorihime
16420	670	Kozue Kuranaga
16421	670	Ryouhei Nakazato
16422	671	Satsuki Hanabusa
16423	671	Andy
16424	671	Cafe
16425	671	Henri Lucas
16426	671	Chocolat
16427	671	Honey
16428	671	Ikue Nakajima
16429	671	Makoto Kashino
16430	671	Miya Koshiro
16431	671	Ringo Koizumi
16432	671	Sennosuke Andou
16433	671	Ichigo Amano
16434	671	Kyouko Amano
16435	671	Marie Tennouji
16436	671	Marron
16437	671	Miki Mori
16438	671	Natsume Amano
16439	671	Rumi Katou
16440	671	Sully
16441	671	Vanilla
16442	671	Antonio Vangelis
16443	671	Caramel
16444	671	Chairman Moriyama
16445	671	Chinatsu Sayama
16446	671	Dabaron
16447	671	Eggrovich
16448	671	Emilio
16449	671	Ethel
16450	671	Female Customer
16451	671	Female Customer A
16452	671	Gabrielle
16453	671	Hikaru Amano
16454	671	Johnny McBeal
16455	671	Jose Domingo
16456	671	Kanako Koizumi
16457	671	Karashima-sensei
16458	671	Kasshy
16459	671	Lemon Yamagishi
16460	671	Linda Parker
16461	671	Maize
16462	671	Male Customer
16463	671	Male Customer
16464	671	Man A
16465	671	Mankichi Andou
16466	671	Master of the Forest
16467	671	Miguel Santiago
16468	671	Mint
16469	671	Narcy
16470	671	Queen of the Sweets Kingdom
16471	671	Ricardo Benigni
16472	671	Sarah
16473	671	Satou
16474	671	Sayuri Kanda
16475	671	Shiotani
16476	671	Vegetasha
16477	671	Youko Ayukawa
16478	672	Mizuki Himeji
16479	672	Hideyoshi Kinoshita 
16480	672	Shouko Kirishima
16481	672	Minami Shimada
16482	672	Yoshii Akihisa
16483	672	Kouta Tsuchiya
16484	672	Yuuji Sakamoto
16485	672	Akira Yoshii
16486	672	Miharu Shimizu
16487	672	Yuuko Kinoshita
16488	672	Toshimitsu Kubo
16489	672	Hazuki Shimada
16490	672	Kouta Summon
16491	672	Minami Summon
16492	672	Shouko Summon
16493	672	Aiko Kudou
16494	672	Akihisa Summon
16495	672	Hideyoshi Summon
16496	672	Toshimitsu Summon
16497	672	Yuuko Summon
16498	672	Souichi Nishimura
16499	672	Yuuji Summon
16500	672	Aiko Summon
16501	672	Miharu Summon
16502	672	Mizuki Summon
16503	672	Genji Hiraga
16504	672	Hiromi Nakabayashi
16505	672	Shin Fukuhara
16716	674	Haruka Shiraishi
16717	674	Kiyono Amahara
16718	674	Nayu Hayama
16719	674	Takato
16720	674	Yako Jinguuji
16721	674	Hiroki Komachi
16722	674	Kaori Seto
16723	674	Keigo Hayama
16724	674	Kouta 
16725	674	Natsumi Terauchi
16726	674	Ookuma
16727	674	Reika Amahara
16728	674	Sae Mishima
16729	674	Tamaki Mizuno
16730	674	Tanihara
16731	674	Tsukamoto 
16732	674	Youko Sagisawa
16733	675	Bacchus
16734	675	Black Bone
16735	675	Bogard
16736	675	Bonnie
16737	675	Cobra
16738	675	Conners
16739	675	Elizabeth
16740	675	Ellis
16741	675	Ellis
16742	675	Eye
16743	675	Frank
16744	675	Garcia
16745	675	Jack
16746	675	Jeronimo
16747	675	Jonny
16748	675	Kelly
16749	675	Lady Armaroid
16750	675	Linda Windsor
16751	675	Midora
16752	675	Mimi
16753	675	Mohamed
16754	675	Nose
16755	675	Pamela Lee
16756	675	Queen
16757	675	Rakkii J
16758	675	Reo Gorudon
16759	675	Sebastian
16760	675	Secret
16761	675	Toporo
16762	676	Mina Tepes
16763	676	Akira Kaburagi Regendorf
16764	676	Yuki Saegusa
16765	676	Nanami Shinonome
16766	676	Nelly
16767	676	Veratos
16768	676	Mei Ren
16769	676	Nella
16770	676	Nero
16771	676	Shinva
16772	676	Camille
16773	676	Hyunte
16774	676	Jean Marais Dermailles
16775	676	Nicole Edelman
16776	676	Remus
16777	676	Romulus
16778	676	Ryohei Kuze
16779	676	Wolfgang Regendorf
16780	676	Alphonse Medici Borgiani
16781	676	Goto
16782	676	Heinrich
16783	676	Hikosaka
16784	676	Hysterica
16785	676	Ivanovic
16786	676	Juneau Dermailles
16787	676	Katsuichi Mizoguchi
16788	676	Leeroy
16789	676	Li
16790	676	Rozenmann
16791	676	Takashi Saijou
16792	676	Yuzuru
16793	677	Shizuo Heiwajima
16794	677	Izaya Orihara
16795	677	Masaomi Kida
16796	677	Shinra Kishitani
16797	677	Celty Sturluson
16798	677	Erika Karisawa
16799	677	Kasuka Heiwajima / Yuuhei Hanejima
16800	677	Anri Sonohara
16801	677	Isaac Dian
16802	677	Mairu Orihara
16803	677	Mikado Ryuugamine
16804	677	Namie Yagiri
16805	677	Simon Brezhnev
16806	677	Kururi Orihara
16807	677	Walker Yumasaki
16808	677	Kyohei Kadota
16809	677	Mika Harima
16810	677	Rio Kamichika
16811	677	Haruna Niekawa
16812	677	Shingen Kishitani
16813	677	Ruri Hijiribe
16814	677	Saki Mikajima
16815	677	Tom Tanaka
16816	677	Hashim
16817	677	Horada
16818	677	Saburo Togusa
16819	677	Aoba Kuronuma
16820	677	Dennis
16821	677	Hanako
16822	677	Kanazawa
16823	677	Kaztano
16824	677	Kinnosuke Kuzuhara
16825	677	Morita
16826	677	Ryo Takiguchi
16827	677	Seiji Yagiri
16828	677	Shiki
16829	677	Shiri
16830	677	Shuji Niekawa
16831	677	Takashi Nasujima
18818	750	Cocco
17046	679	Nyarlathotep / Nyaruko
17047	679	Kuuko
17048	679	Mahiro Yasaka
17049	679	Atoko
17050	679	Shantak-kun
17051	679	Nyarue
17052	680	Anzu
17053	680	Hiiragi
17054	680	Hinagiku
17055	680	Koume
17056	680	Nanako Yamamoto
17057	680	Pandaneko
17058	680	Sakura
17059	680	Aoi
17060	680	Hanamaru
17061	680	Kakogawa
17062	680	Kawashiro
17063	680	Kenji
17064	680	Kumicho
17065	680	Mayumi Yamamoto
17066	680	Naozumi Tsuchida
17067	680	Nishikaze-sensei
17068	680	Rooze Kusano 
17069	680	Satsuki Tsuchida
17070	680	Yuna
17071	680	Yuu Kobayakawa
17072	681	Yoshinoya
17073	681	Hiro
17074	681	Nori
17075	681	Kuwahara-sensei
17076	681	Miyako
17077	681	Natsume
17078	681	Sae
17079	681	The Principal
17080	681	Ume-sensei
17081	681	Yuno
17082	681	Chika
17083	681	Mashiko-sensei
17084	681	Misato
17085	681	Nazuna
17086	681	Riri-san
17113	683	Sernia Iori Flameheart 
17114	683	Sanae Shikikagami
17115	683	Tomomi Saikyo
17116	683	Mimina Ousawa
17117	683	Kaoru Daichi
17118	683	Mikan
17119	683	Pina Sformklan Estor
17120	683	Akiharu Hino
17121	683	Ayse Khadim
17122	683	Hedyeh
17123	683	Kaede Tenjouji
17124	683	Mitsuru Sanke
17125	683	Saori Shikikagami
17126	683	Shingo Todoroki
17127	683	Suiran Fou
17256	685	Himari Noihara
17257	685	Lizlet L Chelsie
17258	685	Ageha
17259	685	Kuesu Jinguji
17260	685	Shizuku
17261	685	Kaya
17262	685	Rinko Kuzaki
17263	685	Sae Kisaragi
17264	685	Aya
17265	685	Taizou Masaki
17266	685	Tama
17267	685	Yuto Amakawa
17268	685	Hyogo Kaburagi
17269	685	Shuten-douji
17270	685	Yu Shimamura
17271	686	Kannon 'White Wolf Kannon' Hakuorou
17272	686	Kaori Mana
17273	686	Mana Kuzumi
17274	686	Muneyoshi Ogasawara
17275	686	Nemuru Kushinada
17276	686	Shunichirou Sakaki
17277	686	Hiroshi Kuzumi
17278	686	Issei Tsumuhana
17279	686	Isuzu Tsumuhana
17280	686	Kaname 'Kana' Asagiri
17281	686	Big Bro
17282	686	Eiji Kasai
17283	686	Isuzu's Father
17284	686	Isuzu's Mother
17285	686	Juuzou Kushinada
17286	686	Machida
17287	686	Masaaki Kuzumi
17288	686	Masami Ichigaki
17289	686	Miyuki Washiu
17290	686	Sabu 
17291	686	Shigetsugu Kushinada
17292	686	Yui Yomoda
17293	687	Noel Kannagi
17294	687	Kanata Sorami
17295	687	Kureha Suminoya
17296	687	Filicia Heideman
17297	687	Iliya Arkadia 
17298	687	Rio Kazumiya
17299	687	Shuko
17300	687	Yumina
17301	687	Anna Blume
17302	687	Claus
17303	687	Martina Syrary
17304	687	Mishio
17305	687	Naomi
17306	687	Olga Tolstaya
17307	687	Seiya
17308	688	Togame
17309	688	Ginkaku Uneri
17310	688	Hakuhei Sabi
17311	688	Houou Maniwa
17312	688	Konayuki Itezora
17313	688	Nanami Yasuri
17314	688	Rinne Higaki
17315	688	Shichika Yasuri
17316	688	Akatsuki Tomoe
17317	688	Bangai Rogiri
17318	688	Biyorigou
17319	688	Boufura Maniwa
17320	688	Chouchou Maniwa
17321	688	Emonzaemon Souda
17322	688	Furachi Oniyadori
17323	688	Hannyamaru
17324	688	Kamakiri Maniwa
17325	688	Kanara Azekura
17326	688	Kawauso Maniwa
17327	688	Kokubo Sumigaoka
17328	688	Komori Maniwa
17329	688	Kousha Saraba
17330	688	Kuizame Maniwa
17331	688	Kyouken Maniwa
17332	688	Matsuaki Fugi
17333	688	Meisai Tsuruga
17334	688	Mitsubachi Maniwa
17335	688	Mutsue Yasuri
17336	688	Oshidori Maniwa
17337	688	Ou Haiga
17338	688	Pengin Maniwa
17339	688	Princess Hitei
17340	688	Shirasagi Maniwa
17341	688	Takahito Hida
17342	688	Umigame Maniwa
17343	688	Zanki Kiguchi
17344	689	Ekaterina Kurae
17345	689	Alexander Nikolaevich Hell
17346	689	Hana Katsuragi
17347	689	Tomo Yamanobe
17348	689	Urara Oikawa
17349	689	Fumika Mitarai
17350	689	Miyuri Tsujido
17351	689	Mutsumi Sendou
17352	689	Teresa Beria
17353	689	Elizabeth (Lizzy)
17354	689	Eva Silver
17355	689	Eva-Q
17356	689	Mafuyu Oribe
17357	689	Yuu Kuchiba
17358	689	Ayame Satsuki
17359	689	Edgar
17360	689	Eva-R
17361	689	Madame Lily
17362	689	Tsubasa Amano
17363	689	Yumie Hiiragi
17364	689	Yuri Noda
17365	689	Aoi Kuchiba
17366	689	Astarte
17367	689	Ayana Minase
17368	689	Friederich Tanner
17369	689	Joshua Phrygianos
17370	689	Lulu Shiizaki
17371	689	Milk
17372	689	Miyuki Seta
17373	689	Tasuku Fujiomi
17374	689	Wilma
17375	689	Anastasia
17376	689	Jita Phrygianos
17377	689	Nami Okiura
17378	689	Shinichiro Ootori
17379	689	Clifford C. J. Crawford
17380	689	Croa
17381	689	Doukan Sanada
17382	689	Fool
17383	689	Georg Tanner
17384	689	Jackal
17385	689	Leon Max Muller
17386	689	Nikuma
17387	689	Wan Chen
17388	690	Maki-Maki
17389	690	Nee-san (Iroe Genma)
17390	690	Okappa
17391	690	Beautiful person
17392	691	Daigorou
17393	691	Ku Chan
17394	691	Macaron
17395	691	Pi Chan
17396	691	Natsu Andou
17397	691	Ginga Hoshi
17398	691	Hayao Imagawa
17399	691	Wada
17400	692	Tooru Ichii
17401	692	Run Momoki
17402	692	Yuuko Nishi 
17403	692	Nagisa Tennouji
17404	692	Miho Noyama
17405	692	Kimiko Kitou
17406	692	Sachiyo Satou
17407	692	Taki Kamate
17408	692	Hira-chan
17409	692	Run's Mother
17410	692	Yutaka Imai
17411	692	Tansan
17412	692	Tooru's Mother
17413	693	Aria H. Kanzaki
17414	693	Reki
17415	693	Shirayuki Hotogi
17416	693	Riko Mine
17417	693	Jeanne d'Arc
17418	693	Kana
17419	693	Ryou Shiranui
17420	693	Tooru Sayonaki
17421	693	Misaki Nakasorachi
17422	693	Gouki Mutou
17423	693	Kanae Kanzaki
17424	693	Kinji Tooyama
17425	693	Umeko Tsuzuri
17426	693	Yutori Takamagahara
17427	693	Haimaki
17428	693	Vlad
17429	694	Astarotte Ygvar / Lotte
17430	694	Effie
17431	694	Ingrid Sorveig Sorgrims
17432	694	Mercelida Ygvar
17433	694	Asuha Touhara
17434	694	Unnbjorg Signar
17435	694	Zelda
17436	694	Elika Drakul Draupnils
17437	694	Isadora Finnsdottir
17438	694	Lucca Austri
17439	694	Mistrune Asgrim
17440	694	Naoya Touhara
17441	694	Porhelga Svarthaeo
17442	694	Cuthfleda
17443	694	Judith Snorrevik
17444	694	Sigurd Sveinsson Svarthaed
17445	694	Ursula Sumarlidi
17446	694	Enja Niuhali
17447	694	Isold
17448	694	Olaf Frismar
17449	694	Profesor Miina
17450	695	Rin Okumura
17451	695	Yukio Okumura
17452	695	Shura Kirigakure
17453	695	Mephisto Pheles
17454	695	Kuro / Cait Sith
17455	695	Renzou Shima
17456	695	Amaimon
17457	695	Shiemi Moriyama
17458	695	Shirou Fujimoto
17459	695	Izumo 'Eyebrows' Kamiki
17460	695	Ryuji Suguro
17461	695	Rin Okumura (child)
17462	695	Arthur Auguste Angel 
17463	695	Mephisto Pheles (dog form)
17464	695	Hamster
17465	695	Satan
17466	695	Takara
17467	695	Ukobach 
17468	695	Yukio Okumura (child)
17469	695	Yuri Frederick Egin
17470	695	Izumi
17471	695	Miwa Konekomaru 
17472	695	Nii-chan
17473	695	Shiemi's mother
17474	695	Yamada
17475	695	Yoshikuni XI
17476	695	Yui Sakamoto
17477	695	Behemoth
17478	695	Caliburn
17479	695	Chuuchi
17480	695	Doctor
17481	695	Igor Neuhaus
17482	695	Imai
17483	695	Inari Kami Mike
17484	695	Inari Kami Uke
17485	695	Kaoru Tsubaki
17486	695	Michelle Neuhaus
17487	695	Ms. Momoi
17488	695	Noriko Paku
17489	695	Shiemi's grandmother
17490	695	Tatsuma Suguro
17491	695	Youhei's father
17492	695	Yunokawa-sensei
17493	695	Adachi-sensei
17494	695	Astaroth
17495	695	Balthasar
17496	695	Bourguignon
17497	695	Butsu Zou
17498	695	Dokkalfr
17499	695	Ernst Frederick Egin
17500	695	Female teacher
17501	695	Ghost
17502	695	Gufuu
17503	695	Hoshino
17504	695	Kannon Zou
17505	695	Kashino
17506	695	Kyodo
17507	695	Leaper
17508	695	Masked Man
17509	695	Naberius
17510	695	Nishiwaki
17511	695	Oomoto
17512	695	Reiji Shiratori
17513	695	Satou-sensei
17514	695	Timothee Timowan
17515	695	Youhei
17516	696	Shiro
17517	696	Minatsuki Takami
17518	696	Kiyomasa Senji
17519	696	You Takami
17520	696	Ganta Igarashi
17521	696	Karako Koshio
17522	696	Toto Sakigami
17523	696	Bundo Rokuro
17524	696	Hibana Daida
17525	696	Nagi Kengamine
17526	696	Azuma Genkaku
17527	696	Makina
17528	696	Kyouko Kasuga
17529	696	Mimi
17530	696	Tsunenaga Tamaki
17531	697	Millhiore F Biscotti
17532	697	Yukikaze Panettone
17533	697	Leonmitchelli Galette des Rois
17534	697	Eclair Martinozzi
17535	697	Noir Vinocacao
17536	697	Brioche Dalkian
17537	697	Ricotta Elmar
17538	697	Cinque Izumi
17539	697	Gaul Galette des Rois
17540	697	Rebecca Anderson
17541	697	Rouge
17542	697	Jaune Clafoutis
17543	697	Riselle Conchiglie
17544	697	Vert Far Breton
17545	697	Bernard Sabrage
17546	697	Loran Martinozzi
17547	697	Amelita Trompette
17548	697	Evita Salles
17549	697	Fox Spirit Child
17550	697	Framboise Charley
17551	697	Halla
17552	697	Cinque's Father
17553	697	Cinque's Mother
17554	697	Daumas
17555	697	Emilio Alcide
17556	697	Fox Spirit Mother
17557	697	Godwin Dorure
17558	697	Homura
17559	697	Murakumo
17560	697	Remy Anderson
17561	697	Tatsumaki
17562	697	Wilma
17563	698	Enma
17564	698	Gariben
17565	698	Harumi
17566	698	Supokon
17567	698	Yukiko
17568	698	Chiiko
17569	698	Enpi
17570	698	Kapperu
17571	698	Renkonman
17572	698	Tobatiri
17573	698	Tsutomu
17574	699	Erio Touwa
17575	699	Meme Touwa
17576	699	Yashiro Hoshimiya
17577	699	Ryuuko Mifune
17578	699	Maekawa
17579	699	Makoto Niwa
17580	699	Tooe Ooi
17581	699	Ashiro
17582	699	Hanazawa
17583	699	Komaki
17584	699	Nakajima
17585	699	Ran Ooi
17586	699	Elliot
17587	699	Maekawa's Father
17588	699	Mikki
17589	699	Tamura
17590	700	Hashimoto
17591	700	Hiromitsu Ishida
17592	700	Hyoudou Kazutaka
17593	700	Isawa
17594	700	Kaiji Itou
17595	700	Kitagawa
17596	700	Kouji Ishida
17597	700	Koutarou Sakazaki
17598	700	Maeda
17599	700	Mikoko Sakazaki
17600	700	Murakami
17601	700	Numakawa
17602	700	Odagiri
17603	700	Ootsuki
17604	700	Seiya Ichijou
17605	700	Tomohiro Miyoshi
17606	700	Yokoi
17607	700	Yoshihiro Kurosaki
17608	700	Yuuji Endou
17609	701	Ohana Matsumae
17610	701	Minko Tsurugi
17611	701	Yuina Wakura
17612	701	Nako Oshimizu
17613	701	Tomoe Wajima
17614	701	Tooru Miyagishi
17615	701	Satsuki Matsumae
17616	701	Kouichi Tanemura
17617	701	Mana Oshimizu
17618	701	Sui Shijima
17619	701	Takako Kawajiri
17620	701	Denroku Sukegawa
17621	701	Enishi Shijima
17622	701	Eri Mizuno
17623	701	Haruhiko Komatsu
17624	701	Kayoko Oshimizu
17625	701	Kenji Hiwatari
17626	701	Kirito Sakurai
17627	701	Masako Hiwatari
17628	701	Namiko Igarashi
17629	701	Renji Togashi
17630	701	Tachibana Daughter
17631	701	Takuzou Misaki
17632	701	Tamio Oshimizu
17633	701	Tarou Jiroumaru
17634	701	Tomoya Oshimizu
17635	701	Yosuke Himawari 
17636	701	Yuki Kaito
17646	703	Ibuki Hinata
17647	703	Hina Sakai
17648	703	Ui Nakatsugawa
17649	703	Koyori Toudou
17650	703	Ayumu Hoshino
17651	703	Kasane Toudou
17652	703	Tsumugi Toudou
17653	703	Madoka Komoto
17654	703	Kazuma Hoshino
17655	703	Senka Yorozu
17656	703	Daigo Minamikokubaru
17657	703	Hina's Mother
17658	703	Keita Yamakawa
17659	703	Kuriko
17660	703	Madoka's Mother
17661	703	Minamikokubaru
17662	703	Senpai
17663	703	Ui's Father
17664	703	Ui's Mother
17665	703	Bagpipe Master
17666	703	Gengorou Yamakawa
17667	703	Hina's Father
17668	703	Madoka's Grandfather
17669	703	Ramen Shop Owner
17670	704	Kanon Mizushirou
17671	704	Shouko Aizawa
17672	704	Aqua
17673	704	Brownie
17674	704	Dian
17675	704	Garnet
17676	704	Kaede Kikuchi
17677	704	Kris
17678	704	Lapis
17679	704	Nix
17680	704	Peridot
17681	704	Ruby
17682	704	Alex
17683	704	Amelie
17684	704	Angela
17685	704	Charotte
17686	704	Chite
17687	704	Diana / Jill
17688	704	Flora
17689	704	Hinata Asaka
17690	704	Io
17691	704	Jasper
17692	704	Jill Konia
17693	704	Junko Mihara
17694	704	Kaiya
17695	704	King
17696	704	Kohaku
17697	704	Komachi Saotome
17698	704	Labra
17699	704	Luna
17700	704	Masago Kuroda
17701	704	Master
17702	704	Mikage Shiraishi
17703	704	Milky
17704	704	Nephrite
17705	704	Opal
17706	704	Prase
17707	704	Rald
17708	704	Rin
17709	704	Ryl
17710	704	Sango
17711	704	Sapphie
17712	704	Tata
17713	704	Teacher Iruka
17714	704	Titana
17715	704	Topaz
17716	704	Tour
17717	704	Yuke
17718	705	Natsuru Senou (female form)
17719	705	Shizuku Sango
17720	705	Akane Mishima
17721	705	Kaede Sakura
17722	705	Mikoto Kondou
17723	705	Hitomi Minagawa
17724	705	Ryouka Yamakawa
17725	705	Committee Chairperson
17726	705	Masumi Nishino
17727	705	Natsuru Senou (male form)
17728	705	Treasurer
17729	705	Vice-Rep
17730	705	Black Seppuku Rabbit
17731	705	Mikihito Higashida
17732	705	Disemboweled Tiger
17733	705	Electrocuted Wildcat
17734	705	Strangled Stray Dog
17735	706	Mariya Shidou
17736	706	Dorm Mistress / Ryouchou-sensei
17737	706	Kanako Miyamae
17738	706	Matsurika Shinouji
17739	706	Maki Natsuru
17740	706	Miki Miyamae
17741	706	Rindou Shinouji
17742	706	Ryuken Ishima
17743	706	Shizu Shidou
17744	706	Nanami Kiri
17745	706	Toichirou Kanae
17746	706	Yuzuru Inamori
17747	706	Ayano Enjouzi
17748	706	Banri Tsumugi
17749	706	Chifumi Satsuki
17750	706	Ei Hitotsubashi
17751	706	Fumi Kumagai
17752	706	Honoka Tsutsui
17753	706	Komachi Yamaki
17754	706	Mii Habutae
17755	706	Sachi Momoi
17756	706	Tonomura
17757	706	Touta Hanabusa
17758	706	Ayari Shiki
17759	706	Marie Irene Shidou
17760	706	Nandarou-kun
17761	706	Nishizaki-Sensei
17762	706	Yonakuni-san
17763	707	Minami Kawashima
17764	707	Tawara
17765	707	Ayano Houjou
17766	707	Brass Band Club President
17767	707	Daisuke Niimi
17768	707	Eishin Yanagisawa
17769	707	Fumiaki Kutsuki
17770	707	Hanae Chin
17771	707	Harumichi Tamura
17772	707	Jirou Kashiwagi
17773	707	Jun Hoshide
17774	707	Katou
17775	707	Keiichirou Asano
17776	707	Keizou Hakamata
17777	707	Kenta Doujima
17778	707	Makoto Kachi
17779	707	Makoto Takimoto
17780	707	Mari Tamagawa
17781	707	Masayoshi Nikai
17782	707	Nanako Saitou
17783	707	Sayaka Kojima
17784	707	Yasuyo Miyata
17785	707	Yuuki Miyata
17786	707	Yuunosuke Sakurai
17787	708	Professor
17788	708	Yuuko Aioi
17789	708	Mio Naganohara
17790	708	Nano Shinonome
17791	708	Mai Minakami
17792	708	Mihoshi Tachibana
17793	708	Sakamoto
17794	708	Haruna Annaka
17795	708	Koujirou Sasahara
17796	708	Misato Tachibana
17797	708	Izumi Sakurai
17798	708	Kenzaburou Daiku
17799	708	Kyoutou
17800	708	Makoto Sakurai
17801	708	Manabu Takasaki
17802	708	Principal Shinonome
17803	708	Tanaka
17804	708	Tomioka
17805	708	Tsuyoshi Nakanojou
17934	710	Aira Harune
17935	710	Mia Ageha
17936	710	Karin Shijimi
17937	710	Reina Miyama
17938	710	Rizumu Amamiya
17939	710	Jounouchi Serena
17940	710	Jun Takigawa
17941	710	Kyoko Asechi
17942	710	Mion Takamine
17943	710	Shou
17944	710	Toudou Kanon
17945	711	Kurisu Makise
17946	711	Ruka Urushibara
17947	711	Faris Nyannyan
17948	711	Rintarou Okabe
17949	711	Mayuri Shiina
17950	711	Suzuha Amane
17951	711	Moeka Kiryuu
17952	711	Itaru Hashida
17953	711	Yuugo Tennouji
17954	712	Kotetsu T. Kaburagi 
17955	712	Mari Myers
17956	712	Ivan Karelin 'Origami Cyclone'
17957	712	Barnaby Brooks Jr.
17958	712	Huang Pao-Lin 'Dragon Kid'
17959	712	Yuri Petrov
17960	712	Kaede Kaburagi
17961	712	Agnes Joubert
17962	712	Antonio Lopez 'Rock Bison'
17963	712	Jake Martinez
17964	712	Karina Lyle 'Blue Rose'
17965	712	Lily Myers
17966	712	Mary Myers
17967	712	Albert Maverick
17968	712	Alexander Lloyds
17969	712	Ben Jackson
17970	712	Cain Morris
17971	712	Doc Saito
17972	712	Dr. Rotwang
17973	712	Edward
17974	712	Hans Chuckman
17975	712	Isaac
17976	712	Keith Gooodman 'Sky High'
17977	712	Kriem
17978	712	Mario
17979	712	Mary Rose
17980	712	Mr. Legend
17981	712	Nathan Seymore 'Fire Emblem'
17982	712	Pauly
17983	712	Samantha Taylor
17984	712	Tony
17985	713	Toriko
17986	713	Coco
17987	713	Rin
17988	713	Sani
17989	713	Ichiryuu
17990	713	Love
17991	713	Acacia
17992	713	Aimaru
17993	713	Alfaro
17994	713	Appolo
17995	713	Aubin
17996	713	Barry Gamon
17997	713	Bei
17998	713	Bogie Woods
17999	713	Brunch
18000	713	Cedre
18001	713	Colonel Mokkoi
18002	713	Cumin
18003	713	Dohem
18004	713	Fond de Bohno
18005	713	Gido
18006	713	Grinpatch
18007	713	Guemon
18008	713	Jerry Boy
18009	713	Jirou
18010	713	Joejoe
18011	713	Kiss
18012	713	Komatsu
18013	713	Kruppo
18014	713	Kuromado
18015	713	Louie
18016	713	Mansam
18017	713	Match
18018	713	Melk the First
18019	713	Melk the Second
18020	713	Meria
18021	713	Morijii
18022	713	Naisunyi
18023	713	Ootake
18024	713	Papo
18025	713	Ponkochi
18026	713	Quinn
18027	713	Ram
18028	713	Rapp
18029	713	Ray
18030	713	Rikky
18031	713	Safla
18032	713	Setsuno
18033	713	Shigematsu
18034	713	Shin
18035	713	Smile
18036	713	Smith
18037	713	Starjun
18038	713	Takimaru
18039	713	Teppei
18040	713	Terry Cloth
18041	713	Tina
18042	713	Tom
18043	713	Tommyrod
18044	713	Uumen Umeda
18045	713	Yohanes
18046	713	Yosaku
18047	713	Yotsuchi
18048	713	Yun
18049	713	Yuu
18050	713	Zebra
18051	713	Zonge
18052	713	Zyper
18053	714	Meiko Honma 'Menma'
18054	714	Naruko Anjou 'Anaru'
18055	714	Chiriko Tsurumi 
18056	714	Atsumu Matsuyuki 'Yukiatsu'
18057	714	Jinta Yadomi 'Jintan'
18058	714	Satoshi Honma
18059	714	Tetsudou Hisakawa 'Poppo'
18060	714	Touko Yadomi
18061	714	Aki
18062	714	Atsushi Yadomi
18063	714	Irene Honma
18064	714	Minako
18065	714	Mother Anjou
18066	714	Haruna
18067	714	Manabu Honma
18068	715	Akutabe
18069	715	Beelzebub
18070	715	Azazel
18071	715	Gabriel
18072	715	God
18073	715	Gusion
18074	715	Hebi Harada
18075	715	Himoi
18076	715	Kiyoko
18077	715	Kotaro Dochin
18078	715	Manager
18079	715	Michael
18080	715	Moloch
18081	715	Okada
18082	715	Raphael
18083	715	Rinko Sakuma
18084	715	Salamander
18085	715	Sariel
18086	715	Undine
18087	715	Uriel
18088	715	Zeruel
18089	716	Mshyu
18090	716	Kou Sennoza
18091	716	Q
18092	716	Jennifer Satou
18093	716	Masakaki
18094	716	Daisuke Ebara
18095	716	Hanabi Ikuta
18096	716	Kimimaro Yoga
18097	716	Kyouko Sawamura
18098	716	Shimada
18099	716	Souichirou Mikuni
18100	716	Takako Mikuni
18101	716	Yoshiyuki Kikuchi
18102	716	Ebara's Wife
18103	716	Horii Ichirou
18104	716	Itaneda
18105	716	Kakuta
18106	716	Masafumi Mikuni
18107	716	Naoya Makita
18108	716	Shigeomi Takedazaki
18109	717	Saitohimea
18110	717	Gekkou Kurenai
18111	717	Mirai Andou
18112	717	Haruka Shigure
18113	717	Taito Kurogane
18114	717	Izumi Aomi
18115	717	Hasga Entolio
18116	717	Hinata Kurenai
18117	717	Saeko Suzae
18118	717	Serge Entolio
18119	717	Vishoub Eleranka
18120	717	Yuika Kurogane
18121	717	Yuuichi Philier Cross
18122	717	Edelka
18123	718	Mizuki Himeji
18124	718	Hideyoshi Kinoshita 
18125	718	Shouko Kirishima
18126	718	Minami Shimada
18127	718	Yoshii Akihisa
18128	718	Kouta Tsuchiya
18129	718	Yuuji Sakamoto
18130	718	Yuuko Kinoshita
18131	718	Kouta Summon
18132	718	Minami Summon
18133	718	Shouko Summon
18134	718	Akihisa Summon
18135	718	Hideyoshi Summon
18136	718	Yuuji Summon
18137	718	Mizuki Summon
18138	718	Yoko Takahashi
18139	718	Genji Hiraga
18140	719	Saya Kisaragi
18141	719	Fumito Nanahara
18142	719	Itsuki Tomofusa
18143	719	Shinichiro Tokizane
18144	719	Yuka Amino
18145	719	Dog
18146	719	Kanako Tsutsutori
18147	719	Nene Motoe
18148	719	Nono Motoe
18149	719	Tadayoshi Kisaragi
18150	720	Rin Kaga
18151	720	Gotou-san
18152	720	Reina Maeda
18153	720	Sayaka
18154	720	Daikichi Kawachi
18155	720	Haruko Maeda
18156	720	Hidaka
18157	720	Hideyuki Maeda
18158	720	Kawamura
18159	720	Kazumi Kawachi
18160	720	Kenji Kawachi
18161	720	Kouki Nitani
18162	720	Masako Yoshii
18163	720	Nabe
18164	720	Nobu
18165	720	Sachiko Kawachi
18166	720	Souichi Kaga
18167	720	Yukari Nitani
18168	721	Yune
18169	721	Alice Blanche
18170	721	Camille Blanche
18171	721	Claude Claudel
18172	721	Vagrant child
18173	721	Shione
18174	721	Alan
18175	721	Edgar
18176	721	Gidrel 'Zidrel'
18177	721	Jean Claudel
18178	721	Oscar Claudel
18179	721	Yannick
18180	722	Alice / Yuuko Shionji
18181	722	Meo / Charunee Kusakabe
18182	722	Ayaka Shinozaki
18183	722	Hiro / Hiroaki Kuwabara
18184	722	The Fourth / Soichirou Hinamori
18185	722	Ming-Li Huang
18186	722	Renji Hirasaka
18187	722	Major / Hitoshi Mukai
18188	722	Miku Kimura
18189	722	Narumi Fujishima
18190	722	Satoshi Teraoka
18191	722	Sayuri Kuroda
18192	722	Denchuu
18193	722	Iwao
18194	722	Kiichi Nemoto
18195	722	Masaya Kusakabe
18196	722	Mika
18197	722	Nishimura
18198	722	Shirou Hakamizaka
18199	722	Shouko Sakuma
18200	722	Tetsuo Ichinomiya
18201	722	Toshio Shinozaki
18202	722	Yoshiki 
18233	724	Haruka Minazuki
18234	724	Aoi Kannazuki
18235	724	Kurumi Hazuki
18236	724	Nyan Tomochi (Dojjiko)
18237	724	Satsuki Kondoh
18238	724	Tenshi-chan
18239	724	Tesla Violet
18240	724	Yuito Kisaragi (Misty Knight)
18241	724	Alexander
18242	724	Black Trader
18243	724	Heinojo Nagatsuki
18244	724	Misae Kannazuki
18245	724	Nine Violet
18246	724	Sakie Kannazuki
18247	724	Salome
18248	724	Setsuko Saijou (Saijo Joshi)
18249	724	Yayoi Shinmon
18250	725	Kirio Hyuuga
18251	725	Moyako Somaki
18252	725	Utao Kuga
18253	725	Aki Kuga
18254	725	Chihaya Senou
18255	725	Hibino Shiba
18256	725	Hitomi Kuga
18257	725	Hyuga Koushirou
18258	725	Kuuko Karahari
18259	725	Kyouhei Kuga
18260	725	Kyousuke Karahari
18261	725	Mahiru Hyuga
18262	725	Sahei Hyuuga
18263	725	Shingo Shiba
18264	725	Suou
18265	725	Yasuyuki Kuga
18266	725	Yurako Somaki
18267	726	Chifusa Manyuu
18268	726	Kagefusa Manyuu
18269	726	Kokage
18270	726	Okami
18271	726	Kaede
18272	726	Mizuki
18273	726	Ochichi-sama
18274	726	Oiso
18275	726	Oume
18276	726	Toyo
18277	726	Kagerou Manyuu
18278	726	Kasumi Manyuu
18279	726	Kirino Manyuu
18280	726	Kyoka Manyuu
18281	726	Osuzu
18282	726	Ouka Sayama
18283	726	Tomiyuka
18284	726	Yasha Manyuu
18285	726	Chikumi Munamori
18286	726	Hatomune Mie 
18287	726	Juchini
18288	726	Kayo
18289	726	Kenkyou
18290	726	Momoha Munamori
18291	726	Munenori Manyuu
18292	726	Muneyuki Manyuu
18293	726	Ofuji
18294	726	Omine
18295	726	Sakoji Itamune
18296	726	Tsuyuha Munamori
18297	726	Yasuke
18298	727	Shouma Takakura
18299	727	Kanba Takakura
18300	727	Princess of the Crystal
18301	727	Ringo Oginome
18302	727	Asami Kuho
18303	727	Chiemi takakura
18304	727	Himari Takakura
18305	727	Sanetoshi Watase
18306	727	Yuri Tokikago
18307	727	Hibari Isora
18308	727	Hikari Utada
18309	727	Keiju Tabuki
18310	727	Mario Natsume
18311	727	Masako Natsume
18312	727	Momoka Oginome
18313	727	Renjaku
18314	727	Yuki Tsubasa
18315	727	Yukina Kashiwagi
18316	728	Kanade Suzutsuki
18317	728	Subaru Konoe
18318	728	Masamune Usami
18319	728	Nakuru Narumi
18320	728	Kureha Sakamachi
18321	728	Choco
18322	728	Ichigo Saotome
18323	728	Maria
18324	728	Nagare Konoe
18325	728	Yamato Kurose
18326	728	Jirou Sakamachi
18327	728	Kinjiro Sakamachi
18328	728	Kosame Samejima
18329	728	Milk
18330	729	Mayu Morita
18331	729	Yumi Morita
18332	729	Chihoro Miura
18333	729	Girl with glasses / Megane musume
18334	729	Hama-sensei
18335	729	Hana Matsuzaka
18336	729	Kouichi Oono
18337	729	Maki-sensei
18338	729	Mayu's Father
18339	729	Miki Murakoshi
18340	729	Ritsuki Yamamoto
18341	729	Takashita Kobuko
18342	730	Takashi Natsume
18343	730	Madara
18344	730	Kaname Tanuma
18345	730	Kogitsune
18346	730	Hinoe
18347	730	Hiiragi
18348	730	Reiko Natsume
18349	730	Seiji Matoba
18350	730	Chobihige
18351	730	Jun Sasada
18352	730	Misuzu
18353	730	Shuuichi Natori
18354	730	Taki Touru
18355	730	Touko Fujiwara
18356	730	Aokuchinashi
18357	730	Atsushi Kitamoto
18358	730	Benio
18359	730	Kappa
18360	730	Murasaki
18361	730	Nanase
18362	730	Nyanko Sensei
18363	730	Sagume
18364	730	Satoru Nishimura
18365	730	Shigeru Fujiwara
18366	730	Tree Youkai
18367	731	Nezumi
18368	731	Shion
18369	731	Dog Keeper
18370	731	Lili
18371	731	Safu
18372	731	Ann
18373	731	Betty 
18374	731	Karan
18375	731	Rico 
18376	731	Rikiga
18377	731	Roy 
18378	731	Safu's Grandmother 
18379	731	Yamase 
18380	731	Yoming
18381	732	Yuki Onna \\ Tsurara Oikawa
18382	732	Kurotabou
18383	732	Nurarihyon (young)
18384	732	Rikuo Nura
18385	732	Hagoromo-Gitsune
18386	732	Kana Ienaga
18387	732	Kubinashi
18388	732	Mamiru Keikain
18389	732	Ryuuji Keikain
18390	732	Saori Maki
18391	732	Torii Natsumi
18392	732	Awashima
18393	732	Yukari
18394	732	Yura Keikain
18395	732	Amezo
18396	732	Aotabou
21016	810	Labra
18397	732	Dohiko
18398	732	Gagoze
18399	732	Gyuuki 
18400	732	Jirou Shima
18401	732	Kappa Dog
18402	732	Kidomaru
18403	732	Kiyotsugu Kiyojyuji
18404	732	Masatsugu’s Father
18405	732	Nurarihyon
18406	732	Reira
18407	732	Sadahime
18408	733	Raika Meiki
18409	733	Kurumi Kuroki 'Buchou'
18410	733	Misa Yoruno
18411	733	Utae Sonokoe
18412	733	Ran Musen
18413	733	Tsukuru Kagaku
18414	733	Fukune Narukara
18415	733	Katsuyo Kurabu
18416	733	Mai Kagura
18417	733	Saint Maria
18418	733	Aki Yosano
18419	733	Botan Beni
18420	733	Choushi Mei
18421	733	Meguru Tetsubou
18422	733	Ritsu Enshuu
18423	733	Star Kiya
18424	733	Suiboku Kuroki
18425	733	Taketo Akutagawa
18426	733	Tegakari Shimon
18427	734	Alma Tandouji
18428	734	Naito Kijima
18429	734	Ami
18430	734	Aoi Aiba
18431	734	Lau Fei Zui
18432	734	Makoto Kagami
18433	734	Ruri Aiba
18434	734	Ageha Yamaguchi
18435	734	Evil stone man number 0 (Zero) / Lau Honyuu
18436	734	Manami
18437	734	Miho
18438	734	Mother Aiba
18439	734	Nanami Akasaki
18440	734	Onigawara
18441	734	Rie
18442	734	Risa
18443	734	Saori
18444	734	Shiori
18445	734	SP (Sacred Parser)
18446	734	Wakana Itou
18447	734	Yumiko
18448	734	Yuuji Kenmi
18449	735	Meiko
18450	735	Chloe
18451	735	Gonta
18452	735	Hasumi Shirasaki
18453	735	Mayu
18454	735	Shamo
18455	735	Yurara Makuragi
18456	735	Yuzu Komiya
18457	735	Haruka
18458	735	Sasana Shousouin
18459	735	Yoshino
18460	735	Yukina Kamo
18461	736	Dalian
18462	736	Raziel
18463	736	Bookshelf Girl
18464	736	Flamberge
18465	736	Huey (young)
18466	736	Patricia Nash
18467	736	Armand Jeremiah
18468	736	Camilla Sauer Keynes
18469	736	Christabel Sistine
18470	736	Dallaglio Hayward
18471	736	Estella Lilburn
18472	736	Evans
18473	736	Fieron
18474	736	Fiona
18475	736	Hal Kamhout
18476	736	Hugh Anthony Disward 
18477	736	Ilas
18478	736	Kendrick
18479	736	Lenny Lentz
18480	736	Leticia Serkis
18481	736	Lianna Scholes
18482	736	Lord Moskin
18483	736	Martin Geese
18484	736	Meibel Nash
18485	736	Mildred Dewar
18486	736	Noss
18487	736	Paula Dickinson
18488	736	Professor
18489	736	Sir Balboa
18490	736	Vance
18491	736	Viola Duplessis
18492	737	Ipsilon (Shun Kazami)
18493	737	Miu
18494	737	Quon Mitsuchi
18495	737	Ryou
18496	737	Tei Ryuumonji
18497	737	Alpha (Fast Nemu Fumei)
18498	737	Beta (Harii)
18499	737	Chief of Technology
18500	737	Delta (Asuka Hizuru)
18501	737	Gamma (Rei)
18502	737	Genji Kamishiro
18504	737	Kiri Jougasaki
18505	737	Lisa
18506	737	Mayumi Sanada
18507	737	Midori Wakatsuki
18508	737	Quon Insania
18509	737	Seiji Kannazuki
18510	737	Takao
18511	737	Towa
18512	737	Tsutomu
18513	737	Yuriko Akatsuki
18514	737	Yuuma
18515	738	Shou Kurusu
18516	738	Otoya Ittoki
18517	738	Natsuki Shinomiya
18518	738	Tokiya Ichinose
18519	738	Ren Jinguuji
18520	738	Masato Hijirikawa
18521	738	Ringo Tsukimiya
18522	738	Cecil Aijima
18523	738	Haruka Nanami
18524	738	Kuppuru
18525	738	Tomochika Shibuya
18526	738	Ryuuya Hyuuga
18527	738	Shining Saotome
18528	739	Kyouko Toshinou
18529	739	Akari Akaza
18530	739	Ayano Sugiura
18531	739	Chinatsu Yoshikawa 
18532	739	Rise Matsumoto
18533	739	Yui Funami
18534	739	Chitose Ikeda
18535	739	Nana Nishigaki
18536	739	Sakurako Oomuro
18537	739	Himawari Furutani
18538	739	Mari
18539	739	Chizuru Ikeda
18540	739	Kaede Furutani
18541	739	Miraclerun
18542	739	Rivalun
18543	739	Tomoko Yoshikawa
18544	739	Akane Akaza
18545	739	Hiro Takaoka
18546	740	Akito Takagi
18547	740	Eiji Niizuma
18548	740	Kaya Miyoshi
18549	740	Miho Azuki
18550	740	Shinta Fukuda
18551	740	Yuriko Aoki
18552	740	Moritaka Mashiro
18553	740	Akira Hattori
18554	740	Gorou Miura
18555	740	Hidemitsu Ishizawa
18556	740	Hisashi Sasaki
18557	740	Kouji Yoshida
18558	740	Souichi Aida
18559	740	Takuro Nakai
18560	740	Yujiro Hattori
18561	741	Sen Yarizui
18562	741	Ayame Shaga
18563	741	Ume Shiraume
18564	741	Asebi Inoue
18565	741	Kyo Sawagi
18566	741	Hana Oshiroi
18567	741	Kyo Sawagi
18568	741	Brunette
18569	741	Ren Nikaidou
18570	741	Agohige
18571	741	Bozu
18572	741	Hiroaki Uchimoto
18573	741	Tomoaki Yamahara
18574	741	You Satou
18575	741	Yuu Kaneshiro
18576	742	Fear Kubrick
18577	742	Shiraho Sakuramairi
18578	742	Kirika Ueno
18579	742	Amanda Carlot / Mummy Maker
18580	742	Konoha Muramasa
18581	742	Sovereignty
18582	742	Kana Miyama
18583	742	Alice Bivorio Basskreigh
18584	742	Haruaki Yachi
18585	742	Peavey Barowoi
18586	742	Kuroe Ningyohara
18587	742	Taizo Hakuto
18588	742	Gabriel Sekaibashi
18589	742	Ganon Houjou
18590	742	Zenon Houjou
18591	743	Honoka Sawada 
18592	743	Itou-sensei
18593	743	Itsuki Takayama
18594	743	Karin
18595	743	Kyou Toono
18596	743	Mao
18597	743	Natsuki Takayama
18598	743	Principal
18599	743	Rai
18600	743	Shin Sugisaki
18601	743	Shiori Nakagawa 
18602	744	Chihaya Ayase
18603	744	Kanade Ooe
18604	744	Arata Wataya
18605	744	Taichi Mashima
18606	744	Ririka Tachikawa
18607	744	Shinobu Wakamiya
18608	744	Yuusei Nishida
18609	744	Akito Sudou
18610	744	Chieko Ayase
18611	744	Chitose Ayase
18612	744	Hidehiro Harada
18613	744	Hiro Kinashi
18614	744	Reiko Mashima
18615	744	Tsutomu Komano
18616	744	Yuu
18617	745	Saber
18618	745	Rin Tohsaka
18619	745	Illyasviel von Einzbern 'Ilya'
18620	745	Gilgamesh
18621	745	Irisviel von Einzbern
18622	745	Iskander
18623	745	Kiritsugu Emiya
18624	745	Kirei Kotomine
18625	745	Gilles de Rais
18626	745	Ryunosuke Uryu
18627	745	Kariya Matou
18628	745	Lancelot of the Lake
18629	745	Waver Velvet
18630	745	Assassin
18631	745	Diarmuid Ua Duibhne
18632	745	Hassan i Sabah
18633	745	Kayneth El-Melloi Archibald
18634	745	Maiya Hisau
18635	745	Grainne
18636	745	Aoi Tohsaka
18637	745	Fionn mac Cumhaill
18638	745	Risei Kotomine
18639	745	Sola-Ui Nuada-Re Sophia-Ri
18640	745	Tokiomi Tohsaka
18641	745	Zouken Matou
18642	746	Yuno Gasai
18643	746	Aru Akise
18644	746	Minene Uryuu (v2)
18645	746	Minene Uryuu (v1)
18646	746	Tsubaki Kasugano
18647	746	Yukiteru Amano 'Yukki'
18648	746	Mao Nonosaka
18649	746	Yomotsu Hirasaka
18650	746	Ai Mikami
18651	746	Reisuke Houjou
18652	746	Kamado Ueshita
18653	746	Mur Mur
18654	746	Orin Miyashiro
18655	746	Deus Ex Machina
18656	746	Hinata Hino
18657	746	Keigo Kurusu
18658	746	John Bacchus
18659	746	Marco Ikusaba
18660	746	Ouji Kousaka
18661	746	Rea Amano
18662	746	Funatsu
18663	746	Karyuudo Tsukishima
18664	746	Kurou Amano
18665	746	Masumi Nishijima
18666	746	Moe Wakaba 
18667	746	Ryuji Kurosaki
18668	746	Saika Gasai
18669	746	Takao Hiyama
18670	746	Taro Nanba
18671	746	Ushio Gasai
18672	747	Inori Yuzuriha
18673	747	Ayase Shinomiya
18674	747	Tsugumi
18675	747	Gai Tsutsugami
18676	747	Shu Ouma
18677	747	Yahiro Samukawa
18678	747	Hare Menjou
18679	747	Kenji Kido
18680	747	Daryl Yan
18681	747	Mana Ouma
18682	747	Argo Tsukishima
18683	747	Arisa Kuhouin
18684	747	Shibungi
18685	747	Souta Tamadate
18686	747	Fyu-neru
18687	747	Haruka Ouma
18688	747	Kanon Kusama
18689	747	Oogumo
18690	748	Yoshinoya
18691	748	Hiro
18692	748	Nori
18693	748	Miyako
18694	748	Sae
18695	748	The Principal
18696	748	Yuno
18697	748	Nazuna
18698	748	Ooya-san
18699	749	Neito / Nate Argenté Loup Mitotsudaira
18700	749	Futayo Honda
18701	749	Kimi Aoi
18702	749	Makiko Oriotorai
18703	749	P-01s / Horizon Ariadust
18704	749	Malga Naruze
18705	749	Margot Knight
18706	749	Gin Tachibana
18707	749	Heidi Ogezevara
18708	749	Masazumi Honda
18709	749	Musashi
18710	749	Queen Elizabeth
18711	749	Suzu Mukai
18712	749	Tomo Asama
18713	749	Tori Aoi
18714	749	Turenne
18715	749	Azuma
18716	749	Kazuno
18717	749	Naomasa
18718	749	Adele Balfetto
18719	749	Juana
18720	749	Kuromo no Kemono
18721	749	Miriam Pookuu
18722	749	Noriki
18723	749	Yoshiki Aoi
18724	749	Diego Velazquez
18725	749	El Azul
18726	749	Felipe Segundo
18727	749	Flores Valdes
18728	749	Fusae Era
18729	749	Galileo
18730	749	Ginji Ohiroshiki
18731	749	Hassan Fullbush
18732	749	Innocentius / Pope
18733	749	Jizurisuzaku
18734	749	Kenji Ito
18735	749	Kiyonari Urukiaga
18736	749	Konishi
18737	749	Masanobu Honda
18738	749	Michiyukibyakko
18739	749	Mitsuki Sanyou
18740	749	Motonobu Matsudaira 'Puppet man (yes-man)'
18741	749	Muneshige Tachibana
18742	749	Nenji
18743	749	Pedero Valdes
18744	749	Persona
18745	749	Shirojiro Bertoni
18746	749	Tadakatsu Honda
18747	749	Tadatsugu Sakai
18748	749	Takakane Hironaka
18749	749	Tenzou Crossunite
18750	749	Toussaint Neshinbara
18751	749	Yoshinao
18752	750	Killua Zoldyck
18753	750	Hisoka
18754	750	Gon Freecss
18755	750	Kurapika
18756	750	Illumi Zoldyck
18757	750	Neferpitou
18758	750	Biscuit Kruger
18759	750	Machi
18760	750	Feitan
18761	750	Ikalgo
18762	750	Kalluto Zoldyck
18763	750	Kanaria
18764	750	Kite
18765	750	Knuckle Bine
18766	750	Komugi
18767	750	Leorio Paladinight
18768	750	Meleoron
18769	750	Phinxs
18770	750	Shaiapouf
18771	750	Shoot McMahon
18772	750	Wing
18773	750	Alluka Zoldyck
18774	750	Amane
18775	750	Beans
18776	750	Bonolenov
18777	750	Cheetu
18778	750	Chrollo Lucilfer
18779	750	Colt
18780	750	Eeta
18781	750	Elena
18782	750	Franklin
18783	750	Ging Freecss
18784	750	Kanzai
18785	750	Kikyou Zoldyck
18786	750	Koltopi
18787	750	List
18788	750	Melody
18789	750	Menchi
18790	750	Meruem
18791	750	Neon Nostrade
18792	750	Nobunaga Hazama
18793	750	Pakunoda
18794	750	Palm Siberia
18795	750	Pariston Hill
18796	750	Piyon
18797	750	Ponzu
18798	750	Satotz
18799	750	Tonpa
18800	750	Uvogin
18801	750	Zazan
18802	750	Zeno Zoldyck
18803	750	Zushi
18804	750	Abengane
18805	750	Amori
18806	750	Anita
18807	750	Baiser
18808	750	Bashou
18809	750	Bendot
18810	750	Bloster
18811	750	Bodoro
18812	750	Botobai Gigante
18813	750	Bourbon
18814	750	Buhara
18815	750	Cheadle Yorkshire
18816	750	Chimera Ant Queen
18819	750	Coco Loo
18820	750	Dalzollene
18821	750	Eliza
18822	750	Gereta
18823	750	Gido
18824	750	Ginta
18825	750	Gotō
18826	750	Hanzo
18827	750	Hina
18828	750	Imori
18829	750	Isaac Netero
18830	750	Ivlenkov
18831	750	Kastro
18832	750	Kattsuo
18833	750	Knov
18834	750	Lelute
18835	750	Light Nostrade
18836	750	Linsen
18837	750	Lippo
18838	750	Menthuthuyoupi
18839	750	Mike
18840	750	Milluki Zoldyck
18841	750	Mito Freecss
18842	750	Mizaistom Nana
18843	750	Mizuken
18844	750	Morel Mackernasey
18845	750	Neon Nostrade
18846	750	Nicolas
18847	750	Omokage
18848	750	Peggy
18849	750	Pike
18850	750	Pokkle
18851	750	Rammot
18852	750	Razor
18853	750	Retz
18854	750	Riehlvelt
18855	750	Sadaso
18856	750	Seaquant
18857	750	Sedokan
18858	750	Shachmono Tocino
18859	750	Shalnark
18860	750	Shizuku
18861	750	Silva Zoldyck
18862	750	Sommy
18863	750	Squala
18864	750	Supa
18865	750	Tsubone
18866	750	Umori
18867	750	Welfin
18868	750	Yunju
18869	750	Zebro
18870	750	Zepile
18871	751	Sena Kashiwazaki
18872	751	Kobato Hasegawa
18873	751	Yozora Mikazuki
18874	751	Maria Takayama
18875	751	Rika Shiguma
18876	751	Yukimura Kusunoki
18877	751	Kodaka Hasegawa
18878	751	Pegasus Kashiwazaki
18879	752	Adele Collette
18880	752	Alauda
18881	752	Dio Eraclea
18882	752	Fam Fan Fan
18883	752	Farahnaz
18884	752	Felicite Collette
18885	752	Giselle Collette
18886	752	Liliana il Grazion Merlo Turan
18887	752	Luscinia Hafez
18888	752	Sara
18889	752	Vasant
18890	752	Alister Agrew
18891	752	Atamora Collette
18892	752	Fritz
18893	752	Heine
18894	752	Johann
18895	752	Kyvaan
18896	752	Milia il Velch Cutrettola Turan
18897	752	Orlan
18898	752	Rene Collette
18899	752	Sadri
18900	752	Soroush
18901	752	Tatiana Wisla
18902	752	Teddy
18903	752	Tereza Collette
18904	753	Momoyo Kawakami
18905	753	Yukie Mayuzumi
18906	753	Kazuko Kawakami
18907	753	Miyako Shina
18908	753	Christiane Friedrich
18909	753	Kokoro Fushikawa
18910	753	Koyuki Sakakibara
18911	753	Margit Eberbach
18912	753	Yamato Naoe
18913	753	Azumi Oshitari
18914	753	Chika Ogasawara
18915	753	Mayo Amakasu
18916	753	Shouichi Kazama
18917	753	Gakuto Shimazu
18918	753	Hideo Kuki
18919	753	Ikurou Fukumoto
18920	753	Kuroko Haguro
18921	753	Suguru Oogushi
18922	753	Tadakatsu Minamoto
18923	753	Takuya Morooka
21440	828	Aldra
18924	754	Aki Nijou
18925	754	Minori Rokujou
18926	754	Azuki Shinatsu
18927	754	Haruko Amaya
18928	754	Kodama Himegami
18929	754	Inaho Kushiya
18930	754	Lilou Finnian
18931	754	Syria Ootsuka
18932	754	Aililou Finnian
18933	754	Chacha Akaza
18934	754	Furan Takaki
18935	754	Kimi Satou
18936	754	Tomika Amato
18937	754	Yuuka Amato
18938	754	Akaya Kodai
18939	754	Demitra Midia
18940	754	Gen Tagayashi
18941	754	Minerva Martha
18942	754	Uruchi Minaya
18943	754	Yang Ming
18944	754	Kengo Usui
18945	754	Kikyo Yamato
18946	754	Kinua Garrett
18947	754	Takeru Ohyama
18948	755	Miu Amaha
18949	755	Sana Inui
18950	755	Airi Sena
18951	755	Sakuno Uryuu
18952	755	Pannya
18953	755	Angelina Nanatsu Sewell
18954	755	Yuiko Amaha
18955	755	Yukari Amaishi
18956	755	Itsuki Asakura
18957	755	Kouichi Mizuhara
18958	755	Masumi Kazekawa
18959	755	Mitsuko Yukimori
18960	755	Shingo Uryuu
18961	756	Asemu Asuno
18962	756	Ayla Rose
18963	756	Emily Amonde
18964	756	Flit Asuno
18965	756	Iwark Bria
18966	756	Kio Asuno
18967	756	Yurin L'Ciel
18968	756	Aaron Simmons
18969	756	Adams Tinel
18970	756	Alan Lightney
18971	756	Ally Rein
18972	756	Alzack Birmings
18973	756	Arabel Zoi
18974	756	Arisa Gunhale
18975	756	Captain Ash
18976	756	Carl Dawson
18977	756	Darrest Goon
18978	756	Daz Roden
18979	756	Deen Anon
18980	756	Derek Jackel
18981	756	Desil Galette
18982	756	Deymon Large
18983	756	Dian von Lloyd
18984	756	Dique Gunhale
18985	756	Dole Frost
18986	756	Don Boyage
18987	756	Dorene Ezelcant
18988	756	Edward Ottawa
18989	756	Elle Tonys
18990	756	Emily Asuno
18991	756	Ethan Sherou
18992	756	Falk Okramdo
18993	756	Fezarl Ezelcant
18994	756	Flit Asuno
18995	756	Fram Nara
18996	756	Frederic Algreus
18997	756	Geera Zoi
18998	756	Girard Spriggan
18999	756	Glatt Otto
19000	756	Glynn Rise
19001	756	Godom Tyneham
19002	756	Grodek Ainoa
19003	756	Hans Rouge
19004	756	Hendrick Bruzar
19005	756	Igor Ehans
19006	756	Iino Resin
19007	756	Irissya Murai
19008	756	Jonathan Gistav
19009	756	Jose Maris
19010	756	Lacto Elphamel
19011	756	Lalaparly Maddorna
19012	756	Largan Drace
19013	756	Leil Light
19014	756	Liria Briar
19015	756	Lu Anon
19016	756	Lucca
19017	756	Macil Boyd
19018	756	Max Hartway
19019	756	Medel Zant
19020	756	Millais Alloy
19021	756	Mink Leiden
19022	756	Mukred Maddorna
19023	756	Natola Einaus
19024	756	Obright Lorain
19025	756	Odio Bran
19026	756	Onnette Corey
19027	756	Otro Banda
19028	756	Remi Ruth
19029	756	Rod Abus
19030	756	Rody Maddona
19031	756	Romary Stone
19032	756	Ruddock Horn
19033	756	Sara Ainoa
19034	756	Serick Abis
19035	756	Shanalua Mullen
19036	756	Shawee Belton
19037	756	Stoller Guavaran
19038	756	Taku
19039	756	Teshiru Gourette
19040	756	Unoa Asuno
19041	756	Unoa Asuno
19042	756	Vargas Dyson
19043	756	Walt Bedd
19044	756	Wendy Hearts
19045	756	Wilna Janisti
19046	756	Wong Kastrova
19047	756	Woolf Enneacle
19048	756	Woolf Enneacle
19049	756	Wootbit Gunhale
19050	756	Yaku Dore
19051	756	Yuu 
19052	756	Zanard Beihat
19053	756	Zeheart Galette
19054	756	Zera Gins
19055	757	Yu Narukami
19056	757	Yukiko Amagi
19057	757	Chie Satonaka
19058	757	Yosuke Hanamura
19059	757	Rise Kujikawa
19060	757	Naoto Shirogane
19061	757	Kanji Tatsumi
19062	757	Nanako Dojima
19063	757	Izanagi
19064	757	Konohana Sakuya
19065	757	Kou Ichijo
19066	757	Margaret
19067	757	Tohru Adachi
19068	757	Ai Ebihara
19069	757	Daisuke Nagase
19070	757	Himiko
19071	757	Saki Konishi
19072	757	Sayoko Uehara
19073	757	Sukuna-Hikona
19074	757	Teddie
19075	757	Tomoe Gozen
19076	757	Igor
19077	757	Jiraiya
19078	757	Kinshiro Morooka
19079	757	Kintoki-Douji
19080	757	Ryotaro Dojima
19081	757	Take-Mikazuchi
19082	758	Ana Gram
19083	758	Kaito Daimon
19084	758	Nonoha Itou
19085	758	Souji Jikukawa
19086	758	Bishop
19087	758	Cubic G
19088	758	Airi Mizutani
19089	758	Baron Kaidou
19090	758	Dice man
19091	758	Doubt
19092	758	Elena Himekawa
19093	758	Funga
19094	758	Gammon Sakanoue
19095	758	Herbert Muller
19096	758	Maze
19097	758	Miharu Sakanoue
19098	758	Naoki Takeda
19099	758	Rook Banjou Crossfield
19100	758	Tamaki Chieno
19101	758	Young man X
19102	758	Yuuichi Aizawa
19103	759	Kanami Yuta
19104	759	Scherice Adjani
19105	759	Asuka Tachibana
19106	759	Mimori Kiryuu
19107	759	Ryuhou
19108	759	Akira Terada
19109	759	Ayase Terada
19110	759	Biff
19111	759	Cammy
19112	759	Elian Zigmar
19113	759	Emergy Maxfell
19114	759	George Tatsunami
19115	759	Kazuma
19116	759	Kunihiko Kimishima
19117	759	Kyoji Mujou
19118	759	Martin Zigmar
19119	759	Straight Cougar
19120	759	Taisuke Ino
19121	759	Urizane
19122	760	Kou Yukina
19123	760	Ritsu Onodera
19124	760	Masamune Takano
19125	760	Yuu Yanase
19126	760	Chiaki Yoshino
19127	760	Shouta Kisa
19128	760	Takafumi Yokozawa
19129	760	Yoshiyuki Hatori
19130	760	Ryuuichirou Isaka 
19131	760	Kanade Mino
19132	760	An Kohinata
19133	760	Tanaka
19134	761	Flame Haze Shana
19135	761	Johan
19136	761	Rebecca Reed
19137	761	Snake of the Festival
19138	761	Chiara Toscana
19139	761	Pirsoyn
19140	761	Sale Habichtsburg
19141	761	Barma
19142	761	Centerhill
19143	761	Dan Rogers
19144	761	Decarabia
19145	761	East Edge
19146	761	Ernest Frieder
19147	761	Fecor
19148	761	Francois Auric
19149	761	Gyuuki
19150	761	Gyuuki(Human Form)
19151	761	Haborym
19152	761	Hildegard
19153	761	Justus
19154	761	Leanan Sidhe
19155	761	Lerajie
19156	761	Louie
19157	761	Mammon
19158	761	Orobas
19159	761	Ose
19160	761	Paimon
19161	761	Para
19162	761	Para(Human form)
19163	761	Purson
19164	761	Ribesal the Raging Wraith
19165	761	Rofocale
19166	761	Samuel Demantius
19167	761	Sophie Sawallisch
19168	761	Southvalley
19169	761	Stolas
19170	761	Uvall
19171	761	Westshore
19172	761	Yu Xuan
19173	761	Zemyna
19174	762	Squid Girl
19175	762	Alex
19176	762	Cindy Campbell
19177	762	Eiko Aizawa
19178	762	Ayumi Tokita
19179	762	Chizuru Aizawa
19180	762	Kiyomi Sakura
19181	762	Mini Squid Girl
19182	762	Nagisa Saitou
19183	762	Sanae Nagatsuki
19184	762	Shouta Kuroishi
19185	762	Tomomi Mochizuki
19186	762	Aiko Saitou
19187	762	Ayano Watanabe
19188	762	Clark
19189	762	Gorou Arashiyama
19190	762	Harris
19191	762	Martin
19192	762	Risa
19193	762	Takeru Aizawa
19194	762	Tatsuo Isozaki
19195	762	Yuka Nishimura
19196	762	Yuuta Matsumoto
19197	763	Kaoru Hanawa
19198	763	Maon Sakurada
19199	763	Chihiro Miyoshi
19200	763	Fu Sawatari 'Potte'
19201	763	Komachi Shinoda
19202	763	Kou Sawatari
19203	763	Norie Okazaki
19204	763	Momoneko-sama
19205	763	Riho Shihomi
19206	763	Sayomi Hanawa
19207	764	Inga
19208	764	Inga (Female)
19209	764	An Osada
19210	764	Izumi Koyama
19211	764	Mine Kuramitsu
19212	764	Motoko Tanimura
19213	764	Rie Kaishou
19214	764	Rinroku Kaishou
19215	764	Sayo Izawa
19216	764	Seigen Hayami
19217	764	Shinjuurou Yuuki
19218	764	Sumie Yada
19219	764	Youko Hirata
19220	765	Yachiyo Todoroki
19221	765	Popura Taneshima
19222	765	Aoi Yamada
19223	765	Izumi Takanashi
19224	765	Jun Satou
19225	765	Kyouko Shirafuji
19226	765	Nazuna Takanashi
19227	765	Hiroomi Souma
19228	765	Mahiru Inami
19229	765	Haruna Otoo
19230	765	Kozue Takanashi
19231	765	Maya Matsumoto
19232	765	Souta Takanashi
19233	765	Stray kid
19234	765	Hyougo Otoo
19235	765	Kazue Takanashi
19236	765	Kirio Yamada
19237	765	Mitsuki Mashiba
19238	765	Momoka Suzutani
19239	765	Mother 
19240	765	Ritsuko Kitahara
19241	765	Youhei Mashiba
19242	766	Shun Matsuoka
19243	766	Yuki Asaba
19244	766	Yuta Asaba
19245	766	Kaname Tsukahara
19246	766	Koichi Azuma
19247	766	Chizuru Tachibana
19248	766	Akira
19249	766	Fuyuki Matsuoka 
19250	766	Hisako Aida
19251	766	Kaori
19252	766	Kayo Sakura
19253	766	Kyoko Mamiya
19254	766	Masaki Sato
19255	766	Rina Takahashi 
19256	766	Ryunosuke Matsushita 
19257	766	Shizuna Aida
19258	766	Youko Tsukahara 
19259	767	Mari Amatsuka
19260	767	Tsurara Amatsuka
19261	767	Watayuki Amatsuka
19262	767	Haruka Amatsuka
19263	767	Hikaru Amatsuka
19264	767	Hotaru Amatsuka
19265	767	Kosame Amatsuka
19266	767	Miharu Amatsuka
19267	767	Mizore Amatsuka
19268	767	Mizuki Amatsuka
19269	767	Nijiko Amatsuka 
19270	767	Rikka Amatsuka 
19271	767	Sakura Amatsuka
19272	767	Seika Amatsuka
19273	767	Urara Amatsuka
19274	767	Fubuki Amatsuka
19275	767	Mama
19276	767	Sora Amatsuka
19277	767	Yuuna Amatsuka
19278	767	Asahi Amatsuka
19279	767	Youtarou Amatsuka
19308	769	Alice Gehabich
19309	769	Runo Misaki
19310	769	Shun Kazami 
19311	769	Spectra Phantom
19312	769	Baron Leltoy
19313	769	Daniel Kuso
19314	769	Mira Clay
19315	769	Soon
19316	769	Ace Grit
19317	769	Anubias 
19318	769	Ben
19319	769	Callum
19320	769	Chris
19321	769	Dylan 
19322	769	Fabia Sheen
19323	769	Gunz Lazar
19324	769	Gus Grav
19325	769	Jack Punt
19326	769	Jerryl
19327	769	Kato
19328	769	Lucas
19329	769	Mag Mel/Barodius 
19330	769	Marucho
19331	769	Noah
19332	769	Paige 
19333	769	Rafe
19334	769	Robin
19335	769	Sellon
19336	769	Sion
19337	770	Aoi Kunieda
19338	770	Hildegard
19339	770	Tatsumi Oga
19340	770	Kaiser de Emperana Beelzebub IV
19341	770	Takayuki Furuichi
19342	770	Hidetora Tojo
19343	770	Lamia
19344	770	Ryoko Asuka
19345	770	Yuka Hanazawa
19346	770	Chiaki Tanimura
19347	770	Hajime Kanzaki
19348	770	Shizuka Nanami
19349	770	Agiel
19350	770	Kaname Izuma
19351	770	Misaki Oga
19352	770	Nene Oomori
19353	770	Zenjuuro Saotome
19354	770	Azusa Fujisaki
19355	770	En
19356	770	Hecadoth
19357	770	Kaoru Jinno
19358	770	Kazuya Yamamura
19359	770	Kouta Kunieda
19360	770	Mitsuteru Sakaki
19361	770	Naga
19362	770	Sachura
19363	770	Shintarou Natsume
19364	770	Shoji Aizawa
19365	770	Tatsuya Himekawa
19366	770	The Demon Lord
19367	770	Yolda
19368	770	Angelica
19369	770	Arandron Bathin de Emuna
19370	770	Behemoth
19371	770	Chato
19372	770	Edda
19373	770	Forkas Rachmaninoff
19374	770	Galle
19375	770	Good Night Shimokawa
19376	770	Hiromichi Gou
19377	770	Hisaya Miki
19378	770	Ichiro Alex Rodriguez Shinjo
19379	770	Isafuyu Kashino
19380	770	Izabella
19381	770	Jabberwock
19382	770	Kaoru Umemiya
19383	770	Killer Machine Abe
19384	770	Koutarou Mikagami
19385	770	Miwa
19386	770	Oga's Father
19387	770	Oga's Mother
19388	770	Ryuichi Sanada
19389	770	Ryuuji Sanada
19390	770	Taeko Furuna
19391	770	Takeshi Shiroyama
19392	770	Takumi Dezaki
19393	770	Takumi Sadohara
19394	770	Unshou Onizuka
21441	828	Elina
19605	772	Aichi Sendou
19606	772	Misaki Tokura
19607	772	Toshiki Kai
19608	772	Assisticat
19609	772	Ren Suzugamori
19610	772	Taishi Miwa
19611	772	Emi Sendou 
19612	772	Blader Dark
19613	772	Blaster Blade
19614	772	High Dog Breeder, Akane
19615	772	Kenji Mitsusada
19616	772	Rekka Tatsunagi
19617	772	Shin Nitta
19618	772	Tetsu Shinjyou
19619	772	Asaka Narumi
19620	772	Crimson Butterfly, Brigitte
19621	772	Demon Slaying Knight, Lohengrin
19622	772	Doctor O
19623	772	Dragon Dancer, Monica
19624	772	Eiji Saga
19625	772	Flash Shield, Iseult
19626	772	Future Knight, Llew
19627	772	Gai Usui
19628	772	Gigantech Charger
19629	772	Gouki Daimonji
19630	772	Great Sage, Barron
19631	772	Hiroshi Nakatsugawa
19632	772	Kamui Katsuragi
19633	772	Kaoru Komatsubara
19634	772	Katsumi Morikawa
19635	772	King of Knights, Alfred
19636	772	Knight of Rose, Morgana
19637	772	Knight of Silence, Gallatin
19638	772	Knight of the Harp, Tristan
19639	772	Knight of Truth, Gordon
19640	772	Kourin Tatsunagi
19641	772	Kyou Yahagi
19642	772	Little Sage, Marron
19643	772	Mark Whiting
19644	772	MC Mya
19645	772	Nagisa Daimonji
19646	772	Ninja Master M
19647	772	Reiji Uno
19648	772	Shizuka Sendou
19649	772	Solitary Knight, Gancelot
19650	772	Suiko Tatsunagi 
19651	772	Swordsman of the Explosive Flames, Palamedes
19652	772	Yggdrasil Maiden, Elaine
19653	772	Yuri Usui
19654	772	Yuta Izaki
19655	773	Ai
19656	773	Rose
19657	773	Eriko Nanao
19658	773	Maruga
19659	773	Ryuji Kisaragi
19660	773	Misaki Etou
19661	773	Bianca Alexandra Lou
19662	773	Mao Aikawa
19663	773	Masato Aikawa
19664	773	Onyx
19665	773	Sapphi
19666	773	George Evans
19667	773	Kai
19668	773	Saiki
19669	773	Senzaki
19670	773	Tokura
19671	774	Merry Nightmare
19672	774	Isana Tachibana
19673	774	Engi Threepiece
19674	774	Chaser John Doe
19675	774	Chizuru Kawanami
19676	774	Yui Kounagi
19677	774	Mystletainn
19678	774	Yumeji Fujiwara
19679	774	Lestion
19680	774	Maze Landsbourough
19681	774	Old Man Tachibana
19682	775	Nessa
19683	775	Phryne
19684	775	Sanko
19685	775	Barrot
19686	775	Butcher
19687	775	Clain Necran
19688	775	Collin
19689	775	Dias
19690	775	Enri Granitz
19691	775	Gale
19692	775	Meegan
19693	775	Moeran
19694	775	Sunda Granitz
19695	775	Takami
19696	776	Satellizer el Bridget
19697	776	Rana Linchen
19698	776	Cathy Lockharte
19699	776	Arnett McMillian
19700	776	Chiffon Fairchild
19701	776	Ingrid Bernstein
19702	776	Attia Simmons
19703	776	Elizabeth Mably
19704	776	Ganessa Roland
19705	776	Ticy Phenyl
19706	776	Creo Brand
19707	776	Kaho Hiiragi
19708	776	Olivia L. Bridget
19709	776	Milena Marius
19710	776	Miyabi Kannazuki
19711	776	Aika Takeuchi
19712	776	Audrey Duval
19713	776	Elise Schmitz
19714	776	Kazuha Aoi
19715	776	Kim Yumi
19716	776	Leo Bernard
19717	776	Noelle Alongrutch
19718	776	Sister Margaret
19719	776	Tris McKenzie
19720	776	Andre Francoise
19721	776	Arthur Crypton
19722	776	Gengo Aoi
19723	776	Kazuya Aoi
19724	776	Louis L.Bridgette
19725	776	Maria Lancelot
19726	776	Marin Maxwell
19727	776	Mark
19728	776	Satellizer Alongrutch
19729	776	Violet el Bridget
19730	777	Sawako Kuronuma
19731	777	Shouta Kazehaya
19732	777	Ryuu Sanada
19733	777	Chizuru Yoshida
19734	777	Tooru Sanada
19735	777	Ayane Yano
19736	777	Kazuichi Arai
19737	777	Kento Miura
19738	777	Ume Kurumizawa 'Kurumi'
19739	777	Chigusa Takahashi
19740	777	Eriko Hirano
19741	777	Genji Sanada
19742	777	Mr. Kuronuma
19743	777	Souichi Jounouchi
19744	777	Tomoko Endou
19745	777	Yagi
19746	777	Youko Kuronuma
19747	777	Yuka
19748	778	Victorique de Blois 
19749	778	Kazuya Kujou
19750	778	Brian Roscoe
19751	778	Ambrose
19752	778	Avril Bradley
19753	778	Cordelia Gallo
19754	778	Julie Guile
19755	778	Maxim
19756	778	Anastasia
19757	778	Cecil Lafitte
19758	778	Coco Rose
19759	778	Grevil de Blois
19760	778	Harminia
19761	778	Ian Musgrave
19762	778	Jacqueline de Signore
19763	778	Kuiaran II
19764	778	Leviathan
19765	778	Marion
19766	778	Mildred Arbogast
19767	778	Millie Marl
19768	778	Ruri Kujo
19769	778	Sophie
19770	778	The Orphan
19771	778	Yutaka Kujo
19772	778	Alan
19773	778	Baron Musgrave
19774	778	Britannia Gabriel
19775	778	Camilla \\ Carmilla
19776	778	Derek Banks
19777	778	Garnier 
19778	778	Gideon Lesglant
19779	778	Ginger Pie
19780	778	Jupiter Roget
19781	778	Kai Wong
19782	778	Kazuya's Mother 
19783	778	Lee
19784	778	Luigi
19785	778	Marquis Albert de Blois
19786	778	Maurice
19787	778	Morella
19788	778	Ned Baxter
19789	778	Nicole Leroux
19790	778	Raoul
19791	778	Roxane 
19792	778	Rupert de Gille
19793	778	Sam Oneil
19794	778	Sergius
19795	778	Signore 
19796	778	Simon Hunt
19797	778	Theodore 
19798	778	Yasuhiro Kujou
19799	779	Iroha Tsuchiura
19800	779	Nao Takanashi
19801	779	Daigo Kurosaki
19802	779	Haruka Katou
19803	779	Hirono Kusuhara
19804	779	Mayuka Kondou
19805	779	Nanaka Takanashi
19806	779	Shuusuke Takanashi
19807	779	Keiichirou Kishikawa
19808	779	Shuji Takanashi
19809	779	Takumi Yamashiro
19810	780	Laura Bodewig
19811	780	Charlotte Dunois
19812	780	Houki Shinonono
19813	780	Huang Lingyin
19814	780	Chifuyu Orimura
19815	780	Cecilia Alcott
19816	780	Honne Nohotoke
19817	780	Ran Gotanda
19818	780	Maya Yamada
19819	780	Tabane Shinonono
19820	780	Ichika Orimura
19821	780	Kiyoka Aikawa
19822	780	Nagi Kagami
19823	780	Yuko Tanimoto
19824	780	Clarissa Harfouch
19825	780	Dan Gotanda
19826	780	Eriko Kishihara
19827	780	Kaoruko Mayuzumi
19828	780	Shizune Takatsuki
19829	781	Eucliwood Hellscythe 'Eu' / 'Yuu'
19830	781	Seraphim 'Sera'
19831	781	Yuki Yoshida / Mael Strom / Tomonori
19832	781	Haruna
19833	781	Sarasvati / Kirara Hoshikawa
19834	781	Chris
19835	781	Ayumu Aikawa
19836	781	Taeko Hiramatsu
19837	781	Kyouko
19838	781	Ariel 'Dai Sensei'
19839	781	Kanami Mihara
19840	781	King of the Night
19841	781	Shimomura 'Anderson'
19842	781	Yuu's Puppet
19843	781	Kerberos Wansard
19844	781	Orito
19845	781	Kumacchi
19846	781	Zarii
19847	782	Hii-chan
19848	782	Misuzu
19849	782	Misuzu and Ryouta's Mom
19850	782	Naoko-san
19851	782	Alien Substitution
19852	782	Ryouta
19853	783	Prince Baka
19854	783	Captain Kraft
19855	783	Mermaid 
19856	783	Miho Edogawa
19857	783	Tachibana 
19858	783	Alien Poacher
19859	783	Ango Sakamoto
19860	783	Colin 
19861	783	Demon King 
19862	783	Ejiri
19863	783	Fujii
19864	783	General Luci
19865	783	Higashio
19866	783	Itakura 
19867	783	Iwata
19868	783	Jinpachi Sakamoto
19869	783	Kanemitsu
19870	783	King Rifst
19871	783	Kunimitsu Yokota
19872	783	Kuramoto
19873	783	Kyouko Mikihisa
19874	783	Kyushirou Yumeno
19875	783	Lafferty 
19876	783	Luna Mi Mad Magra
19877	783	Macbac Queen
19878	783	Mayo Mayuzumi
19879	783	Moe 
19880	783	Mohan Ki El Dogra
19881	783	Nomura
19882	783	Nozaki 
19883	783	Old Man NPC
19884	783	Osamu Momochi
19885	783	Ouji's Cat
19886	783	Princess Saki
19887	783	Ranzo Edogawa
19888	783	Sade
19889	783	Satomi
19890	783	Satou 
19891	783	Taiyo Akagawa
19892	783	Tanaka
19893	783	Tarsting Town Greeter
19894	783	Terakado
19895	783	Tokorozawa
19896	783	Yamada 
19897	783	Yoshiki Shimizu
19898	783	Yukitaka Tsutsui
19899	784	Mitsuba Marui
19900	784	Miyashita
19901	784	Sakiko Matsuoka
19902	784	Aiko Kuriyama
19903	784	Airi Ogata
19904	784	Futaba Marui
19905	784	Hitoha Marui
19906	784	Mayumi Katou
19907	784	Miku Sugisaki
19908	784	Momoko Haruna
19909	784	Shiori Itou
19910	784	Yuki Yoshioka
19911	784	Admiral Jigokku
19912	784	Akari Satou
19913	784	Creepron
19914	784	Dr. Akuma
19915	784	Gachi General
19916	784	Hiro Akai
19917	784	Ichirouta Ogata
19918	784	Jamara
19919	784	Junji Yoshioka
19920	784	Kaieda
19921	784	Kazumi Chiba
19922	784	Saeko Yoshioka
19923	784	Satoshi Yabe
19924	784	Shinya Satou
19925	784	Tetsuya Aozaki
19926	784	Yuki Ouno
19927	784	Yuudai Chiba
19928	784	Yuuichi Haguro
20057	786	Homura Akemi
20058	786	Madoka Kaname
20059	786	Kyouko Sakura
20060	786	Mami Tomoe
20061	786	Sayaka Miki
20062	786	Kyuubey
20063	786	Tatsuya Kaname
20064	786	Hitomi Shizuki
20065	786	Junko Kaname
20066	786	Kyousuke Kamijou
20067	786	Nagisa Momoe
21552	830	Ragno
20068	786	Tomohisa Kaname
20069	786	Charlotte
20070	786	Kazuko Saotome
20071	786	Kyousuke's Father
20072	787	Rio Rollins Tachibana
20073	787	Rina Goltschmidt Tachibana
20074	787	Anya Helsing
20075	787	Rosa Canyon
20076	787	Linda
20077	787	Mint Clark
20078	787	Tiffany Abbot
20079	787	Cartia Goldschmidt
20080	787	Dahna
20081	787	Ille Adams
20082	787	Elle Adams
20083	787	Jack Mighty
20084	787	Lisa Rollins
20085	787	Misery
20086	787	Queen
20087	787	Yang-Yang
20088	787	Ang-Ang
20089	787	Bull Hard
20090	787	Carlos Tanaka
20091	787	Chip
20092	787	Clark
20093	787	Elvis
20094	787	Jane
20095	787	Joker
20096	787	King
20097	787	Orlin Dunhill
20098	787	Robert
20099	787	Tom Howard
20100	788	Kagura
20101	788	Gintoki Sakata
20102	788	Yusuke Fujisaki
20103	788	Hime Onizuka
20104	788	Kazuyoshi Usui
20105	788	Momoka Kibitsu
20106	788	Kikuno Asahina
20107	788	Sasuke Tsubaki
20108	788	Shinpachi Shimura
20109	788	Soujirou Agata
20110	788	Mimori Unyuu
20111	788	Moe Yabasawa
20112	788	Saaya Agata
20113	788	Kiri Katou
20114	788	Michiru Shinba
20115	788	Reiko Yuuki
20116	788	Roman Saotome
20117	788	Akane Fujisaki
20118	788	Chiaki Takahashi
20119	788	Hani Usami
20120	788	Remi Misora
20121	788	Tetsuji Chuuma
20122	788	Akina
20123	788	Akitoshi Daimon
20124	788	Andre McDonald
20125	788	Ayumi Kuramoto
20126	788	Bob Fernandez
20127	788	Enigman
20128	788	Kanako Horii
20129	788	Kaoru Yagi
20130	788	Kiyoshi Date
20131	788	Kumi Itou
20132	788	Rumi Fujisaki
20133	788	Seiji Igarashi
20134	788	Shinpei Takemitsu
20135	789	Iku Mizushima
20136	789	Suzuya Tohzuki
20137	789	Tsubasa Amaha
20138	789	Yoh Tomoe
20139	789	Azusa Kinose
20140	789	Kanata Nanami
20141	789	Kazuki Shiranui
20142	789	Kotarou Hoshizuki
20143	789	Hayato Aozora
20144	789	Naoshi Haruki
20145	789	Ooshirou Shirogane
20146	789	Ryunosuke Miyaji
20147	789	Tsukiko Yahisa
20148	789	Eisuke Amaha
20149	789	Homare Kanakubo
20150	789	Kensuke Awata
20151	789	Makoto Kakino
20152	789	Syugo Kouji
20153	789	Koharu Hoshizuki
20154	789	Morio Tachibana
20155	789	Shinya Koguma
20156	789	Takafumi Inukai
20157	789	Takuya Nashimoto
20158	789	Yahiko Shiratori
20159	789	Yui Mizushima
20160	790	Dan Hojo
20161	790	Dodori
20162	790	Dori
20163	790	Fari
20164	790	Hibiki Hojo / Cure Melody 
20165	790	Lari
20166	790	Masamune Ouji
20167	790	Miri
20168	790	Reri
20169	790	Sori
20170	790	Ako Shirabe / Cure Muse 
20171	790	Aphrodite
20172	790	Arisa
21553	830	Raki
20173	790	Baritone
20174	790	Baron
20175	790	Bassdrum
20176	790	Eren Kurokawa / Cure Beat
20177	790	Falsetto
20178	790	Hakushaku
20179	790	Hummy
20180	790	Kanade Minamino / Cure Rhythm
20181	790	Kengo
20182	790	Kishi 
20183	790	Knight
20184	790	Mamoru
20185	790	Maria Hojo
20186	790	Mephisto
20187	790	Misora Minamino
20188	790	Noise
20189	790	Otokichi Shirabe
20190	790	Rena
20191	790	Seika Higashiyama
20192	790	Siren
20193	790	Sousuke Minamino
20194	790	Souta Minamino
20195	790	Tiri
20196	790	Waon Nishijama
20197	791	Chizuru Sarashina
20198	791	Yoshino Takatsuki
20199	791	Anna Suehiro
20200	791	Kanako Sasa
20201	791	Momoko Shirai
20202	791	Saori Chiba
20203	791	Shuuichi Nitori
20204	791	Fumiya Ninomiya
20205	791	Kentarou Kaneda
20206	791	Kobayashi
20207	791	Maho Nitori
20208	791	Maiko
20209	791	Makoto Ariga
20210	791	Manabu Saisho
20211	791	Nitori's Father
20212	791	Nitori's Mother
20213	791	Riku Seya
20214	791	Saori's Mother
20215	791	School Nurse
20216	791	Shiina 'Shii-chan' 
20217	791	Shinpei Doi
20218	791	Takanori Oka
20219	791	Tamaki Satou
20220	791	Yuki (Hiroyuki Yoshida)
20221	792	Minato
20222	792	Aoi
20223	792	Itsuki
20224	792	Nanako
20225	792	Hikaru
20226	792	Subaru
20227	792	The Pleiadian
20228	793	Ikuko Miyaura
20229	793	Mame
20230	793	Great Grandfather
20231	793	Great Grandmother
20232	793	Iwa
20233	793	Kawa
20234	793	Koichi
20235	793	Momo Miyaura
20236	793	Umi
20237	793	Youta
20238	794	Yuzuki Eba
20239	794	Akari Kaga
20240	794	Haruto Kirishima
20241	794	Nanami Kanzaki
20242	794	Rin Eba
20243	794	Takashi Yura
20244	795	Kuroyukihime / Black Lotus
20245	795	Haruyuki Arita / Silver Crow
20246	795	Chiyuri Kurashima / Lime Bell
20247	795	Yuniko Kouzuki / Tomoko Saitou
20248	795	Blood Leopard
20249	795	Sky Raker
20250	795	Black Lotus
20251	795	Megumi Wakamiya
20252	795	Takumu Mayuzumi / Cyan Pile
20253	795	Aqua Current
20254	795	Ash Roller
20255	795	Crimson Kingbolt
20256	795	Fuuko Kurasaki
20257	795	Scarlet Rain
20258	795	Araya
20259	795	Blue Knight
20260	795	Cobalt Blade
20261	795	Coral Merrow
20262	795	Cyan Pile
20263	795	Green Grandee / Green King
20264	795	Lagoon Dolphin
20265	795	Mana Itosu
20266	795	Manganese Blade
20267	795	Nickel Doll
20268	795	Orchid Oracle
20269	795	Ruka Asato
20270	795	Sand Duct
20271	795	Sulfur Pot
20272	795	Tin Writer
20273	795	Utai Shinomiya
20274	795	Yellow Radio
20275	796	Tsumiki Miniwa
20276	796	Hime Haruno
20277	796	Io Otonashi
20278	796	Mayoi Katase
20279	796	Ami Kirino
20280	796	Miiko Inui
20281	796	Sakaki Inui
20282	796	Saki Sakimori
20283	796	Kana Miyama
20284	796	Kikue Sakuragawa
20285	796	Kyouya Saibara
20286	797	Anna Moegi
20287	797	Chie Kiyan
20288	797	Hakase (Dr. Ranpu)
20289	797	Kanna Moegi
20290	797	Sarari
20291	798	Yuuko Ooshima
20292	798	Atsuko Maeda
20293	798	Chieri Sono
20294	798	Mayu Watanabe
20295	798	Haruna Kojima
20296	798	Kanata Shinonome
20297	798	Minami Takahashi
20298	798	Nagisa Motomiya
20299	798	Sayaka Akimoto
20300	798	Tomomi Itano
20301	798	Yuki Kashiwagi
20302	798	Makoto Yokomizo
20303	798	Mimori Kishida
20304	798	Orine Aida
20305	798	Sae Miyazawa
20306	798	Sonata Shinonome
20307	798	Suzuko Kanzaki
20308	798	Yuka Ichijou
20309	798	Mr. Ushiyama
20310	798	Tsubasa Katagiri
20521	800	Yuuko Kanoe
20522	800	Teiichi Niiya
20523	800	Kirie Kanoe
20524	800	Momoe Okonogi
20525	801	Eureka
20526	801	Elena Peoples
20527	801	Fleur Blanc
20528	801	Naru Arata
20529	801	Han Juno
20530	801	Lerato Food
20531	801	Liu Ing
20532	801	Maeve McCaffrey
20533	801	Maggie Kwan
20534	801	Miller
20535	801	Rebecka Halstrom
20536	801	Alexander Boyle
20537	801	Ao Fukai
20538	801	Chloe McCaffrey
20539	801	Christophe Blanc
20540	801	Endo
20541	801	Gazelle
20542	801	Georg
20543	801	Hannah Bester
20544	801	Ivica Tanovic
20545	801	Kazuyuki Kaneshiro
20546	801	Mitsuo Arata
20547	801	Nakamura
20548	801	Niki Tanaka
20549	801	Noah
20550	801	Pippo
20551	801	Rajkumar Nair
20552	801	Renton Thurston
20553	801	Teruhiko Niigaki
20554	801	Toshio Fukai
20555	801	Truth
20770	803	Saber
20771	803	Rin Tohsaka
20772	803	Illyasviel von Einzbern 'Ilya'
20773	803	Gilgamesh
20774	803	Irisviel von Einzbern
20775	803	Iskander
20776	803	Kiritsugu Emiya
20777	803	Kirei Kotomine
20778	803	Gilles de Rais
20779	803	Ryunosuke Uryu
20780	803	Kariya Matou
20781	803	Lancelot of the Lake
20782	803	Waver Velvet
20783	803	Assassin
20784	803	Diarmuid Ua Duibhne
20785	803	Hassan i Sabah
20786	803	Kayneth El-Melloi Archibald
20787	803	Maiya Hisau
20788	803	Grainne
20789	803	Aoi Tohsaka
20790	803	Fionn mac Cumhaill
20791	803	Risei Kotomine
20792	803	Sola-Ui Nuada-Re Sophia-Ri
20793	803	Tokiomi Tohsaka
20794	803	Zouken Matou
20795	804	Reika Saionji
20796	804	Erika Takatoo
20797	804	Haruka Oota
20798	804	Kyouko
20799	804	Misaki Shimizu
20800	804	Suzu Oota
20801	804	Akira Kageura
20802	804	Kei Uchimura
20803	804	Kinzou Momoyama
20804	804	Kota Furuya
20805	804	Masaru Hanashima
20806	804	Ouzou Furuya
20807	804	Ryuuji Furuya
20808	804	Shou Oota
20809	804	Suguro
20810	804	Tagi Sugiyama
20811	804	Takuma Aoto Gonzalez
20812	804	Tarou Uematsu
20813	804	Yuuto Ukishima
20814	805	Yuuichi Komura
20815	805	Mahiro Atori
20816	805	Takuma Onizaki 
20817	805	Zwei
20818	805	Suguru Oomi
20819	805	O-chan
20820	805	Shinji Inukai
20821	805	Aria Rozenburg
20822	805	Eins
20823	805	Tamaki Kasuga 
20824	805	Vier
20825	805	Drei
20826	805	Kiyono Takara
20827	805	Masataka Ashiya
20828	805	Mitsuru Kotokura
20829	805	Shizuki Ugaya
20830	806	Lilith Kishimoto
20831	806	Cammot
20832	806	Chizuru Makimura
20833	806	Camilla
20834	806	Plum
20835	806	Akira Sakamoto
20836	806	Cammot (cat)
20837	806	Cliff
20838	806	Mayall
20839	806	Plum (wolf)
20840	806	Shigeyuki Yanagida
20841	806	Shinta Mizumura
20961	808	Eru Chitanda
20962	808	Houtarou Oreki
20963	808	Fuyumi Irisu
20964	808	Mayaka Ibara
20965	808	Masashi Toogaito
20966	808	Satoshi Fukube
20967	808	Ayako Kouchi
20968	808	Kaho Juumonji
20969	808	Kayo Zenna
20970	808	Kurako Eba
20971	808	Midori Yamanishi
20972	808	Misaki Sawakiguchi
20973	808	Rie Zenna
20974	808	Ariyoshi
20975	808	Henmi
20976	808	Iizuka
20977	808	Jirou Sugimura
20978	808	Junya Nakajou
20979	808	Koreyuki Tani
20980	808	Mamiko Senoue
20981	808	Matsushiro
20982	808	Muneyoshi Kugayama
20983	808	Nakayama
20984	808	Shoko Yuasa
20985	808	Takeo Kaitou
20986	808	Takeo Katsuta
20987	808	Tomohiro Haba
20988	808	Yasukuni Yoshino
20989	808	Youko Itoigawa
20990	808	Yuri Kounosu
20991	809	Eucliwood Hellscythe 'Eu' / 'Yuu'
20992	809	Seraphim 'Sera'
20993	809	Yuki Yoshida / Mael Strom / Tomonori
20994	809	Haruna
20995	809	Sarasvati / Kirara Hoshikawa
20996	809	Chris
20997	809	Ayumu Aikawa
20998	809	Taeko Hiramatsu
20999	809	Kyouko
21000	809	Ariel 'Dai Sensei'
21001	809	Kanami Mihara
21002	809	Shimomura 'Anderson'
21003	809	Orito
21004	809	Kumacchi
21005	809	Naegleria Nebiros
21006	809	Zarii
21007	810	Blue Knight Ozaki
21008	810	Garnet
21009	810	Nix
21010	810	Ruby
21011	810	Alex
21012	810	Angela
21013	810	Coal
21014	810	Io
21015	810	Kiichi Furano
21017	810	Midori Akagi
21018	810	Milky
21019	810	Opal
21020	810	Pink Oomiya
21021	810	Retsu Akagi
21022	810	Sapphie
21023	810	Topaz
21024	811	Koko Hekmatyar
21025	811	Valmet
21026	811	Jonah
21027	811	Akihiko Toujo
21028	811	Chiquita
21029	811	Kasper Hekmatyar
21030	811	Lutz
21031	811	R
21032	811	Schokolade
21033	811	Wiley
21034	811	C.K. Kloshkin
21035	811	Chinatsu
21036	811	Curry
21037	811	George Black
21038	811	Guoming Chen
21039	811	Hex
21040	811	Karen Low
21041	811	Lehm Brick
21042	811	Lu
21043	811	Mao
21044	811	Master
21045	811	Mildo
21046	811	Minami Amada
21047	811	Pollack
21048	811	Scarecrow
21049	811	Ugo
21050	812	Kaoru Nishimi
21051	812	Ritsuko Mukae
21052	812	Sentarou Kawabuchi
21053	812	Junichi Katsuragi
21054	812	Seiji Matsuoka
21055	812	Yurika Fukahori
21056	813	Wakaba Otowa
21057	813	Haruka Kikui
21058	813	Kaede Wakamiya
21059	813	Mari Kikui
21060	813	Satsuki Hatsukari
21061	813	Zenobia L. Edgware
21062	813	Hotaru Yamabuki
21063	813	Nagisa Toyama
21064	813	Sakura Akagi
21065	814	Gyubid
21066	814	Akira Hayami
21067	814	Apricot Sakurada
21068	814	Ashura Toukaiji
21069	814	Choco
21070	814	Kyou Oogata
21071	814	Lollipop Cocoa
21072	814	Maria Sanctuary 
21073	814	Momo 
21074	814	Rinne Susuki
21075	814	Rio Mukai
21076	814	Ryoutarou Asakura
21077	814	Sae Abe
21078	814	Sayaka Suzukaze
21079	814	Sayoko Miyase
21080	814	Touka Blossom
21081	814	Touko Miyase
21082	814	Yuma Fujiwara
21083	814	Yuri Haruno
21084	814	Akuma Jou
21085	814	Angolmois
21086	814	Anuma Kadou
21087	814	Baba Yaga
21088	814	Chiyoko Kurotori
21089	814	Chiyoko's Mother
21090	814	Count Leonard Earl
21091	814	Daigorou Iwata
21092	814	Exnome
21093	814	Gumi
21094	814	Hayate Tsuchigama
21095	814	Judge
21096	814	Kyou's Mother
21097	814	Lulu Ramon
21098	814	Mai Ichiro
21099	814	Mai's Mother
21100	814	Matsuoka
21101	814	Meg Shion
21102	814	Megu's Mother
21103	814	Melusine
21104	814	Naoki Kojima ''Eroesu''
21105	814	Ray Actyle
21106	814	Rei
21107	814	Riku Kaname
21108	814	Seiya Hazuki
21109	814	Shou Sanjou
21110	814	Takami Shishimura
21111	814	Vice-Principal
21112	814	Yuichi Miyase
21113	814	Yumi Aikawa
21114	814	Yuri's Mother
21115	815	Tetsuya Kuroko
21116	815	Ryouta Kise
21117	815	Taiga Kagami
21118	815	Aomine Daiki
21119	815	Shintarou Midorima
21120	815	Satsuki Momoi
21121	815	Seijuro Akashi
21122	815	Tetsuya #2
21123	815	Riko Aida
21124	815	Atsushi Murasakibara
21125	815	Junpei Hyuuga
21126	815	Kazunari Takao
21127	815	Shinji Koganei
21128	815	Shun Izuki
21129	815	Teppei Kiyoshi
21130	815	Yukio Kasamatsu
21131	815	Rinnosuke Mitobe
21132	815	Ryou Sakurai
21133	815	Shoichi Imayoshi
21134	815	Kagetora Aida
21135	815	Kiyoshi Miyaji
21136	815	Kouki Furihata
21137	815	Kousuke Wakamatsu
21138	815	Papa Mbaye Siki
21139	815	Taisuke Otsubo
21140	815	Yoshitaka Moriyama
21141	815	Genta Takeuchi 
21142	815	Hiroshi Fukuda
21143	815	Katsunori Harasawa
21144	815	Koichi Kawahara
21145	815	Kouji Hiraiwa
21146	815	Kouji Kobori
21147	815	Masaaki Nakatani
21148	815	Mitsuhiro Hayakawa
21149	815	Ryuuhei Kasuga
21150	815	Satoshi Tsuchida
21151	815	Shinsuke Kimura
21152	815	Takeda-sensei
21153	815	Tomoki Tsugawa
21154	815	Tsutomu Iwamura
21155	815	Yoshinori Susa
21156	815	Yukinori Matsumoto
21157	815	Yuusuke Tanimura
21161	817	Medaka Kurokami
21162	817	Mogana Kikaijima
21163	817	Hansode Shiranui
21164	817	Zenkichi Hitoyoshi
21165	817	Kouki Akune
21166	817	Aria Ariake
21167	817	Hitomi Hitoyoshi
21168	817	Itami Koga
21169	817	Nekomi Nabeshima
21170	817	\tSasae Mochibaru
21171	817	Habataki Hyuuga
21172	817	Isagi Isahaya
21173	817	Kei Munakata
21174	817	Shori Wanizuka
21175	817	Akizuki's puppy
21176	817	Betsuhei Jounan
21177	817	Fue Yobuko
21178	817	Hakama Shiranui
21179	817	Harigane Onigase
21180	817	Hisshuu Kanoya
21181	817	Ibusuki
21182	817	Ima Takarabe
21183	817	Kenna Yatsushiro
21184	817	Kiki Kikitsu
21185	817	Kizashi Yuubaru
21186	817	Kunisaki
21187	817	Kyousai Usa
21188	817	Mahibi Moji
21189	817	Miri Natayama
21190	817	Mizou Yukuhashi
21191	817	Mukae Emukae
21192	817	Myouri Unzen
21193	817	Oudo Miyakonojou
21194	817	Rankaku Yoshinogari
21195	817	Shigusa Takachiho
21196	817	Sotsu Tanegashima
21197	817	Suishou Kibougaoka
21198	817	Tanzaku Aso
21199	817	Umumichi Yakushima
21200	817	Urushi Akizuki
21201	817	Youka Naze
21202	818	Madoka Amano 
21203	818	Gingka Hagane
21204	818	Benkei Hanawa
21205	818	Yoshio Iwayama
21206	818	Akuya Onizaki 
21207	818	Baihu Xiao
21208	818	Blader Guy
21209	818	Captain Arrow
21210	818	Eight Unabara
21211	818	Gen Kikura
21212	818	Genjuro Kamegaki
21213	818	Karura
21214	818	Kira Hayama
21215	818	Kite Unabara
21216	818	Maru
21217	818	Ren Kurenai
21218	818	Sakyo Kuroyami
21219	818	Shinobu Hiryuin
21220	818	Spike Bourne
21221	818	Takanosuke Shishiya
21222	818	Tsubasa Otori
21223	818	Zyro Kurogane
21224	819	Mikoto Urabe
21225	819	Youko Tsubaki
21226	819	Akira Tsubaki
21227	819	Ayuko Oka
21228	819	Aika Hayakawa
21229	819	Kouhei Ueno
21230	819	Ogata
21231	819	Ryouko Suwano
21360	821	Saki Mizukoshi
21361	821	Yuka Hanaki
21362	821	Rinko Tamaki
21363	821	Asano
21364	821	Daiki Aizawa
21365	821	Ishida
21366	821	Natsumi Aizawa
21367	821	Suzuka Aizawa
21368	822	Jii Hotaru
21369	822	Kenzou
21370	822	Saeko
21371	822	Tengu Ao
21372	822	Yuuta
21373	823	Nyarlathotep / Nyaruko
21374	823	Kuuko
21375	823	Tamao Kurei
21376	823	Hasuta / Hastur
21377	823	Mahiro Yasaka
21378	823	Yoriko Yasaka
21379	823	Ghutatan
21380	823	Ruhi Jiston
21381	823	Takehiko Yoichi
21382	823	Black Steel Stryper
21383	824	Bainas
21384	824	Gido Gaira
21385	824	Maya
21386	824	Mimay
21387	824	Sam Coyne
21388	825	Ana Gram
21389	825	Kaito Daimon
21390	825	Nonoha Itou
21391	825	Souji Jikukawa
21392	825	Bishop
21393	825	Cubic G
21394	825	Baron Kaidou
21395	825	Elena Himekawa
21396	825	Gammon Sakanoue
21397	825	Herbert Muller
21398	825	Miharu Sakanoue
21399	825	Rook Banjou Crossfield
21400	826	Llama
21401	826	Badger
21402	826	Full-time Panda
21403	826	Grizzly
21404	826	Handa
21405	826	Panda
21406	826	Panda Mama
21407	826	Penguin
21408	826	Polar Bear
21409	826	Sasako
21410	826	Sloth
21411	827	Aira Harune
21412	827	Hye In
21413	827	Mia Ageha
21414	827	Ayami Ooruri
21415	827	Karin Shijimi
21416	827	Reina Miyama
21417	827	Rizumu Amamiya
21418	827	Chae Kyung
21419	827	Don Bombie
21420	827	Jae Eun
21421	827	Jounouchi Serena
21422	827	Jun Takigawa
21423	827	Kyoko Asechi
21424	827	Mimmy
21425	827	Mion Takamine
21426	827	Penguin Teacher
21427	827	Remi
21428	827	Rimi
21429	827	Shi Yoon
21430	827	Shou
21431	827	So Min
21432	827	Toudou Kanon
21433	827	Yamao Yamada
21434	827	Yami
21435	827	Yumemi
21436	827	Yun Su
21437	828	Tomoe
21438	828	Melona
21439	828	Risty
21442	828	Liliana
21443	828	Menace
21444	828	Leina
21445	828	Annelotte Kreutz
21446	828	Claudette
21447	828	Izumi
21448	828	Ymir
21449	828	Tarnyang
21450	828	Sigui
21451	828	Branwen
21452	828	Laila
21453	828	Sainyang
21454	828	Vante
21455	828	Eilin
21456	828	LunaLuna
21457	828	Mirim
21458	828	Yuit
21459	829	Sayo Takahashi
21460	829	Hina Soejima
21461	829	Atsumi Miyagawa
21462	829	Jun-chan
21463	829	Midori-chan
21464	829	Atsushi Miyagawa
21465	829	Big Bro Take
21466	829	Futami Moriyama
21467	829	Takumi
21468	829	Tetsuya
21469	830	Shun
21470	830	Saori Kido
21471	830	Yuna
21472	830	Seiya
21473	830	Greip of Deadly Scythe
21474	830	Haruto
21475	830	Hyouga
21476	830	Integra of Gemini
21477	830	Pavlin
21478	830	Shaina
21479	830	Shiryuu
21480	830	Abzu
21481	830	Aegaeon of Holy Sword
21482	830	Aegir of Gauntlet
21483	830	Almaaz
21484	830	Amor
21485	830	Anne
21486	830	Apus Paradise
21487	830	Argo
21488	830	Aria
21489	830	Asamori Hakase
21490	830	Bacchus
21491	830	Balazo
21492	830	Bartschius
21493	830	Bayer
21494	830	Corona Borealis Dali
21495	830	Crane Komachi
21496	830	Cyllene of Deadly Scythe
21497	830	Diana
21498	830	Dione
21499	830	Dorie
21500	830	Eden
21501	830	Eden
21502	830	Emma
21503	830	Ennead
21504	830	Equuleus Celeris
21505	830	Erna
21506	830	Europe of Chakram
21507	830	Fly
21508	830	Fudo
21509	830	Gallia of Holy Sword
21510	830	Geki
21511	830	Genbu
21512	830	Georges
21513	830	Gray
21514	830	Guney
21515	830	Halimede
21516	830	Harbinger
21517	830	Hati
21518	830	Hook
21519	830	Hyperion of Holy Sword
21520	830	Ichii
21521	830	Ionia
21522	830	Jabu
21523	830	Johann
21524	830	Kazuma
21525	830	Kelly
21526	830	Kiki
21527	830	Kitalpha of Equuleus
21528	830	Koga
21529	830	Lepus Arne
21530	830	Loge
21531	830	Luciano
21532	830	Ludwig
21533	830	Mars
21534	830	Medea
21535	830	Menkar
21536	830	Methone
21537	830	Michelangelo
21538	830	Miguel
21539	830	Mira Glove of Alchemy
21540	830	Mirapolos
21541	830	Mirfak
21542	830	Misha
21543	830	Mycenae
21544	830	Nguyen
21545	830	Ordykia
21546	830	Pallas
21547	830	Paradox of Hate
21548	830	Paradox of Love
21549	830	Paulo
21550	830	Phillip
21551	830	Radzinsky
21554	830	Rei
21555	830	Rhea of Omega
21556	830	Rine
21557	830	Romulus
21558	830	Rudolf
21559	830	Ryuuhou
21560	830	Schiller
21561	830	Selene
21562	830	Sham
21563	830	Shinzoku
21564	830	Shunrei
21565	830	Sonia
21566	830	Souma
21567	830	Spear
21568	830	Subaru
21569	830	Surtur of Mystic Stone
21570	830	Tarvos
21571	830	Thebe
21572	830	Titan
21573	830	Tokisada
21574	830	Tokumaru Tatsumi
21575	830	Vulcanus
21576	830	Ymir
21577	830	Yoshimi Masataka Morigakure
21578	830	Yoshitomi
21579	831	Nodoka Haramura
21580	831	Yuuki Kataoka
21581	831	Saki Miyanaga
21582	831	Hajime Kunihiro
21583	831	Koromo Amae
21584	831	Hisa Takei
21585	831	Shizuno Takakamo
21586	831	Teru Miyanaga
21587	831	Touka Ryuumonbochi
21588	831	Ako Atarashi
21589	831	Awai Oohoshi
21590	831	Kuro Matsumi
21591	831	Mako Someya
21592	831	Toki Onjouji
21593	831	Yuu Matsumi
21594	831	Arata Sagimori
21595	831	Hiroko Funakubo
21596	831	Jun Inoue
21597	831	Kirame Hanada
21598	831	Ryuuka Shimizudani
21599	831	Sera Eguchi
21600	831	Sumire Hirose
21601	831	Takami Shibuya
21602	831	Tomoki Sawamura
21603	831	Harue Akado
21604	831	Izumi Nijou
21605	831	Seiko Matano
21606	832	Rea Sanka
21607	832	Mero Furuya
21608	832	Chihiro Furuya
21609	832	Ranko Saouji
21610	832	Aria Sanka
21611	832	Babu
21612	832	Danichirou Sanka
21613	832	Darin Arnschent Kurumiya
21614	832	Heren Shino
21615	832	Juri Nakadai
21616	832	Mizuki Yamanouchi
21617	832	Mogi
21618	833	Kanami Yuta
21619	833	Mimori Kiryuu
21620	833	Ryuhou
21621	833	Kazuma
21622	833	Kunihiko Kimishima
21623	833	Kyoji Mujou
21624	833	Martin Zigmar
21625	833	Straight Cougar
21626	834	Nobunaga Oda
21627	834	Bashou Matsuo
21628	834	Kenshin Uesugi
21629	834	Masamune Date
21630	834	Naoe Kanetsugu
21631	834	Cat Maiden
21632	834	Fuuma Kotarou
21633	834	Hisahide Matsunaga
21634	834	Isami Kondou
21635	834	Katakura Kojurou
21636	834	Liu Bei
21637	834	Maeda Keiji
21638	834	Mitsuhide Akechi
21639	834	Mogami Yoshiaki
21640	834	Takeda Shingen
21641	834	Tsunehisa Amago
21642	834	Yagyuu Sekishuusai
21643	834	Yoshimoto Imagawa
21644	834	Bokuden Tsukahara
21645	834	Fox Maiden
21646	834	Gennai Hiraga
21647	834	Hijikata Toshizou
21648	834	Ieyasu Tokugawa
21649	834	Itou Ittousai
21650	834	Mori Ranmaru
21651	834	Okita Souji
21652	834	Ootani Yoshitsugu
21653	834	Rabbit Maiden
21654	834	Sen no Rikyuu
21655	834	Souun Houjou
21656	834	Sugitani Zenjubou
21657	834	Taigen Sessai
21658	834	Toyotomi Hideyoshi
21659	834	Yoshiteru Ashikaga
21660	835	Melty Do Granite
21661	835	Neris Filiam
21662	835	Kaguya
21663	835	Rouna Murasame
21664	835	Amil Manaflare
21665	835	Rin Xiao-Mei
21666	835	Airy Ardet
21667	835	Mistral Nereis
21668	835	Elwyn / Rana
21669	835	Rick Elwood
21670	835	Alvin
21671	835	Dylan
21672	836	Apo
21673	836	Hibito Nanba
21674	836	Kenji Makabe
21675	836	Masa Hoshika
21676	836	Mutta Nanba
21677	836	Serika Itou
21678	836	Sharon Kaneko
21679	837	Haru
21680	837	Yuki Sanada
21681	837	Akira Agarkar Yamada
21682	837	Natsuki Usami
21683	837	Misaki
21684	837	Urara
21685	837	Ayumi Inoue
21686	837	Erika Usami
21687	837	Sakura Usami
21688	837	Coco
21689	837	Kate
21690	837	Tamotsu Usami
21691	838	Funco
21692	838	Elle
21693	838	Ichiroku
21694	838	Jeethree
21695	838	Sig
21696	838	Tei
21697	838	Esuku
21698	838	Fal
21699	838	Fujiko
21700	838	Garand
21701	838	Genkoku
21702	838	Ichihachi
21703	838	Ichiyon
21704	838	Springfield
21705	838	Steyr AUG
21706	838	Thompson
21707	839	Shun Matsuoka
21708	839	Yuki Asaba
21709	839	Yuta Asaba
21710	839	Kaname Tsukahara
21711	839	Koichi Azuma
21712	839	Chizuru Tachibana
21713	839	Kaori
21714	839	Masaki Sato
21715	840	Kumi Tanaka
21716	840	Matsukichi
21717	840	Sae Kawano
21718	840	Sae's Sister
21719	840	Semi-Mysterious Person
21720	840	Yurume Aida
21721	841	Jin Kanzaki / ZET
21722	841	Akemi Kawakami
21723	841	Hanako Tanaka
21724	841	Konoha Amagi
21725	841	Mayu Hashimoto
21726	841	Seiji Haitani
21727	841	Gorou Kanzaki
21728	841	Hayami
21729	841	Kouga Amagi / Alphas
21730	841	Mitsugai Amagi
21731	841	Seizou Amagi
21732	841	Sweeper
21733	842	Miu Ousawa
21734	842	Akatsuki Ousawa
21735	842	Kuzuha Doumoto
21736	842	Haruka Nanase
21737	842	Chikage Izumi
21738	842	Listy
21739	842	Valkyria
21740	842	Hikami Kyouya
21741	842	Minami Aihara
21742	842	Motoharu Kaidou
21743	842	Phil Barnett
21744	842	Ryouhei Uesaki
21745	843	Remu Mikage
21746	843	Shiki Mikage
21747	843	Yui Hirasaka
21748	844	Kimihiro Watanuki
21749	844	Saya Kisaragi
21750	844	Fumito Nanahara
21751	844	Hiro Tsukiyama
21752	844	Dog
21753	844	Haruno Yanagi
21754	844	Iori Matsuo
21755	844	Kuroto Mogari
21756	844	Kutou
21757	844	Mana Hiiragi
21758	844	Shun Fujimura
21759	844	Yuuka Amino (adult)
21760	845	Liliana Kranjcar
21761	845	Ena Seishuuin
21762	845	Erica Brandelli
21763	845	Athena
21764	845	Yuri Mariya
21765	845	Shizuka Kusanagi
22294	872	Rohan
21766	845	Arianna Hayama Ariarudi
21767	845	Godou Kusanagi
21768	845	Hikari Mariya 
21769	845	Karen Jankulovski
21770	845	Pandora
21771	845	Metis
21772	845	Perseus
21773	845	Verethragna
21774	845	Lucrecia Zola
21775	845	Melqarth
21776	845	Salvatore Doni
21777	845	Sasha Dejanstahl Voban
21778	845	Susanoo
21779	845	Touma  Amakasu
21780	846	Chitose Sakuraba
21781	846	Mika Kashiwabara
21782	846	Asako Fuji
21783	846	Hinako Hiiragi
21784	846	Hiroshi Kashiwabara
21785	846	Kohai-sensei
21786	846	Misaki
21787	846	Mr. Shige
21788	847	Fujiwara no Takaiko
21789	847	Hiroko
21790	847	Sue no Matsuyama
21791	847	Ariwara no Narihira
21792	847	Ariwara no Yukihira
21793	847	Fujiko
21794	847	Fujiwara no Kintou
21795	847	Fujiwara no Michimasa
21796	847	Fujiwara no Michitaka
21797	847	Fujiwara no Sanekata
21798	847	Fujiwara no Shunzei
21799	847	Fujiwara no Tadanobu
21800	847	Fujiwara no Teika / Sadaie
21801	847	Fujiwara no Teishi
21802	847	Fujiwara no Yoshitaka
21803	847	Fujiwara no Yukinari
21804	847	Fun'ya no Yasuhide
21805	847	Ki no Tsurayuki
21806	847	Kisen-houshi
21807	847	Kiyohara no Motosuke
21808	847	Kiyohara no Munenobu
21809	847	Kou no Naishi
21810	847	Masako
21811	847	Minamoto no Yasumitsu no Musume
21812	847	Murasaki Shikibu
21813	847	Ono no Komachi
21814	847	Ootomo no Kuronushi
21815	847	Sadaakira
21816	847	Saigyou-houshi
21817	847	Sanjou-in
21818	847	Sei Shounagon
21819	847	Shokushi
21820	847	Utsunomiya Yoritsuna
21821	847	Yasuko
21822	847	Yoshimine no Munesada
21823	848	Akito Hyuuga
21824	848	Anna Clement
21825	848	Leila Malkal
21826	848	Shin Hyuuga Shaingu
21827	848	Ayano Kousaka
21828	848	Oscar Hamel
21829	848	Yukiya Naruse
21830	848	Ferilli Paltrow
21831	848	Gene Smilas
21832	848	Hilda Fagan
21833	848	Jean Low
21834	848	Kate Novak
21835	848	Klaus Warwick
21836	848	Olivia Lowell
21837	848	Ryo Sayama
21838	848	Sarah Danes
21839	848	Sophie Randall
21840	848	Andrea Farnese
21841	848	Archduke Verance (August Henry Highland)
21842	848	Chloe Winkel
21843	848	Joe Wise
21844	848	Michele Manfredi
21845	849	Millhiore F Biscotti
21846	849	Yukikaze Panettone
21847	849	Leonmitchelli Galette des Rois
21848	849	Eclair Martinozzi
21849	849	Noir Vinocacao
21850	849	Brioche Dalkian
21851	849	Ricotta Elmar
21852	849	Cinque Izumi
21853	849	Gaul Galette des Rois
21854	849	Isuka Makishima
21855	849	Rebecca Anderson
21856	849	Rouge
21857	849	Couverte Eschenbach Pastillage
21858	849	Jaune Clafoutis
21859	849	Riselle Conchiglie
21860	849	Vert Far Breton
21861	849	Bernard Sabrage
21862	849	Loran Martinozzi
21863	849	Adelaide Grand Marnier
21864	849	Amelita Trompette
21865	849	Framboise Charley
21866	849	Valerio Calvados
21867	849	Callaway Risure
21868	849	Cheney
21869	849	Emilio Alcide
21870	849	Godwin Dorure
21871	849	Nanami Takatsuki
21872	849	Risha Anrobe
21873	849	Tatsumaki
21874	850	Kyouko Todayama
21875	850	Hakata Kanamori
21876	850	Elizabeth Margaret
21877	850	Hasumi Ooba
21878	850	Yuka Iseda
21879	850	Itsuki Noya
21880	850	Shouko Oomori
21881	850	Rikei Hiromatsu
21882	851	Ichiko Sakura
21883	851	Momiji
21884	851	Ranmaru Rinda
21885	851	Momo'o Inugami
21886	851	Akane Tange
21887	851	Kumagai
21888	851	Bobby
21889	851	Genjuroh Rindou
21890	851	Keita Tsuwabuki
21891	851	Kikunoshin Suwano
21892	851	Kuroyuri
21893	851	Kurumi Minowa
21894	851	Mika Tsuwabuki
21895	851	Mizunoe Urashimako
21896	851	Nadeshiko Adenokouji
21897	851	Ryuuta Tsuwabuki
21898	851	Tama-chan
21899	851	Yamabuki
21900	852	Carol
21901	852	Present
21902	852	Scrooge
21903	853	Toshizo Hijikata
21904	853	Hajime Saito
21905	853	Souji Okita
21906	853	Heisuke Toudou
21907	853	Chizuru Yukimura
21908	853	Sanosuke Harada
21909	853	Keisuke Yamanami
21910	853	Shinpachi Nagakura
21911	853	Isami Kondo
21912	853	Genzaburou Inoue
21913	853	Kai Shimada
21914	854	Neito / Nate Argenté Loup Mitotsudaira
21915	854	Futayo Honda
21916	854	P-01s / Horizon Ariadust
21917	854	Malga Naruze
21918	854	Margot Knight
21919	854	Gin Tachibana
21920	854	Heidi Ogezevara
21921	854	Masazumi Honda
21922	854	Musashi
21923	854	Queen Elizabeth
21924	854	Suzu Mukai
21925	854	Tomo Asama
21926	854	Tori Aoi
21927	854	Azuma
21928	854	Naomasa
21929	854	Era Fusahide
21930	854	Mary Stuart
21931	854	Ben Jonson
21932	854	Louis Exiv
21933	854	Maeda Toshiie
21934	854	Robert Dudley
21935	854	Tachibana Sougetsu
21936	854	Tenzou Crossunite
21937	854	Thomas Shakespeare
21938	854	Toussaint Neshinbara
21939	855	Watashi
21940	855	Hana
21941	855	Pion / P-ko
21942	855	Assistant
21943	855	Curly
21944	855	Doku
21945	855	Fairy-san
21946	855	Grandfather
21947	855	Majo
21948	855	Mr. Loaf
21949	855	Oyage / O-taro
21950	855	Processed Chicken
21951	855	Y
22071	857	Qiang Hui
22072	857	He Liao Diao
22073	857	Wang Qi
22074	857	Bi
22075	857	Cai Ze
22076	857	Changwenjun
22077	857	Heikun Shou
22078	857	Kyou Sei
22079	857	Li Si
22080	857	Lu Buwei
22081	857	Rankai
22082	857	Shi Ketsu
22083	857	Tou
22084	857	Xin
22085	857	Ying Zheng
22086	858	Himeko Inaba
22087	858	Yui Kiriyama
22088	858	Iori Nagase
22089	858	Taichi Yaegashi
22090	858	Yoshifumi Aoki
22091	858	Kaoru Setouchi
22092	858	Kaoru Setouchi
22093	858	Rina Yaegashi
22094	858	Anzu Kiriyama
22095	858	Chinatsu Mihashi
22096	858	Maiko Fujishima
22097	858	Mariko Nakayama
22098	858	Nana Nishino
22099	858	Reika Nagase
22100	858	Ryuuzen Gotou
22101	858	Shingo Watase
22102	858	Shouto Shiroyama
22103	858	Yoshifumi's Father
22104	858	Yukina Kurihara
22105	859	Liberta
22106	859	Jolly
22107	859	Nova
22108	859	Felicita
22109	859	Luca
22110	859	Debito
22111	859	Pace
22112	859	Dante
22113	859	Mondo
22114	859	Sumire
22115	860	Lan (Fin e Ld si Laffinity)
22116	860	Madoka Kyouno
22117	860	Muginami
22118	861	Satsuki Shinonome
22119	861	Chisato Sumiyoshi
22120	861	Michiru Morishita
22121	861	Isara Aomi
22122	861	Mifuyu Kiba
22123	861	Yuuki Oojima
22124	862	Kei Yuuki
22125	862	Kei Yuuki (v2)
22126	862	Haruka Hasegawa
22127	862	Marie
22128	862	Tadayasu Souemon Sawaki
22129	862	Aoi Mutou
22130	862	Hazuki Oikawa
22131	862	Kaoru Misato
22132	862	Keizou Itsuki
22133	862	Takuma Kawahama
22134	863	Yui Takamura
22135	863	Cryska Barchenowa
22136	863	Inia Sestina
22137	863	Lida Canales
22138	863	Phoebe Theodorakis
22139	863	Stella Bremer
22140	863	Tarisa Manandal
22141	863	Cui Yifei
22142	863	Fikatsia Latrova
22143	863	Ibrahim Dogulu
22144	863	Leon Kuze
22145	863	Niram Rawamunando
22146	863	Sharon Heim
22147	863	Valerio Giacosa
22148	863	Vincent Lowell
22149	863	Yuya Bridges
22150	864	Miyabi Kannagi
22151	864	Konoe Tsuruma
22152	864	Mana Tendou
22153	864	Mei Sagara
22154	864	Rinka Kunitachi
22155	864	Maiko Kotori
22156	864	Ikusu Mizutani
22157	864	Kurumi Kashinoki
22158	864	Shougo Mikadono
22159	864	Yuzurina Houshou
22160	864	Araya
22161	864	Kanoko Mikadono
22162	864	Shiga
22163	865	Atsushi Shimao
22164	865	Rokka Shimao
22165	865	Miho Shimao
22166	865	Ryousuke Hazuki
22167	866	Ash Ketchum
22168	866	Joy
22169	866	James
22170	866	Jessie
22171	866	Iris
22172	866	Meowth
22173	866	Cilan
22174	866	Malin
22175	867	Gankyou Kuurubiyuutei
22176	867	Kigurumi Haroukitei
22177	867	Kukuru Anrakutei
22178	867	Marii Buratei
22179	867	Tetora Bouhatei
22180	868	Hinata Hyuga
22181	868	Itachi Uchiha
22182	868	Kakashi Hatake
22183	868	Naruto Uzumaki
22184	868	Sakura Haruno
22295	872	Senti
22185	868	Sasuke Uchiha
22186	868	Shikamaru Nara
22187	868	Minato Namikaze (Fourth Hokage)
22188	868	Sasori
22189	868	Tsunade
22190	868	Neji Hyuga
22191	868	Konan
22192	868	Kushina Uzumaki
22193	868	Jiraiya
22194	868	Ino Yamanaka
22195	868	Madara Uchiha
22196	868	Pein
22197	868	Sai
22198	868	Hidan
22199	868	Kisame Hoshigaki
22200	868	TenTen
22201	868	Nagato
22202	868	Rock Lee
22203	868	Shizune
22204	868	Shino Aburame
22205	868	Iruka Umino
22206	868	Might Guy
22207	868	Kakuzu
22208	868	Menma
22209	868	Zetsu
22210	868	Chouji Akimichi
22211	868	Inoichi Yamanaka
22212	868	Chouza Akimichi
22213	869	Ayana Kakinozaka
22214	869	Risa Takabane
22215	869	Patricia Benpouin
22216	869	Kotomi Shirakawa
22217	869	Yuuki Kagami
22218	870	Lisara Ristall
22219	870	Iria Fukumune
22220	870	Cule Zeria
22221	870	Mina Ookura
22222	870	Ryousuke Kaga
22223	870	Almeia Restall
22224	870	Dalnia Earhart
22225	870	Hikaru Tamano
22226	870	Muneo Meshiyori
22227	870	Satomi Kaga
22228	871	Asuna Yuuki
22229	871	Kirito
22230	871	Silica
22231	871	Yui
22232	871	Lisbeth
22233	871	 Sakuya
22234	871	Suguha Kirigaya
22235	871	Sachi
22236	871	Klein
22237	871	Alicia Rue
22238	871	Agil
22239	871	Leafa
22240	871	Rika Shinozaki
22241	871	Recon
22242	871	Rosalia
22243	871	Diabel
22244	871	Sasha
22245	871	Yoruko
22246	871	Yuriel
22247	871	Akihiko Kayaba
22248	871	Argo
22249	871	Ducker
22250	871	Godfree
22251	871	Griselda
22252	871	Kagemune
22253	871	Keita
22254	871	Nagata Shinichi
22255	871	Sasamaru
22256	871	Tetsuo
22257	871	Thinker
22258	871	Caynz
22259	871	Eugene 
22260	871	Grimlock
22261	871	Heathcliff
22262	871	Johnny Black
22263	871	Kibaou
22264	871	Kuradeel
22265	871	PoH
22266	871	Schmitt
22267	871	Shouzou Yuuki
22268	871	Sigurd
22269	871	Sugou Nobuyuki
22270	871	XaXa
22271	872	Mikoto
22272	872	Pollon
22273	872	Sarah
22274	872	Wallace
22275	872	Alwida
22276	872	Berger
22277	872	Bonny
22278	872	Chowder
22279	872	Cremoa
22280	872	Crumb
22281	872	Diaga
22282	872	Diana
22283	872	Ellen
22284	872	Hiawy
22285	872	Ilia
22286	872	Jango
22287	872	Kumuka
22288	872	Lilith
22289	872	Pahn
22290	872	Pallon
22291	872	Pellon
22292	872	Pillon
22293	872	Pullon
22296	872	Van
22297	873	Sawa Okita
22298	873	Wakana Sakai
22299	873	Konatsu Miyamoto
22300	873	Wien
22301	873	Dora
22302	873	Makoto Miyamoto
22303	873	Naoko Takakura
22304	873	Sabure
22305	873	Shiho Okita
22306	873	Taichi Tanaka
22307	873	Tomoko Takahashi
22308	873	Kumagai Tetsuji
22309	873	Mr. Sakai
22310	873	Principal
22311	874	Goemon Hachisuka
22312	874	Nobuna Oda
22313	874	Nagahide Niwa
22314	874	Inuchiyo Maeda
22315	874	Hanbee Takenaka
22316	874	Katsuie Shibata
22317	874	Bontenmaru
22318	874	Nene
22319	874	Yoshihara Sagara
22320	874	Himiko
22321	874	Louise Frois
22322	874	Mitsuhide Akechi
22323	874	Nobusumi Tsuda / Nobukatsu Oda
22324	874	Hanzou Hattori
22325	874	Hisahide Matsunaga
22326	874	Motoyasu Matsudaira
22327	874	Nagamasa Asai
22328	874	Yoshimoto Imagawa
22329	874	Dousan Saito
22330	874	Yoshikage Asakura
22331	874	Yoshitatsu Saito
22332	874	Zenki
22333	875	Budori Gusko
22334	875	Budori's Mother
22335	875	Doctor Kubo
22336	875	Kotori
22337	875	Nadori
22338	875	Neri
22339	876	Kaoruko Nanahara
22340	876	Kaori Kamichika
22341	876	Chihaya Kisakinomiya
22342	876	Fumi Watarai
22343	876	Hatsune Minase
22344	876	Yuu Kashiwagi
22345	877	Ame
22346	877	Yuki
22347	877	Hana
22348	877	Ookami 
22349	877	Souhei
22350	878	Keigo Nishijima
22351	878	Kensuke Tachibana
22352	878	Naoki Satoya
22353	878	Ryunosuke Oohara
22354	878	Tetsu
22355	879	Kyouko Toshinou
22356	879	Akari Akaza
22357	879	Ayano Sugiura
22358	879	Chinatsu Yoshikawa 
22359	879	Rise Matsumoto
22360	879	Yui Funami
22361	879	Chitose Ikeda
22362	879	Nana Nishigaki
22363	879	Sakurako Oomuro
22364	879	Himawari Furutani
22365	879	Mari
22366	879	Chizuru Ikeda
22367	879	Kaede Furutani
22368	880	Aoi Kiriya
22369	880	Seira Otoshiro
22370	880	Ichigo Hoshimiya
22371	880	Mizuki Kanzaki
22372	880	Ran Shibuki
22373	880	Yurika Toudou
22374	880	Otome Arisugawa
22375	880	Raichi Hoshimiya
22376	880	Asuka Amahane
22377	880	Hikari Minowa
22378	880	Johnny Bepp
22379	880	Kaede Ichinose
22380	880	Kakeru Oota
22381	880	Mei Yuzuha
22382	880	Naoto Suzukawa
22383	880	Orihime Mitsuishi
22384	880	Ozora Akari
22385	880	Ringo Hoshimiya
22386	880	Sakura Kitaoji
22387	881	Aines
22388	881	Hina
22389	881	Ann
22390	881	Arc
22391	881	Clara
22392	881	Iris
22393	881	Lene
22394	881	Marie Takikawa Seles
22395	881	Pocchii
22396	881	Tamamii
22397	881	Tsugaru Santa Maria
22398	881	Fuki
22399	881	Ia
22400	881	Ida
22401	881	Orbel
22402	881	Rihito
22403	881	Zeal
22404	881	Zerurucchi
22405	882	Byakuya Yaiba
22406	882	Galdos Randall
22407	882	Grenada
22408	882	Suou
22409	882	Tsurugi Tatewaki
22410	882	Amarello Berge
22411	882	Brau Balm
22412	882	Bullinger
22413	882	Gordy Dain
22414	882	Hagakure Shidou
22415	882	Haqua Estoc
22416	882	Justice Tachibana
22417	882	Kizakura Kukuri
22418	882	Rirove Rakels
22419	882	Ron
22420	882	Sora Ryuuyou
22421	883	Hakaze Kusaribe
22422	883	Evangeline Yamamoto
22423	883	Mahiro Fuwa
22424	883	Samon Kusaribe
22425	883	Aika Fuwa
22426	883	Natsumura Kusaribe
22427	883	Megumu Hanemura
22428	883	Yoshino Takigawa
22429	883	Junichirou Hoshimura
22430	883	Tetsuma Kusaribe
22431	883	Mahiro Fuwa (young)
22432	883	Takumi Hayakawa
22433	883	Yoshino Takigawa (young)
22434	884	Himiko
22435	884	Kousuke Kira
22436	884	Ryouta Sakamoto
22437	884	Kiyoshi Taira
22438	884	Nobutaka Oda
22439	884	Aiko Serizawa
22440	884	Hidemi Kinoshita
22441	884	Masahito Date
22442	884	Masashi Miyamoto
22443	884	Miho
22444	884	Shiki Murasaki
22445	884	Souichi Natsume
22446	884	Takanohashi
22447	884	Tsuneaki Iida
22448	884	Yoshiaki Imagawa
22449	885	Rinne Inaba
22450	885	Shunsuke Hayami
22451	885	Dr. Claud
22452	885	Gort
22453	885	Kakeru Todoroki
22454	885	Mic Man
22455	885	Michinori Hane
22456	885	Rui Akana
22457	885	Satori Miwa
22458	885	Souta Gunji
22459	885	Tooma
22460	886	Aoba Takatsu
22461	886	Yuuki Tenpouin
22462	886	Rei Ogami
22463	886	Toki Fujiwara
22464	886	Hitomi
22465	886	Sakura Sakurakouji
22466	886	Rui Hachiouji
22467	886	Yuki Sakurakouji
22468	886	Yukihina
22469	886	Fujiwara
22470	886	Goutoku Sakurakouji
22471	886	Masaomi Heike
22472	886	Miyuki Kanda
22473	886	Nenene Fujiwara
22474	887	Agent Chaos
22475	887	Aona Godai
22476	887	Byakuga Shiranui
22477	887	Genta Ankokuji
22478	887	Gogyo Godai
22479	887	Hagataki
22480	887	Kagero Ogami
22481	887	Kamon Godai
22482	887	Mitsuru Hachisuka
22697	889	Maria Akizuki
22698	889	Shun Aonuma
22699	889	Mamoru Itou
22700	889	Satoru Asahina
22701	889	Saki Watanabe
22702	889	Akki
22703	889	Akki
22704	889	Hiromi Torigai
22705	889	Inui
22706	889	Izumi Kutegawa
22707	889	Kiroumaru
22708	889	Koufuu Hino
22709	889	Masayo Komatsuzaki
22710	889	Minoshiro Modoki
22711	889	Mizuho Watanabe
22712	889	Mushin
22713	889	Nekodamashi (Fujouneko)
22714	889	Nise Minoshiro Modoki
22715	889	Queen of Bakenezumi
22716	889	Reiko Amano
22717	889	Rijin
22718	889	Shisei Kaburagi
22719	889	Squeara
22720	889	Squonk
22721	889	Takashi Sugiura
22722	889	Tomiko Asahina
22723	890	Mako Reizei
22724	890	Miho Nishizumi
22725	890	Saori Takebe
22726	890	Yukari Akiyama
22727	890	Anzu Kadotani
22728	890	Hana Isuzu
22729	890	Katyusha
22730	890	Akebi Sasaki
22731	890	Anchovy
22732	890	Ayumi Yamago
22733	890	Darjeeling
22734	890	Erwin
22735	890	Kei
22736	890	Nonna
22737	890	Oryou
22738	890	Saemonza
22739	890	Assam
22740	890	Caesar
22741	890	Noriko Isobe
22742	890	Shinobu Kawanishi
22743	890	Taeko Kondo
22744	890	Alisa
22745	890	Ami Chono
22746	890	Aya Oono
22747	890	Azusa Sawa
22748	890	Erika Itsumi
22749	890	Maho Nishizumi
22750	890	Midoriko Sono
22751	890	Momo Kawashima
22752	890	Momoga
22753	890	Naomi
22754	890	Orange Pekoe
22755	890	Piyotan
22756	890	Yuzu Koyama
22757	890	Anglerfish Team ~ Panzer IV Ausf
22758	890	Anteater Team ~ JP Chi-Nu Type 3
22759	890	Cake Shop Waitress
22760	890	Duck Team ~ JP Type 89B
22761	890	Hippo Team ~ DE Strumgeschutz III Ausf. F
22762	890	Hisako Reizei
22763	890	Hoshino
22764	890	Karina Sakaguchi
22765	890	Leopon Team ~ Tiger (P)
22766	890	Mallard Team ~ FR Renault B1 Bis
22767	890	Moyoko Goto
22768	890	Mr. Akiyama
22769	890	Mrs. Akiyama
22770	890	Nekonya
22771	890	Nozomi Konparu
22772	890	Oarai School Principle
22773	890	Rabbit Team ~ M3 Lee
22774	890	Saki Maruyama
22775	890	Satoko Nakajima
22776	890	Shiho Nishizumi
22777	890	Shinzaburou
22778	890	Suzuki
22779	890	Tsuchiya
22780	890	Turtle Team ~ Czech Panzer 38t
22781	890	Yuki Utsugi
22782	890	Yuri Isuzu
22783	891	Kokona Kyan
22784	891	Rahna
22785	891	Himeno Ganaha
22786	891	Iina
22787	891	Kana 
22788	891	Lucy Misaki Stuart
22789	891	Maiko Shimoji
22790	891	Mimi Toguchi
22791	891	Nanafa Kyan
22792	891	Nanao Kyan
22793	891	Nina
22794	891	Obaa
22795	891	Ojii
22796	891	Yuina Miyazato
22916	893	Opal
22917	893	Gear
22918	893	Ramsus
22919	893	Nel
22920	893	Tejirov
22921	893	Zelig
22922	893	Tial
22923	893	Marcus
22924	894	Almaflora
22925	894	Mariandale
22926	894	Ecarlate Juptris Saint Piria
22927	894	Elekpyle Dukakis
22928	894	Kon Hokaze
22929	894	Leon
22930	894	Variasion
22931	894	Gustave Gustaf
22932	894	KT
22933	894	Nabokov Jugglaburk
22934	894	Pet
22935	894	Sainglain
22936	895	Koko Hekmatyar
22937	895	Valmet
22938	895	Jonah
22939	895	Akihiko Toujo
22940	895	Chiquita
22941	895	Kasper Hekmatyar
22942	895	Lutz
22943	895	R
22944	895	Schokolade
22945	895	Wiley
22946	895	Curry
22947	895	George Black
22948	895	Hex
22949	895	Karen Low
22950	895	Lehm Brick
22951	895	Lu
22952	895	Mao
22953	895	Mildo
22954	895	Minami Amada
22955	895	Scarecrow
22956	895	Ugo
22957	896	Yashiro Isana
22958	896	Neko
22959	896	Kuroh Yatogami
22960	896	Anna Kushina
22961	896	Mikoto Suoh
22962	896	Munakata Reishi
22963	896	Saruhiko Fushimi
22964	896	Izumo Kusanagi
22965	896	Yata Misaki
22966	896	Awashima Seri 
22967	896	Totsuka Tatara
22968	896	Adolf K. Weismann 
22969	896	Kumamoto Rikio 
22970	896	Akira Hidaka
22971	896	Kukuri Yukisome
22972	896	Andy Doumyouji
22973	896	Eric Surt
22974	896	Himori Akiyama
22975	896	Kousuke Fujishima
22976	896	Niki Fushimi
22977	896	Saburouta Bandou
22978	896	Tatsuya Enomoto
22979	896	Chiho Hyuga
22980	896	Colorless King
22981	896	Kokujyouji Daikaku 
22982	896	Sota Mishina
22983	896	Sumika Inaba
22984	896	Yujiro Benzai
22985	897	Tomoe
22986	897	Nanami Momozono
22987	897	Mizuki
22988	897	Shinjirou Kurama
22989	897	Dragon King
22990	897	Ami Nekota
22991	897	Isohime
22992	897	Kei Ueshima
22993	897	Mikage
22994	897	Numano Himemiko
22995	897	Aotake
22996	897	Isobe
22997	897	Kamehime
22998	897	Kotarou Urashima
22999	897	Kotetsu
23000	897	Mitsuha Yonomori
23001	897	Narukami
23002	897	Onikiri
23003	897	Otohiko
23004	897	Yukiji
23020	899	Rin Natsume
23021	899	Kudryavka Noumi
23022	899	Yuiko Kurugaya
23023	899	Mio Nishizono
23024	899	Sasami Sasasegawa
23025	899	Haruka Saigusa
23026	899	Komari Kamikita
23027	899	Saya Tokido
23028	899	Kanata Futaki
23029	899	Kyousuke Natsume
23030	899	Masato Inohara
23031	899	Kengo Miyazawa
23032	899	Riki Naoe
23033	900	Rikka Takanashi
23034	900	Sanae Dekomori
23035	900	Shinka Nibutani
23036	900	Kumin Tsuyuri
23037	900	Touka Takanashi
23038	900	Yuuta Togashi
23039	900	Kuzuha Togashi
23040	900	Yumeha Togashi
23041	900	Yuuta's Mother
23042	900	Makoto Isshiki
23043	900	Nanase Tsukumo
23044	900	Satou
23045	900	Suzuki
23046	900	Kimera
23047	900	Mera
23048	900	Rikka's Grandfather
23049	900	Rikka's Grandmother
23050	901	Morgiana
23051	901	Kougyoku Ren
23052	901	Alibaba Saluja
23053	901	Sinbad
23054	901	Aladdin
23055	901	Yamuraiha
23056	901	Hakuryuu Ren
23057	901	Judar
23058	901	Hakuei Ren
23059	901	Paimon
23060	901	Kouha Ren
23061	901	Masrur
23062	901	Pisti
23063	901	Sharrkan
23064	901	Jafar
23065	901	Cassim
23066	901	Kouen Ren
23067	901	Ahbmad Saluja
23068	901	Drakon
23069	901	Dunya Musta'sim
23070	901	Goltas
23071	901	Hinahoho
23072	901	Ithnan
23073	901	Jamil
23074	901	Koubun Ka
23075	901	Koumei Ren
23076	901	Mariam
23077	901	Seishun Ri
23078	901	Spartos
23079	901	Ugo
23080	901	Zaynab
23081	901	Amon
23082	901	Apollonius
23083	901	Baba
23084	901	Barkak
23085	901	Budel
23086	901	Byoln
23087	901	Dorji
23088	901	Fatima
23089	901	Gyokuen Ren
23090	901	Isaac
23091	901	L Nando
23092	901	Leila
23093	901	M Nando
23094	901	Markkio
23095	901	Rashid Saluja
23096	901	Ryosai
23097	901	S Nando
23098	901	Sahbmad Saluja
23099	901	Sahsa
23100	901	Tiare
23101	901	Toya
23102	901	Zagan
23103	901	Zurmudd
23104	902	Medaka Kurokami
23105	902	Mogana Kikaijima
23106	902	Hansode Shiranui
23107	902	Zenkichi Hitoyoshi
23108	902	Kouki Akune
23109	902	Najimi Ajimu
23110	902	Itami Koga
23111	902	Misogi Kumagawa
23112	902	Yutori Chikuzen
23113	902	Gunki Itoshima
23114	902	Hamaya Hyakuchou
23115	902	Jijiwa
23116	902	Kei Munakata
23117	902	Nomozaki
23118	902	Otome Yunomae
23119	902	Yane
23120	902	Aki Jakago
23121	902	Garaharu Ushibuka
23122	902	Hakama Shiranui
23123	902	Hirado Royal
23124	902	Kenri Noogata
23125	902	Maguro Kurokami
23126	902	Mizou Yukuhashi
23127	902	Myouga Unzen
23128	902	Oudo Miyakonojou
23129	902	Renpei Iya
23130	902	Saki Sukinasaki
23131	902	Shigusa Takachiho
23132	902	Shoko Kamimine
23133	902	Tomojiki Koyu
23134	902	Tsushima Sanou
23135	902	Tsushima Unou
23136	902	Yamami Tsurumisaki
23137	902	Youka Naze
23138	903	Beyal
23139	903	Medea
23140	903	Argius
23141	903	Bren
23142	903	Brother Pozo
23143	903	Captain
23144	903	Chase Suno 
23145	903	Chef Syd
23146	903	Dawnmaster
23147	903	Dax
23148	903	Digby Droog
23149	903	Dom Pyro
23150	903	Emmanuel Klipse
23151	903	Grandma Future
23152	903	Hargrave
23153	903	Jeredy Suno
23154	903	Jinja
23155	903	Jon Ace
23156	903	Latinus 
23157	903	Lefty
23158	903	Marshall Charlemagne
23159	903	Master Ey
23160	903	Mr. Black 
23161	903	Mute Woman
23162	903	Old Man Queeg 
23163	903	One-Eyed Jack 
23164	903	Righty
23165	903	Telegonus 
23166	903	The Bookman
23167	903	Trey 
23168	904	Asako Natsume
23169	904	Shizuku Mizutani
23170	904	Haru Yoshida
23171	904	Chizuru Ooshima
23172	904	Yuzan Yoshida
23173	904	Kenji Yamaguchi
23174	904	Mitsuyoshi Misawa
23175	904	Souhei Sasahara
23176	904	Yuu Miyama
23177	904	Issei Joujima
23178	904	Masahiro Ayanokouji
23179	904	Ryuuji Tomioka
23180	904	Saeko Ninomiya
23181	904	Takashi Mizutani
23182	904	Takaya Mizutani
23311	906	Akiko Himenokouji
23312	906	Anastasia Nasuhara
23313	906	Arashi Nikaidou
23314	906	Arisa Takanomiya
23315	906	Ginbei Haruomi Sawatari
23316	906	Akito Himenokouji
23317	906	Kaoruko Jinno
23318	906	Ayumi Himekawa
23319	906	Reika Ryuuzaki
23320	907	Shinya Kougami
23321	907	Shogo Makishima
23322	907	Nobuchika Ginoza
23323	907	Shuusei Kagari
23324	907	Akane Tsunemori
23325	907	Shion Karanomori
23326	907	Yayoi Kunizuka
23327	907	Tomomi Masaoka
23328	907	Mika Shimotsuki
23329	907	Sakuya Tougane
23330	907	Shou Hinakawa
23331	908	Frau Koujiro
23332	908	Subaru Hidaka
23333	908	Airi Yukifune
23334	908	Akiho Senomiya
23335	908	Junna Daitoku
23336	908	Kaito Yashio
23337	908	Mizuka Irei
23338	908	Misaki Senomiya
23339	909	Mei Tachibana
23340	909	Yamato Kurosawa
23341	909	Asami Oikawa
23342	909	Aiko Mutou
23343	909	Kai Takemura
23344	909	Megumi Kitagawa
23345	909	Kenji Nakanishi
23346	909	Momoko Sasano
23347	909	Chiharu Ogawa
23348	909	Daichi Kurosawa
23349	909	Izumi
23350	909	Kakeru Hayakawa
23351	909	Masashi Tachikawa
23352	909	Mei's Mother
23353	909	Mihiro
23354	909	Nagi Kurosawa
23355	909	Pan-ya no Oba-chan
23356	909	Taku
23400	911	Kanae Shinjou
23401	911	Nasuno Takamiya
23402	911	Marimo Bando
23403	911	Yuri Oshimoto
23404	911	Cake Shop Manager
23405	911	Yucatan
23406	912	Mashiro Shiina
23407	912	Nanami Aoyama
23408	912	Ryuunosuke Akasaka
23409	912	Misaki Kamiigusa
23410	912	Sorata Kanda
23411	912	Chihiro Sengoku
23412	912	Jin Mitaka
23413	912	Rita Ainsworth
23414	912	Yuuko Kanda
23415	913	Shima Kawauchi
23416	913	Isaki
23417	914	Lala Satalin Deviluke
23418	914	Yui Kotegawa
23419	914	Momo Velia Deviluke
23420	914	Nana Aster Deviluke 
23421	914	Mikan Yuuki
23422	914	Mea Kurosaki
23423	914	Tearju Lunatique
23424	914	Nemesis
23425	915	Ai Nanasaki
23426	915	Haruka Morishima
23427	915	Kaoru Tanamachi
23428	915	Hibiki Tsukahara
23429	915	Tsukasa Ayatsuji
23430	915	Risa Kamizaki
23431	915	Miya Tachibana
23432	915	Rihoko Sakurai
23433	915	Sae Nakata
23434	915	Kanae Itou
23435	915	Manaka Hiba
23436	915	Ruriko Yuzuki
23437	915	Junichi Tachibana
23438	915	Keiko Tanaka
23439	915	Masayoshi Umehara
23440	915	Maya Takahashi
23441	915	Yayoi
23442	915	Yukari Ayatsuji
23443	915	Jessica Morishima
23444	916	Mei Misaki
23445	916	Izumi Akazawa
23446	916	Kouichi Sakakibara
23447	916	Misaki Fujioka
23448	916	Naoya Teshigawara
23449	916	Yuuya Mochizuki
23450	916	Sanae Mizuno
23451	916	Mikami-sensei
23452	916	Reiko
23453	916	Tomoka Inose
23454	916	Aki Matsui
23455	916	Kirika / Yukiyo Misaki
23456	916	Megumi Tatara
23457	916	Rei
23458	916	Sayuri Kakinuma
23459	916	Tatsuji Chibiki
23460	916	Kazue Satou
23461	916	Kyouko / Anzu Kaneki
23462	916	Makoto Ouji
23463	916	Ritsuko Sakakibara
23464	916	San Watanabe
23465	916	Tomohiko Kazami
23466	916	Yukari Sakuragi
23467	916	Yumi Ogura
23468	916	Aya Ayano
23469	916	Jun Hamaguchi
23470	916	Kenzou Kawahori
23471	916	Matsuko Arita
23472	916	Noboru Saruta
23473	916	Sachiko Nakajima
23474	916	Takako Sugiura
23475	916	Haruka / Yuu Etou
23476	916	Ikuo Takabayashi
23477	916	Junta Nakao
23478	916	Katsumi Matsunaga
23479	916	Keiko Numata
23480	916	Kensaku Numata
23481	916	Manabu Maejima
23482	916	Ryouhei Mikami
23483	916	Shigeki Yonemura
23484	916	Takeru Mizuno
23485	916	Yukito Tsujii
23486	916	Amane
23487	916	Atsushi Ogura
23488	916	Daisuke Wakui
23489	916	Misaki Yomiyama
23490	916	Naomi Fujimaki
23491	916	Shouji Kubodera
23492	916	Tamie Mikami
23493	917	Zessica Wong
23494	917	Crea Dolosera
23495	917	Kagura Demuri
23496	917	Jin Musou
23497	917	Mikono Suzushiro
23498	917	Shrade Elan
23499	917	Amata Sora
23500	917	MIX
23501	917	Mykage Towano
23502	917	Suomi Konepi
23503	917	Zen Fudo
23504	917	Andy W. Hole
23505	917	Aye Chang
23506	917	Cayenne Suzushiro
23507	917	Donar Dantes
23508	917	Izumo Kamurogi
23509	917	Malloy Direzza
23510	917	Sazanka Bianca
23511	917	Youka Drum
23512	917	Yunoha Thrul
23513	918	Agiri Goshiki
23514	918	Sonya
23515	918	Yasuna Oribe
23516	918	The Rejected Character
23517	919	Black Rock Shooter
23518	919	Dead Master
23519	919	Mato Kuroi
23520	919	Black Gold Saw
23521	919	Strength
23522	919	Chariot
23523	919	Yomi Takanashi
23524	919	Kagari Izuriha
23525	919	Yuu  Koutari
23526	919	Saya Irino
23527	919	Arata Obata
23738	921	Marika Katou
23739	921	Kane McDougall
23740	921	Ai Hoshimiya
23741	921	Luca
23742	921	April Lambert
23743	921	Asta Alhanko
23744	921	Belinda Percy
23745	921	Catherine
23746	921	Chiaki Kurihara
23747	921	Gruier Serenity
23748	921	Grunhilde Serenity
23749	921	Jacqueline Stramp
23750	921	Jenny Doolittle
23751	921	Lilly Bell
23752	921	Lynn Lambretta
23753	921	Mami Endou
23754	921	Misa Grandwood
23755	921	Quartz Christie
23756	921	Sasha Staple
23757	921	Talvikki Launo
23758	921	Coorie 
23759	921	Faye
23760	921	Flora Chapie
23761	921	Hyakume
23762	921	Ironbeard
23763	921	Izumi Yunomoto
23764	921	Junigh Coolph
23765	921	Kachua
23766	921	Kenjou Kurihara
23767	921	Koja
23768	921	Lynical Cynical
23769	921	Maki Harada
23770	921	Master Dragon
23771	921	Mylene Certon
23772	921	Natalia Grennorth
23773	921	Ririka Katou
23774	921	Robert Dolittle
23775	921	Ronald Harley
23776	921	Sandaime
23777	921	Schnitzer
23778	921	Shane McDougal
23779	921	Stone
23780	921	Sumi Kuki
23781	921	Syoko Kobayashimaru
23782	921	The Peace
23783	921	Three-J
23784	921	Ursula Abramov
23785	921	Witherspoon
23786	921	Yayoi Yoshitomi
23787	921	Yotof Sif Sideux
23788	922	Saizou Kirigakure
23789	922	Kamanosuke Yuri
23790	922	Rokorou Unno
23791	922	Sasuke Sarutobi
23792	922	Masamune Date
23793	922	Jinpachi Nezu
23794	922	Juuzou Kakei
23795	922	Yukimura Sanada
23796	922	Isanami
23797	922	Anastasia
23798	922	Benmaru
23799	922	Hanzou Hattori
23800	922	Byakugun
23801	922	Kaiyo
23802	922	Miyoshi Seikai Nyuudou
23803	923	Hidenori Tabata
23804	923	President of the student council
23805	923	Tadakuni
23806	923	Tadakuni's Sister
23807	923	Yoshitake Tanaka
23808	923	Book Girl
23809	923	Motoharu
23810	923	Ringo-chan
23811	923	Toshiyuki Karasawa
23812	923	Vice-president
23813	923	Habara
23814	923	Ikushima
23815	923	Nago-san
23816	923	Yanagin
23817	923	Yasunori
24032	925	Minami Kurihashi
24033	925	Saya Akabane
24034	925	Asuka Utsunomiya
24035	925	Kaname Oku
24036	925	Madoka Oowada
24037	925	Konatsu Toro
24038	925	Aya Akabane
24039	925	Ai Nanasato
24070	927	Rias Gremory
24071	927	Akeno Himejima
24072	927	Koneko Toujou
24073	927	Asia Argento
24074	927	Irina Shidou
24075	927	Xenovia
24076	927	Issei Hyoudou
24077	927	Rossweisse
24078	927	Raynare
24079	927	Xuelan
24080	927	Yuuto Kiba
24081	927	Grayfia Lucifuge
24082	927	Ravel Phoenix
24083	927	Sona Sitri
24084	927	Carlamain
24085	927	Gasper Vladi
24086	927	Ile
24087	927	Sir Zechs Lucifer
24826	963	Yeti
24088	927	Tsubaki Shinra
24089	927	Mira
24090	927	Nel
24091	927	Freed Sellzen
24092	927	Isabella
24093	927	Mil-tan
24094	927	Motohama
24095	927	Riser Phoenix
24096	927	Zatuji
24216	929	Ririchiyo Shirakiin
24217	929	Karuta Roromiya
24218	929	Soushi Miketsukami
24219	929	Nobara Yukinokouji
24220	929	Renshou Sorinozuka
24221	929	Banri Watanuki
24222	929	Kagerou Shoukiin
24223	929	Zange Natsume
24224	929	Chino Kotomura
24225	929	Kotarou Kawasumi
24226	929	Ayame Shoukiin
24227	929	Joutarou Kawasumi
24228	930	Koto
24229	930	Lady Koto
24230	930	Dr. Shouko
24231	930	Myoue
24232	930	Yase
24233	930	A
24234	930	Bishamaru
24235	930	Chief Priest
24236	930	Fushimi
24237	930	Un
24238	931	Lan (Fin e Ld si Laffinity)
24239	931	De Metorio Le Yurikano
24240	931	Gurania
24241	931	Madoka Kyouno
24242	931	Muginami
24243	931	Array
24244	931	Asteria Lisa Marie de Rochefort
24245	931	Haruka Uehara
24246	931	Izo
24247	931	Kirius
24248	931	Youko Nakaizumi
24249	931	Ayane Iwa
24250	931	De Metorio Le Villajulio
24251	931	Eri Watabe
24252	931	Erika Takakura
24253	931	Finn E. Lud C. Dieselmein
24254	931	Machiko Iwabuchi
24255	931	Michi Kondou
24256	931	Moid
24257	931	Sachi Nogami
24258	931	Shouko Igarashi
24259	931	Tomoe Kuzuhara
24260	931	Hiroshi Nakaizumi
24261	931	James Row
24262	931	Shouzou Tadokoro
24263	931	Souta Serizawa
24270	933	Hina Takanashi
24271	933	Miu Takanashi
24272	933	Sora Takanashi
24273	933	Raika Oda
24274	933	Kouichi Nimura
24275	933	Yuri Takanashi
24276	933	Kurumi Atarashi
24277	933	Yuuta Segawa
24278	933	Kiyomi Okae
24279	933	Nobuyoshi Takanashi
24280	933	Sachiko Sugihara
24281	933	Sawako Midorikawa
24282	933	Sawako's Mother
24283	933	Shingo Takanashi
24284	933	Shuntarou Sako
24285	933	Yoshiko Sahara
24286	934	Annie
24287	934	Jack
24288	935	Takashi Natsume
24289	935	Madara
24290	935	Kaname Tanuma
24291	935	Hinoe
24292	935	Reiko Natsume
24293	935	Seiji Matoba
24294	935	Chobihige
24295	935	Fuzukigami
24296	935	Jun Sasada
24297	935	Kemari
24298	935	Mikage
24299	935	Misuzu
24300	935	Sasago
24301	935	Shuuichi Natori
24302	935	Taki Touru
24303	935	Touko Fujiwara
24304	935	Atsushi Kitamoto
24305	935	Houzukigami
24306	935	Kappa
24307	935	Miyoko Aoi
24308	935	Nanase
24309	935	Nyanko Sensei
24310	935	Rokka
24311	935	Satoru Nishimura
24312	935	Shigeru Fujiwara
24313	935	Takahiko
24314	935	Urihime
24315	935	Yobiko
24316	935	Youko
24317	935	Yuriko Ogata
24318	936	Hitagi Senjougahara
24319	936	Shinobu Oshino
24320	936	Karen Araragi
24321	936	Mayoi Hachikuji
24322	936	Nadeko Sengoku
24323	936	Tsukihi Araragi
24324	936	Suruga Kanbaru
24325	936	Koyomi Araragi
24326	936	Tsubasa Hanekawa
24327	936	Meme Oshino
24328	936	Deishuu Kaiki
24329	937	Poyo Satou
24330	937	Moe Satou
24331	937	Hide Satou
24332	937	Shigeru Satou
24333	938	Sayo Takahashi
24334	938	Hina Soejima
24335	938	Atsumi Miyagawa
24336	938	Jun-chan
24337	938	Midori-chan
24338	938	Atsushi Miyagawa
24339	938	Big Bro Take
24340	938	Futami Moriyama
24341	938	Takumi
24342	938	Tetsuya
24343	939	Tsubasa Kazanari
24344	939	Kanade Amou
24345	939	Miku Kohinata
24346	939	Chris Yukine
24347	939	Hibiki Tachibana
24348	939	Ryouko Sakurai
24349	939	Shiori Terashima
24350	939	Yumi Itaba
24351	939	Aoi Tomosato
24352	939	Fine
24353	939	Genjuurou Kazanari
24354	939	Kuriyo Andou
24355	939	Sakuya Fujitaka
24356	939	Shinji Ogawa
24357	940	Akane Hino
24358	940	Yayoi Kise
24359	940	Akaoni
24360	940	Cure March
24361	940	Cure Sunny
24362	940	Haru Midorikawa
24363	940	Hina Midorikawa
24364	940	Majorina
24365	940	Nao Midorikawa
24366	940	Reika Aoki
24367	940	Ami Fujikawa
24368	940	Aya Honda
24369	940	Brian Taylor
24370	940	Candy
24371	940	Chiharu Kise
24372	940	Cure Beauty
24373	940	Cure Happy
24374	940	Cure Peace
24375	940	Daigo Hino
24376	940	Daisuke Waki
24377	940	Genji Midorikawa
24378	940	Genki Hino
24379	940	Hidekazu Toyoshima
24380	940	Hiroko Kanemoto
24381	940	Hiroshi Hoshizora
24382	940	Horike-sensei
24383	940	Ikuyo Hoshizora
24384	940	Joker
24385	940	Junko Kitaoka
24386	940	Junnosuke Aoki
24387	940	Kaori Wakabayashi
24388	940	Katsutoshi Okabe
24389	940	Keita Midorikawa
24390	940	Kenji Nogawa
24391	940	Kiyomi Onoushiro
24392	940	Kouta Midorikawa
24393	940	Kurata
24394	940	Masako Hino
24395	940	Mayu Okada
24396	940	Mayuka Kashimoto
24397	940	Mayumi Kisumi
24398	940	Miyuki Hoshizora
24399	940	Namie Sasaki
24400	940	Pierrot
24401	940	Pop
24402	940	Runa Terada
24403	940	Satoshi Kimura
24404	940	Seiji Inoue
24405	940	Shinya Munemoto
24406	940	Shizuko Aoki
24407	940	Souga
24408	940	Soutarou Aoki
24409	940	Student Council President
24410	940	Tadaaki Tomita
24411	940	Tae Hoshizora
24412	940	Tomofumi Kitahara
24413	940	Wolfrun
24414	940	Yuka
24415	940	Yura
24416	940	Yuuichi Kise
24417	940	Yuuta Midorikawa
24418	941	Rat / Jiro Nezu
24419	941	Cordelia Glauca
24420	941	Hercule 'Elly' Barton
24421	941	Saku Tooyama
24422	941	Sherlock 'Sheryl' Shellinford
24423	941	Tsugiko Zenigata
24424	941	Claris
24425	941	Henriette Mystere
24426	941	Kamaboko
24427	941	Kokoro Akechi
24428	941	Nero Yuzurizaki
24429	941	Opera Kobayashi
24430	941	Stone River / Souseki Ishinagare
24431	941	Twenty / Kai Nijuuri
24432	941	Arsene
24433	941	Hirano Hasegawa
24434	942	Mai Murasaki
24435	942	Mito Aizawa
24436	942	Mrs. Aizawa / Kakeru's mother
24437	942	Akira Takajou
24438	942	Akito Horikawa
24439	942	Ayaka Mine
24440	942	Gorou Gotou
24441	942	Haruki Onimaru
24442	942	Hiromi Kunimatsu
24443	942	Ichirou Yamanashi
24444	942	Jouji Uryuu
24445	942	Kakeru Aizawa
24446	942	Kaoru Matoba
24447	942	Kazuhide Tendou
24448	942	Kim Tae-Seung
24449	942	Kinichi Fuwa
24450	942	Kouichi Hibino
24451	942	Kouta Nakatsuta
24452	942	Leonardo Silva
24453	942	Makoto Hyoudou
24454	942	Michirou Takase
24455	942	Mikiya Toono
24456	942	Mitsuhiro Gotou
24457	942	Momoko Fukushima
24458	942	Mr. Aizawa / Kakeru's father
24459	942	Nana Mishima
24460	942	Reo Kurebayashi
24461	942	Ryosuke Shima
24462	942	Ryouma Oda
24463	942	Ryuuichi Araki
24464	942	Shigeo Nishijima
24465	942	Shinji Taked
24466	942	Suguru Aizawa
24467	942	Taeko Isshiki
24468	942	Teppei Iwaki
24469	942	Toru Asuka
24470	942	Tsuguhide Tendou
24471	942	Ukyo Sera
24472	942	Yuusuke Saeki
24473	943	Remon Yamano
24474	943	Ichika Takatsuki
24475	943	Kanna Tanigawa
24476	943	Mio Kitahara
24477	943	Manami Ogura
24478	943	Emika Takatsuki
24479	943	Kaito Kirishima
24480	943	Kaori Kinoshita
24481	943	Chiharu Arisawa
24482	943	Nanami Kirishima
24483	943	Rinon
24484	943	Tetsuro Ishigaki
24485	944	Louise Francoise le Blanc de la Valliere
24486	944	Kirche Augusta Frederica von Anhalt Zerbst 
24487	944	Siesta
24488	944	Illococoo
24489	944	Henrietta de Tristain
24490	944	Tiffania Westwood 
24491	944	Saito Hiraga
24492	944	Jeanette
24493	944	Tabitha o Tabasa
24494	944	Sheffield
24495	944	Agnes Chevalier de Milan
24496	944	Luctiana
24497	944	Damiem
24498	944	Doudou
24499	944	Eleanor Albertine le Blanc de la Blois de la Valliere
24500	944	Julio Cesare
24501	944	Maddarf
24502	944	Montmorency Margarita la Fere de Montmorency
24503	944	Vittorio Serevare
24504	944	Arie
24505	944	Beatrice Yvonne von Guldenhorf
24506	944	Derflinger
24507	944	Gimli
24508	944	Guiche de Gramont
24509	944	Lady Orleans de Gallia
24510	944	Osmond
24511	944	Verdandi
24512	944	Vidalshal
24513	944	Colbert Jean
24514	944	Eshmael
24515	944	Flame
24516	944	Jack
24517	944	Joseph
24518	944	Malicorn de Grand Pre
24519	944	Percerin
24520	944	Robin
24521	944	Sylphid
24522	945	Misaki Shokuhou
24523	945	Frenda Seivelun
24524	945	Saiai Kinuhata
24525	945	Shizuri Mugino
24526	945	Eiga Kanmi
24527	945	Rikou Takitsubo
24528	946	Leviathan
24529	946	Bahamut
24530	946	Syrup
24531	946	Ainsel
24532	946	Hequet
24533	946	Jörmungandr
24534	946	Keto
24535	946	Leviathan's Brother
24536	946	Metal
24537	946	Mysterious Boy
24538	946	Ragon
24539	946	Sphinx
24540	946	Tsuchinoko
24541	946	Eceus Ratra
24542	946	Fire Drake
24543	946	Gargoyle
24544	946	Mushussu
24545	946	Rage Row
24546	946	Rudra
24547	946	The Marshal
24548	946	Wyvern
24549	947	Saki Iwasawa
24550	947	Ayuko Uehara
24551	947	Kanaka Amaya
24552	947	Mei Yanase
24553	947	Misuzu Wakatsuki
24554	947	Shuusaku Matsuno
24555	947	Souta Amaya
24556	947	Sumiko Yamashita
24557	948	Arata
24558	948	Arata Hinohara
24559	948	Kotoha
24560	948	Yorunami
24561	948	Kannagi
24562	948	Akachi
24563	948	Arata's Mother
24564	948	Hiruko
24565	948	Kanate
24566	948	Kikuri
24567	948	Kugura
24568	948	Makari
24569	948	Masato Kadowaki
24570	948	Miyabi
24571	948	Nao Hinohara
24572	948	Suguru Nishijima
24573	948	Yataka
24574	949	Mikasa Ackerman
24575	949	Levi Ackerman
24576	949	Sasha Blouse
24577	949	Eren Jaeger
24578	949	Armin Arlelt
24579	949	Annie Leonhardt
24580	949	Zoe Hange
24581	949	Krista Lenz
24582	949	Erwin Smith
24583	949	Jean Kirstein
24584	949	Bertholt Huber
24585	949	Petra Ral
24586	949	Marco Bott
24587	949	Reiner Braun
24588	949	Ymir
24589	949	Hannes
24590	949	Carla Jaeger
24591	949	Connie Springer
24592	949	Dot Pixis
24593	949	Ian Dietrich
24594	949	Rico Brzenska
24595	949	Grisha Jaeger
24596	949	Lord Bart
24597	949	Mike Zacharias
24598	949	Millius Zermusky
24599	949	Mina Carolina
24600	949	Nanaba
24601	949	Thomas Wagner
24602	949	Anka Rheinberger
24603	949	Boris Feulner
24604	949	Darius Zackly
24605	949	Daz
24606	949	Franz
24607	949	Gustav
24608	949	Hannah
24609	949	Hitch Dreyse
24610	949	Hugo
24611	949	Keith Shadis
24612	949	Kitz Weilman
24613	949	Marlowe Freudenberg
24614	949	Mitabi Jarnach
24615	949	Moses
24616	949	Nac Tius
24617	949	Nick
24618	949	Nile Dok
24619	949	Oluo Bozado
24620	949	Samuel Linke-Jackson
24621	950	Fuuka Saitou
24622	950	Hikaru Saitou
24623	950	Natsu
24624	950	Rin Fujisaki
24625	951	Houko Byoinzaka
24626	951	Emily Redhands
24627	951	Iwai Mushanokoji
24628	951	Yamane Byoinzaka
24629	951	Kiri Haimura
24630	951	Hitomi Karuko
24631	951	Houichi Koisumi
24632	951	Kanae Sumeragi
24633	951	Kashiko Misumi
24634	951	Kotaro Naruto
24635	951	Kozakura Zenigata
24636	951	Lady Violet Witchy
24637	951	Nigi Ubusato
24638	951	Norma Grayland
24639	951	Romio Zaiga
24640	951	Ruka Shihoudou
24641	951	Seigi Nakajima
24642	952	Yamato Hotsuin
24643	952	Hibiki Kuze
24644	952	Airi Ban
24645	952	Hinako Kujyo
24646	952	Jungo Torii
24647	952	Makoto Sako
24648	952	The Anguished One
24649	952	Daichi Shijima
24650	952	Fumi Kanno
24651	952	Otome Yanagiya
24652	952	Female Tiko
24653	952	Io Nitta
24654	952	Keita Wakui
24655	952	Male Tiko
24656	952	Ronaldo Kuriki
24657	952	Yuzuru Akie / Joe
24658	953	Android 18
24659	953	Vegeta
24660	953	Goku
24661	953	Videl
24662	953	Gohan
24663	953	ChiChi
24664	953	Piccolo
24665	953	Bulma Briefs
24666	953	Krillin
24667	953	Goten
24668	953	Yamcha
24669	953	Tien Shinhan
24670	953	Master Roshi
24671	953	Majin Buu
24672	953	Mr. Satan
24673	953	Chiaotzu
24674	953	King Kai
24675	953	Dende
24676	953	King Vegeta
24677	953	Puar
24678	953	Trunks Brief
24679	953	Bills
24680	953	Mai
24681	953	Dr. Brief
24682	953	Emperor Pilaf
24683	953	Mrs. Brief
24684	953	Oolong
24685	953	Shuu
24686	953	Super Saiyan God Goku
24687	953	Wiss
24688	954	Sawa Nakamura
24689	954	Ken Kojima
24690	954	Masakazu Yamada
24691	954	Mayu
24692	954	Nanako Saeki
24693	954	Shimoyama
24694	954	Takao Kasuga
24695	955	Bellows
24696	955	Ledo
24697	955	Lukkage
24698	955	Melty
24699	955	Ridgett
24700	955	Amy
24701	955	Mayta
24702	955	Pinion
24703	955	Saaya
24704	955	Bebel
24705	955	Crown
24706	955	Fairlock
24707	955	Flange
24708	955	Joe
24709	955	Kugel
24710	955	Oldham
24711	955	Warm
24712	956	Kugimiya Kei
24713	956	Irie Tamaki
24714	956	Asagi Toshikazu
24715	956	Izuru Hitachi
24716	956	Mysterious Girl / Teoria
24717	956	Rutiel
24718	956	Amane
24719	956	Crane
24720	956	Dorugana
24721	956	Garukie
24722	956	Giuliano Visconti
24723	956	Jiato
24724	956	John Smith
24725	956	Komine Dai
24726	956	Lada
24727	956	Lynn Suzukaze
24728	956	Mysterious Man
24729	956	Patrick Hoyle
24730	956	Rakesh Chandrasekhar
24731	956	Randy Maxwell
24732	956	Remes
24733	956	Shirato
24734	956	Siegfried von Vuesutanahha
24735	956	Simon Gatou
24736	956	Suruga Ataru
24737	957	Nyarlathotep / Nyaruko
24738	957	Kuuko
24739	957	Tamao Kurei
24740	957	Hasuta / Hastur
24741	957	Mahiro Yasaka
24742	957	Kutogwa
24743	957	Yoriko Yasaka
24744	957	Ruhi Jiston
24745	957	Takehiko Yoichi
24746	958	Juubei Yagyuu
24747	958	Kanetsugu Naoe
24748	958	Yukimura Sanada
24749	958	Sen Tokugawa
24750	958	Charles d'Artanian
24751	958	Matabee Gotou
24752	958	Muneakira Yagyuu
24753	958	Hanzou Hattori
24754	958	Keiji Maeda
24755	958	Musashi Miyamoto
24756	958	Inshun Hozoin
24757	958	Kojiro Sasaki
24758	958	Mataemon Araki
24759	958	Sarutobi Sasuke
24760	958	Yoshihiko Tokugawa
24761	959	Yogi
24762	959	Gareki
24763	959	Nai
24764	959	Tsukumo
24765	959	Akari
24766	959	Hirato
24767	959	Jiki
24768	959	Iva
24769	959	Tsukitachi
24770	959	Karoku Arumerita
24771	959	Azana
24772	959	Kiichi
24773	959	Yotaka
24774	959	Tsubaki
24775	959	Uro
24776	959	Yanari
24777	959	Erisyuka
24778	959	Kagiri
24779	959	Kiharu
24780	959	Meiga
24781	959	Mine
24782	959	Parunedo
24783	959	Ryoushi
24784	959	Tsubame
24785	959	Yukkin
24786	960	Akko Kagari
24787	960	Diana Cavendish
24788	960	Sucy Manbavaran
24789	960	Barbara
24790	960	Hanna
24791	960	Lotte Yanson
24792	960	Shiny Chariot
24793	961	Haru
24794	961	Hibachi
24795	961	Mitsuki
24796	961	Mushibugyou
24797	961	Jinbei Tsukishima
24798	961	Genjuurou Tsukishima
24799	961	Kotori Matsunohara
24800	961	Mugai
24801	961	Shungiku Koikawa
24802	961	Tenma Ichinotani
24803	962	Yukino Yukinoshita
24804	962	Shizuka Hiratsuka
24805	962	Yui Yuigahama
24806	962	Hachiman Hikigaya
24807	962	Komachi Hikigaya
24808	962	Meguri Shiromeguri
24809	962	Saki Kawasaki
24810	962	Yumiko Miura
24811	962	Haruno Yukinoshita
24812	962	Saika Totsuka
24813	962	Hayato Hayama
24814	962	Hina Ebina
24815	962	Kakeru Tobe
24816	962	Minami Sagami
24817	962	Rumi Tsurumi
24818	962	Yoshiteru Zaimokuza
24819	963	Muromi-san
24820	963	Fuji-san
24821	963	Levia-san
24822	963	Hii-chan
24823	963	Sumida-san
24824	963	Harpy
24825	963	Takurou Mukoujima
24955	965	Mai Sakura
24956	965	Momoko Ootani
24957	965	Tomoe Misumi
24958	965	Hikari Sanehara
24959	965	Nonoka Masaki
24960	965	Yuuko Uchida
24961	965	Aki Muroto
24962	965	Haruka Niimi
24963	965	Katsumi Kurebayashi
24964	965	Kazuya Maeda
24965	965	Rina Yunoki
24966	965	Ruu Narita
24967	965	Hiromichi Kudou
24968	965	Itta Nakagawa
24969	965	Kanon Maeda
24970	965	Misa Kitagawa
24971	965	Takashi Azuma
24972	966	Bell Renjouji
24973	966	Wakana Morizono
24974	966	Ann Fukuhara
24975	966	Ito Suzuno
24976	966	Naru Ayase
24977	966	Otoha Takanashi
24978	966	Rinne Ibara
24979	967	Mayura Souda
24980	967	Miyuki Sagara
24981	967	Masumi Souda
24982	967	Angelica Bernard
24983	967	Ayumi Watanabe
24984	967	Daisei Suzuhara
24985	967	Haruna Mita
24986	967	Himegami
24987	967	Hodaka Murakami
24988	967	Ichijou Takayanagi
24989	967	Izumiko Suzuhara
24990	967	Jean Honoka Kisaragi
24991	967	Manatsu Souda
24992	967	Mikoto Kanzaki
24993	967	Satoru Wamiya
24994	967	Sawa Suemori
24995	967	Shingo Nonomura
24996	967	Shizue Souda
24997	967	Yoshiki Hayakawa
24998	967	Yukimasa Sagara
24999	968	Akira Yamamoto
25000	968	Hajime Hirata
25001	968	Makoto Harada
25002	968	Miki Saijo
25003	968	Nova Forrester
25004	968	Yuria Misaki
25005	968	Aberuto Desslok
25006	968	Abraham Avatar
25007	968	Alex Wildstar
25008	968	Analyzer
25009	968	Charis Kraitsy
25010	968	Charles Singleton
25011	968	Chief Orion
25012	968	Christopher Eager
25013	968	Dash
25014	968	Derek Wildstar
25015	968	Dr. Sane
25016	968	Draco Gideon
25017	968	Elk Domel
25018	968	Fomuto Berger
25019	968	Gal Ditz
25020	968	General Stone
25021	968	Ghader Talan
25022	968	Gol Haini
25023	968	Guelph Ganz
25024	968	Guremuto Gale
25025	968	Haidom Gimill
25026	968	Helm Zoellick
25027	968	Hilde Schultz
25028	968	Hiroki Shinohara
25029	968	Homer Glitchman
25030	968	Isami Enomoto
25031	968	Kaoru Niimi
25032	968	Kiyoshi Toyama
25033	968	Mark Venture
25034	968	Merda Ditz
25035	968	Mirenel Linke
25036	968	Mizera Celestera
25037	968	Osamu Yamanami
25038	968	Palen Neruge
25039	968	Peter Conroy
25040	968	Redof Hiss
25041	968	Ryle Getto
25042	968	Sareruya Raleta
25043	968	Shinpei Iwata
25044	968	Shinya Ito
25045	968	Sho Yamazaki
25046	968	Starsha
25047	968	Stephen Sando
25048	968	Tetsuya Kitano
25049	968	Toru Hoshina
25050	968	Travis Sparks
25051	968	Vals Lang
25052	968	Volcan Yaretora
25053	968	Walk Schultz
25054	968	Welte Talan
25055	968	Wem Heidern
25056	968	Wolf Fleurken
25057	969	Tsukiko Tsutsukakushi
25058	969	Tsukushi Tsutsukakushi
25059	969	Azusa Azuki
25060	969	Emanuela Pollarola
25061	969	Youto Yokodera
25062	969	Mai Maimaki
25063	969	Morii
25064	969	Moriya
25065	969	Ponta
25066	970	Emi Yusa / Emilia Justina
25067	970	Sadao Maou / Satan Jacob
25068	970	Shiro Ashiya / Alsiel
25069	970	Chiho Sasaki
25070	970	Hanzou Urushihara / Lucifer
25071	970	Suzuno Kamazuki / Crestia Bell
25072	970	Emerada Etuva
25073	970	Mayumi Kisaki
25074	970	Rika Suzuki
25075	970	Albertio Ende
25076	970	Miki Shiba
25077	970	Nord Justina
25078	970	Olba Meiya
25079	970	Yuki Mizushima
25080	971	Shou Kurusu
25081	971	Otoya Ittoki
25082	971	Natsuki Shinomiya
25083	971	Tokiya Ichinose
25084	971	Ren Jinguuji
25085	971	Masato Hijirikawa
25086	971	Ringo Tsukimiya
25087	971	Ai Mikaze
25088	971	Cecil Aijima
25089	971	Haruka Nanami
25090	971	Tomochika Shibuya
25091	971	Ryuuya Hyuuga
25092	971	Nagi Mikado
25093	971	Ranmaru Kurosaki
25094	971	Shining Saotome
25095	971	Camus
25096	971	Kira Sumeragi
25097	971	Reiji Kotobuki
25098	972	Saki Rukino
25099	972	Shouko Sashinami
25100	972	X-Eins
25101	972	A-Drei
25102	972	Akira Renbokoji
25103	972	Haruto Tokishima
25104	972	L-Elf
25105	972	Cain Dressel
25106	972	H-Neun
25107	972	Kriemhild
25108	972	Marie Nobi
25109	972	Q-Vier
25110	972	Rion Nanami
25111	972	Satomi Renbokouji 
25112	972	Lieselotte W. Dorssia
25113	972	Pino
25114	972	Takahi Ninomiya
25115	972	Takumi Kibukawa
25116	972	Aina Sakurai
25117	972	Eri Watari
25118	972	Iori Kitagawa
25119	972	Kyuuma Inuzuka
25120	972	Raizou Yamada
25121	972	Youhei Onai
25122	972	Yusuke Otamaya
25123	973	Yui Ichii
25124	973	Yukari Hinata
25125	973	Yuzuko Nonohara
25126	973	Yoriko Matsumoto
25127	973	Chiho Aikawa
25128	973	Kei Okano
25129	973	Fumi Hasegawa
25130	974	Rin Eba
25131	974	Yuzuki Eba
25132	974	Akari Kaga
25133	974	Aoi Kirishima
25134	974	Asuka Mishima
25135	974	Haruto Kirishima
25136	974	Kyousuke Kazama
25137	974	Nanami Kanzaki
25138	974	Takashi Yura
25139	975	Tomoka Minato
25140	975	Maho Misawa
25141	975	Airi Kashii
25142	975	Hinata Hakamada
25143	975	Saki Nagatsuka
25144	975	Aoi Ogiyama
25145	975	Kagetsu Hakamada
25146	975	Masami Fujii
25147	975	Mimi Balguerie
25148	975	Nana Yotsuya
25149	975	Hiiragi Takenaka
25150	975	Subaru Hasegawa
25151	975	Tsubaki Takenaka
25152	976	Staz Charlie Blood
25153	976	Akimu Papladon
25154	976	Bel Hydra
25155	976	Fuyumi Yanagi
25156	976	Berros
25157	976	Wolf
25158	976	Liz T. Blood
25159	976	Saty
25160	976	Braz D. Vlad
25161	976	Mamejirou
25162	976	Nell Hydra
25163	976	Neyn Hydra
25164	976	Deku
25165	976	Franken Stein
25166	976	Goyle
25167	977	Botan Oohagi
25168	977	Karin Touno
25169	977	Sakura Doumyouji
25170	977	Natsuki Andou
25171	977	Claire Kokonoe
25172	977	Ai Furuhashi
25173	978	Sasara
25174	978	Kagami Totori
25175	978	Katia
25176	978	Madeleine
25177	978	Petite
25178	978	Ponpon
25179	978	Uzume Uno
25180	978	Akari
25181	978	Champa
25182	978	Kuu Kunoichi
25183	978	Shimeji
25184	978	Aloe
25185	978	Anti
25186	978	Edmonton
25187	978	Komachi Kiyomasa
25188	978	Manai Uzuki
25189	978	Mazon
25190	978	Medaglia
25191	978	Miko Uno
25192	978	Mikoto Uno
25193	978	Nymphet
25194	978	Ophelia
25195	978	Proto Zero
25196	978	Shiinomi
25197	978	Yugake
25198	978	A.S.
25199	978	Aldington
25200	978	Amsterdam
25201	978	Anne
25202	978	Appliance
25203	978	Barcelona
25204	978	Basil
25205	978	Cardiff
25206	978	Deadline
25207	978	Edinburgh
25208	978	Leelen Super 1
25209	978	Nohohon
25210	978	Olden
25211	978	Perforation
25212	978	Pompadour
25213	978	Rembrandt
25214	978	Rinto Mikasa
25215	978	Scripter
25216	978	Suzuri
25217	978	Talkie
25218	978	Tart
25219	978	Tenez
25220	978	The Rafflesia Man
25221	978	Ukiwa
25222	978	Vivi
25223	979	Rin Tohsaka
25224	979	Illyasviel von Einzbern 'Ilya'
25225	979	Miyu Edelfelt
25226	979	Shirou Emiya               
25227	979	Leysritt
25228	979	Taiga Fujimura
25229	979	Kuroe von Einzbern
25230	979	Luviagelita Edelfelt
25231	979	Nanaki Moriyama
25232	979	Sella
25233	979	Magical Ruby
25234	979	Magical Sapphire
25235	979	Mimi Katsura
25236	979	Suzuka Kurihara
25237	979	Tatsuko Gakumazawa
25238	980	Haruka Nanase
25239	980	Makoto Tachibana
25240	980	Rin Matsuoka
25241	980	Nagisa Hazuki
25242	980	Rei Ryugazaki
25243	980	Gou Matsuoka
25244	980	Seijuurou Mikoshiba
25245	980	Aiichiro Nitori
25246	980	Makoto Tachibana (young)
25247	980	Rin Matsuoka (young)
25248	980	Miho Amakata
25249	980	Nagisa Hazuki (young)
25250	980	Ran Tachibana
25251	980	Gorou Sasabe
25252	980	Haruka Nanase (young)
25253	980	Ren Tachibana
25254	980	Chigusa Hanamura
25255	981	Alice Myojingawa
25256	981	Cordelia Glauca
25257	981	Hercule 'Elly' Barton
25258	981	Sherlock 'Sheryl' Shellinford
25259	981	Kazumi Tokiwa
25260	981	Keiko Totsukawa
25261	981	Kokoro Akechi
25262	981	Nero Yuzurizaki
25263	981	Shion Myojingawa
25264	982	Utsu-tsu
25265	982	Hajime Ichinose
25266	982	Load Galax
25267	982	Berg Katse
25268	982	Joe Hibiki
25269	982	O.D.
25270	982	Rui Ninomiya
25271	982	Sugune Tachibana
25272	982	J.J. Robinson
25273	982	Paiman
25274	982	President X
25275	983	Mirei Yajima
25276	983	Susanna Hopkins
25277	983	Chika Ogiue
25278	983	Fuji
25279	983	Kaminaga
25280	983	Kanako Ohno
25281	983	Kenjiro Hato
25282	983	Konno
25283	983	Manabu Kuchiki
25284	983	Rika Yoshitake
25285	984	Hal
25286	984	Kurumi
25287	984	Aranami
25288	984	Ryu
25289	984	Tokio
25290	985	Rias Gremory
25291	985	Akeno Himejima
25292	985	Koneko Toujou
25293	985	Asia Argento
25294	985	Irina Shidou
25295	985	Xenovia
25296	985	Issei Hyoudou
25297	985	Rossweisse
25298	985	Raynare
25299	985	Serafall Leviathan
25300	985	Yuuto Kiba
25301	985	Sona Sitri
25302	985	Vali Lucifer
25303	985	Gasper Vladi
25304	985	Mittelt
25305	985	Kalawarner
25306	985	Michael
25307	985	Ophis
25308	985	Tsubasa Yura
25309	985	Aika Kiriyuu
25310	985	Albion
25311	985	Azazel
25312	985	Bikou
25313	985	Ddraig
25314	985	Dohnaseek
25315	985	Genshirou Saji
25316	985	Katase
25317	985	Lord Gremory
25318	985	Momo Hanakai
25319	985	Murayama
25320	986	Noire
25321	986	Black Heart
25322	986	Purple Heart
25323	986	Neptune
25324	986	Green Heart
25325	986	Compa
25326	986	IF
25327	986	Vert
25328	986	White Heart
25329	986	Nepgear
25330	986	Uni
25331	986	5pb
25332	986	Blanc
25333	986	Ram
25334	986	Magiquone
25335	986	Pish
25336	986	Histoire
25337	986	Plutia
25338	986	Rom
25339	986	Abness
25340	986	Rei Kiseijou
25341	986	Warechu
25342	987	Seira Hoshikawa
25343	987	Akari Taiyo
25344	987	Itsuki, Mutsumi & Nanase Tendo
25345	987	Meltina Melvis
25346	987	Priscilla Twilight
25347	987	Ariel Valtiel Westcott
25348	987	Cerebrum
25349	987	Etia Visconti
25350	987	Fuyuna Shinzaki
25351	987	Ginka Shirokane
25352	987	Hanayume
25353	987	Hinata Taiyo
25354	987	Kengo Shinzaki
25355	987	Laplace
25356	987	Luna Tsukuyomi
25357	987	Lymro
25358	987	Mama Nagataki
25359	987	Schrodinger
25360	987	Shuuji Kishida
25361	987	Yukino Shinzaki
25362	988	Tomoko Kuroki
25363	988	Tomoki Kuroki
25364	988	Yuu Naruse
25365	988	Hina Nemoto
25366	988	Kii
25367	988	Fukuura
25368	988	Jun Ishimine
25369	988	Kiyota
25370	988	Kosaka
25371	988	Megumi Imae
25372	988	Okada
25373	988	Oomatsu
25374	988	Suzuki
25375	989	Qiang Hui
25376	989	He Liao Diao
25377	989	Wang Qi
25378	989	Bi
25379	989	Bi Hei
25380	989	Cai Ze
25381	989	Changwenjun
25382	989	Den Ei
25383	989	Den Yuu
25384	989	En
25385	989	Hairou
25386	989	Heikun Shou
25387	989	Kan Ki
25388	989	Kei
25389	989	Kou
25390	989	Kyo Gai
25391	989	Kyou Sei
25392	989	Li Si
25393	989	Lu Buwei
25394	989	Meng Wu
25395	989	Meng Yi
25396	989	Mou Gou
25397	989	Mou Ten
25398	989	Ou Hon
25399	989	Ou Sen
25400	989	Rankai
25401	989	Ro En
25402	989	Ryuu Sen
25403	989	Ryuu Yuu
25404	989	Shi Ketsu
25405	989	Shou Sa
25406	989	Suu Gen
25407	989	Tai Kou
25408	989	Taku Kei
25409	989	Tou
25410	989	Xiang
25411	989	Xin
25412	989	Yang
25413	989	Ying Zheng
25414	990	Riko Kurahashi
25415	990	Maki Natsuo
25416	990	Suzune Tanahashi
25417	990	Yuiko Enomoto
25418	990	Masaomi Ikezawa
25419	990	Sayori Mizushima
25420	990	Katsuragi
25421	990	Masanobu Maki
25422	990	Mika Kiriyama
25423	990	Miyabi Sugihara
25424	990	Momoka Minami
25425	990	Natsuho Maki
25426	990	Rentarou Kurahashi
25427	990	Sakagami
25428	990	Satoshi Nagino
25429	990	Tachibana
25430	990	Tatsumi Irikimi
25431	990	Yoshie Yoshida
25432	990	Yoshiko Kurahashi
25433	991	Dantalion
25434	991	Astaroth
25435	991	Sitori
25436	991	William Twining
25437	991	Amon
25438	991	Baphomet
25439	991	Camio
25440	991	Lamia
25441	991	Isaac Morton
25442	991	Kevin Cecil
25443	991	Mammon
25444	991	Solomon
25445	991	Eligos
25446	991	Gilles de Rais
25447	991	Leonard
25448	991	Mycroft Swallow
25577	993	Suigintou
25578	993	Suiseiseki
25579	993	Shinku
25580	993	Souseiseki
25581	993	Hina-Ichigo
25582	993	Kirakishou
25583	993	Jun Sakurada
25584	993	Jun Sakurada
25585	993	Kanaria
25586	994	Tsubasa Kazanari
25587	994	Miku Kohinata
25588	994	Chris Yukine
25589	994	Hibiki Tachibana
25590	994	Kirika Akatsuki
25591	994	Maria Cadenzavna Eve
25592	994	Serena Cadenzavna Eve
25593	994	Shiori Terashima
25594	994	Yumi Itaba
25595	994	Aoi Tomosato
25596	994	Genjuurou Kazanari
25597	994	Kuriyo Andou
25598	994	Dr. Ver
25599	994	Masahito Shibata
25600	994	Professor Nastassja
25601	994	Sakuya Fujitaka
25602	994	Shinji Ogawa
25603	994	Shirabe Tsukuyomi
25604	995	???
25605	995	Alba
25606	995	Ros
25607	995	Ruki
25608	995	Ares
25609	995	Butler
25610	995	Dezember Zwolf
25611	995	Elf November
25612	995	Februar Zwei
25613	995	Foyfoy
25614	995	Januar Ein
25615	995	Juli Sieben
25616	995	Rukimedes the First
25617	995	King
25618	995	Mii-chan
25619	995	Minister
25620	995	Rudolf
25621	995	Samejima
25622	996	Lucy Yamagami
25623	996	Megumi Chihaya
25624	996	Touko Ichimiya
25625	996	Saya Miyoshi
25626	996	Tanaka
25627	996	Yutaka Hasebe
25628	996	Jouji Tanaka
25629	996	Kanon Momoi
25630	996	Kaoru Hasebe
25631	996	Taishi Ichimiya
25632	997	Tamako Inada
25633	997	Aki Mikage
25634	997	Shinnosuke Aikawa
25635	997	Yugo Hachiken
25636	997	Ichiro Komaba
25637	997	Keiji Tokiwa
25638	997	Mayumi Yoshino
25639	997	Misako Hachiken
25640	997	Shinei Ookawa
25641	997	Shingo Hachiken
25642	997	Tarou Beppu
25643	998	Rento Kirishima
25644	998	Sonora Kashima
25645	998	Yura Yamato
25646	998	Honoka Mutsu
25647	998	Yachiyo Hinata
25648	998	Karila Hatsuse
25649	998	Rin Haruna
25650	999	Hampnie Hambart
25651	999	Lady Alfa
25652	999	Ulla Euleus Hecmatika
25653	999	Ai Astin
25654	999	Dee Ensy Stratmitos
25655	999	Scar
25656	999	Alice Color
25657	999	Julie Sakuma Dmitriyevich
25658	999	Rune Sagittarius
25659	999	Anna
25660	999	Hikoutsu
25661	999	Kiriko Zubreska
25662	999	Memepo Gedenburg
25663	999	Menhim
25664	999	Mimieta Gedenburg
25665	999	Tanya Swedgewood
25666	999	Volrath Fahren
25667	999	Youki
25668	999	Yuuto
25675	1001	Yaichirou Shimogamo
25676	1001	Yajirou Shimogamo
25677	1001	Yasaburou Shimogamo
25678	1001	Akadama sensei
25679	1001	Benten
25680	1001	Choutarou Yodogawa
25681	1001	Kinkaku & Ginkaku
25682	1001	Mother
25683	1001	Souichiro Shimogamo
25684	1001	Soun Ebisugawa
25685	1001	Yashirou Shimogamo
25686	1002	Chris Yuu Takigawa
25687	1002	Eijun Sawamura
25688	1002	Kazuya Miyuki
25689	1002	Ryousuke Kominato
25690	1002	Satoru Furuya
25691	1002	Haruichi Kominato
25692	1002	Tetsuya Yuki
25693	1002	Youichi Kuramochi
25694	1002	Haruno Yoshikawa
25695	1002	Jun Isashiki
25696	1002	Kouichirou Tanba
25697	1002	Mei Narumiya
25698	1002	Norifumi Kawakami
25699	1002	Raichi Todoroki
25700	1002	Rei Takashima
25701	1002	Shinji Kanemaru
25702	1002	Shunpei Sanada
25703	1002	Shunshin You
25704	1002	Tesshin Kataoka
25705	1002	Toujou Hideaki
25706	1002	Wakana
25707	1002	Yui Natsukawa
25708	1003	Takao
25709	1003	Iona
25710	1003	Haruna
25711	1003	Kongou
25712	1003	Gunzou Chihaya
25713	1003	Iori Watanuki
25714	1003	I-400
25715	1003	I-402
25716	1003	Kirishima
25717	1003	Kyouhei Kashihara
25718	1003	Makie Osakabe
25719	1003	Maya
25720	1003	Ryoukan Kita
25721	1003	Shizuka Hozumi
25722	1003	Sou Oribe
25723	1004	Mirai Kuriyama
25724	1004	Akihito Kanbara
25725	1004	Mitsuki Nase
25726	1004	Hiroomi Nase
25727	1004	Ai Shindou
25728	1004	Sakura Inami
25729	1004	Ayaka Shindou
25730	1004	Izumi Nase
25731	1004	Shizuku Ninomiya
25732	1004	Miroku Fujima
25733	1004	Yayoi Kanbara
25734	1005	Litchi Faye-Ling
25735	1005	Noel Vermilion
25736	1005	Rachel Alucard
25737	1005	Taokaka
25738	1005	Ragna the Bloodedge
25739	1005	Nu-13
25740	1005	Jin Kisaragi
25741	1005	Arakune
25742	1005	Hazama
25743	1005	Carl Clover
25744	1005	Iron Tager
25745	1005	Bang Shishigami
25746	1005	Hakumen
25747	1005	Kokonoe
25748	1005	Platinum the Trinity
25749	1005	Tsubaki Yayoi
25750	1006	Aoi Fukasaku
25751	1006	Haruto Kurosawa
25752	1006	Ibara Naruse
25753	1006	Shion Ozu
25754	1006	Kanon Ozu
25755	1006	Taeko Nomura
25756	1007	Hazuki Ferrari
25757	1007	Hozuki Ferrari
25758	1007	Anna Hendrix
25759	1007	Kazuki Ferrari
25760	1007	Sylvia Ferrari
25761	1007	Cicinho
25762	1007	Galileo Galilei
25763	1007	Geshio Ferrari
25764	1007	Karen
25765	1007	Roberto Materazzi
25766	1007	Theo Escher
25767	1008	Kouko Kaga
25768	1008	Nana Hayashida
25769	1008	Banri Tada
25770	1008	Mitsuo Yanagisawa
25771	1008	Oka Chinami
25772	1008	Nana Senpai
25773	1008	Nijigen-kun
25774	1008	Shi
25775	1009	Aila Jyrkiainen
25776	1009	Mr. Ral
25777	1009	Ricardo Fellini
25778	1009	Sei Iori
25779	1009	Allan Adams
25780	1009	Baker
25781	1009	C
25782	1009	Carlos Kaiser
25783	1009	Caroline Yajima
25784	1009	Chairman Mashita
25785	1009	China Kousaka
25786	1009	Gawain Oakley
25787	1009	Greco Logan
25788	1009	John Ayers Mackenzie
25789	1009	Josef Kankaansyrja
25790	1009	Julian Ayers Mackenzie
25791	1009	Julio Renato
25792	1009	Kirara
25793	1009	Luang Dallara
25794	1009	Mao Yasaka
25795	1009	Mario Renato
25796	1009	Master Chinan
25797	1009	Misaki
25798	1009	Monta Gonda
25799	1009	Nils Nielsen
25800	1009	Nine Barthes
25801	1009	Rainer Cziommer
25802	1009	Reiji
25803	1009	Rinko Iori
25804	1009	Susumu Sazaki
25805	1009	Takeshi Iori
25806	1009	Tatsuya Yuuki
25807	1009	Tatsuzo
25927	1011	Phino Bloodstone
25928	1011	Airi Ortinet
25929	1011	Ceara August
25930	1011	Nova Luminous
25931	1011	Ramdia de Accimemor
25932	1011	Lore Beriferal
25933	1011	Elsa Crucial
25934	1011	Raul Chaser
25935	1011	Visor Crossroad
25936	1012	Laura Bodewig
25937	1012	Charlotte Dunois
25938	1012	Houki Shinonono
25939	1012	Huang Lingyin
25940	1012	Cecilia Alcott
25941	1012	Tatenashi Sarashiki
25942	1012	Kanzashi Sarashiki
25943	1012	Ichika Orimura
25944	1012	Madoka Orimura
25945	1013	Ryuuko Matoi
25946	1013	Satsuki Kiryuin
25947	1013	Aikurou Mikisugi
25948	1013	Mako Mankanshoku
25949	1013	Nonon Jakuzure
25950	1013	Senketsu
25951	1013	Houka Inumuta
25952	1013	Nui Harime
25953	1013	Uzu Sanageyama
25954	1013	Ragyo Kiryuin
25955	1013	Rei Hoomaru
25956	1013	Shirou Iori
25957	1013	Sukuyo Mankanshoku
25958	1013	Tsumugu Kinagase
25959	1013	Barazo Mankanshoku
25960	1013	Ira Gamagori
25961	1013	Mataro Mankanshoku
25962	1013	Shinjirou Nagita
26002	1015	Tetsuya Kuroko
26003	1015	Ryouta Kise
26004	1015	Taiga Kagami
26005	1015	Aomine Daiki
26006	1015	Shintarou Midorima
26007	1015	Satsuki Momoi
26008	1015	Seijuro Akashi
26009	1015	Tetsuya #2
26010	1015	Riko Aida
26011	1015	Atsushi Murasakibara
26012	1015	Junpei Hyuuga
26013	1015	Kazunari Takao
26014	1015	Shinji Koganei
26015	1015	Shun Izuki
26016	1015	Teppei Kiyoshi
26017	1015	Yukio Kasamatsu
26018	1015	Rinnosuke Mitobe
26019	1015	Ryou Sakurai
26020	1015	Shoichi Imayoshi
26021	1015	Alexandra Garcia
26022	1015	Kazuya Hara
26023	1015	Kensuke Fukui
26024	1015	Kiyoshi Miyaji
26025	1015	Kouki Furihata
26026	1015	Kousuke Wakamatsu
26027	1015	Makoto Hanamiya
26028	1015	Masako Araki
26029	1015	Taiga Kagami (young)
26030	1015	Taisuke Otsubo
26031	1015	Tatsuya Himuro
26032	1015	Tatsuya Himuro (young)
26033	1015	Wei Liu
26034	1015	Yoshitaka Moriyama
26035	1015	Hiroshi Fukuda
26036	1015	Kenichi Okamura
26037	1015	Koichi Kawahara
26038	1015	Kouji Kobori
26039	1015	Mitsuhiro Hayakawa
26040	1015	Ryuuhei Kasuga
26041	1015	Satoshi Tsuchida
26042	1015	Shinsuke Kimura
26043	1015	Tomoki Tsugawa
26044	1015	Tsutomu Iwamura
26045	1015	Yoshinori Susa
26046	1016	Akatsuki
26047	1016	Shiroe
26048	1016	Nyanta
26049	1016	Crusty
26050	1016	Lenessia Erhart Cowen
26051	1016	Marielle
26052	1016	Naotsugu
26053	1016	Rundelhaus Code
26054	1016	Henrietta
26055	1016	Isuzu
26056	1016	Serara
26057	1016	Ashlynn
26058	1016	Isaac
26059	1016	Minori
26060	1016	Nureha
26061	1016	Shoryu
26062	1016	Sojiro Seta
26063	1016	Tohya
26064	1016	Asuka
26065	1016	Demikas
26066	1016	Dolce
26067	1016	Eins
26068	1016	Eizel
26069	1016	Hien
26070	1016	Karashin
26071	1016	Kawara
26072	1016	Londark
26073	1016	Michitaka
26074	1016	Nazuna
26075	1016	Rezarick
26076	1016	Sergiatte Cowen
26077	1016	Takayama Misa
26078	1017	Morgiana
26079	1017	Kougyoku Ren
26080	1017	Alibaba Saluja
26081	1017	Sinbad
26082	1017	Aladdin
26083	1017	Yamuraiha
26084	1017	Hakuryuu Ren
26085	1017	Judar
26086	1017	Hakuei Ren
26087	1017	Paimon
26088	1017	Kouha Ren
26089	1017	Masrur
26090	1017	Pisti
26091	1017	Sharrkan
26092	1017	Jafar
26093	1017	Cassim
26094	1017	Kouen Ren
26095	1017	Scheherazade
26096	1017	Titus Alexius
26097	1017	Yunan
26098	1017	Ahbmad Saluja
26099	1017	Doron
26100	1017	Drakon
26101	1017	Dunya Musta'sim
26102	1017	Hinahoho
26103	1017	Irene Smirnoff
26104	1017	Koubun Ka
26105	1017	Koumei Ren
26106	1017	Lo'lo'
26107	1017	Marga
26108	1017	Muu Alexius
26109	1017	Myers
26110	1017	Myron Alexius
26111	1017	Olba
26112	1017	Seishun Ri
26113	1017	Spartos
26114	1017	Sphintus Carmen
26115	1017	Toto
26116	1017	Ugo
26117	1017	Agares
26118	1017	Amon
26119	1017	Armakan Amun-Ra
26120	1017	Astaroth
26121	1017	Barkak
26122	1017	Darius Leoxses
26123	1017	Gyokuen Ren
26124	1017	Ignatius Alexius
26125	1017	Jinjin
26126	1017	Junjun
26127	1017	Kin Gaku
26128	1017	Kokuton Shuu
26129	1017	L Nando
26130	1017	Leraje
26131	1017	M Nando
26132	1017	Matal Mogamett
26133	1017	Matal Mogamett (young)
26134	1017	Meihou Kan
26135	1017	Mira Dianus Artemina
26136	1017	Nero
26137	1017	Nerva Julius Caluades
26138	1017	Phenex
26139	1017	Rametoto
26140	1017	Reirei
26141	1017	S Nando
26142	1017	Sahbmad Saluja
26143	1017	Sai Lin
26144	1017	Sana
26145	1017	Seishuu Ri
26146	1017	Shambal Ramal
26147	1017	Shou En
26148	1017	Umm Madaura
26149	1017	Zagan
26150	1018	Akira Souma
26151	1018	Mitsuki Kamatani
26152	1018	Takuma Hachimine
26153	1018	Yukiya Minabe
26154	1018	Hayato Kimata
26155	1018	Maximillian Takahashi
26156	1018	Satoru Hachimine
26157	1018	William Satou
26158	1018	Hikaru Souma
26159	1018	Hotaka Shirogane
26160	1018	Kyousuke Hariu
26161	1018	Shinji Hachimine
26162	1018	Tooru Suzuki
26163	1019	Miss Monochrome
26164	1019	KIKUKO
26165	1019	Maneo
26166	1019	Mana
26167	1020	Furano Yukihira
26168	1020	Chocolat
26169	1020	Ouka Yuuouji
26170	1020	Yuragi Hakoniwa
26171	1020	Seira Kokubyakuin
26172	1020	Ayame Reikadou
26173	1020	Konagi Yawakaze
26174	1020	Utage Douraku
26175	1020	Kanade Amakusa
26176	1020	Touya Yoshiwara
26177	1020	Souka Shishimori
26178	1021	Chisaki Hiradaira
26179	1021	Manaka Mukaido
26180	1021	Miuna Shiodome
26181	1021	Kaname Isaki
26182	1021	Akari Sakishima
26183	1021	Hikari Sakishima
26184	1021	Sayu Hisanuma
26185	1021	Tsumugu Kihara
26186	1021	Uroko-sama
26187	1022	Renge Miyauchi
26188	1022	Natsumi Koshigaya
26189	1022	Honoka Ishikawa
26190	1022	Hotaru Ichijou
26191	1022	Komari Koshigaya
26192	1022	Hikage Miyauchi
26193	1022	Kaede Kagayama
26194	1022	Kazuho Miyauchi
26195	1022	Suguru Koshigaya
26196	1023	Myucel Foaran
26197	1023	Elbia Hanaiman
26198	1023	Petralka Anne Eldant III
26199	1023	Minori Koganuma
26200	1023	Shinichi Kanou
26201	1023	Jinzaburou Matoba
26202	1023	Garius En Cordbal
26203	1023	Loic Sleison
26204	1023	Luna
26205	1023	Romilda Garde
26206	1024	Mizuki Misawa
26207	1024	Moe Morita
26208	1024	Anji Kuroki
26209	1024	Hidenori Goto
26210	1024	Mari Maya
26211	1024	Masayoshi Hazama
26212	1024	Sumi Ishihara
26213	1024	Akira Konno
26214	1024	Haiji Sawada
26215	1024	Hekiru Midorikawa
26216	1024	Joji Kaname
26217	1024	Jun Harazuka
26218	1024	Sakura Momoi
26219	1024	Souichi Aoshima
26220	1025	Makoto Saeki
26221	1025	Hiwako Funabashi
26222	1025	Aki Fukuda
26223	1025	Etsuko Toyokura
26224	1025	Fujino Amamoto
26225	1025	Gintarou
26226	1025	Haru
26227	1025	Kozue Ashihara
26228	1025	Nanami Kosugi
26229	1025	Sachina Seto
26230	1025	Satoru Kamio
26231	1025	Seishirou Kirishima
26232	1025	Shinichi Yoshizumi
26233	1025	Shouhei Amamoto
26234	1025	Taisuke Kinukawa
26235	1025	Tatsuo Saeki
26236	1025	Yoshimi Amamoto
26237	1025	Yoshitomo Takami
26238	1025	Yumi Ikegami
26239	1026	Yukina Himeragi
26240	1026	Natsuki Minamiya
26241	1026	Nagisa Akatsuki
26242	1026	Asagi Aiba
26243	1026	Kojou Akatsuki
26244	1026	Sayaka Kirasaka
26245	1026	Astarte
26246	1026	Beatrice Basler
26247	1026	La Folia Rihavein
26248	1026	Lydianne Didier
26249	1026	Mimori Akatsuki
26250	1026	Misaki Sasasaki
26251	1026	Reina Akatsuki
26252	1026	Christoph Gardos
26253	1026	Dimitrie Vatler
26254	1026	Gigliola Ghirardi
26255	1026	Kanon Kanase
26256	1026	Kensei Kanase
26257	1026	Kiliga Gilika
26258	1026	Kira Lebedev Voltisloa
26259	1026	Kou Amatsuka
26260	1026	Koyomi Shizuka
26261	1026	Meiga Itogami
26262	1026	Moegi Akatsuki
26263	1026	Motoki Yaze
26264	1026	Nina Adelard
26265	1026	Rudolf Eustach
26266	1026	Tobias Jagan
26267	1026	Yuuma Tokoyogi
26268	1027	Kon
26269	1027	Suzuka Dairenji
26270	1027	Hokuto
26271	1027	Kyouko Kurahashi
26272	1027	Natsume Tsuchimikado
26273	1027	Harutora Tsuchimikado
26274	1027	Hishamaru
26275	1027	Tenma Momoe
26276	1027	Touji Ato
26277	1028	Yaya
26278	1028	Charlotte Belew
26279	1028	Frey
26280	1028	Irori
26281	1028	Komurasaki
26282	1028	Kimberley
26283	1028	Shoko Karyusai
26284	1028	Henriette Belew
26285	1028	Lisette Norden
26286	1028	Raishin Akabane
26287	1028	Sigmund
26288	1028	Sin
26289	1028	Cedric Granville
26290	1028	Felix Kingsfort
26291	1028	Loki
26292	1029	Celia Cumani Aintree
26293	1029	Akane Ryuuzouji
26294	1029	Noel Marres Ascot
26295	1029	Bertille Althusser
26296	1029	Lisa Eostre
26297	1029	Fiona Beckford
26298	1029	Mio Kisaki
26299	1029	Reina F. Avary
26300	1029	Ayako Hiiragi
26301	1029	Kyle L. Allright
26302	1030	Sakura Hagiwara
26303	1030	Elena Miyazawa
26304	1030	Misaki Toyota
26305	1030	Chinatsu Suzumoto
26306	1030	Juri Sanada
26307	1030	Aika Hayase
26308	1030	Jackal Tojyo
26309	1030	Kanae Fujishita
26310	1030	Kurea Komiyama
26311	1030	Makoto Kirishima
26312	1030	Nanami Kanno
26313	1030	Rio Kazama
26314	1030	Seiichi Inoba
26315	1030	Yuho Mochizuki
26316	1030	Moe Fukuoka
26317	1031	Jin Tadokoro
26318	1031	Yuusuke Makishima
26319	1031	Hajime Aoyagi
26320	1031	Hayato Shinkai
26321	1031	Ishigaki Koutarou
26322	1031	Jinpachi Toudou
26323	1031	Junta Teshima
26324	1031	Mizuta Nobuyuki
26325	1031	Sakamichi Onoda
26326	1031	Sangaku Manami
26327	1031	Shoukichi Naruko
26328	1031	Shunsuke Imaizumi
26329	1031	Terufumi Sugimoto
26330	1031	Yasutomo Arakita
26331	1031	Akira Midousuji
26332	1031	Aya Tachibana
26333	1031	Juichi Fukutomi
26334	1031	Miki Kanzaki
26335	1031	Mr. Pierre
26336	1031	Shingo Kinjou
26337	1031	Tooji Kanzaki
26338	1031	Touichirou Izumida
26339	1032	Yuuko Ooshima
26340	1032	Atsuko Maeda
26341	1032	Chieri Sono
26342	1032	Mayu Watanabe
26343	1032	Haruna Kojima
26344	1032	Kanata Shinonome
26345	1032	Minami Takahashi
26346	1032	Nagisa Motomiya
26347	1032	Sayaka Akimoto
26348	1032	Tomomi Itano
26349	1032	Yuki Kashiwagi
26350	1032	Makoto Yokomizo
26351	1032	Mimori Kishida
26352	1032	Orine Aida
26353	1032	Sae Miyazawa
26354	1032	Sonata Shinonome
26355	1032	Suzuko Kanzaki
26356	1032	Yuka Ichijou
26357	1032	Mr. Ushiyama
26358	1032	Tsubasa Katagiri
26359	1033	Shin
26360	1033	Ukyo
26361	1033	Toma
26362	1033	Ikki
26363	1033	Kent
26364	1033	Orion
26365	1033	Waka
26366	1033	Mine
26367	1033	Heroine
26368	1033	Sawa
26369	1033	Rika
26370	1034	Gennai Hiraga
26371	1034	Hans von Ruppert
26372	1034	Kanade Yorozuhachiman
26373	1034	Koharu
26374	1034	Okuni
26375	1034	Roman
26376	1034	Yasuhiro Togawa
26377	1034	Yoshiyasu Yanagisawa
26378	1035	Namika Ishihara
26379	1035	Kaede
26380	1035	Kyousuke Ishihara
26381	1036	Aichi Sendou
26382	1036	Misaki Tokura
26383	1036	Toshiki Kai
26384	1036	Kourin Tatsunagi
26385	1036	Naoki Ishida
26386	1036	Shingo Komoi
26387	1037	Chihaya Ayase
26388	1037	Arata Wataya
26389	1037	Yuusei Nishida
26390	1037	Tsutomu Komano
26391	1038	Hiroshi Inaba
26392	1038	Kei Nozaki
26393	1038	Yuzuki Ogata
26394	1038	Haruka Inaba
26395	1038	Kuniharu Ogino
26396	1038	Don Valentino
26397	1038	Gabriella
26398	1038	Yataro
26399	1038	Natsuki
26400	1038	Stella
26401	1038	Yuuta Sasaki
26402	1038	Lorenzo
26403	1038	Noah
26404	1038	Azusa Ogino
26405	1038	Kazuomi Kenmochi
26406	1038	Wakaba Ogino
26407	1039	Sara Rukawa
26408	1039	Rikka Morizono
26409	1039	Suginami
26410	1039	Aoi Hinomoto
26411	1039	Charles Yoshino
26412	1039	Kousuke Edogawa
26413	1039	Himeno Katsuragi
26414	1039	Kiyotaka Yoshino
26415	1040	Aoi Yukimura
26416	1040	Hinata Kuraue
26417	1040	Kaede Saitou
26418	1040	Kokona Aoba
26419	1041	Kirara Bernstein
26420	1041	Mao Amatsuka
26421	1041	Seira Amatsuka
26422	1041	Shion Sumeragi
26423	1041	Tamaki Kannazuki
26424	1041	Shinrabanshou
26425	1041	Kasumi Shinomiya
26426	1041	Kyouya Shinomiya
26427	1041	Megumi Amatsuka
26428	1041	Geraldine Bernstein
26429	1042	Sena Kashiwazaki
26430	1042	Kobato Hasegawa
26431	1042	Yozora Mikazuki
26432	1042	Maria Takayama
26433	1042	Rika Shiguma
26434	1042	Yukimura Kusunoki
26435	1042	Aoi Yusa
26436	1042	Kate Takayama
26437	1042	Kodaka Hasegawa
26438	1042	Hinata Hidaka
26439	1042	Pegasus Kashiwazaki
26440	1043	Shino Inuzuka
26441	1043	Genpachi Inukai
26442	1043	Sousuke Inukawa
26443	1043	Hamaji
26444	1043	Kaname Osaki
26445	1043	Keno Inusaka
26446	1043	Kobungo Inuta
26447	1043	Murasame
26448	1043	Riou Satomi
26449	1043	Snow Princess
26450	1043	Ao
26451	1043	Ayane Mizuki
26452	1043	Chitose
26453	1043	Daikaku Inumura
26454	1043	Kinko, Ginko, Tenko, Kokuko and Byakko
26455	1043	Kohaku
26456	1043	Megu
26457	1043	Shinobu Inue
26458	1043	Yatsufusa
26459	1043	Akane Saiki
26460	1043	Bungobee Inuta
26461	1043	Chikage
26462	1043	Dousetsu Inuyama
26463	1043	Fenegan
26464	1043	Fuuki
26465	1043	Jouji Sakuraba
26466	1043	Kaede
26467	1043	Kenta Ogiwara
26468	1043	Kokonoe
26469	1043	Lilith
26470	1043	Myoukou
26471	1043	Nachi Hinozuka
26472	1043	Noro
26473	1043	Raiki
26474	1043	Rou Shinpu
26475	1043	Ruri Kobayakawa
26476	1043	Sarugami
26477	1043	Sayoko Inuta
26478	1043	Seiran
26479	1043	Shinpu
26480	1043	Shouichi
26481	1043	Suzu Kumagai
26482	1043	Yoshiro
26483	1044	Russia (Ivan Braginsky)
26484	1044	England (Arthur Kirkland)
26485	1044	North Italy (Feliciano Vargas)
26486	1044	The United States of America (Alfred F. Jones)
26487	1044	Canada (Matthew Williams)
26488	1044	Japan (Kiku Honda)
26489	1044	Poland (Feliks Łukasiewicz)
26490	1044	Prussia (Gilbert Beilschmidt)
26491	1044	Germany (Ludwig)
26492	1044	China (Yao Wang)
26493	1044	South Italy/Romano (Lovino Vargas)
26494	1044	Finland (Tino Väinämöinen)
26495	1044	Greece (Heracles Karpusi)
26496	1044	Hungary (Elizaveta Hedervary)
26497	1044	Sealand (Peter Kirkland)
26498	1044	Switzerland (Vash Zwingli)
26499	1044	Belarus (Natalia Arlovskaya)
26500	1044	Iceland (Emil Steilsson)
26501	1044	Denmark (Mathias Køhler)
26502	1044	France (Francis Bonnefoy)
26503	1044	Spain (Antonio Fernandez Carriedo)
26504	1044	Australia 
26505	1044	Latvia (Raivis Galante)
26506	1044	Lithuania (Toris Laurinaitis)
26507	1044	Norway (Lukas Bondevik)
26508	1044	Sweden (Berwald Oxenstierna)
26509	1044	Austria (Roderich Edelstein)
26510	1044	Liechtenstein (Lili Zwingli)
26511	1044	Turkey (Sadiq Adnan)
26512	1044	Ukraine (Yekaterina Braginskaya)
26513	1044	Chibitalia
26514	1044	Egypt (Gupta Muhammad Hassan)
26515	1044	Seychelles
26516	1044	The Netherlands
26517	1044	Belgium
26518	1044	Romania
26519	1044	India
26520	1044	Thailand
26521	1044	Cyprus
26522	1044	Seborga
26523	1044	Wy
26524	1045	Ai
26525	1045	Ponoka-sempai
26526	1045	Mai
26527	1045	Mi
26528	1046	Haruka Kotoura
26529	1046	Yuriko Mifune
26530	1046	Daichi Muroto
26531	1046	Hiyori Moritani
26532	1046	Yoshihisa Manabe
26533	1046	Kumiko Kotoura
26534	1047	Maki Nishikino
26535	1047	Nico Yazawa
26536	1047	Umi Sonoda
26537	1047	Honoka Kousaka
26538	1047	Kotori Minami
26539	1047	Nozomi Toujou
26540	1047	Eli Ayase
26541	1047	Hanayo Koizumi
26542	1047	Rin Hoshizora
26543	1047	Erina Toudou
26544	1047	Arisa Ayase
26545	1047	Yukiho Kousaka
26546	1047	Anju Yuuki
26547	1047	Tsubasa Kira
26548	1047	Fumiko
26549	1047	Hideko
26550	1047	Mika
26551	1048	Aki Torii
26552	1048	Ringo Nishijima
26553	1048	An Abe
26554	1048	Hana Sasayama
26555	1048	Haraki Tsugumi
26556	1048	Hikari Ayano
26557	1048	Kiiro Sakuradai
26558	1048	Sayuri Misono
26559	1048	Shinobu Fujimori
26560	1049	Demon Queen
26561	1049	Hero
26562	1049	Female Knight
26563	1049	Female Magician
26564	1049	Chief Maid
26565	1049	Little Sister Maid (Meido Imouto)
26566	1049	Older Sister Maid (Meido Ane)
26567	1049	Young Merchant
26568	1050	Kana Minami
26569	1050	Chiaki Minami
26570	1050	Haruka Minami
26571	1050	Makoto
26572	1050	Yuka Uchida
26573	1050	Touma Minami
26574	1050	Riko
26575	1050	Atsuko
26576	1050	Hayami
26577	1050	Hitomi
26578	1050	Hosaka
26579	1050	Keiko
26580	1050	Maki
26581	1050	Natsuki Minami
26582	1050	Yoshino
26583	1050	Akira Minami
26584	1050	Fujioka
26585	1050	Haruo Minami
26586	1050	Shuuichi
26587	1050	Takeru
26588	1051	Ai Fuyuumi
26589	1051	Masuzu Natsukawa
26590	1051	Himeka Akishino
26591	1051	Chiwa Harusaki
26592	1051	Eita Kidou
26593	1051	Saeko Kiryuu
26594	1051	Mana Natsukawa
26595	1052	Kuro Usagi (Black Rabbit)
26596	1052	Izayoi Sakamaki
26597	1052	Shiroyasha
26598	1052	Asuka Kudou
26599	1052	You Kasukabe
26600	1052	Leticia Draculair
26601	1052	Ayesha Ignis Fatuus
26602	1052	Pest
26603	1052	Lily
26604	1052	Jin Russell
26605	1052	Ratten
26606	1052	Galdo Gasper
26607	1052	Jack
26608	1052	Kyaroro Gundark
26609	1052	Laius Perseus
26610	1052	Mandra
26611	1052	Melln
26612	1052	Sandora Dortlake
26613	1052	Weser
26614	1053	Chibiki
26615	1053	Haruka-san
26616	1053	Yukipo
26617	1053	Afuu
26618	1053	Chicchan
26619	1053	Chihyaa
26620	1053	Io
26621	1053	Koami
26622	1053	Komami
26623	1053	Makochii
26624	1053	Miura-san
26625	1053	Takanya
26626	1053	Yayo
26627	1054	Tsurugi Yagami
26628	1054	Jou Edogawa
26629	1054	Kagami Yagami
26630	1054	Sasami Tsukuyomi
26631	1054	Susanoo
26632	1054	Juju Tsukuyomi
26633	1054	Mika Futsuno
26634	1054	Tama Yagami
26635	1055	Asuka
26636	1055	Hibari
26637	1055	Homura
26638	1055	Mirai
26639	1055	Ikaruga
26640	1055	Hikage
26641	1055	Katsuragi
26642	1055	Yagyuu
26643	1055	Haruka
26644	1055	Yomi
26645	1055	Daidouji
26646	1055	Suzune
26647	1055	Kiriya
26648	1055	Murasame
26649	1056	???
26650	1056	Alba
26651	1056	Ros
26652	1056	Ruki
26653	1056	Ares
26654	1056	Dezember Zwolf
26655	1056	Februar Zwei
26656	1056	Foyfoy
26657	1056	Januar Ein
26658	1056	Nise Panda
26659	1056	King
26660	1056	Mii-chan
26661	1056	Minister
26662	1056	Rudolf
26663	1056	Samejima
26664	1057	Tamako Kitashirakawa
26665	1057	Mochizou Ooji
26666	1057	Anko Kitashirakawa
26667	1057	Dera Mochimazzwi
26668	1057	Kaoru Hanase
26669	1057	Shiori Asagiri
26670	1057	Takashi Uotani
26671	1057	Choi Mochimazzi
26672	1057	Chouji Yumoto
26673	1057	Kanna Makino
26674	1057	Mari Uotani
26675	1057	Mecha Mochimazzwi
26676	1057	Fuku Kitashirakawa
26677	1057	Fumiko Mitsumura
26678	1057	Gohei Ooji
26679	1057	Kunio Yaobi
26680	1057	Mamedai Kitashirakawa
26681	1057	Michiko Ooji
26682	1057	Nobuhiko Tokiwa
26683	1057	Sayuri Yumoto
26684	1057	Tadanao Shiraki
26685	1057	Tomio Shimizu
26686	1058	Aoi Futaba
26687	1058	Rei Kuroki
26688	1058	Akane Isshiki
26689	1058	Wakaba Saegusa
26690	1058	Momo Isshiki
26691	1058	Himawari Shinomiya
26692	1058	Mizuha Amagi
26693	1058	Yuuri Shijou
26694	1058	Uso-kun
26695	1058	Vivid Blue
26696	1058	Vivid Green
26697	1058	Vivid Red
26698	1058	Vivid Yellow
26699	1058	Kenjirou Isshiki
26700	1059	Nishio Katsuya
26701	1059	Reiko Minami
26702	1059	Sakaguchi Matsutarou
26703	1059	Shachou
26704	1059	Shimada
26705	1059	Shin Tanaka
26706	1060	Wilbell Voll-Erslied
26707	1060	Escha Malier
26708	1060	Logy Fiscario
26709	1060	Clone
26710	1060	Linca
26711	1060	Marion Quin
26712	1060	Threia Hazelgrimm
26713	1060	Awin Sidelet
26714	1060	Colland Grumman
26715	1060	Duke Beriel
26716	1060	Harry Olson
26717	1060	Katla Rachika
26718	1060	Lucille Ernella
26719	1060	Nio Altugle
26720	1060	Reyfer Luckberry
26721	1060	Solle Grumman
26722	1061	Natsu Takasaki
26723	1061	Eiichirou Maruo
26724	1061	Hana Yokoyama
26725	1061	Himeko Sasaki
26726	1061	Hiromi Iwasa
26727	1061	Hiroshi Araya
26728	1061	Kojirou Kageyama
26729	1061	Miura
26730	1061	Morimoto
26731	1061	Nariyuki Koshimizu
26732	1061	Ryou Oobayashi
26733	1061	Souji Ike
26734	1061	Takuma Egawa
26735	1061	Takuya Miyagawa
26736	1061	Yukichi Fukazawa
26737	1061	Yuuki Tajima
26738	1062	Tina Sprout
26739	1062	Enju Aihara
26740	1062	Kisara Tendo
26741	1062	Kohina Hiruko
26742	1062	Fuse Midori
26743	1062	Kayo Senju
26744	1062	Miori Shiba
26745	1062	Rentarou Satomi
26746	1062	Seitenshi
26747	1062	Sumire Muroto
26748	1062	Kagetane Hiruko
26749	1062	Yuzuki Katagiri
26750	1062	Shouma Nagisawa
26751	1062	Tamaki Katagiri
26752	1062	Kikunojou Tendou
26753	1062	Shougen Ikuma
26754	1062	Sogen Saitake
26755	1062	Takuto Yasuwaki
26756	1063	Aruka
26757	1063	Hazuki Jin
26758	1063	Morii
26759	1063	Varel Jin
26760	1063	Karen El
26761	1063	Ran Yu
26762	1063	Roana Dan
26763	1063	Dougen Hon
26764	1063	Ron
26765	1063	Yuu
26766	1063	Gante Ga
26767	1063	Koga
26768	1063	Masa
26769	1064	Neko Kuroha
26770	1064	Kazumi Schlieren-Sauer
26771	1064	Hatsuna Wakabayashi
26772	1064	Kana Tachibana
26773	1064	Kotori Takatori
26774	1064	Mako Fujisaki
26775	1064	Nanami Tokou
26776	1064	Ryouta Murakami
26777	1064	Chisato Ichijiku
26778	1064	Kikako
26779	1064	Kogorou Hashiratani
26780	1064	Kurofuku
26781	1064	Saori
26782	1065	Akari Yomatsuri
26783	1065	Hana Mutou
26784	1065	Moco
26785	1065	Amara
26786	1065	Daichi Manatsu
26787	1065	Teppei Arashi
26788	1065	Tsutomu Nishikubo
26789	1066	Chaika Trabant
26790	1066	Frederica
26791	1066	Akari Acura
26792	1066	Chaika Bohdan
26793	1066	Vivi Holopainen
26794	1066	Alberic Gillette
26795	1066	Grad Lancia
26796	1066	Guy
26797	1066	Layla
26798	1066	Leonardo Stora
26799	1066	Matthaus Callaway
26800	1066	Nikolai Avtotor
26801	1066	Ricardo Gavarni
26802	1066	Toru Acura
26803	1066	Zita Brusasco
26804	1067	Houkouin
26805	1067	Kiriko Hattori
26806	1067	Chiharu
26807	1067	Hyakusuke
26808	1067	Hyougo Asai
26809	1067	Keiichirou Tokugawa
26810	1068	Kyouko Sonan
26811	1068	Kazuo Matayoshi
26812	1068	Kiriko Kyuna
26813	1068	Koichi Madanbashi
26814	1068	Likantz Seaberry
26815	1068	Moriko Tomoyori
26816	1068	Penguin  Emperor
26817	1068	Penguin Commander
26818	1068	Sewashiko Goya
26819	1068	Shoma Ameku
26820	1068	Soriko Majikina
26821	1069	Kurumi Tokisaki
26822	1069	Tohka Yatogami
26823	1069	Kotori Itsuka
26824	1069	Yoshino
26825	1069	Origami Tobiichi
26826	1069	Kaguya Yamai
26827	1069	Mana Takamiya
26828	1069	Shidou Itsuka
26829	1069	Reine Murasame
26830	1069	Yuzuru Yamai
26831	1069	Miku Izayoi
26832	1069	Ai Yamabuki
26833	1069	Kyouhei Kannazuki
26834	1069	Mai Hazakura
26835	1069	Mii Fujibakama
26836	1069	Mikie Okamine
26837	1069	Mildred F. Fujimura
26838	1069	Ellen Mira Mathers
26839	1069	Isaac Ray Pelham Westcott
26840	1070	Hiro Enryuu
26841	1070	Puppy
26842	1070	Rei
26843	1070	Shin
26844	1071	Eco
26845	1071	Anya
26846	1071	Avdocha Kiltzkaya
26847	1071	Rebecca Randall
26848	1071	Silvia Lautreamont
26849	1071	Cosette Shelley
26850	1071	Navi
26851	1071	Ash Blake
26852	1071	Jessica Valentine
26853	1071	Veronica Lautreamont
26854	1071	Lucca Sarlinen
26855	1071	Maximillian Russell
26856	1071	Milgauss
26857	1071	Primrose Shelly
26858	1071	Raymond Kirkland
26859	1072	Erza Scarlet
26860	1072	Lucy Heartfilia
26861	1072	Natsu Dragneel
26862	1072	Gray Fullbuster
26863	1072	Mirajane Strauss 
26864	1072	Jellal Fernandes
26865	1072	Gajeel Redfox
26866	1072	Juvia Lockser
26867	1072	Wendy Marvell 
26868	1072	Cana Alberona
26869	1072	Levy McGarden
26870	1072	Virgo
26871	1072	Loke
26872	1072	Aries
26873	1072	Happy
26874	1072	Mystogan
26875	1072	Aquarius
26876	1072	Lisanna Strauss
26877	1072	Laxus Dreyar
26878	1072	Mavis Vermilion
26879	1072	Leo
26880	1072	Elfman Strauss
26881	1072	Freed Justine
26882	1072	Ultear Milkovich
26883	1072	Zeref
26884	1072	Igneel
26885	1072	Sherry Blendy
26886	1072	Ur
26887	1072	Alzack Connell
26888	1072	Simon
26889	1072	Layla Heartfilia
26890	1072	Lyon Vastia
26891	1072	Millianna
26892	1072	Pantherlily
26893	1072	Rogue Cheney
26894	1072	Zancrow
26895	1072	Bisca Connell
26896	1072	Gildarts Clive
26897	1072	Kagura Mikazuchi
26898	1072	Makarov Dreyar
26899	1072	Meldy
26900	1072	Michelle Lobster
26901	1072	Yukino Aguria
26902	1072	Bickslow
26903	1072	Capricorn
26904	1072	Carla
26905	1072	Chelia Blendy
26906	1072	Hibiki Lates
26907	1072	Laki Olietta
26908	1072	Plue
26909	1072	Bisca Mulan
26910	1072	Cobra
26911	1072	Evergreen
26912	1072	Gemini
26913	1072	Karen Lilica
26914	1072	Sting Eucliffe
26915	1072	Taurus
26916	1072	Scorpio
26917	1072	Cancer
26918	1072	Ikaruga
26919	1072	Jet / Sarusuke
26920	1072	Lyra
26921	1072	Reedus Jonah
26922	1072	Wendy Marvell
26923	1072	Flare Corona 
26924	1072	Lucy Ashley 
26925	1072	Angel
26926	1072	Jenny Realight
26927	1072	Macao Conbolt
26928	1072	Mary Hughes
26929	1072	Natsu Dragion
26930	1072	Alzack Connell
26931	1072	Aria
26932	1072	Asuka Connell
26933	1072	Kinana
26934	1072	Midnight
26935	1072	Romeo Conbolt
26936	1072	Sagittarius
26937	1072	Warren Rocko
26938	1072	Jura Neekis
26939	1072	Lector
26940	1072	Minerva
26941	1072	Ren Akatsuki
26942	1072	Frosch
26943	1072	Rufus Lore
26944	1072	Bluenote Stinger
26945	1072	Enno
26946	1072	Hoteye
26947	1072	Iwan Dreyar
26948	1072	Lahar
26949	1072	Libra
26950	1072	Sho
26951	1072	Aceto
26952	1072	Bacchus Groh
26953	1072	Droy
26954	1072	Horologium
26955	1072	Kurohebi 
26956	1072	Obra
26957	1072	Orga Nanagear
26958	1072	Racer
26959	1072	Risley Law
26960	1072	Sue
26961	1072	Rustyrose
26962	1072	Nab Lasaro
26963	1072	Nalpudding
26964	1072	Porlyusica
26965	1072	Bob
26966	1072	Coco (Earth Land)
26967	1072	Dobengal
26968	1072	Eve Tearm
26969	1072	Goldmine
26970	1072	Max Alors
26971	1072	Arania Web
26972	1072	Beth Vanderwood 
26973	1072	Daphne
26974	1072	Ichiya Vandalay Kotobuki
26975	1072	Totomaru
26976	1072	Crux
26977	1072	Toby Horhorta
26978	1072	Acnologia
26979	1072	Coco
26980	1072	Wakaba Mine
26981	1072	Celestial Spirit King
26982	1072	Erigor
26983	1072	Gajeel (Edolas)
26984	1072	Rocker
26985	1072	Semmes
26986	1072	Caelum
26987	1072	Mest Gryder
26988	1072	Nobarly
26989	1072	War Cry
26990	1072	Yeagar
26991	1072	Yuka Suzuki
26992	1072	Fukuro
26993	1072	Kageyama
26994	1072	Katja
26995	1072	Sol
26996	1072	Alexei
26997	1072	Pyxis
26998	1072	Chico C Hammitt 
26999	1072	Roubaul
27000	1072	Lulu
27001	1072	Moka
27002	1072	Mickey Chickentiger
27003	1072	Org
27004	1072	Vanish Brothers
27005	1072	Brain
27006	1072	Nadi
27007	1072	Shitou Yajima
27008	1072	Vijeeter Ecor
27009	1072	Hades
27010	1072	Hughes
27011	1072	Jet (Edolas)
27012	1072	Jose Porla
27013	1072	Nichiya
27014	1072	Shagotte
27015	1072	Dan Straight
27016	1072	Marl
27017	1072	Leiji
27018	1072	Lucky
27019	1072	Michello
27020	1072	Reedus Jonah
27021	1072	Banaboster
27022	1072	Belno
27023	1072	Byro Cracy
27024	1072	Kain Hikaru
27025	1072	Mato
27026	1072	Ooba Babasaama
27027	1072	Rayule
27028	1072	Usagi
27029	1072	Byard
27030	1072	Byro
27031	1072	Cosmos
27032	1072	Faust
27033	1072	Gato
27034	1072	Guran Doma
27035	1072	Hargeon Magic Shop Owner
27036	1072	Jackpot
27037	1072	Karacka
27038	1072	Kawazu
27039	1072	Krov
27040	1072	Lapointe
27041	1072	Niggy
27042	1072	Samagui
27043	1072	Sugarboy
27044	1072	Sugarboy (Earth Land)
27045	1072	Thibault
27046	1072	Vulcan
27047	1072	Wang ChanJi
27048	1072	Zato
27049	1072	Zoldeo
27050	1072	Arcadios
27051	1072	Chapati Lola
27052	1072	Datong 
27053	1072	Jason
27054	1072	Jiemma
27055	1072	Son Pisces
27056	1072	Velveno
27057	1072	Zekua Melon
27058	1073	Ryunosuke Tanaka
27059	1073	Yuu Nishinoya
27060	1073	Hinata Shouyou
27061	1073	Tobio Kageyama
27062	1073	Asahi Azumane
27063	1073	Daichi Sawamura
27064	1073	Ittetsu Takeda
27065	1073	Kei Tsukishima
27066	1073	Keishin Ukai
27067	1073	Kenji Futakuchi
27068	1073	Kenma Kozume
27069	1073	Kiyoko Shimizu
27070	1073	Koushi Sugawara
27071	1073	Sou Inuoka
27072	1073	Tadashi Yamaguchi
27073	1073	Takanobu Aone
27074	1073	Taketora Yamamoto
27075	1073	Tetsurou Kuroo
27076	1073	Tooru Oikawa
27077	1073	Akira Kunimi
27078	1073	Chikara Ennoshita
27079	1073	Kaname Moniwa
27080	1073	Morisuke Yaku
27081	1073	Natsu Hinata
27082	1073	Wakatoshi Ushijima
27083	1073	Hajime Iwaizumi
27084	1073	Hisashi Kinoshita
27085	1073	Kazuhito Narita
27086	1073	Makoto Shimada
27087	1073	Nobuteru Irihata
27088	1073	Shouhei Fukunaga
27089	1073	Yasufumi Nekomata
27090	1073	Yui Michimiya
27091	1073	Yukitaka Izumi
27092	1073	Yuusuke Takinoue
27093	1073	Yuutarou Kindaichi
27094	1074	Ruri Ninjabayashi
27095	1074	Nanami Knight Bladefield
27096	1074	Kikuno Shoukanji
27097	1074	Megumu Touzokuyama
27098	1074	Rin Eiyuuzaki
27099	1074	Akane Mahougasawa
27100	1074	Hakua Berserker Bladefield
27101	1074	Mei Daimyouzamurai
27102	1074	Serika Ginyuuin
27103	1074	Tsumugi Ryuukishibara
27104	1074	Kurumiko Daishikyougawa
27105	1074	Mimori Seiteikouji
27106	1074	Sakura
27107	1074	Miyuki Mackenzie
27108	1074	Souta Hatate
27109	1075	Suzu Nekoyama
27110	1075	Yachiyo Inugami
27111	1075	Aki Hiiragi
27112	1075	Mikine Nezu
27113	1075	Kaede Hiiragi
27114	1075	Kiri Hiiragi
27115	1076	Chino Kafuu
27116	1076	Chiya Ujimatsu
27117	1076	Syaro Kirima
27118	1076	Maya Jouga
27119	1076	Megumi Natsu
27120	1076	Rize Tedeza
27121	1076	Blue Mountain Aoyama
27122	1076	Cocoa Hoto
27123	1076	Takahiro Kafuu
27124	1077	Anubis Ma'at
27125	1077	Loki Leviathan
27126	1077	Takeru Totsuka
27127	1077	Tsukito Totsuka
27128	1077	Apollon Agana Berea
27129	1077	Hades Idoneus
27130	1077	Thoth Caduceus
27131	1077	Baldr Hringhorni
27132	1077	Dionysus Thyrsos
27133	1077	Melissa
27134	1077	Thor Megingjord
27135	1077	Yui Kusanagi
27136	1077	Zeus Keraunos
27137	1078	Hajime Kindaichi
27138	1078	Isamu Kenmochi
27139	1078	Kengo Akechi
27140	1078	Miyuki Nanase
27141	1078	Reika Hayami
27142	1079	Nagate Tanikaze
27143	1079	Captain Kobayashi
27144	1079	Eiko Yamano
27145	1079	En Honoka
27146	1079	Ichiro Seii
27147	1079	Izana Shinatose
27148	1079	Lala Hiyama
27149	1079	Norio Kunato
27150	1079	Ochiai
27151	1079	Ren Honoka
27152	1079	Ro Honoka
27153	1079	Samari Ittan
27154	1079	Shizuka Hoshijiro
27155	1079	Sho Honoka
27156	1079	Yuhata Midorikawa
27157	1080	Kanade Kohinata
27158	1080	Kyouya Kisaragi
27159	1080	Reiji Myoga
27160	1080	Shiro Hozumi
27161	1080	Arata Mizushima
27162	1080	Chiaki Togane
27163	1080	Daichi Sakaki
27164	1080	Haruto Mizushima
27165	1080	Housei Toki
27166	1080	Ritsu Kisaragi
27167	1080	Sei Amamiya
27168	1080	Sousuke Nanami
27169	1080	Yukihiro Yagisawa
27170	1081	Garnet
27171	1081	Levin
27172	1081	Lillian
27173	1081	Momona
27174	1081	Ruby
27175	1081	Caron
27176	1081	Cayenne
27177	1081	Luea
27178	1081	Mizuki
27179	1081	Romeo
27180	1081	Sapphie
27181	1081	Soarer
27182	1082	Akashi Saginuma
27183	1082	Emiru Hazaki
27184	1082	Iwato Namito
27185	1082	Maamu Yuzuki
27186	1082	Minashi Maki
27187	1082	Raika Kasumi
27188	1082	Sasame Izuriha
27189	1083	Matsuri Sengen
27190	1083	Naruko Aoba
27191	1083	Mebuki Konoe
27192	1083	Rin Kobari
27193	1084	Antonio
27194	1084	Gilbert
27195	1084	Gregory Wolf
27196	1084	Kengo Ryujin
27197	1084	Kiyoko Shimatani
27198	1084	Liebert
27199	1084	Luke
27200	1084	Momotaro
27201	1084	Saho Shimatani
27202	1084	Shougo Ryuujin
27203	1084	Tomoko Ryujin
27204	1084	Tyrone
27205	1084	Victor Tiger
27206	1085	Riko Kikudzuki
27207	1085	Kazuha
27208	1085	Mai Ichinose
27209	1085	Midori Aikawa
27210	1085	Shino
27211	1086	Dehdai Uchiki
27212	1086	Faiya Orega
27213	1086	Iwatetsu Kurata
27214	1086	Kerogon
27215	1086	Pandora
27216	1087	Ginko
27217	1088	Nanana Ryuugajou
27218	1088	Tensai Ikkyuu
27219	1088	Yukihime Fugi
27220	1088	Daruku Hoshino
27221	1088	Juugo Yama
27222	1088	Saki Yoshino
27223	1088	Sansa Kurosu
27224	1088	Shiki Maboro
27225	1088	Yuu Ibara
27226	1088	Isshin Yuiga
27227	1088	Kagetora Tsurezure
27228	1088	Shu Todomatsu
27229	1088	Tetsunoshin Tsujimi
27230	1088	Yurika Yumeji
27231	1089	Shiro
27232	1089	Jibril
27233	1089	Sora
27234	1089	Stephanie Dora
27235	1089	Izuna Hatsuse
27236	1089	Shrine Priestess
27237	1089	Teto
27238	1089	Clammy Zell
27239	1089	Feel Nilvalen
27240	1089	Former King of Imanity
27241	1089	Ino Hatsuse
27242	1090	Kaori Fujimiya
27243	1090	Saki Yamagishi
27244	1090	Shiho Fujimiya
27245	1090	Shougo Kiryuu
27246	1090	Hajime Kujou
27247	1090	Jun Inoue
27248	1090	Yuuki Hase
27249	1091	China
27250	1091	Peco
27251	1091	Demon
27252	1091	Dragon
27253	1091	Smile
27254	1092	Nio Hashiri
27255	1092	Tokaku Azuma
27256	1092	Mahiru Banba
27257	1092	Chitaru Namatame
27258	1092	Haruki Sagae
27259	1092	Hitsugi Kirigaya
27260	1092	Haru Ichinose
27261	1092	Isuke Inukai
27262	1092	Otoya Takechi
27263	1092	Shiena Kenmochi
27264	1092	Suzu Shutou
27265	1092	Eisuke Inukai
27266	1092	Kouko Kaminaga
27267	1092	Sumireko Hanabusa
27268	1092	Ataru Mizorogi
27269	1092	Kaiba
27270	1093	Hanayo
27271	1093	Hitoe Uemura
27272	1093	Tama
27273	1093	Yuzuki Kurebayashi
27274	1093	Akira Aoi
27275	1093	Ayumu Kominato
27276	1093	Chiyori
27277	1093	Eldora
27278	1093	Hatsu Kominato
27279	1093	Iona Urasoe
27280	1093	Kazuki Kurebayashi
27281	1093	Midoriko
27282	1093	Piruruku
27283	1093	Ruuko Kominato
27284	1093	Urisu
27285	1094	Death the Kid
27286	1094	Soul Eater Evans
27287	1094	Maka Albarn
27288	1094	Tsubaki Nakatsukasa
27289	1094	Black Star
27290	1094	Patty Thompson
27291	1094	Liz Thompson
27292	1094	Tsugumi Harudori
27293	1094	Jacqueline O Lantern Dupre
27294	1094	Kim Diehl
27295	1094	Meme Tatane
27296	1094	Sid Barrett (alive)
27297	1094	Anya Hepburn
27298	1094	Kana Altair
27299	1094	Kilik Rung
27300	1094	Akane Hoshi
27301	1094	Shaula Gorgon
27302	1094	Clay Sizemore
27303	1094	Eternal Feather
27304	1094	Ox Ford
27305	1095	Sahoto Ashisu
27306	1095	Sena Kuroi
27307	1095	Mihari Otosuna
27308	1095	Rinna Fuwa
27309	1095	Matome Minano
27310	1095	Sahono Ashisu
27311	1095	Yuuki Aito
27312	1095	Buranya
27313	1096	Mayumi Saegusa
27314	1096	Erika Chiba
27315	1096	Tatsuya Shiba
27316	1096	Miyuki Shiba
27317	1096	Shizuku Kitayama
27318	1096	Azusa Nakajou
27319	1096	Eimi Akechi
27320	1096	Hanzo Gyoubushoujo Hattori
27321	1096	Honoka Mitsui
27322	1096	Leonhard Saijo
27323	1096	Masaki Ichijou
27324	1096	Mizuki Shibata
27325	1096	Sayaka Mibu
27326	1096	Suzune Ichihara
27327	1096	Aoki
27328	1096	Hajime Tsukasa
27329	1096	Haruka Ono
27330	1096	Harunobu Kazama
27331	1096	Kanon Chiyoda
27332	1096	Katsuto Jyumonji
27333	1096	Kei isori
27334	1096	Kinoe Tsukasa
27335	1096	Koutaro Tatsumi
27336	1096	Mari Watanabe
27337	1096	Maya Yotsuba
27338	1096	Midori Sawaki
27339	1096	Mikihiko Yoshida
27340	1096	Miya Shiba
27341	1096	Nanami Kasuga
27342	1096	Naotsugu Chiba
27343	1096	Restu Kudou
27344	1096	Sayuri Shiba
27345	1096	Shinkurou Kichijouji
27346	1096	Shun Morisaki
27347	1096	Subaru Satomi
27348	1096	Takeaki Kirihara
27349	1096	Tatsurou Shiba
27350	1096	Yakumo Kokonoe
27351	1097	Mayumi Nishikino
27352	1097	Ritsu Kawai
27353	1097	Shirosaki
27354	1097	Chinatsu
27355	1097	Sayaka Watanabe
27356	1097	Sumiko Kawai
27357	1097	Hayashi
27358	1097	Houjou/ Yamamoto
27359	1097	Kazunari Usa
27360	1097	Kurokawa
27361	1098	Livius Orvinus Efurekea
27362	1098	Nike Remercier
27363	1098	Amaluna Luirasael
27364	1098	Bardwin Cecil Ifrikia 
27365	1098	Carl
27366	1098	Catesby
27367	1098	Iraha
27368	1098	Jaina
27369	1098	Kara Remercier
27370	1098	Kitora
27371	1098	Lani Aristes
27372	1098	Mikia
27373	1098	Mira Remercier
27374	1098	Miranda
27375	1098	Neil
27376	1098	Nia Remercier
27377	1098	Ranra
27378	1098	Ratcliff
27379	1098	Suunya
27380	1098	Teteru Remercier
27381	1098	Tohara
27382	1098	Vordan
27383	1099	Kou
27384	1099	Makoto Kubota
27385	1099	Minoru Tokito
27386	1099	Nobuo Komiya
27387	1099	Osamu Kiba
27388	1099	Ryunosuke Kanda
27389	1099	Sanada
27390	1100	Akame
27391	1100	Esdeath
27392	1100	Leone
27393	1100	Mein
27394	1100	Rabac
27395	1100	Kurome
27396	1100	Seryu Ubiquitous
27397	1100	Tatsumi
27398	1100	Braht
27399	1100	Chelsea
27400	1100	Sayo
27401	1100	Schere
27402	1100	Wave
27403	1100	Bols
27404	1100	Najenda
27405	1100	Run
27406	1100	Susanoo
27407	1100	Aria
27408	1100	Daidara
27409	1100	Dr. Stylish
27410	1100	Emperor
27411	1100	Honest
27412	1100	Ieyasu
27413	1100	Liver
27414	1100	Nyau
27415	1100	Syura
27416	1101	Inaho Kaizuka
27417	1101	Asylum Verse Alyucia
27418	1101	Darzana Magbaredge
27419	1101	Inko Amifumi
27420	1101	Slain Troyard
27421	1101	Yuki Kaidzuka
27422	1101	Cruhteo
27423	1101	Kaoru Mizusaki
27424	1101	Kouichirou Marito
27425	1101	Nina Klein
27426	1101	Rayet Areash
27427	1101	Souma Yagarai
27428	1101	Calm Craftman
27429	1101	Eddelrittuo
27430	1101	Femieanne
27431	1101	Kisaki Matsuribi
27432	1101	Okisuke Mikuni
27433	1101	Rayregalia Vers Rayvers
27434	1101	Saazbaum
27435	1101	Shigou Kakei
27436	1101	Trillram
27437	1101	Vlad
27438	1101	Yuutarou Tsumugi
27439	1102	Kogorou Katsura
27440	1102	Ryouma Sakamoto
27441	1102	Toshizou Hijikata
27442	1102	Shinsaku Takasugi
27443	1102	Souji Okita
27444	1103	Naru Kotoishi
27445	1103	Seishuu Handa
27446	1103	Hina Kubota
27447	1103	Hiroshi Kido
27448	1103	Kousuke Kanzaki
27449	1103	Miwa Yamamura
27450	1103	Tamako Arai
27451	1103	Akihiko Arai
27452	1103	Akiko Kido
27453	1103	Daisuke
27454	1103	Director
27455	1103	Kazuyuki Sakamoto
27456	1103	Kentarou Oohama
27457	1103	Takao Kawafuji
27458	1103	Yutaka
27459	1103	Yuujirou Kido
27460	1104	Sebastian Michaelis
27461	1104	Ciel Phantomhive 
27462	1104	Undertaker
27463	1104	Mey Rin
27464	1104	Lau
27465	1104	Agni
27466	1104	Bardroy 
27467	1104	Joker
27468	1104	William T. Spears
27469	1104	Elizabeth Midford
27470	1104	Tanaka
27471	1104	Snake
27472	1104	Fred Aberlaine
27473	1104	Dagger
27474	1104	Doll
27475	1104	Peter
27476	1104	Beast
27477	1104	Jumbo
27478	1104	Wendy
27479	1105	Kou Mabuchi
27480	1105	Futaba Yoshioka
27481	1105	Yoichi Tanaka
27482	1105	Aya Kominato
27483	1105	Shuko Murao
27484	1105	Touma Kikuchi
27485	1105	Yuri Makita
27490	1107	Aoba
27491	1107	Noiz
27492	1107	Virus
27493	1107	Clear
27494	1107	Ren
27495	1107	Sei
27496	1107	Koujaku
27497	1107	Mink
27498	1107	Mizuki
27499	1107	Trip
27500	1107	Tae
27501	1108	Haruka Nanase
27502	1108	Makoto Tachibana
27503	1108	Rin Matsuoka
27504	1108	Nagisa Hazuki
27505	1108	Rei Ryugazaki
27506	1108	Gou Matsuoka
27507	1108	Seijuurou Mikoshiba
27508	1108	Aiichiro Nitori
27509	1108	Sousuke Yamazaki
27510	1108	Momotarou Mikoshiba
27511	1108	Kisumi Shigino
27512	1108	Makoto Tachibana (young)
27513	1108	Rin Matsuoka (young)
27514	1108	Miho Amakata
27515	1108	Nagisa Hazuki (young)
27516	1108	Ran Tachibana
27517	1108	Gorou Sasabe
27518	1108	Haruka Nanase (young)
27519	1108	Hayato Shigino
27520	1108	Kazuteru Minami
27521	1108	Ren Tachibana
27522	1108	Chigusa Hanamura
27523	1108	Sera Tadanori
27524	1108	Takuya Uozumi
27525	1108	Toru Iwashimizu
27526	1109	Yukari Kohinata
27527	1109	Nanako Usami
27528	1109	Yui Mikoze
27529	1109	Mirai Nazukari
27530	1109	Saori Nishifukai
27531	1109	Misato Mizumoto
27532	1109	Mitsugu Oota
27533	1109	Satsuki Kashiwaba
27534	1109	Shouko Noda
27535	1109	Tatsuya Usami
27536	1109	Tomoko Usami
27537	1110	Yanagi Takayama
27538	1110	Touko Fukami
27539	1110	Kakeru Okikura
27540	1110	Hina Fukami
27541	1110	Sachi Nagamiya
27542	1110	Yukinari Imi
27543	1110	Hiro Shirosaki
27544	1110	Momo Shirosaki
27545	1111	Hana N. Fontainestand
27546	1111	Yaya Sasame
27547	1111	Arisa Kajiwara
27548	1111	Machi Tokiwa
27549	1111	Naru Sekiya
27550	1111	Tami Nishigomon
27551	1111	Sachiko Yamanoshita
27552	1111	Sari Tokiwa
27553	1111	Yuuka Komachi
27554	1111	Masaru Oofuna
27555	1112	18-kin
27556	1112	Unko
27557	1112	Albertina II (Bell)
27558	1112	Hime Arikawa
27559	1112	Hiro
27560	1112	Mitsunaga Oda
27561	1112	Tadokoro
27562	1112	Kaguya Arikawa
27563	1112	Servant No. 1
27683	1114	Rino Endou
27684	1114	Ikumi Suzuki
27685	1114	Ayaka Nikaidou
27686	1114	Emi Murakami
27687	1114	Fumi Kujou
27688	1114	Yuuki Akamatsu
27689	1114	Kouta Asano
27690	1115	Izumi Sena
27691	1115	Ryouma Ichijou
27692	1115	Rei Sagara
27693	1115	Shougo Sena
27694	1115	Nagisa Sena
27695	1115	Seiya Sena
27696	1115	Kasumi Shino
27697	1115	Kojirou Ryuuzaki
27698	1115	Takahiro Kuroi
27699	1115	Kousuke Sotomura
27700	1115	Tenma Hidaka
27701	1116	Rurumo Maji Mojiruka
27702	1116	Chiro
27703	1116	Kouta Shibaki
27704	1116	Nishino
27705	1116	Sumiko Inoue
27706	1116	Maaya Sawashita
27707	1116	Suguwara
27708	1116	Tanako Kujirai
27722	1118	Ringo
27723	1118	Kaguya
27724	1118	Karin
27725	1118	Momoko
27726	1118	Onihime
27727	1118	Suika
27728	1118	Sumeragi Tennyo
27729	1118	Kushinada
27730	1118	Maron
27731	1118	Abe no Seimei
27732	1118	Enki
27733	1118	Inugami
27734	1118	Kijigami
27735	1118	Sarugami
27736	1118	Genki
27737	1118	Jakiou
27738	1118	Tekki
27739	1118	Youki
27745	1120	Chiyo Sakura
27746	1120	Yuzuki Seo
27747	1120	Mikoto Mikoshiba
27748	1120	Yuu Kashima
27749	1120	Masayuki Hori
27750	1120	Umetarou Nozaki
27751	1120	Hirotaka Wakamatsu
27752	1120	Mitsuya Maeno
27753	1120	Ken Miyamae
27754	1120	Yukari Miyako
27755	1121	Shion Toudou
27756	1121	Cosmo Houjou
27757	1121	Dorothy West
27758	1121	Leona West
27759	1121	Kuma
27760	1121	Lala Manaka
27761	1121	Mirei Minami
27762	1121	Sophie Houjou
27763	1121	Usagi
27764	1122	Aoi Sakurai
27765	1122	Haruka Koumi
27766	1122	Noa Kashima
27767	1122	Hitomi Gonou
27768	1122	Mari Sasshou
27769	1122	Nana Iida
27770	1122	Naoto Takayama
27771	1122	Shou Iwaizumi
27772	1123	Theiamillis Gre Fortorthe
27773	1123	Yurika Nijino
27774	1123	Harumi Sakuraba
27775	1123	Sanae Higashihongan
27776	1123	Shizuka Kasagi
27777	1123	Kiriha Kurano
27778	1123	Ruthkhania Nye Pardomshiha
27779	1123	Koutarou Satomi
27780	1123	Kenji Matsudaira
27781	1124	Sailor Mars
27782	1124	Raye Hino
27783	1124	Sailor Mercury
27784	1124	Sailor Venus
27785	1124	Mina Aino
27786	1124	Sailor Moon
27787	1124	Sailor Jupiter
27788	1124	Serena Tsukino
27789	1124	Lita Kino
27790	1124	Amy Mizuno
27791	1124	Luna
27792	1124	Darien Shields
27793	1124	Artemis
27794	1124	Tuxedo Mask
27795	1124	Molly Baker
27796	1124	Sammy Tsukino
27797	1124	Andrew Foreman
27798	1124	Ikuko Tsukino
27799	1124	Melvin Overstreet
27800	1125	Terminus Est
27801	1125	Ellis Fahrengart
27802	1125	Rinslet Laurenfrost
27803	1125	Claire Rouge
27804	1125	Fianna Ray Ordesia
27805	1125	Kamito Kazehaya
27806	1125	Carol Nastassha
27807	1125	Freya Grandol
27808	1125	Greyworth Ciel Mais
27809	1125	Rakka
27810	1125	Jio Inzagi
27811	1125	Reishia
27812	1125	Restia Ashdoll
27813	1125	Velsaria Eva Fahrengart
27814	1126	Kakeru Kazami
27815	1126	Cat
27816	1126	Daichi Hirosawa
27817	1126	Daiki Tomii
27818	1126	Ikuma Amaki
27819	1126	Kira Sakeki
27820	1126	Kou Oosaki
27821	1126	Kyouichi Teshigahara
27822	1126	Minoru Tomii
27823	1126	Ran Kazehara
27824	1126	Ryuunosuke Date
27825	1126	Shachou
27826	1126	Shiima Hayamizu
27827	1126	Shun Maiyama
27828	1126	Tsuyoto Hiiragi
27829	1127	Tokimune Susumu
27830	1127	Akane Sorano
27831	1127	Akino Terai
27832	1127	Chief
27833	1127	Hikaru Rikuru
27834	1127	Jamie Hazaford
27835	1127	Julius Unios
27836	1127	Kaoru Shiono
27837	1127	Kouji Tanita
27838	1127	Lorenz Giuliano
27839	1127	Masaru Okui
27840	1127	Saori Suzushiro
27841	1127	Schlein Richthofen
27842	1127	Seeker
27843	1127	Shizuma Izumi
27844	1127	Shouhei Koshikawa
27845	1127	Silfy Appleton
27846	1127	Tsubasa Yamanami
27847	1127	Tsutomu Kutsuwada
27848	1127	Ukyou Samonji
27849	1128	Kayo Gotokuji
27850	1128	Karaage Lemon
27851	1128	Momoka Sonokawa
27852	1128	Urara Kasugano
27853	1128	Ena Sakura
27854	1128	Kamo
27855	1128	Kazue Sonokawa
27856	1128	Maya Kyodo
27857	1128	Miou Otori
27858	1128	Roselia Haguro
27859	1128	Yamii
27860	1128	Yayoi Isurugi
27861	1129	Asuna Yuuki
27862	1129	Silica
27863	1129	Lisbeth
27864	1129	Sinon
27865	1129	Kirito
27866	1129	Leafa
27867	1129	Death Gun
27868	1130	Fuyuji Kumi
27869	1130	Shin Kokonoe
27870	1130	Shibasaki
27871	1130	Lisa Mishima
27872	1130	Mukasa
27873	1130	Five
27874	1130	Hamura
27875	1130	Kinoshita
27876	1130	Kurahashi
27877	1130	Okano
27878	1131	Kobushi Kuroi
27879	1131	Minami Azuma
27880	1131	Rinka Urushiba
27881	1131	Kozuki Kuroi
27882	1131	Kyoutarou Azuma
27883	1131	Murasaki Edoyama
27884	1131	Ayumu Oozora
27885	1131	Peggy
27886	1131	Rindou Urushiba
27887	1132	Ken Kaneki
27888	1132	Shuu Tsukiyama
27889	1132	Touka Kirishima
27890	1132	Uta
27891	1132	Hideyoshi Nagachika
27892	1132	Juuzou Suzuya
27893	1132	Koutarou Amon
27894	1132	Nishiki Nishio
27895	1132	Ayato Kirishima
27896	1132	Hinami Fueguchi
27897	1132	Itori
27898	1132	Loser
27899	1132	Rize Kamishiro
27900	1132	Yomo Renji
27901	1132	Arata Kirishima
27902	1132	Fueguchi Ryouko
27903	1132	Itsuki Marude
27904	1132	Kanou Akihiro
27905	1132	Kazuichi Banjou
27906	1132	Kimi Nishino
27907	1132	Kishou Arima
27908	1132	Koma Enji
27909	1132	Kosaka Yoriko
27910	1132	Kureo Mado
27911	1132	Yakumo Oomori
27912	1132	Yoshimura
28185	1140	Nagi Kodachi
28186	1140	Sayumi Ureshino
28187	1140	Tamamo Sakuraba
28188	1140	Kana Suzuki
28189	1140	Kyoutarou Kakei
28190	1140	Miyu Serizawa
28191	1140	Senri Misono
28192	1140	Tsugumi Shirasaki
28193	1140	Ikkei Takamine
28194	1140	Maho Mochizuki
28195	1141	Isuzu Sento
28196	1141	Latifah Fullanza
28197	1141	Cobori
28198	1141	Muse
28199	1141	Salma
28200	1141	Sylphy
28201	1141	Moffle
28202	1141	Seiya Kanie
28203	1141	Macaron
28204	1141	Tirami
28205	1142	Sayuri Haruno
28206	1142	Nadeshiko Minagawa
28207	1142	Ran Mochizuki
28208	1142	Tsubaki Sannomiya
28209	1142	Gilbert Hanafusa
28210	1142	Ibuki Aoi
28211	1142	Jin Aoi
28212	1142	Mitsuki Aoi
28213	1142	Ryou Kouzuki
28214	1142	Yoshinosuke Suzumi
28215	1143	Shirasu Kinjou
28216	1143	Soramaru Kumo
28217	1143	Tenka Kumo
28218	1143	Chuutarou Kumo
28219	1143	Kiiko Sasaki
28220	1143	Naoto Kagami
28221	1143	Sousei Abeno
28222	1143	Botan
28223	1143	Gerokichi
28224	1143	Rakuchou Takeda
28225	1143	Seiichirou Takamine
28226	1144	Ange
28227	1144	Chris
28228	1144	Emma Bronson
28229	1144	Ersha
28230	1144	Hilda
28231	1144	Jill
28232	1144	Maggy
28233	1144	Misty Rosenblum
28234	1144	Momoka Oginome
28235	1144	Riza
28236	1144	Rosalie
28237	1144	Salia
28238	1144	Sophia Ikaruga Misurugi
28239	1144	Vivian
28240	1144	Zola
28241	1144	Coco
28242	1144	Jasmine
28243	1144	Julio Asuka Misurugi
28244	1144	Jurai Asuka Misurugi
28245	1144	Mei
28246	1144	Miranda
28247	1144	Sylvia Ikaruga Misurugi
28248	1144	Tusk
28249	1145	Kameko
28250	1145	Sensei
28251	1145	Ero Hon G Men
28252	1145	Fu Girl
28253	1145	Hiotan
28254	1145	Kantoku
28255	1145	Umio
28256	1145	Sommelier
28257	1145	Tsumorin
28457	1149	Chloe Lemaire
28458	1149	Erena Mochizuki
28459	1149	Fumio Murakami
28460	1149	Kokomi Shiina
28461	1149	Akane Sakurai
28462	1150	Kokkuri-san
28463	1150	Jimeko
28464	1150	Inugami
28465	1150	Kohina Ichimatsu
28466	1150	Tama
28467	1150	Shigaraki
28468	1150	Tengu
28469	1150	Yamamoto
28470	1151	Mirai Kamiki
28471	1151	Eri Shinoda
28472	1151	Fumina Hoshino
28473	1151	Kaoruko Sazaki
28474	1151	Mr. Ral
28475	1151	Daiki Miyaga
28476	1151	Keiko Sano
28477	1151	Mahiru Shigure
28478	1151	Sekai Kamiki
28479	1151	Yuuma Kousaka
28480	1152	Aida Surgan
28481	1152	Bellri Zenam
28482	1152	Noredo Nug
28483	1152	Raraiya Monday
28484	1152	Cahill Saint
28485	1152	Delnsen Samata
28486	1152	Kelbess You
28487	1152	Klim Nick
28488	1152	Luin Lee
28489	1152	Manny Ambassada
28490	1152	Novel
28491	1153	Hazuki
28492	1153	Ichi Seya
28493	1153	Kotarou Izumi
28494	1153	Kuroda
28495	1153	Tsukishima
28496	1153	Yuzu
28497	1154	Kaoru
28498	1154	Hajime
28499	1154	Mayotama
28500	1154	Miki
28501	1154	Nozomu Juse
28502	1154	Rino Juse
28503	1154	Tanaka
28504	1154	Yamada
28505	1155	Red Tail
28506	1155	Aika Tsube
28507	1155	Blue Tail
28508	1155	Erina Shindou
28509	1155	Souji Mitsuka
28510	1155	Thouars
28511	1155	Yellow Tail
28512	1155	Mrs. Mitsuka
28513	1156	Airi Hasekura
28514	1156	Nagisa Hanamiya
28515	1156	Kaori Sasaki
28516	1156	Yui Furukawa
28517	1156	Sakunoshin Honjou
28518	1156	Sou Akiyama
28519	1156	Yaeko Azuma
28520	1157	Chifuyu Himeki
28521	1157	Hatoko Kushikawa
28522	1157	Mirei Kudou
28523	1157	Sayumi Takanashi
28524	1157	Tomoyo Kanzaki
28525	1157	Madoka Kuki
28526	1157	Hajime Kiryuu
28527	1157	Jurai Andou
28528	1157	Shizumu Sagami
28529	1158	Michiru Matsushima
28530	1158	Amane Suou
28531	1158	Sachi Komine
28532	1158	Makina Irisu
28533	1158	Yuria Harudera
28534	1158	Chizuru Tachibana
28535	1158	Yumiko Sakaki
28536	1158	Yuuji Kazami
28537	1158	Kazuki Kazami
28538	1159	Akatsuki
28539	1159	Shiroe
28540	1159	Nyanta
28541	1159	Crusty
28542	1159	Lenessia Erhart Cowen
28543	1159	Marielle
28544	1159	Naotsugu
28545	1159	Rundelhaus Code
28546	1159	Henrietta
28547	1159	Isuzu
28548	1159	Serara
28549	1159	Minori
28550	1159	Sojiro Seta
28551	1159	Tetra
28552	1159	Tohya
28553	1159	Regan
28554	1160	Hachi
28555	1160	Joker
28556	1160	Spade
28557	1160	Diamond Queen
28558	1160	Dogusaburou Oniyama
28559	1160	Mister Kaneari
28560	1160	Professor C
28561	1160	Roco
28562	1160	Shadow Joker
28563	1160	Silver Heart
29374	1163	Duck
29375	1163	Kasumi
29376	1163	Maki
29377	1163	Mikuni
29378	1163	Takasu
29379	1163	Tatsumi
29380	1163	Wakasa
29381	1164	A
29382	1164	Akiho Suzuki
29383	1164	Kana Kimishima
29384	1164	Kazuki Nagai
29385	1164	Kazuyuki Izumi
29386	1164	Migi
29387	1164	Nobuko Izumi
29388	1164	Ryouko Tamiya
29389	1164	Satomi Murano
29390	1164	Shinichi Izumi
29391	1164	Uragami
29392	1164	Yuuko Tachikawa
29393	1165	Aoi Miyamori
29394	1165	Midori Imai
29395	1165	Shizuka Sakaki
29396	1165	Ema Yasuhara
29397	1165	Erika Yano
29398	1165	Misa Toudou
29399	1165	Rinzu Ogasawara
29400	1165	Yuka Okitsu
29401	1165	Lolo
29402	1165	Masahito Marukawa
29403	1165	Mimsy
29404	1165	Shun Watanabe
29405	1165	Tarou Takanashi
29406	1165	Tatsuya Ochiai
29407	1165	Yutaka Honda
29408	1166	Noel
29409	1166	Koharu Shinohara
29410	1166	Nonoka Furumiya
29411	1166	Shione Togawa
29412	1166	Yuzuki Mizusaka
29413	1166	Souta Mizusaka
29428	1170	Ellenora Viltaria
29429	1170	Elizavetta Fomina
29430	1170	Sophia Obertas
29431	1170	Alexandra Alshavin
29432	1170	Limlisha
29433	1170	Teita
29434	1170	Valentina Glinka Estes
29435	1170	Ludmila Lurie
29436	1170	Olga Tamm
29437	1170	Bertran
29438	1170	Felix Aaron Thenardier
29439	1170	Marthus Rodante
29440	1170	Maximilian Bennusa Ganelon
29441	1170	Tigrevurmud Vorn
29442	1170	Zion Thenardier
29443	1171	Diane
29444	1171	Ban
29445	1171	Elizabeth Lyonesse
29446	1171	King
29447	1171	Meliodas
29448	1171	Gilthunder
29449	1171	Hawk
29450	1172	Levi Kazama
29451	1172	Lilith Asami
29452	1172	Sora
29453	1172	Arin Kannazuki
29454	1172	Hijiri Kasuga
29455	1172	Liselotte Sherlock
29456	1172	Mira Yamana
29457	1172	Serina Sherlock
29458	1172	Yui Kurata
29459	1172	Akio Fudou
29460	1172	Arata Kasuga
29461	1172	Biblia Gakuenchou
29462	1173	Kyouya Sata
29463	1173	Erika Shinohara
29464	1173	Ayumi Sanda
29465	1173	Takeru Hibiya
29466	1173	Aki Tezuka
29467	1173	Marin Tachibana
29468	1173	Yoshito Kimura
29469	1174	Osamu Mikumo
29470	1174	Yuuma Kuga
29471	1174	Ai Kitora
29472	1174	Chika Amatori
29473	1174	Jun Arashiyama
29474	1174	Kyouko Sawamura
29475	1174	Masafumi Shinoda
29476	1174	Replica
29477	1174	Shuuji Miwa
29478	1174	Tooru Narasaka
29479	1174	Yousuke Yoneya
29480	1174	Yuuichi Jin
29481	1175	Yona
29482	1175	Hak Son
29483	1175	Jae-Ha
29484	1175	Ki-Ja
29485	1175	Shin-Ah
29486	1175	Soo-won
29487	1175	Yoon
29488	1175	Zeno
29489	1176	Kaori Miyazono
29490	1176	Tsubaki Sawabe
29491	1176	Emi Igawa
29492	1176	Kousei Arima
29493	1176	Ryouta Watari
29494	1176	Takeshi Aiza
29495	1177	Mimori Tougou
29496	1177	Yuuna Yuuki
29497	1177	Fuu Inubouzaki
29498	1177	Itsuki Inubouzaki
29499	1178	Ariel Albus
29500	1178	Claire Cruz
29501	1178	Ignacio Axis
29502	1178	Kal-el Albus
29503	1178	Benjamin Sharif
29504	1178	Chiharu de Lucia
29505	1178	Faust Fidel Melze
29506	1178	Luis de Alarcon
29507	1178	Mitsuo Fukuhara
29508	1178	Nanako Hasaki
29509	1178	Nina Viento
29510	1178	Noriaki Kashiwabara
29511	1178	Sharon Morcos
29512	1178	Wolfgang Baumann
29513	1179	Hina Yumihara
29514	1179	Anessa Rossetti
29515	1179	Aoba Watase
29516	1179	Dio Jyunyou Weinburg
29517	1179	Fromm Vantarhei
29518	1179	Gengo Kuramitsu
29519	1179	Lee Conrad
29520	1179	Lene Kleinbeck
29521	1179	Mayuka Nasu
29522	1179	Alfried Gallant
29523	1179	Bizon Gerafil
29524	1179	Don Naher
29525	1179	Elvira Hill
29526	1179	Fiona Junyou Weinberg
29527	1179	Garcian Bass
29528	1179	Jarl Duran
29529	1179	Lasha Hakkarainen
29530	1179	Margaret O'Keefe
29531	1179	Saburota Ogisaka
29532	1179	Soeharto
29533	1179	Tarjim Vasily
29534	1179	Tusais Framboise
29535	1180	Takao Bucho
29536	1180	Roka Shibasaki
29537	1180	Sakura Mizukami
29538	1180	Chitose Karasuyama
29539	1180	Funabori
29540	1180	Noe Kazama
29541	1180	Tama Sakai
29542	1180	Hachi Shiou
29543	1180	Kenji Kazama
29544	1180	Minami Ohsawa
29545	1180	Hata Takafudou
29546	1180	Oka Sakuragaoka
29547	1180	Shinsen
29548	1180	Kawahara Otaru
29549	1180	Nagayama Hiroshi
29550	1180	Sean Cone Cone
29551	1180	Tsutsumi Inada
29552	1180	Yokoshima
29553	1181	Akane
29554	1181	Asagi
29555	1181	Emu
29556	1181	Nanoha
29557	1181	Tama-chan
29558	1182	Mashiro Mitsumine
29559	1182	Kobeni Yonomori
29560	1182	Niko Oono
29561	1182	Benio Yonomori
29562	1182	Konoha Suetsugi
29563	1182	Mayura Momouchi
29564	1182	Nadeshiko Kashima
29565	1182	Hakuya Mitsumine
29566	1182	Akane Yonomori
29567	1182	Shirayuki Mitsumine
29568	1183	Baku Oomori
29569	1183	Drumbunker Dragon
29570	1183	Kuguru Uki
29571	1183	Noboru Kodoh
29572	1183	Paruko Nanana
29573	1183	Rouga Aragami
29574	1183	Akatsuki Kisaragi
29575	1183	Gaou Mikado
29576	1183	Hanae Juumonji
29577	1183	Hanako Mikado
29578	1183	Hitotaba Neginoyama
29579	1183	Jacknife Dragon
29580	1183	Jin Magatsu
29581	1183	Kazane Fujimiya
29582	1183	Kiri Hyouryuu
29583	1183	Magoroku Shidou
29584	1183	Megumi Mamakari
29585	1183	Nisei Nitsuke
29586	1183	Sofia Sakharov
29587	1183	Stella Watson
29588	1183	Suzuha Amanosuzu
29589	1183	Suzumi Mikado
29590	1183	Takashi Mikado
29591	1183	Tasuku Ryuuenji
29592	1183	Tetsuya Kurodake
29593	1183	Tsurugi Takihara
29594	1183	Zanya Kisaragi
29595	1184	Yuzu Yosano
29596	1184	Azuki Masaoka
29597	1184	Maccha Kobayashi
29598	1185	Hajime
29599	1185	Art
29600	1185	Birthday
29601	1185	Honey
29602	1185	Nice
29603	1185	Ratio
29604	1185	Theo
29605	1185	Koneko
29606	1185	Mao
29607	1185	Master
29608	1185	Moral
29609	1185	Murasaki
29610	1185	Gasuke
29611	1185	Rei
29612	1185	Shinji Toyosaki
29613	1185	Three
29614	1186	Hakutaku
29615	1186	Okou
29616	1186	Hozuki
29617	1186	Karauri
29618	1186	King Yama
29619	1186	Minamoto no Yoshitsune
29620	1186	Momotarou
29621	1186	Nasubi
29622	1186	Peach Maki
29623	1186	Beelzebub
29624	1186	Cookie
29625	1186	Dakki
29626	1186	Datsueba
29627	1186	Godoutenrin Ou
29628	1186	Gokan Ou
29629	1186	Gozu
29630	1186	Iemon Tamiya
29631	1186	Issun-boushi
29632	1186	Kakisuki
29633	1186	Karashi
29634	1186	Karasutengu
29635	1186	Koban
29636	1186	Kodama
29637	1186	Lady Lilith
29638	1186	Mezu
29639	1186	Princess Iwa
29640	1186	Princess Sakuya
29641	1186	Rurio
29642	1186	Satan
29643	1186	Scape
29644	1186	Shiro
29645	1186	Shokou Ou
29646	1186	Yasha-Ichi
29647	1187	Inari Fushimi
29648	1187	Akemi Sumizome
29649	1187	Amaterasu Omikami
29650	1187	Chika Marutamachi
29651	1187	Keiko Sanjou
29652	1187	Kon
29653	1187	Omiya-no-Me-no-Kami
29654	1187	Ukano Mitama no Kami
29655	1187	Kouji Tanbabashi
29656	1187	Ootoshi-no-Kami
29657	1187	ShiShi and RoRo
29658	1187	Touka Fushimi
29659	1188	Mui Aiba
29660	1188	Kurumi Isoshima
29661	1188	Takeshi Nanase
29662	1188	Kazumi Ida
29663	1188	Momoka Shijou
29664	1188	Gekkou Nanase
29665	1188	Hotaru Kumagai
29666	1188	Violet North
29667	1188	Kippei Washizu
29668	1188	Makoto Hitouji
29669	1188	Nanami Hyoudou
29670	1188	Takao Oigami
29671	1188	Tsuganashi Aiba
29672	1188	Ushiwaka
29673	1188	Youko Nanase
29674	1189	Ichika Mizuhara
29675	1189	Marina Mochizuki
29676	1189	Ruri Hayasaka
29677	1189	Yuuko Mizuhara
29678	1189	Kouki Hayasaka 
29679	1189	Masaya Mizuhara
29680	1189	Mina Fujisaki
29681	1189	Mitsuru Hanazono
29682	1189	Soichiro Fuji
29683	1189	Tomoya Mizuhara
29684	1190	Chitoge Kirisaki
29685	1190	Marika Tachibana
29686	1190	Kosaki Onodera
29687	1190	Seishirou Tsugumi
29688	1190	Ruri Miyamoto
29689	1190	Raku Ichijo
29690	1190	Adelt Wogner Kirisaki
29691	1190	Father Ichijou
29692	1190	Shuu Maiko
29693	1190	Claude
29694	1190	Kyoko
29695	1190	Ryuu
29696	1191	Kochou Yoshida
29697	1191	Ringo Kinoshita
29698	1191	Yuka Kusakabe
29699	1191	Akari Suzuki
29700	1191	Minori Nakazawa
29701	1191	Natsumi Bekki
29702	1191	Kaoru Hanazono
29703	1191	Kei Kamatori
29704	1191	Kousaku Hata
29705	1191	Rintarou Miyamoto
29706	1191	Torao Kanegami
29707	1192	Himiko
29708	1192	Jeanne Kaguya d'Arc
29709	1192	Gaius Julius Caesar
29710	1192	Oda Nobukatsu
29711	1192	Oda Nobunaga
29712	1192	Toyotomi Hideyoshi
29713	1192	Akechi Mitsuhide
29714	1192	Alexander
29715	1192	Charlemagne
29716	1192	Ichihime
29717	1192	Leonardo da Vinci
29718	1192	Magellan
29719	1192	Marcus Junius Brutus
29720	1192	Nell
29721	1192	Niccolo Machiavelli
29722	1192	Oda Nobuhide
29723	1192	Takeda Shingen
29724	1192	Uesugi Kenshin
29725	1193	Adam Muirhead
29726	1193	Galileo Galilei
29727	1193	Jess Beckham
29728	1193	Mahesh Mirza
29729	1193	Sio Ogura
29730	1193	Antoni Gaudi
29731	1193	Anush
29732	1193	Commander
29733	1193	Francois Vidocq
29734	1193	John Hunter
29735	1193	Kaoru Asao
29736	1193	Saint-Germain
29737	1194	Yato
29738	1194	Kofuku
29739	1194	Hiyori Iki
29740	1194	Yukine
29741	1194	Bishamon
29742	1194	Kazuma
29743	1194	Daikoku
29744	1194	Miyu
29745	1194	Nora
29746	1194	Rabou
29747	1194	Tenjin
29748	1194	Akiha
29749	1194	Ayu
29750	1194	Hashimoto
29751	1194	Keiichi
29752	1194	Kinuha
29753	1194	Kuraha
29754	1194	Manabu Ogiwara
29755	1194	Mutsumi
29756	1194	Tsuyu
29757	1195	Maria
29758	1195	Utsutsu Hasegawa
29759	1195	Yume Hasegawa
29760	1195	Shiro Onijima
29761	1196	Mitsuki Kanzaki
29762	1196	Hiyori Kotobuki
29763	1196	Moa Torii
29764	1196	Yukina Kiritani
29765	1196	Minami
29766	1196	Ayaka Tachibana
29767	1196	Kyouko Kanzaki
29768	1196	Mei
29769	1196	Nanami Akesaka
29770	1196	Neko
29771	1196	Shoutarou Torii
29772	1196	Tetsuya Kanzaki
29773	1196	Yuya Kanzaki
29774	1197	Baranga M2
29775	1197	Doublas M2
29776	1197	Gaia Q5
29777	1197	Getsu-chan
29778	1197	Gigue-san
29779	1197	Gre-chan
29780	1197	Grenda-san
29781	1197	Grossam X2
29782	1197	Minerva X
29783	1197	Poses O2
29784	1197	Rhine X1
29785	1197	Z-chan
29786	1197	Ankoku Daishougun
29787	1197	Baron Ashura
29788	1197	Garada K7
29789	1197	Gromazen R9
29790	1197	Kingdan X10
29791	1198	Haruka Takayama
29792	1198	Yuu Sonoda
29793	1198	Kaede Ikeno
29794	1198	Kotone Noda
29795	1198	Shizuku Minami
29796	1198	Yuzu Iizuka
29797	1198	Mitsuki Sonoda
29798	1198	Rina Sakai
29799	1198	Sumi Otokawa
29800	1199	Super Sonico
29801	1199	Suzu Fujimi
29802	1199	Fuuri Watanuki
29803	1199	Kyouko Tomano
29804	1199	Ouka
29805	1200	Prince
29806	1200	Dandy
29807	1200	Honey
29808	1200	QT
29809	1200	Adelie
29810	1200	Bee
29811	1200	Dr. Gel
29812	1200	Mamitas
29813	1200	Meow
29814	1200	Scarlett
29815	1201	Miwa
29816	1201	Takumi
29817	1201	Kou
29818	1201	Masamune
29819	1201	Ozu
29820	1202	Makoto Kisaragi
29821	1202	Rika Kisaragi
29822	1202	Shun Iriya
29823	1202	Uki Morinaga
29824	1203	Goto-san
29825	1203	Rumi Yokoi
29826	1203	Maeda
29827	1203	Toshinari Seki
29828	1203	Uzawa
29829	1203	Yuka
29830	1204	Kaya Kikuma
29831	1204	Miyu Okamoto
29832	1204	Airi Hayashida
29833	1204	Junko Tange
29834	1204	Nanami Hisami
29835	1204	Shiho Iwasaki
29836	1204	Yoshino Nanase
29837	1204	Kouhei Matsuda
29838	1204	Kuniyoshi Ota
29839	1204	Mai Kondo
29840	1204	Mayu Shimada
29841	1204	Megumi Yoshikawa
29842	1204	Minami Katayama
29843	1204	Moka Suzuki
29844	1204	Nanoka Aizawa
29845	1204	Reina Suzuki
29846	1204	Tina Kobayakawa
29847	1205	Ayaka Kagari
29848	1205	Chronoire Schwarz VI
29849	1205	Honoka Takamiya
29850	1205	Kanna Uzuki
29851	1205	Mai
29852	1205	Mii
29853	1205	Ai
29854	1205	Atori Kuramine
29855	1205	Evermilion
29856	1205	Kanae Hozuki
29857	1205	Kasumi Takamiya
29858	1205	Kazane Kagari
29859	1205	Koharu
29860	1205	Komachi Takamiya
29861	1205	Kotetsu Katsura
29862	1205	Kyouichirou Mikage
29863	1205	Medusa
29864	1205	Mei Menowa
29865	1205	Natsume Mikage
29866	1205	Rin Kazari
29867	1205	Rinon Otometachibana
29868	1205	Seito Kaichou
29869	1205	Tanpopo Kuraishi
29870	1205	Touko Hio
29871	1205	Weekend
29872	1205	Yoshiko Tanuma
29873	1206	Cecil Sudou
29874	1206	Quinn Erari
29875	1206	Moyo Tento
29876	1206	Ageha Chouno
29877	1206	Koromo Sasori
29878	1206	Nanajiinyi
29879	1206	Natsuna Hotaru
29880	1206	Tsunomi Kabutohara
29881	1206	Batta Mitori
29882	1206	Bubuhyi
29883	1206	Kiba Sameoka
29884	1206	Kokki
29885	1206	Megumi Sudo
29886	1206	Mitsuhisa Hachiya
29887	1206	Nyanyai
29888	1206	Seseri Chouno
29889	1206	Shibuki Kujira
29890	1206	Shizumu Ekuso
29891	1207	Itsuka Shikabane
29892	1207	Kate Hoshimiya
29893	1207	Natasha
29894	1207	Asuta Jimon
29895	1207	Renge Komodori
29896	1207	Kaori Hayabusa
29897	1207	Miki Shirasagi
29898	1207	Goro Shikabane
29899	1207	KuruKuru
29900	1207	Kyoushirou Jimon
29901	1207	Roboko
29902	1207	Yasu
29903	1208	Fierite
29904	1208	Azumi Kagamihara
29905	1208	Chitose Aoba
29906	1208	Dragon's Priestess
29907	1208	Rigel
29908	1208	Aina Mikage
29909	1208	Asuka Tennoji
29910	1208	Ayase Kamiyugi
29911	1208	Coon
29912	1208	Gambiel
29913	1208	Mikado Kurosaki
29914	1208	Misaki Yuzuriha
29915	1208	Rindou
29916	1208	Sera Kurashiki
29917	1208	Sieger
\.


--
-- Data for Name: Genre; Type: TABLE DATA; Schema: public; Owner: minhnh
--

COPY "Genre" (id, anime_id, tag) FROM stdin;
1	1	shoujo
2	1	shoujo ai
3	1	yuri
4	1	drama
5	1	school
6	3	action
7	3	comedy
8	3	sports
9	4	comedy
10	5	magical girl
11	6	adventure
12	6	magical girl
13	6	romance
14	7	action
15	7	adventure
16	7	comedy
17	7	drama
18	7	historical
19	7	romance
20	7	military
21	8	comedy
22	8	adventure
23	8	fantasy
24	9	adventure
25	9	magical girl
26	9	romance
27	9	comedy
28	9	drama
29	9	fantasy
30	10	action
31	10	adventure
32	10	mecha
33	10	sci-fi
34	10	shounen
35	11	romantic comedy
36	11	drama
37	12	comedy
38	12	magic
39	12	parody
40	12	sci-fi
41	12	shounen
42	12	space
43	12	police
44	13	magical girl
45	13	mecha
46	13	action adventure
47	14	shoujo
48	14	romance
49	14	drama
50	14	sci-fi
51	14	urban fantasy
52	15	comedy
53	15	magical girl
54	15	romance
55	16	adventure
56	18	cyberpunk
57	19	comedy
58	19	romance
59	19	shoujo
60	19	slice of life
61	20	mecha
62	20	military sci-fi
63	21	drama
64	21	fantasy
65	21	romance
66	22	comedy
67	23	adventure
68	23	magical girl
69	23	romance
70	23	comedy
71	23	drama
72	23	fantasy
73	24	comedy
74	24	action
75	24	adventure
76	24	magic
77	26	comedy
78	26	romance
79	26	sci-fi
80	26	shounen
81	26	space
82	26	harem
83	27	magical girl
84	27	romance
85	28	action
86	28	fantasy
87	29	comedy
88	29	magic
89	29	parody
90	30	magical girl
91	31	adventure
92	31	comedy
93	31	fantasy
94	31	magic
95	31	shounen
96	32	drama
97	32	fantasy
98	32	romance
99	32	slice of life
100	33	adventure
101	33	comedy
102	33	shounen
103	35	sex comedy
104	35	adventure
105	35	ecchi
106	35	comedy
107	36	action
108	36	crime fiction
109	37	sci-fi
110	37	magic
111	37	action
112	37	comedy
113	37	shounen
114	38	romance
115	39	sci-fi
116	39	action
117	39	mecha
118	39	psychological
119	39	post-apocalyptic
120	39	apocalyptic
121	39	drama
122	40	romance
123	40	kaitou
124	40	magical girl
125	41	comedy
126	41	fantasy
127	41	adventure
128	41	ecchi
129	41	magic
130	41	shounen
131	41	supernatural
132	43	martial arts
133	43	adventure
134	43	shounen
135	44	drama
136	45	action
137	46	adventure
138	46	drama
139	46	mecha
140	47	sci-fi
141	47	comedy
142	48	horror
143	48	comedy
144	49	drama
145	49	romantic comedy
146	49	school
147	49	slice of life
148	50	adventure
149	50	magical girl
150	50	romance
151	50	comedy
152	50	drama
153	50	fantasy
154	51	shounen
155	51	magic
156	51	fantasy
157	51	comedy
158	51	adventure
159	52	fantasy
160	52	adventure
161	52	harem
162	53	romance
163	54	adventure
164	54	fantasy
165	54	mecha
166	54	romance
167	55	action
168	55	martial arts
169	56	adventure
170	56	comedy
171	56	fantasy
172	56	magic
173	56	shounen
174	57	fantasy
175	57	comedy
176	57	adventure
177	57	magic
178	57	shounen
179	57	supernatural
180	58	comedy
181	58	fantasy
182	58	magic
183	58	parody
184	58	seinen
185	59	action
186	59	adventure
187	59	comedy
188	59	drama
189	59	martial arts
190	59	mecha
191	59	romance
192	59	sci-fi
193	59	shounen
194	59	harem
195	60	adventure
196	60	fantasy
197	60	drama
198	61	adventure
199	61	comedy
200	61	sci-fi
201	62	comedy-drama
202	62	police procedural
203	63	comedy
204	63	drama
205	63	detective fiction
206	64	drama
207	65	action
208	65	adventure
209	65	comedy
210	65	historical
211	65	samurai
212	65	romance
213	66	sci-fi
214	66	comedy
215	67	detective
216	67	comedy
217	68	sci-fi
218	68	police
219	68	comedy
220	69	action
221	69	adventure
222	69	drama
223	69	fantasy
224	70	fantasy
225	70	psychological
226	70	school
227	70	romance
228	70	drama
229	70	shoujo ai
230	70	comedy
231	71	adventure
232	71	comedy
233	71	fantasy
234	72	adventure
235	72	action
236	72	fantasy
237	72	romantic comedy
238	73	adventure
239	73	comedy
240	73	fantasy
241	73	magic
242	73	shounen
243	74	romance
244	74	action
245	74	comedy
246	74	sci-fi
247	75	adventure
248	75	comedy
249	75	fantasy
250	76	sci-fi
251	76	adventure
252	76	action
253	77	supernatural
254	77	chanbara
255	77	action
256	77	historical
257	77	samurai
258	78	shounen
259	78	magic
260	78	fantasy
261	78	ecchi
262	78	action
263	78	adventure
264	78	comedy
265	78	romance
266	78	sci-fi
267	79	magical girl
268	79	romance
269	80	fantasy
270	81	occult detective
271	82	sci-fi
272	82	psychological thriller
273	82	cyberpunk
274	83	shounen
275	83	fantasy
276	83	drama
277	83	adventure
278	83	martial arts
279	84	adventure
280	84	comedy
281	84	fantasy
282	84	magic
283	84	supernatural
284	85	sci-fi
285	85	comedy
286	85	action
287	86	cyberpunk
288	86	action
289	87	romance
290	87	comedy-drama
291	87	comedy
292	87	drama
293	87	school
294	87	shoujo
295	87	slice of life
296	88	adventure
297	88	detective fiction
298	88	drama
299	89	sci-fi
300	89	harem
301	89	comedy
302	89	adventure
303	90	fantasy
304	90	comedy
305	90	adventure
306	90	magic
307	90	shounen
308	90	supernatural
309	91	shounen
310	91	sports
311	92	mecha
312	92	comedy
313	92	action
314	92	parody
315	92	sci-fi
316	92	shounen
317	93	sci-fi
318	93	comedy
319	93	adventure
320	93	action
321	94	adventure
322	94	fantasy
323	94	romance
324	94	comedy
325	95	fantasy
326	95	romance
327	95	comedy
328	95	supernatural
329	96	magical girl
330	96	magical boy
331	97	ecchi
332	97	comedy
333	98	sci-fi
334	98	romantic comedy
335	98	adventure
336	98	comedy
337	98	drama
338	98	historical
339	98	mecha
340	98	romance
341	98	shounen
342	99	horror
343	99	sci-fi
344	99	mecha
345	99	romance
346	100	comedy
347	100	sci-fi
348	100	parody
349	100	action
350	101	psychological drama
351	101	sci-fi
352	102	magical girl
353	102	comedy
354	103	comedy-drama
355	103	adventure
356	103	action
357	103	fantasy
358	103	shounen
359	103	super power
360	104	sci-fi
361	104	romance
362	104	drama
363	104	shoujo ai
364	104	slice of life
365	104	shoujo
366	104	yuri
367	105	romance
368	105	magical girl
369	105	kaitou
370	106	romance
371	106	fantasy
372	106	action
373	106	adventure
374	106	comedy
375	106	drama
376	106	horror
377	106	shoujo
378	106	supernatural
379	106	psychological
380	107	action
381	107	adventure
382	107	comedy-drama
383	108	drama
384	108	comedy
385	108	harem
386	109	adventure
387	109	mecha
388	109	sci-fi
389	109	shounen
390	110	adventure
391	110	comedy
392	111	romance
393	111	comedy
394	111	harem
395	111	sci-fi
396	111	ecchi
397	112	romance
398	112	action
399	112	drama
400	113	action
401	113	drama
402	113	fantasy
403	113	horror
404	113	romance
405	113	sci-fi
406	113	vampire
407	114	shounen ai
408	114	horror
409	114	suspense
410	114	drama
411	115	adventure
412	115	comedy
413	115	historical
414	115	shounen
415	116	magical girl
416	116	sci-fi
417	116	romantic comedy
418	116	adventure
419	116	comedy
420	116	historical
421	116	romance
422	116	shounen
423	117	action
424	117	adventure
425	117	comedy-drama
426	118	drama
427	118	sci-fi
428	118	slice of life
429	119	comedy
430	119	sci-fi
431	120	harem
432	120	romantic comedy
433	121	neo-noir
434	121	girls with guns
435	121	action
436	122	adventure
437	122	fantasy
438	122	magic
439	123	yuri
440	123	magical girl
441	123	sci-fi
442	123	romantic comedy
443	123	comedy
444	123	mecha
445	123	romance
446	123	shoujo ai
447	123	shounen
448	124	magical girl
449	124	sci-fi
450	124	romantic comedy
451	124	adventure
452	124	drama
453	124	romance
454	125	drama
455	125	school story
456	125	romance
457	125	fantasy
458	126	comedy
459	126	magical girl
460	127	shounen
461	127	sci-fi
462	127	adventure
463	127	action
464	128	harem
465	128	magical girl
466	129	sports
467	129	racing
468	130	sci-fi
469	130	action
470	130	adventure
471	130	mecha
472	131	action
473	131	paranormal
474	131	horror
475	131	vampire
476	132	comedy
477	132	drama
478	132	slice of life
479	133	sci-fi
480	133	adventure
481	133	action
482	134	urban fantasy
483	135	sci-fi
484	135	magical girl
485	135	parody
486	135	ecchi
487	135	shoujo ai
488	136	adventure
489	136	comedy
490	136	fantasy
491	136	magic
492	136	shounen
493	137	sci-fi
494	137	mystery
495	137	fantasy
496	137	adventure
497	138	slice of life
498	138	school
499	138	comedy
500	139	romantic comedy
501	139	drama
502	139	harem
503	140	romantic comedy
504	140	sci-fi
505	141	mecha
506	141	action
507	141	comedy
508	141	kodomo
509	142	sci-fi
510	142	adventure
511	142	action
512	143	supernatural
513	143	romance
514	143	magical girl
515	143	shoujo
516	144	western
517	144	comedy
518	145	comedy
519	145	school life
520	145	harem
521	146	kaitou
522	146	sci-fi
523	146	fantasy
524	146	comedy
525	146	adventure
526	146	shounen
527	147	parody
528	147	fantasy
529	147	ecchi
530	147	supernatural
531	147	adventure
532	147	comedy
533	148	shoujo
534	148	school
535	148	comedy
536	148	fantasy
537	148	romance
538	149	lolicon
539	149	sci-fi
540	149	romantic comedy
541	150	comedy
542	150	fantasy
543	150	reverse harem
544	150	magical girl
545	151	action
546	151	comedy
547	151	mecha
548	151	sci-fi
549	151	shounen
550	151	space
551	151	harem
552	152	fantasy
553	153	magical girl
554	153	romance
555	154	romance
556	154	sci-fi
557	154	adventure
558	155	sci-fi
559	155	action
560	155	horror
561	156	sci-fi
562	156	comedy
563	156	adventure
564	157	drama
565	157	fantasy
566	157	metafiction
567	157	romance
568	158	military
569	158	romance
570	158	post-apocalyptic
571	158	apocalyptic
572	159	chanbara
573	159	supernatural
574	159	romance
575	159	martial arts
576	159	action
577	159	adventure
578	159	drama
579	160	slice of life
580	160	magical girl
581	160	comedy
582	161	romance
583	161	harem
584	161	sci-fi
585	161	magical girl
586	161	comedy
587	162	occult detective
588	162	supernatural
589	163	drama
590	163	fantasy
591	164	sci-fi
592	164	seinen
593	164	cyberpunk
594	165	adventure
595	165	comedy
596	165	mecha
597	166	detective fiction
598	166	comedy
599	166	romance
600	167	action
601	167	mecha
602	167	romantic comedy
603	168	romance
604	168	drama
605	168	slice of life
606	168	supernatural
607	169	comedy
608	169	martial arts
609	170	detective fiction
610	170	comedy
611	171	sci-fi
612	171	mecha
613	171	adventure
614	172	fantasy
615	172	magic
616	173	comedy
617	173	fantasy
618	173	sci-fi
619	173	romance
620	174	mecha
621	174	coming of age
622	174	romance
623	174	drama
624	174	comedy
625	175	cyberpunk
626	175	crime fiction
627	176	magical girl
628	176	romantic comedy
629	177	fantasy
630	177	comedy
631	177	adventure
632	177	magic
633	177	shounen
634	177	supernatural
635	178	ecchi
636	178	martial arts
637	178	comedy
638	178	harem
639	179	drama
640	179	magic
641	179	romance
642	179	harem
643	180	ecchi
644	180	sci-fi
645	180	drama
646	180	adventure
647	181	harem
648	181	drama
649	181	school
650	181	romantic comedy
651	181	sci-fi
652	182	action
653	182	parody
654	182	comedy
655	183	romance
656	183	drama
657	183	action adventure
658	184	school
659	184	parody
660	184	comedy
661	184	shounen
662	185	adventure
663	185	science fantasy
664	185	steampunk
665	186	horror
666	186	sci-fi
667	186	fantasy
668	186	drama
669	186	action
670	187	seinen
671	187	drama
672	187	action
673	187	crime
674	187	sci-fi
675	188	harem
676	188	fantasy
677	188	comedy
678	189	action
679	189	romance
680	189	horror
681	190	drama
682	190	romance
683	190	tragedy
684	191	yuri
685	191	romance
686	191	fantasy
687	191	adventure
688	191	mystery
689	191	ecchi
690	191	magic
691	191	shoujo ai
692	192	adventure
693	192	mecha
694	193	sci-fi
695	193	fantasy
696	193	comedy
697	193	adventure
698	194	drama
699	194	mecha
700	194	sci-fi
701	196	kaitou
702	196	harem
703	196	action
704	196	ecchi
705	196	adventure
706	196	comedy
709	198	romance
710	198	comedy
711	198	drama
712	198	slice of life
713	199	supernatural
714	199	mecha
715	200	romance
716	200	drama
717	200	fantasy
718	200	slice of life
719	201	slice of life
720	201	sci-fi
721	202	comedy
722	202	romance
723	203	adventure
724	203	post-apocalyptic
725	203	supernatural
726	204	yuri
727	204	cyberpunk
728	204	mecha
729	204	sci-fi
730	204	girls with guns
731	205	adventure
732	205	comedy-drama
733	205	mecha
734	205	sci-fi
735	205	romance
736	206	sci-fi
737	206	psychological thriller
738	206	action
739	207	psychological
740	207	surreal
741	207	horror
742	207	ecchi
743	207	mecha
744	208	comedy
745	208	drama
746	208	romance
747	209	alternate history
748	209	historical
749	209	action
750	210	psychological
751	210	supernatural
752	210	magic
753	210	horror
754	210	drama
755	210	romance
756	211	detective fiction
757	212	romance
758	212	sci-fi
759	212	comedy
760	213	drama
761	213	horror
762	213	psychological
763	214	mecha
764	214	drama
765	214	romance
766	214	sci-fi
767	215	ecchi
768	215	comedy
769	215	harem
770	216	drama
771	216	sci-fi
772	217	drama
773	217	romance
774	217	school
775	217	shoujo
776	217	shoujo ai
777	218	ninja
778	218	crack
779	218	comedy
780	218	ecchi
781	219	comedy
782	219	supernatural
783	219	romance
784	220	action
785	220	comedy
786	220	fantasy
787	221	shounen
788	221	bangsian fantasy
789	221	comedy
790	221	action
791	221	supernatural
792	222	sci-fi
793	222	comedy
794	222	action
795	223	sci-fi
796	223	fantasy
797	224	romance
798	224	comedy
799	224	nishimata_aoi
800	225	action
801	225	adventure
802	226	fantasy
803	226	romance
804	227	fantasy
805	227	steampunk
806	228	romance
807	228	mecha
808	228	yuri
809	229	magical girl
810	229	ecchi
811	229	adventure
812	230	shoujo ai
813	230	action
814	230	fantasy
815	230	romantic comedy
816	230	sentai
817	231	drama
818	231	mecha
819	231	military
820	231	romance
821	232	mythology
822	233	comedy
823	233	drama
824	233	supernatural
825	234	occult detective
826	235	romance
827	235	alternate history
828	236	comedy
829	236	romance
830	236	supernatural
831	237	cooking
832	237	comedy
833	238	psychedelic
834	238	action
835	238	adventure
836	238	comedy
837	238	psychological
838	238	sci-fi
839	239	action
840	239	mystery
841	239	mecha
842	239	sci-fi
843	239	seinen
844	240	action
845	240	comedy-drama
846	240	crime
847	240	school
848	241	mecha
849	241	ecchi
850	241	sci-fi
851	241	comedy
852	241	adventure
853	241	action
854	242	comedy
855	242	adventure
856	243	shoujo ai
857	243	school
858	243	yuri
859	243	romance
860	244	satire
861	244	psychological thriller
862	244	mystery
863	245	action
864	245	historical fantasy
865	245	ninja
866	246	school life
867	246	comedy
868	246	slice of life
869	246	yuri
870	247	ecchi
871	247	fantasy
872	247	comedy
873	247	harem
874	248	action
875	248	romance
876	248	adventure
877	248	fantasy
878	249	drama
879	249	historical
880	249	romance
881	250	school life
882	250	high school
883	250	comedy
884	250	action
885	251	action
886	251	comedy
887	251	romance
888	252	romance
889	252	comedy
890	252	harem
891	252	parody
892	253	military
893	253	historical
894	253	action
895	253	comedy
896	254	action
897	254	crime fiction
898	254	supernatural
899	255	adventure
900	255	mecha
901	255	military
902	256	parody
903	256	comedy
904	256	surreal comedy
905	256	sci-fi
906	256	psychedelic
907	257	magical girl
908	257	comedy
909	257	romance
910	258	comedy
911	258	parody
912	258	school
913	259	drama
914	259	fantasy
915	259	harem
916	259	romantic comedy
917	260	comedy
918	260	slice of life
919	261	school
920	261	romance
921	261	comedy
922	261	drama
923	261	slice of life
924	261	sports
925	262	gambling
926	262	sports
927	262	drama
928	263	comedy
929	264	supernatural
930	264	romantic comedy
931	264	comedy
932	264	romance
933	264	school
934	264	shounen
935	264	vampire
936	265	comedy
937	265	magical girl
938	265	fantasy
939	266	mystery
940	266	supernatural
941	266	horror
942	267	drama
943	267	romance
944	267	slice of life
945	268	supernatural
946	268	occult detective
947	269	comedy
948	269	romance
949	269	drama
950	269	slice of life
951	269	shoujo
952	270	comedy
953	270	romance
954	270	fantasy
955	271	drama
956	271	romance
957	271	fantasy
958	271	hinoue itaru
959	271	slice of life
960	271	supernatural
961	272	sports
962	272	racing
963	272	shounen
964	273	romance
965	273	drama
966	273	sci-fi
967	274	action
968	274	mecha
969	275	comedy
970	275	drama
971	275	romance
972	275	shounen
973	276	romance
974	276	drama
975	276	comedy
976	276	shoujo
1073	302	sci-fi
1074	302	fantasy
1075	302	adventure
1076	303	romance
1077	303	sports
1078	303	action
1079	303	comedy
1080	304	shoujo
1081	304	shounen ai
1082	304	sci-fi
1083	304	romance
1084	304	supernatural
1085	304	drama
1086	304	fantasy
1087	305	action
1088	305	game
1089	305	shounen
1090	306	drama
1091	306	fantasy
1092	307	black comedy
1093	307	crime fiction
1094	307	action
1095	307	adventure
1096	308	adventure
1097	308	comedy
1098	308	sports
1099	309	sci-fi
1100	309	adventure
1101	309	action
1102	310	fantasy
1103	310	mystery
1104	311	postcyberpunk
1105	311	psychological thriller
1106	311	suspense
1107	311	mystery
1108	312	comedy
1109	312	shounen ai
1110	312	romance
1111	313	comedy
1112	314	parody
1113	314	historical
1114	314	action
1115	314	adventure
1116	314	comedy
1117	314	drama
1118	314	fantasy
1119	314	sci-fi
1120	315	slice of life
1121	315	comedy
1122	315	drama
1123	315	ecchi
1124	315	school
1125	316	horror
1126	316	mystery
1127	316	psychological thriller
1128	316	drama
1129	317	adventure
1130	317	comedy
1131	317	slice of life
1132	318	horror
1133	318	adventure
1134	319	fantasy
1135	319	romantic comedy
1136	320	fantasy
1137	320	action
1138	320	adventure
1139	321	mecha
1140	321	action
1141	321	romance
1142	321	harem
1143	322	romantic comedy
1144	323	parody
1145	323	magical girl
1146	323	comedy
1147	323	supernatural
1148	324	fantasy
1149	324	comedy
1150	325	comedy
1151	325	drama
1152	325	music
1153	325	romance
1154	325	shoujo
1155	325	slice of life
1156	326	romantic comedy
1157	326	drama
1158	326	school
1159	326	shoujo
1160	326	romance
1161	326	comedy
1162	327	drama
1163	327	comedy
1164	327	school
1165	328	comedy
1166	328	magical girl
1167	328	ecchi
1168	329	magical girl
1169	330	romantic comedy
1170	330	slice of life
1171	330	drama
1172	330	school
1173	331	drama
1174	331	steampunk
1175	331	yuri
1176	332	shoujo ai
1177	332	drama
1178	332	romance
1179	332	yuri
1180	332	school
1181	333	school
1182	333	comedy
1183	333	sci-fi
1184	334	fantasy
1185	334	romance
1186	334	comedy
1187	335	drama
1188	335	action
1189	335	fantasy
1190	335	adventure
1191	335	sci-fi
1192	336	action
1193	336	supernatural
1194	336	sci-fi
1195	337	supernatural
1196	337	comedy
1197	337	psychological
1198	338	sci-fi
1199	338	action
1200	338	romance
1201	338	mecha
1202	339	vampire
1203	339	horror
1204	339	paranormal
1205	339	action
1206	340	romance
1207	340	comedy
1208	341	comedy
1209	341	romance
1210	341	slice of life
1211	341	psychological
1212	342	action
1213	342	espionage
1214	343	cyberpunk
1215	343	mecha
1216	343	action
1217	343	virtual reality
1218	344	slice of life
1219	344	drama
1220	345	supernatural
1221	345	comedy
1222	345	fantasy
1223	346	action
1224	346	adventure
1225	346	crime fiction
1226	346	black comedy
1227	347	romance
1228	347	shounen
1229	347	action
1230	347	supernatural
1231	348	drama
1232	348	mecha
1233	348	alternate history
1234	349	sci-fi
1235	349	comedy
1236	350	drama
1237	350	harem
1238	350	fantasy
1239	350	romance
1240	351	supernatural
1241	351	psychological
1242	351	mystery
1243	351	horror
1244	352	drama
1245	352	historical
1246	352	mystery
1247	352	supernatural
1248	353	drama
1249	353	school
1250	353	shoujo ai
1251	353	slice of life
1252	354	sentai
1253	354	sci-fi
1254	354	action adventure
1255	354	mecha
1256	354	magical boy
1257	355	action
1258	355	supernatural
1259	355	comedy
1260	355	romance
1261	356	shoujo ai
1262	356	harem
1263	356	romance
1264	356	school
1265	357	comedy
1266	357	drama
1267	357	war
1268	357	shounen
1269	357	military
1270	358	shounen
1271	358	school
1272	358	action
1273	358	comedy
1274	358	mafia
1275	358	supernatural
1276	359	romantic comedy
1277	360	school
1278	360	romantic comedy
1279	360	harem
1280	361	action
1281	361	fantasy
1282	361	magic
1283	361	romance
1284	361	shounen
1285	361	supernatural
1286	362	sports
1287	362	magical girl
1288	362	comedy
1293	364	romantic comedy
1294	364	sci-fi
1295	364	yuri
1296	365	drama
1297	365	fantasy
1298	365	magical girl
1299	365	romance
1300	365	action
1301	366	magical girl
1302	366	comedy
1303	366	romance
1304	366	harem
1305	367	comedy
1306	367	sci-fi
1307	367	harem
1308	368	supernatural
1309	368	sci-fi
1310	368	drama
1311	368	comedy
1312	368	action
1313	369	comedy
1314	369	sports
1315	369	baseball
1316	370	fantasy
1317	370	supernatural
1318	370	action
1319	371	sci-fi
1320	372	mecha
1321	372	adventure
1322	372	military
1327	374	romance
1328	374	space opera
1329	374	mecha
1330	374	adventure
1331	375	comedy
1332	375	drama
1333	375	romance
1334	376	tragedy
1335	376	drama
1336	376	sci-fi
1337	376	yuri
1338	377	shounen
1339	377	shounen ai
1340	377	historical
1341	377	supernatural
1342	377	adventure
1343	377	action
1344	378	romantic comedy
1345	379	magical girl
1346	379	psychological
1347	379	drama
1348	379	action
1349	379	sci-fi
1350	380	fantasy
1351	380	action
1352	381	fantasy
1353	381	harem
1354	381	parody
1355	381	romantic comedy
1356	382	sports
1357	382	romance
1358	382	comedy
1359	383	supernatural
1360	383	action
1361	383	comedy
1362	383	horror
1363	383	shounen
1364	383	vampire
1365	384	mecha
1366	384	science fantasy
1367	385	romance
1368	385	action
1369	385	fantasy
1370	386	shounen ai
1371	386	fantasy
1372	386	action
1373	387	action
1374	387	adventure
1375	387	fantasy
1376	388	mecha
1377	389	seinen
1378	389	comedy
1379	389	adventure
1380	389	fantasy
1381	390	ecchi
1382	390	fantasy
1383	390	comedy
1384	390	harem
1385	391	sci-fi
1386	391	romantic comedy
1387	392	action
1388	392	neo-noir
1389	392	mystery
1390	392	supernatural
1391	393	action
1392	393	supernatural
1393	394	harem
1394	394	sports
1395	394	comedy
1396	394	ecchi
1397	394	school
1398	394	shounen
1399	395	action
1400	395	supernatural
1401	395	romance
1402	396	comedy
1403	396	drama
1404	396	ecchi
1405	396	slice of life
1406	396	romance
1407	397	comedy
1408	398	mystery
1409	398	drama
1410	398	horror
1411	399	military sci-fi
1412	399	mecha
1413	399	drama
1414	399	action
1415	400	drama
1416	400	sci-fi
1417	400	yuri
1418	401	romantic comedy
1419	401	harem
1420	402	drama
1421	402	romance
1422	402	fantasy
1423	402	comedy
1424	403	drama
1425	403	fantasy
1426	403	harem
1427	403	romantic comedy
1428	404	occult detective
1429	405	comedy
1430	405	slice of life
1431	406	drama
1432	406	sports
1433	406	gambling
1434	407	action
1435	407	drama
1436	407	mecha
1437	408	comedy
1438	408	magical girl
1439	408	lolicon
1440	408	magic
1441	409	comedy
1442	409	school
1443	409	supernatural
1444	410	occult detective
1445	411	action
1446	411	drama
1447	411	psychological
1448	411	supernatural
1449	412	fantasy
1450	412	romance
1451	412	mystery
1452	412	comedy
1453	412	horror
1454	412	action
1455	413	mystery
1456	414	magical girl
1457	414	romance
1458	414	comedy
1459	415	yaoi
1460	415	romance
1461	416	lolicon
1462	416	futuristic
1463	416	comedy
1464	416	school
1465	416	sci-fi
1466	416	slice of life
1467	417	fantasy
1468	417	comedy
1469	417	magical girl
1470	417	parody
1471	417	sci-fi
1472	418	supernatural
1473	418	romantic comedy
1474	418	harem
1475	418	comedy
1476	418	ecchi
1477	418	fantasy
1478	419	sci-fi
1479	420	parody
1480	420	seinen
1481	420	comedy
1482	420	slice of life
1483	420	school
1484	421	drama
1485	421	historical
1486	422	mmorpg
1487	422	comedy
1488	423	action
1489	423	adventure
1490	423	fantasy
1491	423	ninja
1492	424	romance
1493	424	slice of life
1494	424	comedy
1495	425	sci-fi
1496	425	comedy
1497	425	adventure
1498	426	magical girl
1499	426	mystery
1500	426	parody
1501	426	action
1502	426	supernatural
1503	426	tarot cards
1504	427	fantasy
1505	427	mecha
1506	427	romance
1507	427	yuri
1508	428	drama
1509	428	romance
1510	429	action
1511	429	drama
1512	429	fantasy
1513	429	horror
1514	429	martial arts
1515	429	school
1516	429	supernatural
1517	430	action
1518	430	shoujo ai
1519	430	fantasy
1520	430	yuri
1521	430	school
1522	431	magical girl
1523	431	comedy
1524	431	action
1525	431	school
1526	431	shoujo
1527	431	fantasy
1528	432	adventure
1529	433	seinen
1530	433	action
1531	433	sci-fi
1532	434	action
1533	434	mystery
1534	435	yuri
1535	435	romantic comedy
1536	435	shoujo ai
1537	435	romance
1538	435	comedy
1539	435	incest
1540	436	drama
1541	436	mecha
1542	436	alternate history
1543	437	drama
1544	437	fantasy
1545	437	romantic comedy
1546	437	harem
1547	438	comedy
1548	439	fantasy
1549	439	romantic comedy
1550	440	romance
1551	440	slice of life
1552	440	drama
1553	440	comedy
1554	440	martial arts
1555	441	romance
1556	441	comedy
1557	441	action
1558	442	action
1559	442	comedy
1560	442	shounen ai
1561	442	supernatural
1562	443	comedy
1563	443	romantic comedy
1564	443	romance
1565	443	school
1566	443	shoujo
1567	444	action
1568	444	supernatural
1569	445	comedy
1570	445	sci-fi
1571	445	harem
1572	445	ecchi
1573	445	romance
1574	446	vampire
1575	446	romance
1576	446	supernatural
1577	447	sci-fi
1578	447	comedy
1579	448	lolicon
1580	448	action
1581	448	comedy
1582	448	harem
1583	449	comedy
1584	449	shounen ai
1585	450	card battle
1586	450	drama
1587	451	comedy
1588	451	romance
1589	452	school
1590	452	comedy
1591	452	action
1592	452	romantic comedy
1593	452	sci-fi
1594	453	sci-fi
1595	453	action
1596	454	adventure
1597	454	comedy
1598	454	fantasy
1599	455	military sci-fi
1600	456	romantic comedy
1601	456	harem
1602	456	fantasy
1603	456	adventure
1604	456	ecchi
1605	457	drama
1606	457	harem
1607	457	romance
1608	458	supernatural
1609	458	mystery
1610	458	comedy
1611	458	history
1612	458	steampunk
1613	459	psychological
1614	459	romance
1615	459	sci-fi
1616	459	supernatural
1617	459	thriller
1618	459	cyberpunk
1619	459	harem
1620	460	drama
1621	460	romance
1622	460	fantasy
1623	461	drama
1624	461	psychological
1625	461	romance
1626	462	action
1627	462	drama
1628	462	horror
1629	462	supernatural
1630	462	demons
1631	462	yuri
1632	463	psychological
1633	463	mystery
1634	463	horror
1635	463	supernatural
1640	465	slice of life
1641	465	comedy
1642	466	sports
1643	466	soccer
1644	467	comedy
1645	467	romance
1646	467	sci-fi
1647	468	action
1648	468	drama
1649	468	historical
1650	468	horror
1651	468	romance
1652	468	sci-fi
1653	468	vampire
1654	469	sci-fi
1655	469	martial arts
1656	470	drama
1657	470	mecha
1658	470	romance
1659	470	comedy
1660	471	adventure
1661	471	comedy
1662	471	historical
1663	472	classical music
1664	472	drama
1665	472	romance
1666	472	slice of life
1667	472	comedy
1668	473	baseball
1669	473	sports
1670	474	harem
1671	474	supernatural
1672	474	action
1673	474	ecchi
1674	474	romantic comedy
1675	475	slice of life
1676	475	romance
1677	475	comedy
1678	475	ecchi
1679	476	drama
1680	476	romantic comedy
1681	477	drama
1682	477	coming of age
1683	477	adventure
1684	477	fantasy
1689	479	comedy
1690	479	slice of life
1691	480	ecchi
1692	480	action
1693	480	horror
1694	480	mystery
1695	480	tech-noir
1696	480	yuri
1697	481	harem
1698	481	supernatural
1699	481	action
1700	481	ecchi
1701	481	romantic comedy
1702	482	fantasy
1703	483	fantasy
1704	483	romance
1705	483	thriller
1706	484	action
1707	484	rpg
1708	485	action
1709	485	mystery
1710	486	romance
1711	486	school
1712	486	seinen
1713	487	action
1714	487	fantasy
1715	487	supernatural
1716	488	fantasy
1717	488	mecha
1718	489	adventure
1719	489	fantasy
1720	489	game
1721	489	shounen
1722	490	mecha
1723	490	sports
1724	490	ecchi
1725	490	shounen
1726	490	sci-fi
1727	491	drama
1728	491	slice of life
1729	491	adventure
1730	492	comedy
1731	493	romantic comedy
1732	493	sports
1733	493	baseball
1734	494	romance
1735	494	thriller
1736	495	slice of life
1737	496	military
1738	496	supernatural
1739	496	action
1740	496	historical
1741	496	fantasy
1742	496	magic
1743	497	adventure
1744	497	science fantasy
1745	497	steampunk
1746	498	fantasy
1747	498	drama
1748	498	adventure
1749	498	medieval
1750	499	drama
1751	499	harem
1752	499	romance
1753	500	romantic comedy
1754	501	parody
1755	501	romantic comedy
1756	502	comedy
1757	502	magical girl
1758	502	adventure
1759	502	romance
1760	503	slice of life
1761	503	music
1762	503	comedy
1763	504	romantic comedy
1764	504	supernatural
1765	505	mystery
1766	505	fantasy
1767	505	action
1768	505	comedy
1769	505	romance
1770	506	seinen
1771	506	thriller
1772	506	romance
1773	506	drama
1774	506	action
1775	506	crime
1776	507	fantasy
1777	507	action
1778	507	ecchi
1779	508	slice of life
1780	508	romance
1781	509	mahjong
1782	509	sports
1783	509	shoujo ai
1784	509	comedy
1785	510	action
1786	511	sci-fi
1787	512	adventure
1788	512	fantasy
1789	512	romance
1790	513	adventure
1791	513	comedy
1792	514	action
1793	514	adventure
1794	514	historical
1795	515	comedy
1796	515	fantasy
1797	516	drama
1798	516	fantasy
1799	516	romance
1800	517	harem
1801	517	romance
1802	517	fantasy
1803	518	romance
1804	519	action
1805	519	drama
1806	519	comedy
1807	520	romance
1808	520	supernatural
1809	520	comedy
1815	522	yuri
1816	522	romance
1817	522	drama
1818	522	shoujo ai
1819	523	adventure
1820	523	drama
1821	524	sci-fi
1822	525	comedy
1823	525	ecchi
1824	525	sci-fi
1825	525	shounen
1826	526	slice of life
1831	528	comedy
1832	528	historical
1833	529	shoujo ai
1834	529	slice of life
1835	529	comedy
1836	529	lolicon
1837	529	yuri
1838	530	slice of life
1839	531	fantasy
1844	533	sci-fi
1845	533	action
1846	533	ecchi
1847	534	harem
1848	534	romance
1849	534	drama
1850	534	action
1851	534	comedy
1852	534	ecchi
1853	534	seinen
1854	535	romantic comedy
1855	535	slice of life
1856	536	fantasy
1857	536	romance
1858	536	thriller
1859	537	historical
1860	537	slice of life
1861	537	sports
1862	537	baseball
1863	538	drama
1864	539	action
1865	539	magical girl
1866	540	drama
1867	540	fantasy
1868	540	metafiction
1869	540	mystery
1870	540	psychological thriller
1871	541	card battle
1872	542	satire
1873	542	comedy
1874	542	parody
1875	543	romance
1876	543	fantasy
1877	543	action
1878	544	fantasy
1879	544	action
1880	544	sci-fi
1881	545	magical girl
1882	545	comedy
1883	545	detective fiction
1886	548	card battle
1887	548	adventure
1893	550	drama
1894	550	historical
1895	550	psychological
1896	550	thriller
1897	550	seinen
1898	551	thriller
1899	551	action
1900	551	supernatural
1901	551	neo-noir
1902	551	sci-fi
1903	552	fantasy
1904	552	comedy
1905	552	action
1906	552	adventure
1907	553	romantic comedy
1908	553	romance
1909	553	slice of life
1910	554	fantasy
1911	554	harem
1912	554	romantic comedy
1913	555	romance
1914	555	sengoku era
1915	555	adventure
1916	555	supernatural
1917	557	harem
1918	557	fantasy
1919	557	romantic comedy
1920	558	romance
1921	558	comedy
1922	558	fantasy
1923	558	drama
1924	559	adventure
1925	559	steampunk
1926	559	supernatural
1927	559	fantasy
1928	560	psychological
1929	560	sci-fi
1930	560	harem
1931	560	comedy
1932	560	drama
1933	561	fantasy
1934	561	shoujo
1939	563	romantic comedy
1940	563	supernatural
1941	564	romantic comedy
1942	564	comedy
1943	564	ecchi
1944	564	romance
1945	565	romantic comedy
1946	566	adventure
1947	566	magic
1948	567	historical
1949	567	drama
1950	567	romance
1951	567	action
1952	568	magical girl
1953	568	romance
1954	568	comedy
1955	569	parody
1956	569	harem
1957	569	comedy
1958	569	school
1959	570	fantasy
1960	570	seinen
1961	571	mecha
1962	571	romantic comedy
1963	571	action
1964	571	ecchi
1965	571	fantasy
1966	571	school
1967	571	harem
1968	572	comedy
1969	573	fantasy
1970	574	comedy
1971	574	drama
1972	574	psychological
1973	574	seinen
1974	575	comedy
1975	575	romance
1976	575	yuri
1977	576	romance
1978	577	romance
1979	577	cooking
1980	577	school life
1981	577	shoujo
1982	577	fantasy
1983	577	comedy
1984	577	drama
1985	578	action
1986	578	drama
1987	578	comedy
1988	578	fantasy
1989	578	adventure
1990	578	post-apocalyptic
1991	579	cooking
1992	580	action
1993	580	comedy
1994	580	magical girl
1999	582	comedy
2000	582	historical
2001	583	parody
2002	583	shoujo ai
2003	583	comedy
2004	583	yuri
2005	584	school
2006	584	shoujo
2007	584	shoujo ai
2008	584	slice of life
2009	585	romantic comedy
2010	585	martial arts
2011	585	harem
2012	586	adventure
2013	586	comedy
2014	586	fantasy
2015	587	fantasy
2016	588	comedy
2017	588	mecha
2018	589	action
2019	589	comedy
2020	589	supernatural
2021	590	comedy
2022	590	romance
2023	592	fantasy
2024	592	drama
2025	592	adventure
2026	592	shoujo
2027	592	shounen ai
2028	593	mystery
2029	593	drama
2030	593	romance
2031	593	school
2032	594	action
2033	594	mecha
2034	595	action
2035	595	fantasy
2036	595	romantic comedy
2037	595	harem
2038	596	sports
2039	596	soccer
2040	597	action
2041	597	drama
2042	597	historical
2043	597	supernatural
2044	598	mecha
2045	599	comedy
2046	599	fantasy
2047	599	shoujo
2048	599	magical girl
2049	600	drama
2050	600	historical
2051	600	action
2052	600	samurai
2053	601	ecchi
2054	601	action
2055	601	school
2056	602	magical girl
2057	602	comedy
2058	602	fantasy
2062	604	music
2063	604	comedy
2064	604	slice of life
2065	604	school
2066	605	romantic comedy
2067	606	comedy
2068	606	ecchi
2069	606	romance
2070	606	shounen
2071	607	action
2072	607	historical
2073	607	sci-fi
2074	608	thriller
2075	608	drama
2076	608	historical
2077	608	seinen
2078	609	drama
2079	609	historical
2080	609	romance
2081	610	romance
2082	610	comedy
2083	610	shounen
2084	611	psychological
2085	611	romance
2086	611	mystery
2087	613	comedy
2088	614	romantic comedy
2089	615	drama
2090	615	romance
2091	615	school
2092	616	supernatural
2093	616	mystery
2094	616	comedy
2095	616	history
2096	616	steampunk
2097	617	adventure
2098	617	action
2099	617	crime fiction
2100	617	black comedy
2101	618	romantic comedy
2102	618	sci-fi
2103	619	adventure
2104	619	action
2105	619	science fantasy
2106	619	shounen
2111	621	comedy
2112	621	ecchi
2113	621	seinen
2114	622	action
2115	622	ecchi
2116	622	horror
2117	622	shounen
2118	623	romance
2119	623	shoujo
2121	625	incest
2122	625	yuri
2123	625	romance
2124	625	drama
2125	625	shoujo ai
2126	626	fantasy
2127	626	adventure
2128	626	comedy
2133	628	action
2134	628	supernatural
2135	629	fantasy
2136	629	supernatural
2137	630	romantic comedy
2138	630	comedy
2139	630	parody
2140	630	romance
2141	631	school
2142	631	comedy
2143	631	shounen
2144	632	romantic comedy
2145	632	harem
2146	632	action
2147	632	comedy
2148	632	ecchi
2149	632	super power
2150	633	horror
2151	633	mystery
2152	633	supernatural
2153	633	thriller
2155	635	drama
2156	635	fantasy
2157	635	romance
2158	635	harem
2159	636	comedy
2160	636	yaoi
2161	636	shounen ai
2162	637	comedy
2163	637	slice of life
2164	638	romance
2165	638	slice of life
2166	639	adventure
2167	639	action
2168	640	sci-fi
2169	640	fantasy
2170	640	adventure
2171	640	action
2172	641	comedy
2173	641	slice of life
2174	642	comedy
2175	642	romance
2176	643	slice of life
2177	643	comedy
2178	643	romance
2184	645	mystery
2185	645	detective
2186	645	comedy
2187	646	drama
2188	646	fantasy
2189	646	romance
2190	647	historical
2191	647	romance
2192	647	supernatural
2193	647	military
2194	648	action
2195	648	drama
2196	648	historical
2197	648	supernatural
2198	649	action
2199	649	comedy
2200	649	magical girl
2201	650	fantasy
2202	650	harem
2203	650	romantic comedy
2204	651	action
2205	651	comedy
2206	651	ecchi
2207	651	romance
2208	652	comedy
2209	653	comedy
2210	653	action
2211	653	seinen
2212	653	parody
2213	653	romance
2214	653	school
2215	653	shoujo ai
2216	654	comedy
2217	654	romance
2218	655	romantic comedy
2219	655	harem
2220	656	comedy
2221	656	ecchi
2222	656	school
2223	656	sci-fi
2224	656	shounen
2225	656	harem
2226	657	drama
2227	657	romantic comedy
2234	660	comedy
2235	660	action
2236	661	romantic comedy
2237	662	mystery
2238	662	horror
2239	662	shoujo
2240	662	supernatural
2241	663	slice of life
2242	663	comedy
2243	663	shounen
2244	664	action
2245	664	mecha
2246	665	action
2247	665	mecha
2248	665	sci-fi
2249	666	comedy
2250	666	slice of life
2251	667	supernatural
2252	667	steampunk
2253	667	adventure
2254	667	drama
2255	667	comedy
2256	668	comedy
2257	668	romance
2258	669	action
2259	669	sci-fi
2260	669	shounen ai
2261	670	incest
2262	670	romantic comedy
2263	670	lolicon
2264	670	harem
2265	670	ecchi
2266	671	romance
2267	671	cooking
2268	671	school life
2269	671	shoujo
2270	671	fantasy
2271	671	comedy
2272	671	drama
2273	672	romantic comedy
2274	672	fantasy
2280	674	comedy
2281	675	sci-fi
2282	675	space opera
2283	675	action
2284	676	suprnatural
2285	676	vampire
2286	676	romance
2287	677	supernatural
2288	677	action
2289	677	comedy
2294	679	comedy
2295	679	sci-fi
2296	680	comedy
2297	680	slice of life
2298	681	slice of life
2299	681	comedy
2304	683	harem
2305	683	romantic comedy
2310	685	action
2311	685	supernatural
2312	685	romantic comedy
2313	685	harem
2314	686	drama
2315	686	horror
2316	686	mystery
2317	686	psychological thriller
2318	687	comedy
2319	687	slice of life
2320	687	social science fiction
2321	688	chanbara
2322	688	comedy
2323	688	romance
2324	689	romance
2325	689	supernatural
2326	689	adventure
2327	689	action
2328	689	ecchi
2329	689	shounen
2330	690	comedy
2331	690	ecchi
2332	690	school
2333	691	seinen
2334	691	ecchi
2335	692	comedy
2336	692	slice of life
2337	693	action
2338	693	comedy
2339	694	romance
2340	694	vampire
2341	694	comedy
2342	694	fantasy
2343	694	ecchi
2344	695	action
2345	695	supernatural
2346	695	comedy
2347	695	fantasy
2348	696	horror
2349	696	sci-fi
2350	696	action
2351	697	action
2352	697	adventure
2353	697	fantasy
2354	698	fantasy
2355	698	comedy
2356	699	sci-fi
2357	699	comedy
2358	700	drama
2359	700	sports
2360	700	gambling
2361	701	slice of life
2362	701	romance
2366	703	school
2367	703	romance
2368	704	magical girl
2369	704	comedy
2370	704	fantasy
2371	705	comedy
2372	705	action
2373	705	ecchi
2374	705	parody
2375	705	romance
2376	705	supernatural
2377	706	parody
2378	706	shoujo ai
2379	706	comedy
2380	706	yuri
2381	707	baseball
2382	707	sports
2383	707	drama
2384	708	comedy
2385	708	slice of life
2390	711	thriller
2391	711	sci-fi
2392	712	mystery
2393	712	comedy
2394	712	action
2395	712	sci-fi
2396	713	comedy
2397	713	action
2398	713	gourmet
2399	714	slice of life
2400	714	drama
2401	714	tragedy
2402	715	comedy
2403	715	demons
2404	715	supernatural
2405	716	sci-fi
2406	716	thriller
2407	716	mystery
2408	716	action
2409	717	comedy
2410	717	supernatural
2411	717	ecchi
2412	718	comedy
2413	718	romance
2414	718	school
2415	719	action
2416	719	mystery
2417	719	drama
2418	719	horror
2419	719	supernatural
2420	719	vampire
2421	720	drama
2422	720	comedy
2423	721	seinen
2424	721	slice of life
2425	721	historical
2426	722	mystery
2431	724	magical girl
2432	725	supernatural
2433	725	drama
2434	725	action
2435	725	seinen
2436	726	action
2437	726	ecchi
2438	726	romance
2439	726	seinen
2440	726	historical
2441	727	supernatural
2442	727	psychological
2443	727	drama
2444	728	romance
2445	728	comedy
2446	729	slice of life
2447	729	comedy
2448	729	seinen
2449	729	school
2450	730	drama
2451	730	supernatural
2452	731	dystopia
2453	731	post-apocalyptic
2454	731	adventure
2455	731	drama
2456	731	sci-fi
2457	731	shounen ai
2458	732	action
2459	732	supernatural
2460	733	comedy
2461	733	romance
2462	733	school
2463	733	harem
2464	734	action
2465	734	school
2466	734	sci-fi
2467	735	comedy
2468	735	supernatural
2469	735	seinen
2470	736	mystery
2471	736	historical
2472	736	slice of life
2473	736	supernatural
2474	737	supernatural
2475	738	comedy
2476	738	romance
2477	738	school
2478	738	shoujo
2479	738	harem
2480	739	parody
2481	739	shoujo ai
2482	739	yuri
2483	739	school
2484	739	comedy
2485	739	slice of life
2486	740	romance
2487	740	comedy
2488	740	slice of life
2489	741	comedy
2490	741	martial arts
2491	742	action
2492	742	comedy
2493	742	romance
2494	742	supernatural
2495	743	comedy
2496	743	shoujo
2497	744	drama
2498	744	sports
2499	744	game
2500	745	action
2501	745	fantasy
2502	745	thriller
2503	746	psychological
2504	746	supernatural
2505	746	action
2506	746	mystery
2507	746	thriller
2508	747	action
2509	747	sci-fi
2510	748	comedy
2511	748	seinen
2512	749	sci-fi
2513	749	fantasy
2514	749	adventure
2515	749	action
2516	750	action
2517	750	adventure
2518	750	fantasy
2519	751	romantic comedy
2520	752	sci-fi
2521	752	fantasy
2522	752	adventure
2523	753	martial arts
2524	753	romance
2525	753	comedy
2526	753	harem
2527	753	action
2528	754	school
2529	754	magic
2530	754	harem
2531	755	drama
2532	755	romance
2533	755	harem
2534	756	sci-fi
2535	756	mecha
2536	757	sci-fi
2537	757	supernatural
2538	757	mystery
2539	757	adventure
2540	758	game
2541	758	action
2542	758	adventure
2543	759	super power
2544	759	shounen
2545	759	sci-fi
2546	759	adventure
2547	760	comedy
2548	760	romance
2549	760	shounen ai
2550	761	action
2551	761	fantasy
2552	761	romance
2553	762	slice of life
2554	762	comedy
2555	762	shounen
2556	763	comedy
2557	763	slice of life
2558	764	mystery
2559	765	comedy
2560	766	comedy
2561	766	drama
2562	766	romance
2563	766	slice of life
2564	767	slice of life
2565	767	harem
2566	767	seinen
2569	769	action
2570	769	adventure
2571	769	fantasy
2572	769	game
2573	769	shounen
2574	770	comedy
2575	770	supernatural
2576	770	action
2582	772	action
2583	772	adventure
2584	773	fantasy
2585	773	ecchi
2586	773	action
2587	773	romantic comedy
2588	774	action
2589	774	fantasy
2590	775	sci-fi
2591	775	fantasy
2592	775	adventure
2593	776	sci-fi
2594	776	romance
2595	776	ecchi
2596	776	action
2597	777	romantic comedy
2598	777	romance
2599	777	slice of life
2600	778	mystery
2601	778	drama
2602	778	romance
2603	779	comedy
2604	779	ecchi
2605	779	romance
2606	779	harem
2607	780	sci-fi
2608	780	harem
2609	780	mecha
2610	780	comedy
2611	780	action
2612	781	action
2613	781	comedy
2614	781	ecchi
2615	781	magical girl
2616	782	supernatural
2617	782	psychedelic
2618	782	comedy
2619	782	yuri
2620	782	lolicon
2621	783	sci-fi
2622	783	horror
2623	783	comedy
2624	783	adventure
2625	784	comedy
2626	784	slice of life
2631	786	sci-fi
2632	786	magical girl
2633	786	drama
2634	786	fantasy
2635	787	ecchi
2636	787	comedy
2637	787	gambling
2638	788	slice of life
2639	788	comedy
2640	788	drama
2641	788	parody
2642	789	romance
2643	789	slice of life
2644	789	reverse harem
2645	790	fantasy
2646	790	magic
2647	790	shoujo
2648	791	drama
2649	791	slice of life
2650	792	magical girl
2651	793	drama
2652	794	romantic comedy
2653	794	drama
2654	794	ecchi
2655	794	romance
2656	794	school
2657	794	shounen
2658	794	harem
2659	795	shounen
2660	795	action
2661	795	romance
2662	795	school
2663	795	sci-fi
2664	796	romance
2665	796	school
2666	796	seinen
2667	797	comedy
2668	798	music
2669	798	comedy
2670	798	sci-fi
2676	800	mystery
2677	800	horror
2678	800	romance
2679	800	school
2680	800	shounen
2681	800	supernatural
2682	801	action
2683	801	adventure
2684	801	drama
2685	801	mecha
2686	801	sci-fi
2691	803	thriller
2692	803	fantasy
2693	803	action
2694	803	horror
2695	804	soccer
2696	804	sports
2697	804	shounen
2698	805	shoujo
2699	805	romance
2700	805	fantasy
2701	805	supernatural
2702	806	ecchi
2703	806	fantasy
2704	806	supernatural
2708	808	mystery
2709	809	magical girl
2710	809	romantic comedy
2711	809	ecchi
2712	809	fantasy
2713	809	harem
2714	810	shoujo
2715	810	magical girl
2716	811	adventure
2717	811	action
2718	811	seinen
2719	812	slice of life
2720	812	school
2721	812	romance
2722	812	historical
2723	812	drama
2724	813	school
2725	814	magic
2726	815	basketball
2727	815	sports
2728	815	shounen
2729	815	school
2730	815	comedy
2736	817	ecchi
2737	817	comedy
2738	817	action
2739	817	martial arts
2740	817	romance
2741	817	school
2742	817	shounen
2743	818	action
2744	818	adventure
2745	818	shounen
2746	819	ecchi
2747	819	romance
2748	819	mystery
2749	819	school
2750	819	comedy
2751	819	seinen
2752	819	slice of life
2753	819	supernatural
2758	821	slice of life
2759	822	adventure
2760	823	comedy
2761	823	parody
2762	823	sci-fi
2763	824	adventure
2764	824	action
2765	824	sci-fi
2766	825	game
2767	825	action
2768	825	adventure
2769	826	comedy
2770	827	Dancing
2771	827	Ice skating
2772	827	Fashion
2773	827	Showbiz
2774	827	romance
2775	828	fantasy
2776	828	adventure
2777	828	action
2778	828	ecchi
2779	829	seinen
2780	829	school
2781	829	comedy
2782	830	drama
2783	830	mythic fiction
2784	830	martial arts
2785	830	action
2786	830	adventure
2787	830	fantasy
2788	830	shounen
2789	831	school
2790	831	slice of life
2791	831	mahjong
2792	831	sports
2793	832	comedy
2794	832	ecchi
2795	832	horror
2796	832	romance
2797	832	shounen
2798	832	supernatural
2799	833	action
2800	833	adventure
2801	833	sci-fi
2802	833	shounen
2803	833	super power
2804	834	historical
2805	834	action
2806	834	comedy
2807	834	ecchi
2808	834	fantasy
2809	835	action
2810	835	fantasy
2811	836	sci-fi
2812	836	space
2813	836	slice of life
2814	836	seinen
2815	837	music
2816	837	coming of age
2817	837	sci-fi
2818	837	shounen
2819	838	action
2820	838	comedy
2821	838	seinen
2822	839	comedy
2823	839	drama
2824	839	romance
2825	839	school
2826	839	shounen
2827	839	slice of life
2828	840	comedy
2829	840	slice of life
2830	841	action
2831	841	drama
2832	841	horror
2833	841	romance
2834	841	sci-fi
2835	841	supernatural
2836	841	seinen
2837	842	magic
2838	842	action
2839	842	fantasy
2840	842	ecchi
2841	843	sci-fi
2842	843	adventure
2843	844	action
2844	844	mystery
2845	844	drama
2846	844	horror
2847	844	vampire
2848	844	supernatural
2849	845	comedy
2850	845	harem
2851	845	fantasy
2852	845	magic
2853	845	romance
2854	846	comedy
2855	846	slice of life
2856	847	romance
2857	847	historical
2858	848	action
2859	848	mecha
2860	848	military
2861	849	action
2862	849	adventure
2863	849	fantasy
2864	850	parody
2865	850	comedy
2866	850	school
2867	850	astronomy
2868	851	adventure
2869	851	comedy
2870	851	fantasy
2871	851	magic
2872	851	supernatural
2873	852	action
2874	852	fantasy
2875	852	drama
2876	852	mecha
2877	852	sci-fi
2878	852	romance
2879	853	action
2880	853	drama
2881	853	historical
2882	853	shoujo
2883	853	supernatural
2884	854	sci-fi
2885	854	adventure
2886	854	action
2887	854	fantasy
2888	855	fantasy
2889	855	seinen
2893	857	historical
2894	857	action
2895	857	military
2896	857	seinen
2897	858	comedy
2898	858	slice of life
2899	859	action
2900	859	fantasy
2901	859	romance
2902	860	action
2903	860	fantasy
2904	860	sci-fi
2905	860	comedy
2906	860	mecha
2907	861	drama
2908	861	romance
2909	862	comedy
2910	862	school
2911	862	supernatural
2912	863	mecha
2913	863	action
2914	863	sci-fi
2915	863	romance
2916	863	robot
2917	864	comedy
2918	864	romance
2919	864	school
2920	864	harem
2921	864	seinen
2922	865	supernatural
2923	865	romance
2924	865	drama
2925	866	adventure
2926	867	comedy
2927	867	slice of life
2928	868	action
2929	868	shounen
2930	869	ecchi
2931	869	school
2932	869	seinen
2933	869	trap
2934	869	comedy
2935	869	romance
2936	870	romantic comedy
2937	870	comedy
2938	870	romance
2939	871	virtual reality
2940	871	seinen
2941	871	sci-fi
2942	871	novel
2943	871	fantasy
2944	871	adventure
2945	871	action
2946	872	comedy
2947	872	adventure
2948	872	fantasy
2949	873	school
2950	873	music
2951	873	slice of life
2952	874	historical
2953	874	romance
2954	874	harem
2955	874	comedy
2956	875	drama
2957	876	school
2958	876	harem
2959	876	romance
2960	877	fantasy
2961	878	romance
2962	878	yaoi
2963	879	parody
2964	879	shoujo ai
2965	879	yuri
2966	879	school
2967	879	comedy
2968	879	slice of life
2969	880	music
2970	881	mecha
2971	881	action
2972	881	sci-fi
2973	882	action
2974	882	shounen
2975	883	action
2976	883	mystery
2977	883	drama
2978	883	fantasy
2979	883	shounen
2980	883	psychological
2981	884	seinen
2982	884	psychological
2983	884	sci-fi
2984	884	action
2985	885	action
2986	885	mecha
2987	885	shounen
2988	886	action
2989	886	school life
2990	886	supernatural
2991	886	romance
2992	886	comedy
2993	887	action
2994	887	adventure
2995	887	shounen
3000	889	supernatural
3001	889	sci-fi
3002	890	action
3003	891	comedy
3004	891	supernatural
3008	893	adventure
3009	893	comedy
3010	893	war
3011	893	parody
3012	893	drama
3013	893	fantasy
3014	894	action
3015	894	fantasy
3016	895	action
3017	895	adventure
3018	895	seinen
3019	896	action
3020	896	supernatural
3021	897	comedy
3022	897	fantasy
3023	897	shoujo
3024	897	supernatural
3029	899	comedy
3030	899	drama
3031	899	romance
3032	900	comedy
3033	900	romance
3034	901	shounen
3035	901	action
3036	901	adventure
3037	901	fantasy
3038	902	ecchi
3039	902	comedy
3040	902	action
3041	902	martial arts
3042	902	romance
3043	902	school
3044	902	shounen
3045	903	action
3046	903	sci-fi
3047	903	adventure
3048	904	comedy
3049	904	romance
3050	904	shoujo
3055	906	comedy
3056	906	romance
3057	906	harem
3058	907	action
3059	907	sci-fi
3060	908	thriller
3061	908	sci-fi
3062	909	shoujo
3063	909	romance
3071	911	tennis
3072	911	sports
3073	911	comedy
3074	912	comedy
3075	912	romance
3076	913	shounen ai
3077	913	supernatural
3078	913	fantasy
3079	914	harem
3080	914	ecchi
3081	915	romance
3082	915	school
3083	916	mystery
3084	916	drama
3085	916	horror
3086	916	school
3087	917	action
3088	917	comedy
3089	917	drama
3090	917	fantasy
3091	917	mecha
3092	917	romance
3093	917	sci-fi
3094	918	comedy
3095	918	school
3096	918	seinen
3097	919	action
3098	919	drama
3099	919	fantasy
3100	919	slice of life
3106	921	space
3107	921	sci-fi
3108	921	adventure
3109	922	action
3110	922	adventure
3111	922	historical
3112	922	seinen
3113	923	comedy
3114	923	school
3115	923	shounen
3116	923	slice of life
3121	925	shoujo ai
3122	925	yuri
3123	925	comedy
3124	925	ecchi
3125	925	school
3126	925	shounen
3131	927	comedy
3132	927	fantasy
3133	927	ecchi
3134	927	romance
3135	927	school
3139	929	comedy
3140	929	mystery
3141	929	shounen
3142	929	supernatural
3143	930	psychedelic
3144	930	crack
3145	930	supernatural
3146	930	comedy
3147	930	parody
3148	930	fantasy
3149	931	action
3150	931	fantasy
3151	931	sci-fi
3152	931	comedy
3153	931	mecha
3159	933	lolicon
3160	933	comedy
3161	933	romance
3162	934	adventure
3163	935	supernatural
3164	935	drama
3165	936	romance
3166	936	supernatural
3167	936	comedy
3168	937	seinen
3169	937	slice of life
3170	938	seinen
3171	938	school
3172	938	comedy
3173	939	action
3174	939	music
3175	939	supernatural
3176	940	action
3177	940	comedy
3178	940	fantasy
3179	940	magical girl
3180	941	detective
3181	941	mystery
3182	941	comedy
3183	942	sports
3184	942	shounen
3185	942	comedy
3186	942	school
3187	942	soccer
3188	943	comedy
3189	943	romance
3190	944	romantic comedy
3191	944	fantasy
3192	944	harem
3193	944	adventure
3194	944	ecchi
3195	945	action
3196	945	drama
3197	945	science fantasy
3198	946	fantasy
3199	947	comedy
3200	947	school
3201	947	shounen
3202	947	slice of life
3203	948	adventure
3204	948	action
3205	948	fantasy
3206	948	shoujo
3207	949	action
3208	949	horror
3209	949	fantasy
3210	949	tragedy
3211	950	comedy
3212	950	slice of life
3213	950	school
3214	951	action
3215	951	fantasy
3216	951	romance
3217	952	supernatural
3218	952	urban fantasy
3219	952	action
3220	952	adventure
3221	953	action
3222	953	adventure
3223	953	shounen
3224	954	coming of age
3225	954	drama
3226	954	psychological thriller
3227	955	mecha
3228	955	sci-fi
3229	955	adventure
3230	956	mecha
3231	957	comedy
3232	957	romance
3233	957	satire
3234	958	romance
3235	958	comedy
3236	958	action
3237	958	science fantasy
3238	958	harem
3239	958	historical
3240	959	adventure
3241	959	action
3242	959	comedy
3243	959	fantasy
3244	960	fantasy
3245	961	action
3246	962	romantic comedy
3247	963	comedy
3252	965	ecchi
3253	965	romance
3254	965	school
3255	966	romance
3256	966	music
3257	967	fantasy
3258	967	romance
3259	968	space opera
3260	968	military sci-fi
3261	969	romantic comedy
3262	970	fantasy
3263	971	comedy
3264	971	romance
3265	971	school
3266	971	shoujo
3267	971	harem
3268	972	mecha
3269	972	sci-fi
3270	973	slice of life
3271	974	romance
3272	974	drama
3273	975	lolicon
3274	975	comedy
3275	975	basketball
3276	975	sports
3277	975	ecchi
3278	975	school
3279	975	seinen
3280	976	comedy
3281	976	vampire
3282	976	supernatural
3283	976	seinen
3284	977	comedy
3285	977	school
3286	978	sci-fi
3287	979	action
3288	979	comedy
3289	979	fantasy
3290	979	magical girl
3291	980	sports
3292	981	mystery
3293	981	detective
3294	981	comedy
3295	982	superhero
3296	982	sci-fi
3297	982	action
3298	983	comedy
3299	983	slice of life
3300	984	romance
3301	986	action
3302	986	fantasy
3303	986	sci-fi
3304	987	fantasy
3305	987	supernatural
3306	987	drama
3307	987	magical girl
3308	988	comedy
3309	988	school
3310	989	action
3311	989	seinen
3312	990	romance
3313	990	comedy
3314	991	supernatural
3315	991	comedy
3316	991	fantasy
3317	991	mystery
3322	993	drama
3323	993	comedy
3324	993	supernatural
3325	993	fantasy
3326	994	action
3327	994	fantasy
3328	994	sci-fi
3329	994	music
3330	995	action
3331	995	comedy
3332	995	fantasy
3333	995	shounen
3334	996	comedy
3335	996	slice of life
3336	997	comedy
3337	997	school
3338	997	slice of life
3339	998	school
3340	998	sports
3341	998	military
3342	999	fantasy
3343	999	supernatural
3347	1001	drama
3348	1001	comedy
3349	1002	baseball
3350	1002	sports
3351	1002	shounen
3352	1002	school
3353	1002	comedy
3354	1003	sci-fi
3355	1003	military
3356	1004	slice of life
3357	1004	supernatural
3358	1005	action
3359	1006	action
3360	1006	sci-fi
3361	1007	action
3362	1007	adventure
3363	1007	sci-fi
3364	1008	drama
3365	1008	romantic comedy
3366	1008	supernatural
3367	1009	action
3368	1009	comedy
3369	1009	mecha
3373	1011	comedy
3374	1011	romance
3375	1011	harem
3376	1012	sci-fi
3377	1012	harem
3378	1012	mecha
3379	1012	comedy
3380	1012	action
3381	1013	action
3382	1013	fantasy
3385	1015	basketball
3386	1015	sports
3387	1015	comedy
3388	1015	school
3389	1015	shounen
3390	1016	action adventure
3391	1016	fantasy
3392	1017	action
3393	1017	adventure
3394	1017	fantasy
3395	1017	shounen
3396	1018	comedy
3397	1018	slice of life
3398	1019	idol
3399	1020	comedy
3400	1020	romance
3401	1020	school
3402	1021	drama
3403	1021	fantasy
3404	1021	romance
3405	1022	comedy
3406	1022	school
3407	1022	slice of life
3408	1023	fantasy
3409	1024	superhero
3410	1024	comedy
3411	1024	drama
3412	1025	slice of life
3413	1025	supernatural
3414	1026	supernatural
3415	1027	comedy
3416	1027	school
3417	1027	shounen
3418	1027	supernatural
3419	1028	fantasy
3420	1028	ecchi
3421	1028	action
3422	1029	action
3423	1029	romance
3424	1030	ecchi
3425	1030	sports
3426	1030	action
3427	1031	sports
3428	1031	comedy
3429	1031	drama
3430	1032	music
3431	1032	sci-fi
3432	1032	idols
3433	1032	drama
3434	1032	mecha
3435	1033	romance
3436	1033	shoujo
3437	1034	fantasy
3438	1034	historical
3439	1035	comedy
3440	1036	action
3441	1036	adventure
3442	1036	demons
3443	1036	game
3444	1037	game
3445	1037	sports
3446	1037	drama
3447	1038	detective
3448	1038	shounen
3449	1039	school
3450	1039	drama
3451	1039	romance
3452	1040	slice of life
3453	1041	comedy
3454	1041	slice of life
3455	1042	comedy
3456	1042	romance
3457	1042	school
3458	1043	supernatural
3459	1043	action
3460	1043	fantasy
3461	1043	shoujo
3462	1044	historical
3463	1044	comedy
3464	1045	comedy
3465	1045	school
3466	1046	school
3467	1046	romance
3468	1046	comedy
3469	1047	music
3470	1047	school
3471	1047	idol
3472	1048	comedy
3473	1048	slice of life
3474	1049	romance
3475	1049	medieval
3476	1049	swordsman
3477	1049	sorcery
3478	1049	sword
3479	1049	fantasy
3480	1049	comedy
3481	1049	demon girl
3482	1050	comedy
3483	1050	slice of life
3484	1051	comedy
3485	1051	romance
3486	1052	comedy
3487	1052	fantasy
3488	1053	comedy
3489	1053	music
3490	1053	idol
3491	1054	comedy
3492	1054	romance
3493	1055	action
3494	1056	action
3495	1056	comedy
3496	1056	fantasy
3497	1056	shounen
3498	1057	comedy
3499	1058	sci-fi
3500	1059	sports
3501	1060	fantasy
3502	1061	tennis
3503	1061	shounen
3504	1061	school
3505	1061	romance
3506	1061	sports
3507	1062	shounen
3508	1062	sci-fi
3509	1062	fantasy
3510	1062	drama
3511	1063	fantasy
3512	1063	adventure
3513	1064	mystery
3514	1064	drama
3515	1064	fantasy
3516	1064	sci-fi
3517	1065	action
3518	1065	mecha
3519	1065	sci-fi
3520	1066	fantasy
3521	1067	action
3522	1067	historical
3523	1067	mecha
3524	1068	comedy
3525	1068	ecchi
3526	1068	mecha
3527	1068	seinen
3528	1069	romance
3529	1069	fantasy
3530	1069	comedy
3531	1071	action
3532	1071	fantasy
3533	1071	harem
3534	1071	romantic comedy
3535	1072	comedy
3536	1072	fantasy
3537	1072	action
3538	1072	adventure
3539	1073	volleyball
3540	1073	sports
3541	1074	comedy
3542	1074	romance
3543	1074	school
3544	1074	harem
3545	1075	comedy
3546	1075	yuri
3547	1076	comedy
3548	1077	romance
3549	1077	supernatural
3550	1078	shounen
3551	1078	mystery
3552	1079	action
3553	1079	fantasy
3554	1079	seinen
3555	1080	music
3556	1080	romance
3557	1081	fantasy
3558	1081	Fashion
3559	1081	magical girl
3560	1082	action
3561	1084	game
3562	1085	slice of life
3563	1087	occult detective
3564	1088	comedy
3565	1088	romance
3566	1088	supernatural
3567	1089	adventure
3568	1089	comedy
3569	1089	fantasy
3570	1090	drama
3571	1090	comedy
3572	1091	sports
3573	1092	action
3574	1092	yuri
3575	1093	psychological
3576	1094	action
3577	1094	comedy
3578	1094	supernatural
3579	1095	comedy
3580	1095	drama
3581	1096	supernatural
3582	1096	sci-fi
3583	1096	romance
3584	1096	fantasy
3585	1097	comedy
3586	1098	adventure
3587	1098	fantasy
3588	1098	romance
3589	1098	shoujo
3590	1099	action
3591	1099	comedy
3592	1099	mystery
3593	1099	drama
3594	1099	shounen ai
3595	1100	action
3596	1100	adventure
3597	1100	fantasy
3598	1101	action
3599	1101	mecha
3600	1101	sci-fi
3601	1102	music
3602	1103	slice of life
3603	1103	comedy
3604	1104	historical
3605	1104	black comedy
3606	1104	dark fantasy
3607	1105	slice of life
3608	1105	shoujo
3609	1105	romance
3610	1105	drama
3611	1105	comedy
3612	1105	school
3613	1107	sci-fi
3614	1107	action
3615	1107	shounen ai
3616	1108	slice of life
3617	1108	sports
3618	1108	school
3619	1108	comedy
3620	1109	comedy
3621	1110	slice of life
3622	1111	slice of life
3623	1112	comedy
3624	1112	school
3628	1114	school
3629	1114	ecchi
3630	1114	comedy
3631	1114	slice of life
3632	1115	shounen ai
3633	1115	romantic comedy
3634	1116	shounen
3635	1116	comedy
3636	1116	fantasy
3638	1118	fantasy
3639	1120	comedy
3640	1120	romance
3641	1120	school
3642	1121	comedy
3643	1121	Fashion
3644	1121	music
3645	1122	action
3646	1122	romantic comedy
3647	1123	supernatural
3648	1123	romance
3649	1123	comedy
3650	1123	school
3651	1123	harem
3652	1124	shoujo
3653	1124	romance
3654	1124	magical girl
3655	1124	adventure
3656	1125	action
3657	1125	ecchi
3658	1125	comedy
3659	1125	fantasy
3660	1125	romance
3661	1125	harem
3662	1126	slice of life
3663	1127	action
3664	1127	mecha
3665	1128	comedy
3666	1129	virtual reality
3667	1129	fantasy
3668	1129	adventure
3669	1129	action
3670	1130	drama
3671	1130	psychological thriller
3672	1131	sci-fi
3673	1131	comedy
3674	1131	action
3675	1131	supernatural
3676	1132	mystery
3677	1132	drama
3678	1132	horror
3679	1132	supernatural
3680	1132	psychological
3698	1140	romance
3699	1140	school
3700	1141	romantic comedy
3701	1141	science fantasy
3702	1142	romance
3703	1142	slice of life
3704	1143	action
3705	1143	historical
3706	1143	shoujo
3707	1144	action
3708	1144	sci-fi
3709	1145	slice of life
3710	1145	comedy
3715	1148	action
3716	1148	fantasy
3717	1149	romance
3718	1149	school
3719	1150	comedy
3720	1150	supernatural
3721	1151	mecha
3722	1151	comedy
3723	1151	action
3724	1152	sci-fi
3725	1152	mecha
3726	1153	shounen ai
3727	1153	drama
3728	1154	comedy
3729	1154	seinen
3730	1154	slice of life
3731	1155	action
3732	1155	romantic comedy
3733	1155	supernatural
3734	1156	romance
3735	1156	school
3736	1157	school
3737	1157	romance
3738	1157	comedy
3739	1157	supernatural
3740	1158	romance
3741	1158	drama
3742	1159	action adventure
3743	1159	fantasy
3744	1160	comedy
3745	1160	mystery
3756	1163	comedy
3757	1163	slice of life
3758	1164	action
3759	1164	drama
3760	1164	horror
3761	1164	sci-fi
3762	1164	seinen
3763	1164	psychological
3764	1165	comedy
3776	1169	sci-fi
3777	1169	horror
3778	1169	action
3779	1170	adventure
3780	1170	harem
3781	1170	ecchi
3782	1170	fantasy
3783	1171	action
3784	1171	adventure
3785	1171	fantasy
3786	1171	shounen
3787	1172	action
3788	1172	comedy
3789	1172	romance
3790	1173	comedy
3791	1173	school
3792	1173	shoujo
3793	1174	action
3794	1174	sci-fi
3795	1174	shounen
3796	1175	action
3797	1175	comedy
3798	1175	fantasy
3799	1175	romance
3800	1175	shoujo
3801	1176	school
3802	1176	romance
3803	1176	drama
3804	1176	music
3805	1177	slice of life
3806	1178	fantasy
3807	1178	romance
3808	1178	aviation
3809	1179	mecha
3810	1179	action
3811	1179	sci-fi
3812	1180	romantic comedy
3813	1180	harem
3814	1181	sci-fi
3815	1182	comedy
3816	1182	romance
3817	1182	slice of life
3818	1183	card battle
3819	1183	action
3820	1183	adventure
3821	1183	science fantasy
3822	1183	shounen
3823	1184	music
3824	1184	slice of life
3825	1185	mystery
3826	1185	shounen
3827	1186	black comedy
3828	1186	supernatural
3829	1187	comedy
3830	1187	romance
3831	1187	school
3832	1187	supernatural
3833	1188	action
3834	1188	fantasy
3835	1189	comedy
3836	1190	romantic comedy
3837	1191	romantic comedy
3838	1192	action
3839	1192	mecha
3840	1193	action
3841	1194	action
3842	1194	adventure
3843	1194	shounen
3844	1195	psychological
3845	1195	shounen
3846	1195	horror
3847	1195	fantasy
3848	1196	romantic comedy
3849	1197	comedy
3850	1197	slice of life
3851	1198	yuri
3852	1198	romance
3853	1198	school
3854	1198	slice of life
3855	1199	music
3856	1199	slice of life
3857	1200	comedy
3858	1200	sci-fi
3859	1201	comedy
3860	1202	romantic comedy
3861	1203	comedy
3862	1204	music
3863	1205	action
3864	1205	romance
3865	1205	supernatural
3866	1206	magic
3867	1207	action
3868	1207	fantasy
3869	1208	action
3870	1208	adventure
3871	1208	fantasy
\.


--
-- Data for Name: Season; Type: TABLE DATA; Schema: public; Owner: minhnh
--

COPY "Season" (year, season_in_year, id) FROM stdin;
1991	Fall	1
1991	Summer	2
1992	Spring	3
1992	Summer	4
1993	Spring	5
1993	Winter	6
1994	Fall	7
1994	Winter	8
1994	Spring	9
1995	Fall	10
1995	Winter	11
1995	Summer	12
1995	Spring	13
1996	Spring	14
1996	Winter	15
1996	Summer	16
1996	Fall	17
1997	Spring	18
1997	Winter	19
1997	Summer	20
1997	Fall	21
1998	Fall	22
1998	Winter	23
1998	Spring	24
1998	Summer	25
1999	Winter	26
1999	Summer	27
1999	Fall	28
1999	Spring	29
2000	Winter	30
2000	Summer	31
2000	Fall	32
2000	Spring	33
2001	Spring	34
2001	Winter	35
2001	Summer	36
2001	Fall	37
2002	Winter	38
2002	Spring	39
2002	Summer	40
2002	Fall	41
2003	Spring	42
2003	Fall	43
2003	Summer	44
2003	Winter	45
2004	Spring	46
2004	Summer	47
2004	Fall	48
2004	Winter	49
2005	Winter	50
2005	Summer	51
2005	Fall	52
2005	Spring	53
2006	Summer	54
2006	Fall	55
2006	Winter	56
2006	Spring	57
2007	Summer	58
2007	Fall	59
2007	Spring	60
2007	Winter	61
2008	Fall	62
2008	Winter	63
2008	Spring	64
2008	Summer	65
2009	Summer	66
2009	Spring	67
2009	Winter	68
2009	Fall	69
2010	Fall	70
2010	Spring	71
2010	Summer	72
2010	Winter	73
2011	Spring	74
2011	Winter	75
2011	Summer	76
2011	Fall	77
2012	Summer	78
2012	Fall	79
2012	Spring	80
2012	Winter	81
2013	Fall	82
2013	Winter	83
2013	Summer	84
2013	Spring	85
2014	Fall	86
2014	Spring	87
2014	Winter	88
2014	Summer	89
\.


--
-- Name: Season_id_seq; Type: SEQUENCE SET; Schema: public; Owner: minhnh
--

SELECT pg_catalog.setval('"Season_id_seq"', 89, true);


--
-- Name: anime_id_seq; Type: SEQUENCE SET; Schema: public; Owner: minhnh
--

SELECT pg_catalog.setval('anime_id_seq', 1208, true);


--
-- Name: character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: minhnh
--

SELECT pg_catalog.setval('character_id_seq', 29917, true);


--
-- Name: genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: minhnh
--

SELECT pg_catalog.setval('genre_id_seq', 3871, true);


--
-- Name: AnimeSeason_pkey; Type: CONSTRAINT; Schema: public; Owner: minhnh; Tablespace: 
--

ALTER TABLE ONLY "AnimeSeason"
    ADD CONSTRAINT "AnimeSeason_pkey" PRIMARY KEY (anime_id, season_id);


--
-- Name: Anime__pkey; Type: CONSTRAINT; Schema: public; Owner: minhnh; Tablespace: 
--

ALTER TABLE ONLY "Anime_"
    ADD CONSTRAINT "Anime__pkey" PRIMARY KEY (id);


--
-- Name: Bookmarks_pkey; Type: CONSTRAINT; Schema: public; Owner: minhnh; Tablespace: 
--

ALTER TABLE ONLY "Bookmarks"
    ADD CONSTRAINT "Bookmarks_pkey" PRIMARY KEY (anime_id);


--
-- Name: Characters_pkey; Type: CONSTRAINT; Schema: public; Owner: minhnh; Tablespace: 
--

ALTER TABLE ONLY "Characters"
    ADD CONSTRAINT "Characters_pkey" PRIMARY KEY (id);


--
-- Name: Genre_pkey; Type: CONSTRAINT; Schema: public; Owner: minhnh; Tablespace: 
--

ALTER TABLE ONLY "Genre"
    ADD CONSTRAINT "Genre_pkey" PRIMARY KEY (id);


--
-- Name: Season_pkey; Type: CONSTRAINT; Schema: public; Owner: minhnh; Tablespace: 
--

ALTER TABLE ONLY "Season"
    ADD CONSTRAINT "Season_pkey" PRIMARY KEY (id);


--
-- Name: Season_unique; Type: CONSTRAINT; Schema: public; Owner: minhnh; Tablespace: 
--

ALTER TABLE ONLY "Season"
    ADD CONSTRAINT "Season_unique" UNIQUE (year, season_in_year);


--
-- Name: AnimeSeason_anime_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: minhnh
--

ALTER TABLE ONLY "AnimeSeason"
    ADD CONSTRAINT "AnimeSeason_anime_id_fkey" FOREIGN KEY (anime_id) REFERENCES "Anime_"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: AnimeSeason_season_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: minhnh
--

ALTER TABLE ONLY "AnimeSeason"
    ADD CONSTRAINT "AnimeSeason_season_id_fkey" FOREIGN KEY (season_id) REFERENCES "Season"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Bookmarks_anime_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: minhnh
--

ALTER TABLE ONLY "Bookmarks"
    ADD CONSTRAINT "Bookmarks_anime_id_fkey" FOREIGN KEY (anime_id) REFERENCES "Anime_"(id);


--
-- Name: Characters_anime_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: minhnh
--

ALTER TABLE ONLY "Characters"
    ADD CONSTRAINT "Characters_anime_id_fkey" FOREIGN KEY (anime_id) REFERENCES "Anime_"(id);


--
-- Name: Genre_anime_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: minhnh
--

ALTER TABLE ONLY "Genre"
    ADD CONSTRAINT "Genre_anime_id_fkey" FOREIGN KEY (anime_id) REFERENCES "Anime_"(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: minhnh
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM minhnh;
GRANT ALL ON SCHEMA public TO minhnh;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

