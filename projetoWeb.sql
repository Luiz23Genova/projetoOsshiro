PGDMP     :    6                {         
   projetoWeb    15.3    15.3 M    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    16397 
   projetoWeb    DATABASE     �   CREATE DATABASE "projetoWeb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "projetoWeb";
                postgres    false            �            1259    16472    a    TABLE     �   CREATE TABLE public.a (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.a;
       public         heap    postgres    false            �            1259    16465    b    TABLE     �   CREATE TABLE public.b (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.b;
       public         heap    postgres    false            �            1259    16479    c    TABLE     �   CREATE TABLE public.c (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.c;
       public         heap    postgres    false            �            1259    16464    categorias_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categorias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public          postgres    false    226            j           0    0    categorias_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.b.id;
          public          postgres    false    225            �            1259    16406 	   categoria    TABLE       CREATE TABLE public.categoria (
    id integer DEFAULT nextval('public.categorias_id_seq'::regclass) NOT NULL,
    descricao character varying(100),
    imagem character varying(45),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categoria;
       public         heap    postgres    false    225            �            1259    16492    colaboraders    SEQUENCE     u   CREATE SEQUENCE public.colaboraders
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.colaboraders;
       public          postgres    false            �            1259    16471    colaboradors_id_seq    SEQUENCE     |   CREATE SEQUENCE public.colaboradors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.colaboradors_id_seq;
       public          postgres    false    228            k           0    0    colaboradors_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.colaboradors_id_seq OWNED BY public.a.id;
          public          postgres    false    227            �            1259    16403    colaboradors    TABLE     9  CREATE TABLE public.colaboradors (
    id integer DEFAULT nextval('public.colaboradors_id_seq'::regclass) NOT NULL,
    nome character varying(100),
    email character varying(100),
    imagem character varying(45),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.colaboradors;
       public         heap    postgres    false    227            �            1259    16441    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16440    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    222            l           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    221            �            1259    16478    manutencaos_id_seq    SEQUENCE     {   CREATE SEQUENCE public.manutencaos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.manutencaos_id_seq;
       public          postgres    false    230            m           0    0    manutencaos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.manutencaos_id_seq OWNED BY public.c.id;
          public          postgres    false    229            �            1259    16497    manutencaos    TABLE     p  CREATE TABLE public.manutencaos (
    id integer DEFAULT nextval('public.manutencaos_id_seq'::regclass) NOT NULL,
    titulo character varying(100),
    descricao text,
    data date,
    categoria_id integer,
    colaborador_id integer,
    imagem character varying(50),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.manutencaos;
       public         heap    postgres    false    229            �            1259    16415 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16414    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    217            n           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    216            �            1259    16433    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    16453    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    16452    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    224            o           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    223            �            1259    16486 
   principals    TABLE     �   CREATE TABLE public.principals (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.principals;
       public         heap    postgres    false            �            1259    16485    principals_id_seq    SEQUENCE     z   CREATE SEQUENCE public.principals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.principals_id_seq;
       public          postgres    false    232            p           0    0    principals_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.principals_id_seq OWNED BY public.principals.id;
          public          postgres    false    231            �            1259    16423    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16422    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    219            q           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            �           2604    16475    a id    DEFAULT     g   ALTER TABLE ONLY public.a ALTER COLUMN id SET DEFAULT nextval('public.colaboradors_id_seq'::regclass);
 3   ALTER TABLE public.a ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16468    b id    DEFAULT     e   ALTER TABLE ONLY public.b ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 3   ALTER TABLE public.b ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16482    c id    DEFAULT     f   ALTER TABLE ONLY public.c ALTER COLUMN id SET DEFAULT nextval('public.manutencaos_id_seq'::regclass);
 3   ALTER TABLE public.c ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16444    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16418    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16456    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16489    principals id    DEFAULT     n   ALTER TABLE ONLY public.principals ALTER COLUMN id SET DEFAULT nextval('public.principals_id_seq'::regclass);
 <   ALTER TABLE public.principals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16426    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ]          0    16472    a 
   TABLE DATA           7   COPY public.a (id, created_at, updated_at) FROM stdin;
    public          postgres    false    228   �X       [          0    16465    b 
   TABLE DATA           7   COPY public.b (id, created_at, updated_at) FROM stdin;
    public          postgres    false    226   �X       _          0    16479    c 
   TABLE DATA           7   COPY public.c (id, created_at, updated_at) FROM stdin;
    public          postgres    false    230   �X       P          0    16406 	   categoria 
   TABLE DATA           R   COPY public.categoria (id, descricao, imagem, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �X       O          0    16403    colaboradors 
   TABLE DATA           W   COPY public.colaboradors (id, nome, email, imagem, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �Y       W          0    16441    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    222   qZ       c          0    16497    manutencaos 
   TABLE DATA           �   COPY public.manutencaos (id, titulo, descricao, data, categoria_id, colaborador_id, imagem, created_at, updated_at) FROM stdin;
    public          postgres    false    234   �Z       R          0    16415 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    217   �[       U          0    16433    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    220   d\       Y          0    16453    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    224   �\       a          0    16486 
   principals 
   TABLE DATA           @   COPY public.principals (id, created_at, updated_at) FROM stdin;
    public          postgres    false    232   �\       T          0    16423    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    219   �\       r           0    0    categorias_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categorias_id_seq', 6, true);
          public          postgres    false    225            s           0    0    colaboraders    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.colaboraders', 1, false);
          public          postgres    false    233            t           0    0    colaboradors_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.colaboradors_id_seq', 6, true);
          public          postgres    false    227            u           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    221            v           0    0    manutencaos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.manutencaos_id_seq', 8, true);
          public          postgres    false    229            w           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);
          public          postgres    false    216            x           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    223            y           0    0    principals_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.principals_id_seq', 1, false);
          public          postgres    false    231            z           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    218            �           2606    16505    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    215            �           2606    16470    b categorias_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.b
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.b DROP CONSTRAINT categorias_pkey;
       public            postgres    false    226            �           2606    16477    a colaboradors_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.a
    ADD CONSTRAINT colaboradors_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.a DROP CONSTRAINT colaboradors_pkey;
       public            postgres    false    228            �           2606    16449    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    222            �           2606    16451 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    222            �           2606    16484    c manutencaos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.c
    ADD CONSTRAINT manutencaos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.c DROP CONSTRAINT manutencaos_pkey;
       public            postgres    false    230            �           2606    16420    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    217            �           2606    16439 $   password_resets password_resets_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (email);
 N   ALTER TABLE ONLY public.password_resets DROP CONSTRAINT password_resets_pkey;
       public            postgres    false    220            �           2606    16460 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    224            �           2606    16463 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    224            �           2606    16491    principals principals_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.principals
    ADD CONSTRAINT principals_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.principals DROP CONSTRAINT principals_pkey;
       public            postgres    false    232            �           2606    16432    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    219            �           2606    16430    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            �           1259    16461 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    224    224            �           2606    16506    manutencaos fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.manutencaos
    ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria(id) NOT VALID;
 B   ALTER TABLE ONLY public.manutencaos DROP CONSTRAINT fk_categoria;
       public          postgres    false    3238    215    234            ]      x������ � �      [      x������ � �      _      x������ � �      P   �   x�U�1�0@Ṝ��bt$)hT�Q!,HD���<ċ��[߇���Vޯ��Ay���X��~HTlE�Z9,�{ �����K���<�e�7��T򎃪��WX���V�љ��X�BV2|�Q�b¶�����H�p�T�j�=܄�|Z8A�v#K�p|��֧�rV�|����i�?eG�      O   �   x�3���/>�R!%Q��4/#�3+�8�!=713G/9?�3�*�(����4��=<�ӽʲ�=�,28���11�3-ܼ ��7�W/� �3����8C��2/�W�MM>�(/39�375�Po�ϒJ?�����4�� w3'S����P?��ܼ
_g$Cc���� F�9�      W      x������ � �      c     x�]OKn�0\�S��(�i%�(��Q6;$U�`̧\+G���@�<=i�ifl���V%k�^-(i�Upxn��a.t{a��X ��>q�~\'�G=j��M�)���-��,j��UN;5�3���o���3K�kW�vi���u�*�O�|����>E�=�w3��H)�(	�[v-%Ӆ�*D�d�z
EY#I7I!UM��Q�l*.$�gz ��D�����&��"_�"<|�$�r�s�H��<�i�i�8p�      R   �   x�]���0��kx����.&Mՠs%��w�a�.�,�� �
J��Q��41΁}��:��z� G
�#�Gρ��KҢjp���N����%^�|9�\9l7ė�#�d��ȋ]*�X�U��BU(�����?P��IWe�i�ԉ�^v?��|7�&7O�I�͑�����#٤o�<Ͽ8Vxf      U      x������ � �      Y      x������ � �      a      x������ � �      T   �  x�m�Mo�@��ï��mq@�����`JQK�>D�/�����]4���I���y��p �a�� oҞMbZ�dWuZ�lz,*6,6��o&�1��2k	�,o��=��Vu㪸�3as?a��A��۫��<B{GT�K���AĿ��+_���PA�c���9Q�r�$͟1~d�-oiJ�n�eF��{�����G�������^V������� �
/+c�	K�-������#;ݨ���(Z_�N�ݼ�sJ��W?W�<�Ë�2�x6[�x�[-�
��# Ȣh�"�So�i���"�	������;�|*�-�i�O�X[9�#�>�a��\�1ƈ��E#4J	����qx��ƨ7�cz�N}>Hl��e1>�$w��y6�w�9�\��ke]:�,�"B�Cc��f��K%�X     