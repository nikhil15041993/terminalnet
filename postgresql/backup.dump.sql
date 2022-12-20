PGDMP     3    9                z            d9oimqbn0bomaj #   13.6 (Ubuntu 13.6-1.pgdg20.04+1+b1) #   13.6 (Ubuntu 13.6-1.pgdg22.04+1+b1) 3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    3624178    d9oimqbn0bomaj    DATABASE     c   CREATE DATABASE d9oimqbn0bomaj WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE d9oimqbn0bomaj;
                upxgmkxbhplfwm    false            �           0    0    DATABASE d9oimqbn0bomaj    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d9oimqbn0bomaj FROM PUBLIC;
                   upxgmkxbhplfwm    false    4038            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO upxgmkxbhplfwm;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   upxgmkxbhplfwm    false    5            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO upxgmkxbhplfwm;
                   postgres    false    657            �            1259    3655252 
   blog_posts    TABLE       CREATE TABLE public.blog_posts (
    id integer NOT NULL,
    author_id integer,
    title character varying(250) NOT NULL,
    subtitle character varying(250) NOT NULL,
    date character varying(250) NOT NULL,
    body text NOT NULL,
    img text,
    filetype text NOT NULL
);
    DROP TABLE public.blog_posts;
       public         heap    upxgmkxbhplfwm    false            �            1259    3655250    blog_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_posts_id_seq;
       public          upxgmkxbhplfwm    false    203            �           0    0    blog_posts_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_posts_id_seq OWNED BY public.blog_posts.id;
          public          upxgmkxbhplfwm    false    202            �            1259    3655288    comments    TABLE     ~   CREATE TABLE public.comments (
    id integer NOT NULL,
    post_id integer,
    author_id integer,
    text text NOT NULL
);
    DROP TABLE public.comments;
       public         heap    upxgmkxbhplfwm    false            �            1259    3655286    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          upxgmkxbhplfwm    false    207            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          upxgmkxbhplfwm    false    206            �            1259    3655270    issueblog_posts    TABLE     �   CREATE TABLE public.issueblog_posts (
    id integer NOT NULL,
    author_id integer,
    title character varying(250) NOT NULL,
    date character varying(250) NOT NULL,
    body text NOT NULL,
    img text
);
 #   DROP TABLE public.issueblog_posts;
       public         heap    upxgmkxbhplfwm    false            �            1259    3655268    issueblog_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.issueblog_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.issueblog_posts_id_seq;
       public          upxgmkxbhplfwm    false    205            �           0    0    issueblog_posts_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.issueblog_posts_id_seq OWNED BY public.issueblog_posts.id;
          public          upxgmkxbhplfwm    false    204            �            1259    3655309    issuecomments    TABLE     �   CREATE TABLE public.issuecomments (
    id integer NOT NULL,
    post_id integer,
    author_id integer,
    text text NOT NULL
);
 !   DROP TABLE public.issuecomments;
       public         heap    upxgmkxbhplfwm    false            �            1259    3655307    issuecomments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.issuecomments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.issuecomments_id_seq;
       public          upxgmkxbhplfwm    false    209            �           0    0    issuecomments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.issuecomments_id_seq OWNED BY public.issuecomments.id;
          public          upxgmkxbhplfwm    false    208            �            1259    3655239    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    img text
);
    DROP TABLE public.users;
       public         heap    upxgmkxbhplfwm    false            �            1259    3655237    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          upxgmkxbhplfwm    false    201            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          upxgmkxbhplfwm    false    200                       2604    3655255    blog_posts id    DEFAULT     n   ALTER TABLE ONLY public.blog_posts ALTER COLUMN id SET DEFAULT nextval('public.blog_posts_id_seq'::regclass);
 <   ALTER TABLE public.blog_posts ALTER COLUMN id DROP DEFAULT;
       public          upxgmkxbhplfwm    false    203    202    203                       2604    3655291    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          upxgmkxbhplfwm    false    207    206    207                       2604    3655273    issueblog_posts id    DEFAULT     x   ALTER TABLE ONLY public.issueblog_posts ALTER COLUMN id SET DEFAULT nextval('public.issueblog_posts_id_seq'::regclass);
 A   ALTER TABLE public.issueblog_posts ALTER COLUMN id DROP DEFAULT;
       public          upxgmkxbhplfwm    false    204    205    205                       2604    3655312    issuecomments id    DEFAULT     t   ALTER TABLE ONLY public.issuecomments ALTER COLUMN id SET DEFAULT nextval('public.issuecomments_id_seq'::regclass);
 ?   ALTER TABLE public.issuecomments ALTER COLUMN id DROP DEFAULT;
       public          upxgmkxbhplfwm    false    208    209    209                       2604    3655242    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          upxgmkxbhplfwm    false    200    201    201            �          0    3655252 
   blog_posts 
   TABLE DATA           _   COPY public.blog_posts (id, author_id, title, subtitle, date, body, img, filetype) FROM stdin;
    public          upxgmkxbhplfwm    false    203   h;       �          0    3655288    comments 
   TABLE DATA           @   COPY public.comments (id, post_id, author_id, text) FROM stdin;
    public          upxgmkxbhplfwm    false    207   *�       �          0    3655270    issueblog_posts 
   TABLE DATA           P   COPY public.issueblog_posts (id, author_id, title, date, body, img) FROM stdin;
    public          upxgmkxbhplfwm    false    205   ��       �          0    3655309    issuecomments 
   TABLE DATA           E   COPY public.issuecomments (id, post_id, author_id, text) FROM stdin;
    public          upxgmkxbhplfwm    false    209   q�       �          0    3655239    users 
   TABLE DATA           5   COPY public.users (id, name, email, img) FROM stdin;
    public          upxgmkxbhplfwm    false    201   c�       �           0    0    blog_posts_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_posts_id_seq', 83, true);
          public          upxgmkxbhplfwm    false    202            �           0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 9, true);
          public          upxgmkxbhplfwm    false    206            �           0    0    issueblog_posts_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.issueblog_posts_id_seq', 5, true);
          public          upxgmkxbhplfwm    false    204            �           0    0    issuecomments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.issuecomments_id_seq', 6, true);
          public          upxgmkxbhplfwm    false    208            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 16, true);
          public          upxgmkxbhplfwm    false    200            $           2606    3655260    blog_posts blog_posts_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_posts DROP CONSTRAINT blog_posts_pkey;
       public            upxgmkxbhplfwm    false    203            &           2606    3655262    blog_posts blog_posts_title_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_title_key UNIQUE (title);
 I   ALTER TABLE ONLY public.blog_posts DROP CONSTRAINT blog_posts_title_key;
       public            upxgmkxbhplfwm    false    203            ,           2606    3655296    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            upxgmkxbhplfwm    false    207            (           2606    3655278 $   issueblog_posts issueblog_posts_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.issueblog_posts
    ADD CONSTRAINT issueblog_posts_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.issueblog_posts DROP CONSTRAINT issueblog_posts_pkey;
       public            upxgmkxbhplfwm    false    205            *           2606    3655280 )   issueblog_posts issueblog_posts_title_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.issueblog_posts
    ADD CONSTRAINT issueblog_posts_title_key UNIQUE (title);
 S   ALTER TABLE ONLY public.issueblog_posts DROP CONSTRAINT issueblog_posts_title_key;
       public            upxgmkxbhplfwm    false    205            .           2606    3655317     issuecomments issuecomments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.issuecomments
    ADD CONSTRAINT issuecomments_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.issuecomments DROP CONSTRAINT issuecomments_pkey;
       public            upxgmkxbhplfwm    false    209                        2606    3655249    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            upxgmkxbhplfwm    false    201            "           2606    3655247    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            upxgmkxbhplfwm    false    201            /           2606    3655263 $   blog_posts blog_posts_author_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.blog_posts DROP CONSTRAINT blog_posts_author_id_fkey;
       public          upxgmkxbhplfwm    false    203    201    3874            2           2606    3655302     comments comments_author_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_author_id_fkey;
       public          upxgmkxbhplfwm    false    3874    207    201            1           2606    3655297    comments comments_post_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.blog_posts(id);
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_post_id_fkey;
       public          upxgmkxbhplfwm    false    203    207    3876            0           2606    3655281 .   issueblog_posts issueblog_posts_author_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.issueblog_posts
    ADD CONSTRAINT issueblog_posts_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.users(id);
 X   ALTER TABLE ONLY public.issueblog_posts DROP CONSTRAINT issueblog_posts_author_id_fkey;
       public          upxgmkxbhplfwm    false    201    3874    205            4           2606    3655323 *   issuecomments issuecomments_author_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.issuecomments
    ADD CONSTRAINT issuecomments_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.issuecomments DROP CONSTRAINT issuecomments_author_id_fkey;
       public          upxgmkxbhplfwm    false    3874    209    201            3           2606    3655318 (   issuecomments issuecomments_post_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.issuecomments
    ADD CONSTRAINT issuecomments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.issueblog_posts(id);
 R   ALTER TABLE ONLY public.issuecomments DROP CONSTRAINT issuecomments_post_id_fkey;
       public          upxgmkxbhplfwm    false    205    3880    209            �      x����ƒ(�[����zT6	�ЖN��JR���*Y���.H�EX  `-����!�	�Ll�H� ɒ���3�%�@������������`6�S?��ꕟ��~��e�巩����]���˳��ǭ�^�I����w��g�-×O��=�.^Z��L������Osu�nđ�c7w'n�37ro�����1���z~qu���zG��a�tG-�i�X,� T^��Ȱ�ʨ��]��E�L�8��"��4Rn������������Wa��W��8o�;{��|���З��(|�eT���Q�H�4�n���?��������<S�~�#�?��e��|��P?/�4�
H�U���K���H���7��ld ��G�ã�c��������v�����:����,��Ώ_m^������0���!��S�b?��J������zEo�u����Ϭ�������Y�/��������=��NvY��x��������'�(_�ޮ�����qC�+��8�J�h�@ۤוm�����*�� ��pݾ=�z3	��5�;xK}��4N?yy����5�CS�p�0�n���c�/�&iQ�8a��Y�"��J/t��p���)
yj�����t��~�7p�k|�ϡ�&Tx��*���Ѓ'��s �;2{D�Z 3��YL X�]x�$���a��$��b�ܝ~���C�A���3￼���������Y~�%����}ׁ��Z��}H�\ih�]Gި�"���ߚ��_Y����m�qԴ����W�^��h�%ߖ� ߯s?Q=�⩠^�®�ydA.0��@'��������v����o=��1����"�u;S7��i�o�Om ����w����� ��b��M-
�t��VR�.M�o&t�Ga�z�vb�5������������,OƝ���؄��,'��I�����΁�`]:~��z��K�A���bW��j��`eu�c^����M���e4z�W�zyd�ƛ�W����pw��;�, ���٧<NZ*�* G�
q��dK���\��A&/��� "s�@D�S��2�G@�&��/ȥ4��8�{Ԑ���a�l�촠Io��(�����x�"���;��0���@6��f&i|�1����i:S��=� �ʀ�( U���E�B�ϫ9ydJL;����0��F}�'��zH��$\I(<�!<qhXŴL�ȑ���J�恙yzO�S)��R%@�AԄ�4Ajj��I;��[�N;�P��)��?oO�YXQ���)�݅�;Įj��;�iMeN�kkf�g��)RO� 61�L@RI

;�jE�
�Mᢈ��E'q�vtQ�Gl�Da�L�g�B��-V��������RPFNC�9$n��΃787���J{����4�(s�����@>Z$0�6��Jm6j������浣!��łB�)��;�1��W���\9�g4B{��� !SJ|d��m���Ȝ�)*7�b ZҔ��,b�Fb����+-�-�X���B&G(����`GV ����2B���| B����A
���Q�y/\�T��g�2��������2C4���9@
"���p`�8
%�M�r���+n]�~�x�V �F�+�� ��l�Z��� �����-y���H��'�޹��g�OJ��1�<G=�t�ShQ�,���0O�x���燑��x�\���ߑ��
dJh�-�=(S���Ť9]x�F*�s�=�CH��0Ix/4t���'��p�wNmWE�.�%X,���nw�5.iH�0S�o���L���__C��Y��^����nNA��m�#���u���ނ���A�S�j�AduU{���b�9"���^\?�
��'V�[��=�fyb�u{�qt@!w�<�k8�5.�(	�OB�8ǚ6@�JX�>:�n���}�[���!(b����% b��q�-6=XT!�m��+@�D/�)=�\�pq���X��!�;��0�<�M�.X�۞�]���A8���9����;56K�92/�h�w_�z�XHn3�LR����*e�7_u�gxl�N�-#������>8�uT�s/ ����4Nd��[���[8h�0jD΄�1}4����:8D8������U���6�������R=��c��v�]��ks�jh>�oA�Y�S�������i�Oy9������,'� oj��Fl��̏�8D�	d�D~�A�\���'���:��,�$b7�.o�l	�e�eX>8�1'�|�G��M���0M��ŷA���2fw4��Z��+�D%�qpO���E.^�3a�qe���[}�Ń��>���}H�HxuG����Q�;�uiz~f�n\*X,|/ Z�:��h�B���Ѱ�Rw}�4u{��<��U�Es\�	�	����UYp���_�pk�������w֕^�@'����R�-l��44� pB�l8��Y�"I��ƪhe`��ĥq���!!tW�ԏ�4�������V�����w�d���pjh��j#&5�~�׌([�f���Xйu�Y�$n��OС��'�\L�������Nq�w��4E��x���
+D����oIa����Ǧ���\Fy���X�cSW��E�?{�w����^�JX�]0em�ET�{/��57٨k��o5��v=�4������L�P�#���tEXƷG9u�<o\ȍS��-�)���O'a�y�B����H�L�`!���+�7�U
��`��fZ�P�n�ƣU�10bT#Z�F�M��n�F�_����R�e��r}8�����	�����q�BM�%/r�`��M��x�˗� ���Qq��}M�H�c^�-�3���Y�t "r<�{{2E0�A�В ���P�=e2[�c�~Sp!�6k�����ޚzf�h���z��^ӣ5�-F0���'��6�uXVn`u��a{B')�����W���I�]�zz����ߖ�N�,��U� >�x�4�6� ^�������t �=�.J��y��� V����꓈�Z8���Ř��`���L�g����������u��d��,��m]�����=��u)�oW���#T<��Y�.j*Mc�-��)���&i���"Ɠo� �nb_�����(8��i�R.5�r�kY�n]�^�!��Y�*��2��u�̕������5c�4V�4K+osg_��2�m�3��Y,��^�l� �(nsX�zC�?)s��ͬX�\��-J�)�Q.(5,#�!'b�b��PcuBb	^��U� ������9*��ۛ�7h�!�>t�,B*�ªʣj�r�k9�'�����m�6�t��4����؆!��?�Q��ZG�]�W�v�h��M�e�ܰ5�uQ�t��@@ϿE
������H�@��K�� �w�|ځAv2���0�r��U�(�i���x�L��:�au��$�h�C��8���3�`a��G�����}ː�z�Ib!^ޘ,ȸ;�صnV��d�6�4KjR�>yt�ׇjKdӃd3"LzA4�DU�����m&�՗��o5���GਈЦ lc4ZXX�6��wb�Ǣߖf��v�)nhb+�H�@>}���XۦǟW�"�b����y���mfwp������N��2C�E�E��0���1tF��	���e�-�b����v6��2^�iR�BJ�=�1n[�]B��L0�"�3�z�T�$��_F�Y�a�}ס�F�\s�M+�SI��}]���J�+�+f��Ť#_������7*<��M���Q��qd�;��{��#�0�-�jQ[o�$�-q� kU;Q�E�w�珄�+�VĹ�
 �Cs+�Qn�WH�P��t��b���O,b��!�'�Q0�s���*A�,���fR=Eb��W*�'��8��[ŪS��Y�J����V�5v[�z_
C^�-o���y�T�>r>���_1�4)@� ��/�a���������e��+M5!�;y`#7    �f>��:�Fա,k,�P(e�Sew��
��ݫ�{l��g�7�^��I��ypց�����E�r1��U��w1�=G���P"Y���;�]�R/1�:��-��1�؞���"��W��hJ��Now��9�N�<�oe�Ѵ�����GҎ����$�7��j��z��~�B���kb�V�+mD<���`/�G�s?ҳ��I۹��G%gX@�����ܬNO� ���C��r�m�T)������z3�Co��k����P8��-����+�U��U�av��^_YМ�-1|c���m��e��ZOy|�<4��0�Z�>$��Rop9��_ô�I��<���7�f���]��vP��|:ơ�8.Τk�<�ѭ��2EZ�f;�` m1k��>f�����~5�����a-�%aW�@��0sU\Ӗ��@zc��6�I`����U�el�0�v�U�IX�1b����b(-蕠�l�*v*m�UOtu^XsJᷤ��e�_��{��u�fOd�r�2�����U�������Z��P�-�����2V��\���M3.1\j��A��24ޯB ]h�N,�^�
fS�>�Q&AAS������*���v@��hCf;PǨLf�B4j9���墍����b�o0t��i1�n��Im#ɋ� ѩW'��	zśu���L���� ��a��|ON� �C�S��n����X.e��e):����J�}���,IhdeO��{.���d����Cuux�p�`��l�d�	#߈��������
?�ۥ�n��8oǳ�4�@��ڕ���Su}2�'C�p���0��d��>���c���}�[�A�B#N]���eI��Yst{�YKd^j������g�.�@�^�k>��zx��S�j���t�TRQ�!+��t®䖹�����{�j�R��J���w�)�m�y��E�I�HW��@G�\=�����SQ�B*��y�Q;�f��:�R+Ah��5��E՞obt\���Vǃu�<�3�S˚H/g��N׾uU|�/�j����g�����Q�{5£a�l]G��ƪ�J��+��E�jpy7�&����[3��qSM�:e���B�(-�EC\x��\k���7��;y��G���Nʎ�ل}�+�U���f4�FLl$!Qn;��_![�EL! [3�'s��`8е7V��������U.,<2�B\BCz�V2�^�ޱ��!~hx�I���}��y(�?��m���n�A�4%�7C�y����dgͤC�3�cM8/�?AVr�`@�@UE� ��4���{�b��n��:�Zi�����w���4���Gm/��->aK�Ʒ	(������=@h\}>�
���ͻ��ZWբ�+Ƚ-?������mZ7���Vqä������VP�\�*+uWFB�� �W�ss���f}���R3�Uݦ�~��J-�3��b�Q��A�A��X�����"'�,� �jk�� j���/WY�Bk�����ˢ�D�(�:?<;Q�����]����>9V�W�X��1��������{��T����*��kƦJf��!	@>�"}D��U�0�Ň���F�w�?0����}�[|��a�,)�O����Gݢ���Lz��b��޳ct�y_�y3E�����"x�p�r��E��U� �$�_|���i�֓ ����M��I;X�I��7ig ���=�]���@~��e��������b��,���v{�O�-t�?�>t�A�xoo7y��/����$_�����g�yS�������T��}�2��S)KH�i����3����	:/Rw
��/@`�~5�b�Huq��e(�]6��R�6�mUH�P��U�YK����h �v��S?y�����
�c��*S���w~��i����]v
���"��Q�����b�d>�;PRJ���*l����Z���QZ[l)˰:��w]���v�Y
Rˤ��;��Ȅ�;g<^�A,$M=-���{.��@i

Ȗ! ��Wa��j�ۯn�o��M��_��&3
�����M�U�:;z\�g��NrX���4Vb}w�>
Z*�2`��p��L��j�!���F� �$Y��f��/�H5b�<�ኚY�hϓ���%mms�Lq�Wj,A��gR�!��Ȼ���A��)���<�y��O����5�AJױ�3ڱ�-P�p�·�?�:����B�X3��#؟T���(�)�;Y\ԕ�ۮ�Q�p��]����ajS&7�w��@�3R��� v�����6{v��G_2j{&��.lX�-����4��'�i����rm�����֧��*�������;ݏ�^�b)���o�v��	��"��.H㈢<�,��S�f{����m�gI�S@`_�.B�p���G��k�E� ��X�;UP�I�Oh�ơMc���:9�˔���D�	0�*zP�TqZ�n�=ö3������	�ͮ��w��{5�!��e=�sbz;�1��x�(�G��m���$�:��iJ<��?��ތϽ�7ӛ��_��7��p�vo�d�;���k�ͻ�xt�o�_��:=���i���ߎ���������䞱�P�h�tqx>��Gl�C!��{���e�@Q� F�K��I��X������7�Z��w��ȳV�)9&0���/G+�z-ü��=��{dxN��Fs6�SU��0\-��<u�zdL�8������+$-��8+�6bM�0�����i��/�&]E�Ѳ����M��ąf6�c�j%����%2�S�I~�x/1���F�9���3ӈ	7X���#F �,nv��[�n�LE�i�fً/n
����5��u2.���Gq�Gr����.�-� �+c��c�&���ܦ ���ֶ�6ih�M�8�P��v� ��(P�Zw��o�i�,K�">"j�����j#�uiR��״�T��F/�(4��g�p+�&���
��{g��ѩ�&x�V��{�eLo¢�-���͇�
��k	�ﲁ���[g��z���B��e4X��^(���0r���Ez��:��'��E�K#d���H�[��Vtd�uzA*�s����^��\+�U��{��T�]�ٜ���Hv$�%[�a�J�/�wDī�Ub0_vCչN�����W%��kv��N��c��4�����bvP�:�\����%^u�+ݕ��]h�IC�U+���-S:�+a����mF;�edm��Vm���AՐ�ϡOA�L�?�_�[�u�㦔����X�e)���F��R �i�R1g\�!�=H��c�-h�"���4�眒�]4 6"2���f=���e�����;	m�w�U(�����'#߻����^�j�'K�%[ {��ݍ�W���R}�()'�,n��D�"��-���b$��j����]pn��Fo�D٘�ZC�zk\���Y� ���~ђ� z����jm��_�l?-�¾��:h�!{����  F�h#$�Hdp-!����֢ť������h�9i���lYl���;:��1�3C��������))�z��b[������&�ّ�)���ő��ӌ9����µx���C�����
��E/ g�'��1a7CBG�Y�	��\�V,���[*3A��V_�1V�*Í0���l������U����:(�ؕ�,=����iE�/+���Ѣ�����Z!��򨶚۝��Z	�PU�����ʸN�^�6 ���Q4�xݦ��E�i���xNc�ÏA�ĩ�b�Vc"a�������7��\{�⢍�����'�ڂ���&6��'mq�,�����~���0d�(���n�I��?ς�E�����������E�z_����Aq_VgNU�ɠphra����x����62���h�-�p+,t�mrd�}Ȥ����^�1�6<��0��a��Zb�Må�ㄉiޕY49;�ƃ��ƀcuD;<P��'�a�e�= ҡ��a����"��u�0}��,;Oh~�	<�i�)���WW�LfF�����v��Al�`���7`5�/���͂i��&�v�wt����
�E{�.�    ���wb35�9 ��[�s��	|��߃�F��)r,��R�O�'�	�A��/U��P�sT.����v�F����gqM�B6�
c��Y��(�.y��s �8�y�R�y�2�mk��ኇ���@-/��w�p���1A��$f����ɡd�ϋ�#��X ��ݑ;����!S���q� 6���h��Ѐ#���w��;:����+5��>J`�ao@e������1L�#S4�!����Nz�*ut-]���&���6Z�! @S�Ã�V7HM� �g�g�Rf��G��Q��A�3K�}j+{P�>�"iK�-Ѥ��J�{	"���V�B��a�5KyAV�VnMK�~e��V8��L�Mo;cjC�|�,y�����$���S/������{�M�住�+=����������^�~Ao{�?����+�|�Y#X��f�#��1RO��Tu�VL5�}Hq/x����v3�naRsd'���y�;��*�)H6M�$�*7�Zt%�J�˚l� �����ѕ��p�/����U�v�$�=Uz{qvb]�w{�&�Q[�m�_���=5���C���m�I�}ɷ3q5"^� _:8ʹ��o��l^S@@�� *�ޡƋAL'�?Ц��ai�PnT�������S�yP���`H�/����S��
��-��2�(gR�**��y�<��J��y릞Oz�kms$��Rs��L�A��:$�8��8���9�4+7A?=7w���2����9i���q͜C��i�S�E��8��Y�)�J"WO��T�悬���s��N�D���I�>!U5kסZ��'ji�N0���Qu����
F�ի�{J�lpW$<��˘Y����+eަ	�kk�����+- �ݢbM����^��ҿ�T�%U��`�K�7�E1��$�K�h�C!��e���kը$������K���1�">餭w�&�ڡ괎7|�Ǘ�j�l:��m]y&��J�xE�77�xP����᪈4���Ny'zGn�f}J���`f"R��{�s@��:ϟX��L}g,����\{�'�\�R�yl��cŐ��1	`X̎����ʜ6:>i\m/6�����O<4��ԂѧV�I��	�l�6��To?��MQ���PJz_�[����cQB__�El"(���k"$wu]�MH�"���uFw���i����ĝs�M�Ie���٥�/�;5��l����qQe��:�ΚG+0-���_�$Q�W0&ʄb�
;Sh�'!:��0e-zT*���i���GqYVKUQ���dE��x�ԌRU�G0�z��J %�����8���4y�H!V�}�d�)��� �96��,k�X����P�ɵ>ѯ��7}5�T�������x8����_6�6� �	����~������"��$K	K?"S���-�_tȠv}����8>y�&d  �5�F� @�M�2�����#Ӧ��M�X�(}�.�b�u���X�V�S�'�A״b�U\Xf7�������&�� V�n���
{�Z�H���u���
qM/>!X�h+#m�+㋍#��S`{�,xdN�U�<6%�QYN#ע���Y][:���ۓw-����4Y�j��X��U��l;s�{��Lx/�M� P�󓺖iɖ��	����[Í,�	��u,���gv?78,ܦ�BBsd�e�
�њ�}�K��[� ��fT�m���+h�0�b~
�n.�����1�I�K��S��t�h/��z����]�`�����3��(BK7E��R=.�V�h��V#�,e���S�� 6�(�5�i���yU�H�] h�������'�Y'�=t�fX�[W�Q�%��'1�m�mc��4�o����B��ݜ[1��=��E1
O<_NAзP--PM��&3%���MAJ^3�.Q�W~,[�n�W(�s�{]�&�u�4_A��hN���v֊�69@}3Z@��I`"}�c�x�X�q��Ǘ��*�<���>m�x�!]&�ŗ��d���f)�(���4���P�j��0�Կ�[jջ�뛓�zIz^$ڡ�iC��59�v�Z	�R��m˴�5:� ��n�6Xb{Y)�0]W>����?���i��P���O␤H��mh4�4J�s*��L�O��[^g���}Y̞���j^���9����G��y<�#�j0��r眺�1Å���K&]�2l�� -Q���*c�#�� �րt|:Qp,��ê�Gg�z#k�c0�^H)�'cڞzW�UgJ̰�����2�G1�A�ܿ�	WF�xYz5=�f}�Q��ј�V��Y�nBw�d۶��q�-<Ed���'?/�G�K�-W[�4��-��Æ�;H�s�hnи�G��p��5p�=.=��9Y�/l͞!#�Vn\��Ѩ>���t��9��Ѕ�.�8y|~����r�H�&s�Òa�[���jΕ��[��A!���櫰k�(U��t�g~�o� Ͷ�?2G_G�JQ�<�PH5>@p8J	Q�JQ�i����QeC�,�G�#]ix������W(i�w>y�$��1J�$�X2�P�թ�-�I[Q��b������W@��K4�����h���##B\��Φ�m�u�҅�M���t�a�|�F����Y��#���78eZ�c�W�F^ қ��ΊW���F�L��2-�^��zF-%��5�*�v��d�g+;�xE��Z�F�^q�}>���7̿�wJ��
��>~��γ���E5x��������o�:�7x7\֠^�9�z3����+��BP^u�:�����������V�~SP	~���+:�ӈ�N�$�"X���E��hh���&x@0cA_j�k�L�'��va���0�]�',␮�֜���-w%A�E;�����n�Ǚ,Pu��� �?�+�UD�\1� ]�ѲU$��� >�9��Tk]9;�f�'z@�ր�F�*N�`餔���ӕ	�������+��TB�7�X(A��f�Ң�:_����&i�A��~�}Ù$�8V�hi�g����p�6a�Z�.��ue!�`G?&����"��*��W����e���&�pS�ܱ���G�\����A�����%囑>��mt�8N^≳B��	����R"�;��]pt����P~���jtmtٔp��:_5���d��Z �c��L	����IՏ�4�g��HWL,-u�,r�w��n�%�
��$t_��	۵�!k���,7(":���[���+�(Uy-�Z8 �����Hp�[��ˌ�ׁ�m�=E|�L�����'<���s9z�JO�2}̘�Lj9%w6˪k6���R'i7�m�RQ���'Ū��c�m̴�y�S<�m���"�(d-V;+ts�����L6E��Y�!���\�n�P��q(Ni�j�cV�S��1!�ڧ�ݺ�+}�[Vm�v1�;���u(��%�d�o(Y��2���YjI�˚�d����z��p�4j�G��X<ަI-�y~��#��~�Yo���̯�~+9
Ա��Ah�ɦ�
�3҉�fi����L ��� �zRݝ�/��¨� 8�vl�Ԃ�s�zɃ@��������r$���i@��WߕD4�	9����_�X�҄ưgm���q���>dJ�a�W�g��4�='��z��%���&Gb\`lȰQJ��Rk��mn',���N91G�M��Ѱ�9O�e���^���n�Ͱ}��$�?�/����'E�j ���%#~Ǉ*�n�IA�A���1�a�%���8�+/COzm�_��L����ia댽7�NkG�"��bD�-l6�n,IR&���rW���w\p;�� �[�/��~[ǚ9�T��@&������x�7���7G
7rADqO@���I��c�����6��pV��k���S����W Y�wf����m�{�6��	��~�����ȓŜEU��잢�)�)�a$��+q�A\�Y��m�ۯ��M���74�V������a����ϛ���vk$E�N��:-�ʉj��vPr�l4da6GVS 8�Vp(��,�kDmõQ�#ʶ*����}�2N����    =����WJ�u�>�l��s�j��L�ڸ��s��j�����7F���E��F��7l�E�&Ԟ̓�:��Hn��H�$�*z���p "�' �X������c��RA#���Q���?�:^}yx��]�^�b��	q��::��A2�j�FGov{����Z��00;�O�n�N��5T��q��;��[���������=.{t|��z!FÞ�Y�/"ć�t��dpT_��^wp�q4���7/�ջG�������P�i��Z.����pt[�d48h������������!����u{s�Aq�,-��Cщ�*bi����|u!��6����J�"}��H� �cC�׷
�E�|��G��W����[�@�����^����a���Sٛ
ݞ���-M�:�W����z^�Q��U�6NϞ�k�w\�Κc��w�}��1*�͂_�������D�)fS���n��g�i��n*v���w�|��1�S���0N��ȟ�?��=&��h�۵�����~�g�~���J��i��&
��InS�F.�Y`-�4Y63l<�)�t�f�hN���D���&��v�J�ذ�Q�@j��ƚ���V��D�m�Pןc�צ��͕���3V}�y�2j�|�_�ϖ$��]�$^.ZM`:�5�$Ϣ��1�����/���P>��Q���{������`�?z��E�����f;�ۍh����)҇��{���v�z�R}��gXyP�<j�6#�7�Z{�*� wF�LM�Y�����ٙ:>�@k�t�$<�a�������]gWE�N�zo�֋�K���2H�CZ�u�0o�ޭo~�Jc׻�ð�^�����}���h�ӯmK[p״�H	4�oR7���jnP?Q�m �Js�`��H�V[��Dj�v���0bd�իm���?����7��]������~|��F`��6�:�����i���m��{�ї�f\�s;;����i�b4i9���K���|��W��Ӧw��l���Ԩ-�R���|©n������k��hwC�6LH��xq`T��HU9��1yEp�Ex2Nέ ����B���#U�qU�xh���4k�vG t��;����]�7���&���3�:�Y<u]��1��:AYF ��;-�.��[pw����2x����]��`���� �B��H�_�L��������q�u#�Q���;c�09����dl�;]���/'E���-j[���1l��'쏡���!}}xs(cl��{��.t��f�LqWL����7I9�g��<,E�c3�����2^�c�$�[��o� �u!�����T��u�%8�S=�|���W�U�M��U]�;�/�9��KǊ�o�x�穩���^�?uvhB2%c�Jr���Z�O@��S\�DwW����+�`F�ѭ(��.Y��"g����<Б�>�g���m�P�؜F��}�bK�`w��w�\��0�s�R{�{{���^l�}���^&8'���j�����T^S	:��������O�;㢰�a�`��yڹ�j�
Z,d��U�\����	�KrVP�In��f8��?���F�����`�m��W��_�^�����^��4���"|�Ɨ?'b�����Q�R�hR�R=�ꎺ��}#�V�ͳ�N^�
bڵI��:Cu��?�z�mo�݃߰�=g�F���Vڀ�t�>�(�3k����Q68o���[�.����e���$�<�-1��2D��R��˓ar�XG�"���-�u�쮹��͑.���
�|?1�gd�e�L��PU��]G��i�a��A�nV�UB=O����4���=��i: ���� 7�ݔ�q�� 4�#\��k�C�pJ��,�+�_]a�����$�a�n�dlBv9Us[ۖ�d�a�5�⼚l�[ĩٶ���{�����|K��R�u�Th�c
?RN�P�<[��ehdc�l�1hܐ��Q���}b?cOL
�uB]�I���C�3ku�;�aGZm��m^��V��2\�����s��[����0,���C����"�=%8 [`2j��LW��b熬ƾ�V^'mtn%k`�Ӟ\�b���7B�f���\��� ��B�ڀ�֒o9�ʒ�{���]�m��'ӑ�v�&�Բ�YQ�j��l�+(V�.�2ݷ�5�S8R��WPx��q]h�-�A#-�"�}��-9E���]�պ�m��m�E6-��q�d�;�VL��y���Z(l"���]pK
��b�����"�#mvT��Lj�����o �(��հ=*n�K�5S({G6��x��=]az`���R�9aX�m\���l�r��@Bø��w�@���dggm��?��<m�U�3�9�~� ;%\���`lM��e.0�:���'��`�2y�/�t
�n��-����8�
F�"�19�{��-n��ŒSJ!"n�v�}s�*�3a�j�^�\%�G��{V�d�h�0��6�c�	�|F�G`:T��̧PR΂�U_��[�TZj�����Gb�Β�*��dXK���#���rU ��3�����ۥ��M���J���Nٛ�s�aMZo�P���r�+��i
/���8���y��ɏ�]��xvx��������x}���
�����?���8���4�;^�N���j8@�"L�r���)Ӳ$����o��� ��pT�r���!��,'��Ӓ���Br�!#�����#a%���b�����tZ�g�]K��+�R���^\��k�./s�i9���^M_�l'��M����K�.��u,�TZ�Qo�Z�ިv�J�-k@��E���2Ky�d�ƕt�B(mω��tt�'���W�F��~påߴ���i<F�yUOӰ�纁�m�`�m�b�n\��^����aH�S5���&ᬋ]ѳ y��S8�&y����
����d4�6E�&��z��'�}��BBu%�����i¤Z&�֠[#�1�(��}�!�&x��ٱY��j�X�\mUo���v�f������"5�¯�����wt��g����;����G�l�㝈�^<�,k��D3_�����'��G��D����p�й�� �b�ռ�%/��K����#��P\�r��KP= YĻ�����Y�}�ypOP�W���%E�-C�z&�2��� ��V���%Z�E \#/��~O��|ht ���*z$������:�r�y���ƒaZT A������� W��W��|�	�I,�:�	�9�(�*q���d�-ߺ��!ke�Jph(l[�e���h�1��k�y��d�8�m��"�5���qtIZ���BP�k^e�R��:#4c���������ÕP����+�z}�)d�b��I;`5��J0x6z�^�tYO�r�w΁�p���=k|cEB�2�I�J:+kaKǎ���+%S��N�"�F����S.�m� �]�?��h��x0~T��gJ�s1��Hi:�\S�ɉ�4��t	�C�.,�r�>5N��LB��x;�\:p��Kqv�g����71{�ǿ�[��l#I6��4�m�v���Y�-��
��$E�P����ѢH^dX��w�uÑv�>���Xԏ�^F6� �O���n2>�]�S�����G�;���So���4�y�^]]^ߨ���nN�:�y?�Ѐ����`:��]����l�U~��)~�;����[D']F�p�b򅊃�����n���B�4F
����򇟗�d�h��¨WK�P�y��W;4�ʳmj�r]DnQ&�2���J��Ogp0)��VB'����~>��A����;�]g��N�G#G��2�ƓD�bY�����l7�}IS7�o:B+�9�������~�����9m�#Vt��
�����vu6HM;qjI�E����d��s�AI��1R�0��=
W��D�M��LE[2�8j1�O�d�/��H��^�xol{�0�߻���W�G߷�_��]|8�������R�F�]�3�Ŵ%J�����/>�+�Ec���[2�!�;a'x�R    ���?�eo��� �4I=;� L�hH>�0v�x�I,�>�3Z-� (3 M~����{�^����5�+&����������U��얡�-�D���,��gȟ��M���!�r��U���������`��ä��[?�U<X7X`O�u8��cw�O���؛4�@�����NHU��@ce%I���8��Dk�u�?�����qWf^�7����;�����;vv�厵-£Bm����ծ�a]ǽ�d4>؝�ǻ=6���+=/��|���bl8x�%������w�co��ǃ���l���i1\���B[3u�1���X ����]x�	)s+����������{#�BϿ[�w���c,�����p�$���m��
���Od�1��e�-��b���8�^w<�� ���l0�﫫�ã���ޝl������o��|D
f���5<�*7D�jW��{7c�dNY�(z�))��~pW��YR��D/ǹ4Ģ=`�X�w�T�h�(8P܂�S�~��X���!�E���'��\�8�e��K�S�v�p�_�ȧ�����S3p.����Kuvz���Z���"���M���|�y�3��5�D)�&V?��JU�X�R���5-��3.�A���v���y �~�Mp�CHcd�����_*nre�׏��I���6*"jj��u�т��&��x����X�D�3L@1F2��xxly�� ���c�Ǒ�ᬌ���X���q��O8�v�Gǌ��XtX.�li����#���N�n	��0��.}�|��i���ޡ����i�.K�����m���9�.
#gp�3��� �0X"�KV�F��B_G�T���(��.XNHMa��1��4U����+�3��9�
�Eu�9�AS��z�˓��7�>^\�\��4@:_�B�Pe=A��Zi�@��L�)��1Nr���G������Ժp��?��Q��8�`��xp69�SBgҎ0�6��:pX�ݶ5<>������������������I|����#oAP/�ę�?*��a�>x�ĥ������$��$GT��^���bV#bn�����a�&�/1�?�(o�3���G��}�9p�
����6�C8�:�0��7tF���b���(�)W{ni�l�n�5�Cb���T9_ӹ���n��Scّۥ����/Eb#�_�bQ����oR8DF�;���G�њl�w�g9/,9�wXl���-x�*
v�� c�tM�9�$���5���o�E����5�}�?�ϯx�Y��. ��tP)��4]$3��=���(��/��AO-������G�O�?���;xR�a�>�6�RT����=�����u����n�ە�e'(5������>��Ԯ9��T�H �x�@�zF݃�0́�Qǽ��,܇�Of/�I!�ߡ����� F���N�?�1df��$��3�{?��6��Ų*�����ǫ�}r}S9��[��d�j{Z�0�[;���}֞�����s�O��ս�4\]�k��_���[b��]���z���=.�����~�d�hK��͈�ϡ�ɱCl��"��*���i^����uF�N�?p����z��^�祟;-5���`���]����$s�@ Ǔ5���pG���3�ǥ�����n��8ÞF��s����zN4�&�_�ư댺�T���W���P�1�6��� zu���D�[�u��.W��F���Y l����� l%C9P%���g0��B�h}g�Oi��w��`���G���w���>�c��Nayv��u���j�9����������\�#zx��� HG�|/o��F�V ���WT�$�%~��S�a�n"�.�C�"�VMåg�:�*��S�ī-$��_����L7ؐ�KW����a��(:�	�À��La@�tڕ�m7h13�'#���e��`���?�ܛ~��.��0�(��l��Ƀ?]j�	L`��������[I���~������ܝ�ZXY0O�p(����	����H�)�40���Cg�о���$���2tS34G�zT�	�t��d�cJ9�h��Ƌ=��)b�V3���9s�DR�b�ҏ��O�$�]���s�����:�8Sg�x7��Ύ�NM"C�FR��H׃�+Q6�����crli���Q@M~�"K3%�L��z8N����֓������IpG��h�����8C���L}��O�K{�������?��)�h�}FC�깒���m�%K�rj;5M1�0�s�hD<�O�w[ɑ�4X��*&o�7@o���@9�5��5�� ��z]usj�O��&<1"X�ɣC�S)�sQ���>,��B�u�.6�� �٭��4�YI&M�f5|��j�����!!;�¿N��oo���[��PF,��l����b2`#F�l_������B�4�-l���ΖW\��׆Z��_�0�'�.���ぞF�o���T�bLp���L��E%�d�B�j��q�Ey�����S
��5� L�?���[E�5(ŦV�L��l�iC[��Ƶ���K�����J�B�Ř%��ƛ��ƍ<�"�S�i�L�M�XD �֌�&hN�����.�0�ڔ4֭V�wb:E��<�Ute�@�Q[��P=G��ovP*�r��N���Ñ��jsz���k�Y��l�t��ps�sܢy@m���+�g���߫�D�Nད��f��߱�Ã]Y ���]�3�"K���wq\��J���õ���!�J��9h�(��)tr���s}$eȂL��<��@D&oG��4I���wn�~���.�og���P?q�i���86�d����׻T���7�܊�+oA���- �Dk?�u_����������G��hEXr!9s���ZpV���U�rΩrӋ/�<���M$�B̗��seH��6���e@�dN?A �J���~^�����j[��M�+Ϗ��@���Gr��������ش�d���>�Oh׀T���Ȼeǜ�����T�L֨O�&�����Iܻ���L-��v�q�ҭ%%�5�4�sz��W��5�����$���n�yawyT���'�=s?�����$t�����s���cG��S|� ���	�bn�o1�rS	�(`tD�<�U���O��޵��2��(/q!�N�o��o�Kp�{%��6z�|0�5	+!���hxӸi-5+�x�P�cA'��:!����"�`pr;������"���4���w뉭��m�������*���k�f����Z��c�S�_̊~��%CҌ{ɧۧR�@�{�>h��ĺ�_�#}D��ĺ�� ��'[O�V1G���h���LK+������#�J�����FE��V�yir��� �X�8������}^<=Z����n� J������҈����.�)�?�4b�Y2�^�V"�f%�r-���
x�� a�w!�j�������j�aU�sǴ`5���(�决6@��i�y���s7_f:	�>��f^\yN�J#*7�n���M+���#)~t����1���%l)�x�a��B��6�!��i��b?���7��x�l�鬌�' �/I�?�1���Ea�r]���lf��1NB�K\�>@�1��]�V�g�� 
��1:�j�����ޭi�:c�S�2wce�	f��"B���T�5�Yv��ˆ�i��<� .W�Y�s�'R	�v���
��d����LD��/�������׿��p8e	`�@_D��0�5
����{�;��2�X���B3x�F�@��_�YFU��WD��ԙH��*VH����VJPQ0��f�\�ܸ@��.ϫ�+��UBk
i{ۖ�� �8�\�aht�8+�X��-��s�l�C�qg^ �	惣,G�q�w�,��-��r7����<����A���_�NOœ��2� ��U�GEvo���;q���-b��Q�$zXmS͌���	4���Ν>>q@�{z�6��b�0b����F1�|�    �3��B\��"�b�{�-(F�
tkT� �$�Z���A��(�e��O��u:��`L,tQ.š��nq���"�D5�N)�Sy���;�<~�8�����e��˵�K
���ѡ3M%T)� ҵ0O���s�?�G�����v�U�Q�s`���M��@v�%Y��g���@\|���O�8���2%)�7j�4V�|G;#毓�Z����9�5��0d�������|�L�����.���-P��9���BTiF�m�׉pdIA�"�|�ifJ#w:���u���M�FuEl�nMՌ'�o@�M��(K�����0v��V���~}��pg���^�U��wƨ��Q��JO�./�n�Of��+�[�!�]zZ	[,�,I�QI�P�{��SS+_��X���hjfLq1�Sj��Y�fm��ڤ���z��I��&ß��zb\�.������&�
{ ��*��Y����g�g���@�<tLQ�"��g���!�רgՑ���6N���q��=������x!1qy�S��=yD��x���;����GߥR����h��R�fq�$$�b��<V� �Cį8������籎�5���Qk=��;�F��yT\�U�s�4��gj�c���X
��Q�ȯP��ZX���}!�,�\DiFUc���b�C�\I�^Y: ��(������-��1������S(��׏�jŧ8�3 i�1��T���6;3Q��V�R�|��"�	G^RL+1se88n<C��1��V�g>^��f
��o�$Da@����P��T�>t�nQ�~ryo>%����mc<�x���$\{L�,�Rx�-:�Y�~����V7K ����'c��I��%}�η�Z��䧇�W���F���-�7=L�Y�E�8�|�F�[��x�u9&�N�0�zլ�͌C��ѯ��ER�D�ˑ�\�7�Ax(w��&S���8��UM�D,�F�X������zzh�=t&Ka	��)2�k�}hZ�A�(�r@�I5�Klf,R�&��\(1���d�o\�ȳ'���� s9�4T��sX�jO���
������"qc����x'���B��YI�Qߞ	����g\��&�'��Z�*��?/Q�Zv�DD�\镞)J�]��h�N`]���`h�� ��v� ���x;&z�x�_;A�ʯ�7��$\���#8��$4ԉF�ډrgJ�A�
�ֱ�AK�1�"��1֦���av,i�`����CM�ݣᶼ��$b���d��g�J�A+ך�}�y�J�5���Nq'2K'�> �x��"ǡl�ɸ�v3��Q�̑�U��i�l���������C�C`�0�K`����Ʈ�@�>�!���~]e�T7�+�PQ�(��Kd~�I���$كџ.��<���x�á��gMDyEwҖq�K�ѓ�t"�~{s�0e5	�[��v��'�S@ߓ���񆱲\���#��fK��܊$RJur����r9Y�x1�'�gr����9Z��Jͼ��~�;$w�771���ԝ��J�杉N����O�[V-On>��hy�ؽ�����8+�>R]�)���2��$k� Dϫ��k��Kњ��XV��y%��e�"�y�X��ٵ�ki@���(��A�-H5+���>J͢�	Y��aVn��zv�',J´Ks�w��������$�G�QK@<�4��`(ۋ��5�K�;~IY=J��.�O�p�����Dǵ��S�bʵҪ��,��������#hH��j�R$�}.f~���F����d��<ƃ�-W~ﻟʾgtT������y!mŶ�(!
� �,.���ȹf]�Olֻ`ьh�EU�u:=���ONIu+ �����pj+дxjC�"ʆ�@_F$Ѭ�������ꔀIG�����7�L|뢫\Z^�?�s����C{;���tMg��^>9���CE����?M�����E�h�d�l&�/I�$Ixi�m"ǴWXEӥl��	2Eo�pr-�mOۉ����W�6D��)�	ł���ۏ���W0�cə5��$ ��K0�w��L��d����t��67���V�u)����u��=�b<�_�'&�����K
�5��$�\_�cYW�I�)]����0�bh�8�F��-#�:Q�B�!.�2�Q ���`�)�B����I�L\ �3�	ʩ�5�뻘��b��ºeqh	l\֎����iI^M��:����8��`�@J!���ǆc���th�i�j��鬗-M�ߔ"��.]����B��mP
�����vP��ު7 $�=tמ.<�n�G�Ny�L$c�������䬅�k���s�w!S�r6��*��9h�=rx~��_7���G�y�e��U=Vp4U�&���B�S��x�fs�dZ$p$��x��z標j���>R��n_Ի�뛓���s�G2�5\�P��ky�'e��9�1�C��q�n/�1��p��Ǜ���E;]�9E�f��N������i�����^۩��p%r��$�6��R]��V��1HP�L9J+qxǻ��`��Dǫ&�'o�����.F�r�}4�1z��E5�߰�?
} ���\�`�ȇ�R���� ^�6�g���ƣ��'07v����߽Y��
pH�w��ğ�^C��x�����x����n@`3�?��9Е�[���}�סZZX�6�{d`�
nBGtz"�en4���}^��7�C��*����3�q�+��]1�6��Z!�.�J��ǆ�e��'L�??�7��E��<]Ns�jK�<Н���|�;6zaSj�Y�+��5NF�5�vWc��j/{�%	��6�S7�α'���Z�k �����x���U��n;3��^��h�î}�9j�xL	#��]4�?���׬Jl�S�zX�yaБ�^��:�:�w���3���?��U�ms�_�k]-gؚK�"z$N�Z<�[l�i��M3)�I�n�f�[]n��
_,��2ՙy[�h`8֎��v�yY�P�9 j]C�pg�W�<���2Y�����J�T������>0(|�A㷾�1��f.C�}Gq.rpG��7mڼd�"L��w:��k��M�T ��Ca^�0��zD��km��_,2c�G�L������h�
c�l=��b��:�	x���NB|p��I�nL%�_�
J��G�e�����f����B��P�w�[j���  �ِ�l��F�a�ɧ�iI;��c�=�_-s�ݩ ~<	&�%�1�� E0+�3�-�"��N�ig�$<dԠLb�e����2y���ܻ�u�ޡC\�@��Y��I�f�]��ˊ�+������X0�Ҫ������&OA;�j�����@}胇6M}��G윏�tq��'!T��vO�ǚ@7�aR�cN��5�$A$k&>�e�1P��q
�<!�/�z-��y�
�j��� ���<��+�
��<�]�2�̜/E�pZ�m���e��E�P:�|Vue�ܨ�M׭����q��L���$͑�Q&,R#
���)�?4�<rm�e���� A�\��e���e{���ڃ�Y�,�N��I�R��C�����#��p�-��g����LT�X�ڮ}����FC���j�s �n���Tq��|�����%BY�\.�@9Hn��w��V�n]�ɒ8�Wx[S�m�	�c�iy��#�N�8˄.���"�iR��R��jA�Z7&����*�9�q�ȉ̓�DB�h^y��WUhdn����b�WH�<_�[����(KJ�B����(�=�a*_�x������͋p�Q��LÑx���A���	U	���\e�k��jc�K�P�Ju$�!�xRHw���bx�{`��)�1�Y6Mꆚ�kV�hb혥By�Y����q{-
�����H]O� ��MV���YR�Y\O�im#���4�r�^��JD�Y�I��4�#�]�c��F�oc�=�hۘf��un�,�����-P2Z�0�1K��R~)�gdRTK��܄���QJ    ��Q�)��5���!�u3�W��]L��������+�~Hĩv��S�v�����nA�8� ���,�� �
�Ԝ,n�}g����a�֏0^����Wk���@D��i�F�m��{��f���\M�hB Wf�7J�&yg�I�:̛�LQ��5
����N;_�Y�<z=�̠J4]�,T9{k@�'9LʫAs���^x�hqg4h���MX�I,��	%Mi��ω"�:.���������-F���`�;N��-'��f<x[Dx����p�5)�v(85Gm�N�s's�B
��
�8�UPh���d�3zΧ�u�<�9����p��P�}���q����[�b�I�-�W�Ⱦ�j���qu�-�k����,-z�r;z�"�l�7V�U�ƍx*&9��Zk�H�5��ӢAv�wY��~�n�nf�^y�;ԦQ7���x�x���
���w�C�e��ޙK��S���2;�3�hg��Y6�C����
Ӑ�d+Kh�&a#��Fd���-�<v�%2V7̀	޷�-=��۴������a;�'� �Vt�O��^�q��vw���w�g���$�|mt�b��������c>�_�i������4�� �8��s\R T����n�x�_���}�F�KtXx>�s��A�0Jy}�-0�$�LcD�a�:��3����+��]�zJJ�K�$�5���8> �k�`9�"�7��>e��F%�tc�Z�L��i�HM��?�ض�P7�K/��ܽN��{���jč6��F�wcZ{�0x@�O4IE=�l-k��t�Q�|��Z�@��H˘�7��h�.�,�V6���/��0!-�綃,A�#��ci�ۃ�,v	x��}��c�9d�f��]!A��V,�_����!0�"}ɔff	i<h�	��Z��e��	��7�/�r_��[<j���� �z~��%r�G�Obf[#�p޺���<�g�c�/e����'~�i�hn\��$Q�%ʟ�89D�K��]��oasi0U���r;�Z׺1�Q�G��z��'�7'W���H$��ߋ��o9a�MR�df55FI�SB7���^�K���<��w�$�`�\����2cU�vE��y2%iL ��� ݂��ǻ/���J��&zF�m�x�w�G�桮�:JF�T�#���U�6��������D��>�RtI��y����Ml�&rz�r����X������Ƿ�6�噼I���̃��X�y�} 
�����\�ߨ�w�������Nޜ\��s��󵺹�n.No�*n������|�˓���P�Ī&���-�ZP��m�ե@���#[��%�I��P�)��E���6��@iKXP���=��bOD,����v����Ɠ;��ՎQ��y����1<�6�;h�A@�����'�������A�j�����#����th%��RhJ��.O��j��	�i$ގ��n0��X����l��q�zþ38ӥ�?�C��`��ã7�����):�~y�Eu����������7�p]��4m�&-Mj=�PAQ�%�m���Eh2�)��Є7�
�����X56f�e��FTL`1X9�.O%L�f��&�ܳ9%�q]Jl�-h�`E�ECf��%�`���G��@fh� -?Jh+���qqr� ~��jF	�0$�*�Qv����x��R�'�a;±Lc�޳� ���n��%S2����Z�s�e7��)o�Y�h^�8�$�E�Q�������+�x�b8�s�.���F�/���c�#ߵ�z�!�S^[@��j���E��t�,�̪��<������pږP�j����s7b���OA���W!|�%�E�34f��EE�!H;Rhl%3�{�h7�7b�]a��7iLh"�<:� ��u4�M�	�],F5�ݵ�Ps�I�)M�OnQӋ4�R8�3���9a}i�����j�#��+��?�+�NՋdmP�W��0�r��p4٘��X�e�h^+ݸ8o
��vK+_������<�u�.��[{Ԗ���U,�~��њM.�mq�rD��X%&D�ٛr���$5��8h�ɭ�uey����\&�������K�z�b�g����-<G�9��?�}�vɕ��+���}�j$6.bіl��$H܊ �R���$� H(3�E����/L?����3��/��Ed�
�by鶻���7nܸq��eJ�VB/����K��\!ڊ���I�c�MG���,�HИ@�XW��N����4��ɝ�,=�.i.Sh�i����Qz]٬k�x��❯s�Ŏ��Gf��X29�*�\|�E��k�B<�"C���(<�֕'���ݗ�5)��+�U�y$�M��N��AB!g$7$9(�sH+g���US��q�M2A�.�3�\ ��ׯ3�W�ߓ8��[���f����A��WD���*�,�sr���> B�'��t��,t9��E���1�8���c:�����c���p�������/��,g gðYy{Y�`To�`J����.� �؅v�H�0 U7	>r��%�>����pti�$\��gC�a�M��Y����Y
��Z���9��dI��-J��)����Rogά��~cY1�L^;����=}�t��C�����=H��� �\Z�z8�E���N�YVuov_V?�k�[I ;�<8,�T�$�NB��J�[�������r`�u��g��nտWΔ�ѝ>F�llo���nBw�Y��Q|C�G�	�5*Yy5�a��N�B�Mz���d�!d�_N�D�S�<�$�ӟ����w���+���7e�E�������\����P"o�L�t�4���$
<��nr?KG��"���3rg1�����gx����]�E2+KʰLd1-�C�9�Y�P�dH$�����l�����eQw�F��\�>�������	��N2 ��xY��n<� ua?�? KP5��N(:s�mQ�ح�Z]���ҧ����a<tC��]֔�VQ�U잓n&�Z��<�M3�D6�t��(�gC�	ɢ=�4����2���1
ܧ*,8ꥭ"�)S�h.}�g��4�'c�Q���&�F*+
R�_c:5�a�X>����6eV��8D̙0q��i/�8�� �J���)������c���T�ı�I��K<]�"�ԍ�'��:$S� "	$�3E���Gϓo��4��&T���pF�E�{2q�v��8q��Fsv���#ѥ߿�/�50��[���G��` Vu�$�3%�C$�$�O��[�a��D�\J/v777ҍ����Ң,@�W&n�w�z�J��/.��Ga�SF�q�m�%�y_��}뤵��}qp��b�s������A�{{T4�E�M��K�T-��=�Q˺˂6�械J�_ZX�~r�)ܐ�Ѹ:�&��{��Q�Y�$�p�"q��C�ЍzC	2����Zo0�C�������ˏ��>�cI�oݨߞ^�q���ZF� �,/��5 Ձ����2���{�fm݆~�[,���b�ڵ�Eoh�h�:|F��Ǒ%�">X���1�9������}�vd%�$��ɧ,7����q��6���{�q�LN���G��37��<�ayk�{�����_N���.�?��_�V��=/���Ƚ>�E<ͤ�b�������%�#�bj�L�VP,��T��85�21}��.%�TI���:��r��jcI�K���n~�t��"W������Х��E�WNV�"�e(�O}�=QV���҉I��M��\ʱ��\KS���R'��>7�n�V��\|)�Kμ�rE��d~u;J���i���~-�`���k��2�>F1L�\6`7G�L��Y7���M�����:���w�$��tDP�a����=������H"x��Q�rw���˳�=�8�6� �y�h�[��Ƣ���8η�� ��ѻz�
Vϊmv�	�����X����yB~�+��|�GW����WqtVZ�tBV@&2��&��2�O~�|��w��8}/���1�#,r��5i8���;Z/��=Mؤ���l�I���0������b�-Sl�>@�)c�?̧��bi    �/��s�XJ�����c[�d!�hz�I~ᷓ���c��3��'*~��m�14�M4N���㆔������;�Z���|J���}cR���T:ڏcI#]
�B�Ԩ��Y�u�r`p���f�3i���$�Q��7���nC�F�BI%�Ir!�W$�x4��퐽˵;A�̀�H��o����c�p�F�DcΠ~~���#�qs �\V3�7���.�ac�:mA��cX3:z}"�1R.R*ySC����(��DC<��<|�rYf�|�9YX�Į?'�S~�'4ѽd����d7w��"vk6��b�h�-U��ŏ��c{�59�si�X1�}�>�7�����19�ZL�l�\o@�@fe��}l.���&������}�t~���
�>�f|�*[�py�IC�q��p�����Z#Դ`�>����&��f^1��*�8�se9�I���\]$��$(�	S��9ќn�w�z,�^�-�i'��a�h��UR�r����!�5����>�!��F�bs

�nD6ZR�x��+�K���R�ڡlF'�6�*t{��OC��ZW��
D_�q�����>��f_�o@~J����ZWD>Ơ��hi��,/%x�Ŕ� {��ٻBEw��(<��]6)W�?�ă�\*��b��"g�-Z츥C4OF�����]��tMH��X}@�̬f4ֆ3������>x9�Cs� \�i#ΡBdu/��l�c�L�8�:��\",�r,T$*kk�-��������ľ�\�S�D&T3y�h��0U�*q��(ǯBE=���ިβ'�Rx��gw���ŷD�.t�Uu\�a��mO�,��3"��)�3�2�a�O����޵..�u7���� ����3k����+Z��u*�:N��rjsL�a�pQF&���(��L���4�z��*>���$مTlƏy[cj��El��&��j[˒To�"(�yo�b�/���k�l$�x���ߞ�� ��3R���a%��3�������7W�&jf6�_{�X�[}�����ɹ�b�����ɮ�
O~���Oċ��}�Rȓ7ZQ����M9��M8��W(�ݦ`��}a�T�F�q5�R�P}~�꾾h��<I�+^4�a;\wgC.�.�įTK�!%u�ww4�� ݔMچ\�*�k����A+�J2���452����/p��� �Y���W#K+�%Z�7QX�,�K��iz�K΃qLy:�S-��P�](����@"����B豜5�4�}o-�Tp�_r�$�s3���mVtW�0w�Cr�����%3�^SbB��1�Ly��� ��8��tڑN�.I�3S�7̨#)y�6O����K2�����rF�x��)�r\�l�ƣT�\_�e_��>�G�T��8�g��9�8D��ϯ^�;6W���)hrz|��P��xR2ʘg�=F��z%��#��e%�I���.G�l��Ѕ�,Me�����eB��csM��;�@}�1EP_0�yK�%'��4!��S�dɃ}$˃��]�	�h��AH:���jq�pY��.��(`����e/�A� ��l��D��p�p٧�κ�`4�H	~�~a�QbK��%B�b ���������O�d�+��Lm��v�,��'�W���0�0��NR�'/|�]�\+f����Щ�%V)]yN^���' v��<=u>1��4^mrߍ�������D@פ��C�b��T
��F>�6�p�����,B� 4�d%0��֙�!�n��1�j�\WG0�ה2p�Bld��@@�Dń�K�L�qup1Q��H���8�@��2F�2uQ_�u�˽~'&&HM�o�N���g�-_�-�H%-5i�J_�ܾ�F����b�ZE� 5OȒt&����fv�$F�:x2�-4�rP�@%��3�b�J���������A-Π~��@�#7L����N��M�-6SjHt��z"��#� Dih��ldB��,W��|�aZY$#���!9��G��VMN�z�9�,���3y~�Q������#*��i�Ud�<��D���_)��I�)a��>�6oHM:k&���x��b��_g�l�����"��B�>�o��0^�����|n�I��$�)�F6	E��ؚ���2m�d0bq07�~7�$\����oD��Z�1�'Y˓JY�k�Ŭ�&	7vm��8�K`!��ILl�i��K"
z5 �]����4��@��0��Y��[�������O�P�sZ�6��L�:2�Gez�/p(k<����F�4Ɵ���)Ͻ;�
�����^�q�y�Z�gze�W,�8�t���������v���oF��
�^�^��$��Q^囙#�Zm>�]���Z}��9�c��s��l:�F��IIe����7U�~d�cٓ ��"4R��(��s�kӠV8�3
~�UI,M�b���FT��r�!:1�q�ٙ�p[�*���K
+���;��(��F�ƽ�A�7�SX��<��~��@�}�����T���bb|�2��Y����65�8Q%
Q�C��ƚm]���3\Ɲ���H�8�BN��w;\�$K�p�nE�+f��}��'��O�OC%�����+'��ET��6��d���PFT���%�0��&MS|����
0�:�	ު����4 �����۲�ę���B�8ڮ	��q�C�]o�v5Ӎ^��+(��#�� �%l+�J"Ǫ��#Ը�=���"���b�1UU<�]�&��(�*d��j��:	sh3�BRt
��|ԋ��f�I�W9i��1%ͤ��}X�
y ���U����+Ob��wq�/w��Ө�?͗�6 6� �S��uam�K��Y�>�q9��^��R����.y�65�=#�(���Y�MyL�(���G�) ܟ���"�GG�u�ވ�P�d�������nj�t���WF�xps�D3��ob'd�	IX@Θ�<te�TÃ������C����젭0���.b�-����ۇ'����W�\�z�j��=���S|u�I�0�r/ʛ���2s�@��{��G<��C��PrA��VA�FU�}�>m�Ŧ*����r�6���[�E�*|?�`�QG�̄�5T"�!�:�O����`���~��@�(��	bBGqb����!6qts�#��V_S�j*0FC�׽���wO�wv`̖|^�խ�:>�C*��a:h9,�=�jHΠ�1}vz�����A�� TX�D�j�t���hކ+�Q�~և�G�����Ho��kR�"�M�sW<;&��J���|h�+����YB�+����Unȭ�"��OM��~?"�O��A�`mlPd}��փQ���O��K�w�~�T={����f,�/�9�*����Ƶ�?���|B�7�yS�	m�����U8��'R�h��Zk��!+\��6���2dQɡ�'� �+򭉓���w�S�m3�&�&���k�SU���������Ī,k��Xgi)ƖFw��`�I;��?�⺳_Ym���F ������5濯�g����v��u��|?Nfl^t�;zu�v2a�4�77~��aDڠ����`���h3�|Vo��9X!��UG����F#eě�>#�L��3"��١�6�#��l>��5[�	�x��b�-��񴃺 )��{K�Q�4�_2�aTV�-}V�i��jj����Q�}z�N_o$P*�ai.�dg�]P�l���������<;V�Ҩ���U��u��up��5����R�fci-�lֱ�U��rv|� 6`S,yFc}����Y.�ϻ�����d�w|_����S�bd)���^��G����	F�L?]
�2�A=�&8���f���g݇���Z/�Ld9�Qɰ�Y����C���(9�r�����P���EX�D����W� �g����-�0�����Y�p�#J9؏�6_-F4>X�����՞>U�/��^Bɑ���=8�i������#�[�A��|�?��E+ 7ԃ��3^��l!7&�؍
��Q?y�����ҏi0�l�7�+��]E���x�<Y1�<%��"��^�e���Q݃�=kV�diy�1�OM\Wz�	��Xii���ݯ毧5 ��>�    ��m���- �}O;/^��n�|�\3osΕi�W��5!M�՜��S��>�.����m������o(���+4F�_jE��fIᮼwz��q�����w�J:��5p$���}́�7&���R��|���,�޲b1����QҀso��]�D<@��(5�	Z�!�͑s�����'��(�Y����J�~����c9� 6������:���C�,�]	�{T�e��u�!�Zg���M�q�E���� �"V�>��V�̒�q[]t�c�m�<�r�K��q�dVt��d�3�W«��W���~Vԣ����t���d��ʾ��6��X$C͈Mm�R��"K�5Wh�^� ��WT�hm�+<�
7mk�tUU�X��ϴ}]�d *�j��淏�53W��4�I�&�Z��%�H�T�����;�!���O2Sf]�W]s����:��ԫ̥��Y���� ��A�2��`+8�	�2:�[�Y�kJ@�5H2LLb�m�HL�~YNb����� v��(Q�)���s��.����*�L�
H�r�t>yyY0'ƈ)��B gO/>X���^E:���J<;8�Қ"�%��|K���f:	ZZ����0y��x����.h��'����:��S!���N|��)e��:ap%a�کT�,�^��w8��3�^�ߋj��OdBz��z�>0�#��2h�S��~BU�$Nc���IA��̈�x���MzƵ������hrB>�p�i�fv1�����@/�>U�w -G�y9�`~�ߖ�g,������>#Щx�i)��v�� ���f�mͭj���� y��6��
&�Ż�
@�x�1�
��}�{n�^s�꽩�$M�� �%i�N>��±bA��A��CdE���G����l��ʽ �V/��6o8�@��������T������s�c<G_�(�y�Dt��z����R�Ыz�y��.�.(�EHt�=d�X�.=�y��l��������������������T�Z�?�Χ�ZU�O�n�^����B�w��Z�
�!���3��u?�d?�;��GKG�ի����rG����y�����%�ok^�G M��22��j�Y��Eٕ熣1���"��N��TP=�~Y��?C�E���B9��������a��Kպ��8�.eβҶ/.� �a���������*��������Wkl-;��>̡�\n�&��^c4vh����h�`@�<�.f:���l������9mW/����9ZTs�Qw�1d]15������`��ST�.SS`i���v*.A��W5�%6ڂ�z�����bŞ����R�L�\��"-ě8�6st[N��Þ��:i��9��ҪA~.�#JiGrR��$qW�ݜ8�����=���U�G���gA<[0�R_0�Pڊ�%!�/)��k��+�b�ܐ���O����v��Հ�T��Q�\v��+�>�w�(���T��5=�gb�����_�5��Q�7X��--t� �d��@��Ɛ��r&:�:�\��K&���r1ִ9����,�QݢfȽ�Ar|�G�P<��C'�$S�@쮸���ڥTk�H����c-�^7�:���,�#*����V"�ufq�-^4�԰"��/���1�k�)O�ON_A� �^����f��Ɋ ���?va����W�Ҡ�YA��0Z����4��1C����j,�P�u>6fߊ+��8�ЛJ�{��Ky�Ou�S��I� .�\��W��=�����plzw<��S@zM��"�؛Ǆ�`zKh��N�!��+>��ޟ����h�i�9\yl�&C� a�ymh&���_�E���F��#i�ߺ_�Cu�)�	�ր+�=����B�}�g	R��o[?��L6�s7T8sT���
aF=֐SA�Y0
=�+�P�b�)��"N0Ǹ�t� ���<f`ƺ�)'���t4�����Z{���s:��M�`N�U<�lVՁq���g3���t��ǰ�1sA��'��~�N2t�`u���I�b5&,2y�ˮ�<��r��xFs�9�9�h�#�GW�7�1۽�pX��,!Y����E=�.��QX���s���RwoXQ�G�@)�5���16�S�X2��1l� �����.���; io��T�T���B�H'FZ3~�em]�i>�p2��X���,�\Za��f&o�l.
�69L�v�B`O1
ʴp7������r>�2���H�.��׏���A^���*�e�w��D9����i4���,��njН���!.P��3D���K� Gc�7%́YW�j�ƣ�7�
�f�}�_}O�H�3��m�IC��OV���>��z�>p~��� ���0lZzl��V�l���-΅�H��\&P�6�Z��$�/��DCMs����vL����4Td6���xR1n���Y�E�.�S8��`뙔I �j�Pd[��%��'���Թ;���a��Cʡ��+�]]���M���W_����s���o56+�����X�z3�e���X���ފ1�?�D��4{
I�P�Ιc�GQ����&���O�J�gzjpWݜ�D[0�so����#B��� Ӊ��s`���c[oU%����M��I�
JS2�U�MK���>d�����l$���t��X,�߇�t�ތ�k�iTw�u娏�ONp9�ݗT�� ��<c��|Y���?���#�x��w\аYϖ$��b������������1��%Vp�BKs�1pt��r{Qz�B�1��Mn/�8H9�>#�@|���tx�v&}��Xtbث+��O��V��4~�j��@�i�S����h��&��z7���CtmHΐ�!ڣ�B����x
��}��X���:�L�`�I&tRIy���b��D{�M(���������5L�$ԏ$��<^��ƛ�ܬ>M ��gU��+�o�|L�Q\����d������Tqk��p�6^���*ޏv�Ɍ�������w���:%�YE���_�n��w�{�
r���C�h���!�5����k1N��������;ә��ְ˅ɱ�tfR#<�t#�m���Y��~��Pq��d"��v�zl��!k�v4�����S�a^vϝ),jo��:�f}���Ñ9�$]n���Q��.!&}����.b�W������'U���Ώ��9�O���C��i�C,#����4I��{�%�Rذ����|�N����[���HO~4��#LVH9�(��
�R�?���Y\¹;}ї�Hg@R�Gr���x��C�jH]�h~eH2we�(`Π�mN�O��A��a�2�����_#�L�O+��L>AÂ>�j�b:1�T����o,���pĢ�l<�8X���9��;$R�����U��3�A����e�r4�ǎ��a��v>������f�Yݺ�e1��hV�x��j���BE%��ڃ[86��Ir�$Z}�C>�G�R��՟<8�l��.�3�e��i��9~�ūŋ;���2<T���h�I�',>�����G>���A�DtG�W���q�dX�>>�2y���[��/�Ҳ�͞1%|9ۢ�!o��F��V��ߵ�a�\�����+��s������L��ű`KbQ����cU�{%/������(0�@��X�n?7�ڊ����Z8�Y�gX��H�ROECm>��X¸`��Y"֬��ڡ��~�^���@��#�z��B*O�HOϛ��xBe�C��̔^������2���A��p~�.q�*�3��[�g���#�'�)�g�3�Jb�k��� }5���1�	��nL.:�Rp�p�*0���\D��rn��(g�>`ͻ�����D��͝�����O���6Ó2�l4	�6�`9A
e\�õɸdV\��InJ(���󣉐����?��˄����5��< �U2l)�Q�08���_˯q�n��k��R�iH��g�&Yx�
�o��O�^9;��#j��ET���VT�� ��3�A�����t4D�!�e) a<���_�ՍR I����G��X��_K�T���A3#t;�4������    E����wf�A��s9��YҜX�Ť`T�F�r՚�Ԙ��m��ͩ"�+��X���L����؟)aV�����$�l�Q
@h4��~d���M{�f�fIb�.M��.* �eM��M�a�m)0��%m�P5%֊RF�*��f.?�F�RA�>VM��߽u�P���fc�N��x�%�HS�8l�^�O��ͥNܯ)A	YK&�z�3���r��~���7e.{�h��'�7@)����cfLb�L�m(J��(��Eoe~H�[��}�M����P��o\�!P9�r��F��ň�n����ɲ^oT�jC���,����=K�,����e�|Ϯ�]��i���_���^���!c�4O�U;nu��nE��	VP
�L��u�D*���8���>E�mo�����.	(��UiW*��	��.����t-JXC%0	��$m��m�GC��&�t�G>!N�Hab���-�Z��^;ɘw9��s�Qt����V�N��aE�]��M�we�-��ξ��UM]	�U��:Ulč���`�9�]�k<�:�fg�<# W\�P��7Z�)����莨:y�ƣy�����I�;%#��|�=���}��PFK,�	���fw�/nS�_��P�a��q"U�!ɀ�/��Ă0���>I����L������~���(<�n��t���g-�靈�y�|��i���Տ&�G_~�������>�}>>�r��4�߾����×w�:�T?���8:��>߾;��[m��y��ӓrʔ�u^��!U�wSF!]?ҷ">(Z�CMS,�a`�C���{R���Ǉh!M{-�@�#��D/��ӱHA����&������1�ڍ5�6�-�T�I{q1�٣�0H�	�&�杓��폲�NRi�[���0(��'�V��5�5�
�����t� ک���f�����.S����b���J7*�L���3���@��Y��:F�搜�us8B��L[EBV��FdpV��=\���]	��±4�/Z��wj�\)�!����i�3���2��le���-�M���yç�N����5Y�$Oz�|�?�z�Ew���N���ԁ�o\ؽ{�`���_�y%�d�LRC��(/���S�hP�S2I�8��}��'��-1<�J�	d{\���i炤���kôtx� �]���_�=�5�t��SG5�[M��!��J��u��fHCG:�1'1�	��|��]�k�d�j��՝�~M�7+VQ�ۭZ�9�L{��ִU�D�h8���G��Msu����2�(�,r����^��m逴�
�d���2j�*V�fͩo0��,��ʒ���_�j��� `@�f��~B�]��g&��VRF�B�A�кݗjMt��8�Jep���abl�/�����K�v��z�|g1ܚ�a�5z?_�b:��X+�.:'��xP�F(p�D��"8T�N��tG�'%��ee���M����(�D�LLZ��;���|]��u�A����h�s4�&�Mm2�{p�C�c:��)�s  bO	,94H߽�*�r�le8���393�S�ݩcz-d��%k5��%�-9֞.�(��n���mS?�B{�%�o]IJ��PD@B��u9x�E���D�Ѻ���3_%��jM��L��G���
H�nq6O��ȶ�\�Ӿ��9���_6��jz�����ée��$͌J�H���Z�MK-u	����%�}4�&��F�Lsr��]�����H�a��k��zqUw�Q�A)6�n���[�D<-~��k���C�O���y�閿Ց�IU4��j_f
��S��.s�a"��uLm���G��dmo�NH*�M��Ȼ91�ɂ���;l3�H�*1�9�0g��B��*h��Y\��d6�2Ґ��}��]U�jI���ˢ`e@�>�wC�aJ��U�@ʽҕ���s���2�0��~�*[k�~�sap=rJ���PT��4�#]ʰ�|����Š�N�������Xe��&����J�F^&��$��}���Q�yD�!����o�u�o��7�-��Cs�wr�:�:����3�v�q����_Ϭ5�ҍ� x���YE����:� ���},!�E/�N��*�O��j�sc�`~]�*�'^�׮�ďjc��� �o����u��4S�-Ƞݞ�\�O��ګ��z�`
<�[�R=�WlM��iB�E���9
���LE�_@Zsɤ}����^��0_��������t����V��:	��ן�n"��Pۍ�1 &����	���L�[�*d��U���F�5Y���_́�~���ѭ����r:^�uc�y,XK��VNQC��[����D�E"+������Y��8�7���|p�����$g$N_���n�}��1J�1嗾���f���� �����Qz㫸f�Φ+�<TH6��#s	��NQD���t� �_�)ݮfn���
�t �0�J򳎫�
@>!�k+�5J�A�����Y9�ʉ=7>���ȯ��ˑ;)M���A-6ȡ0m^8m9��TQ���S�݃����	�F�����VѸ'U(���K� �:
*zls�<�0q�Ξ�exA�~7��YN(���c�o�G �8��-�n��Atq) x�@ؘ 2�����i��)�������͸r������W�_�dw(���;	2�8TX�Ӷ��hD�%_��e��
s�75�������k�+�%���Q�RQ�����S�Fس\D������r�0|b�K��kks�vh�_<���l���(yj���;��zE����W�哑���ϿϯnVB �
Ɠ�?����DI�$�����������b/Cfp {��T���>
�+,'��n(�����i5��;���6�݂�PA�0��'�k/>@�ɓ����VO2�g�=T��;�/2�C��}���w����N����m�#��*���`�<��O��y(=��"�����x��௶
_7���<T�{L��SmT����v��;�pO;y�z{��ø��Ն�ݫ�2=��<�D�؅���iFؐûs%AY���n't�V������P{I;�x���.��f:���	�`_-DI�1��bGn3�RZ����Ǐr=@�O��X��jj�H;ǟ:���;��7Q�ޤ���"	���B_�B�.��_�|Cc��Hql½}E6��)���/�+����H12�Wdc_�B��z�"���,���}E6��YD���I��l��+�p���+�B�=|E�E�/�+�Q�+�,l_�+�Q�+�,��}Ev�+r�� ���c9�JnZ\t�骯��ε"(�G�I�ѡT�M`c-�	�yK��P��r+�(ˢ^�RX`����`U2�LUГE�s^�iZ�8�?'%ڻ����)٪�ZkŔk��īC�,'[���+L��:Y�
#zbKx������M>'��{a/�X|�<�x?|���1/��Ɋ@kͨ�_?F�s����ۜ�DP���y�~�����a��!�u��k߉���rA����/;�%�eF[P��<����=5u��:Mщ�N}�-���00�� 6.����4vs�Կ� ��%țc��yOvN���,�OZ�{��c���8/�C��A����=����l��wh�B���7�73oif�
�~(���A�U�h�~��$&�`rw�fN�Y�v�v'B���|2�(L�[A�NDb�<
+ʋzՇ4�L3h\���g"�ŋ!����ѿZ�RW�i���u�*�nyhX��r=�n~q8�ek�\�]j ��_a8LU�?5w���3�:����
O�(y"
�8Y2�B��AN?q$9ܮ@���w���@�v_�xR��F��ZE�[������W�@P�ʠИ��R�������z���~��f�z���/RCo<���`Wt�� �x���:8k���ֳ�6��䟪�a`@��j��.Qپ�䯉�|.��@Xr���1�(�k����_����l��bP({:����<;<PWR��A����E�f$�'
��TT)u�5��h�\ �  t�F����9꼸��(����T��Z�A-�ޘ�Tc�Z�nZ/�w44x�ond/���B��w��rN�2x{��5\چE�~���G��Y����O�6_<S�����j�'��G��&��OĿ�Q��[�+@O-�zm��e0G������t��pݏ-l���	���*���O�c�XQ	Ą�G7]\Q\����-5�6/�������i��d�6~�*�@WN�2�ȨZ
	��B�}�g��y�}���M<k���c�٢�H�D	nݸ2h*�.G��tżU��)���p=�cY�����&OM�FN����/����֢TE���@\�8�E��R�X^�j���r�J>�]q�_�k<�!��#"�*UQ� ;Ȳ����%�9>r�]���x�>�����>4�d:^y�����l������ٛ�Rc��.�>ٽ������UϺ�h#���#S?�,q��ͻ��O�r������N��Ң�4$y��I��
ף����W��/O����UTx<�ag�U�Aќ�p��/��1l��o�@8Ɠ��ٯ��e�+�"�䶣�jO��ú���Ŷ�W1�yHA��yf/.Z��H.�)��wȆ�kh���@�� �QZ_�S�����9��5ķ�rtVa�I��N��_Ц��A`�c�����31��P���-`L�:]r��1w��[��.&�_:RH��]5��'�h��K�S4(x/��|4��Z����a�c�e�Y��x���,:9y|�z��v?�����.�۷?F�A���7������^���9�z;xs�������֡������_>���<���������p�����~k4�켺y|�>9M~�y||��
�����?lyo?~;}�??�8~�{q���Sg{�Y�����<�q�rp�)<�|yvy{}�~�}���5����$ll�l~��70��f��٬םa��0˻���F�a�۬�n��w�����~Ss�e3�$�&�S]z�G��6��ԉ�*.�s��d�5��ϢZՃ�\�65�y[+7���:-�j�3�K=	�[��n͐�?�6�ǏZ���	��j�����P
es��lW�k�c��0U�L�����/.��"eU=3�0�q�<;;AK<�YKS+F&�:%mPt�nE�K8��^ `677�܇-N=�`�����J4��ZJ,ΧY#��rڥ�D+��cV�:Ь �|7}�k��up�J�����X�)��pQ�a�D	�<xA��f\S*��,��$g_�Rx�ultX1�{��8JL_�F��tfʒ�������ʲ��A���|XD�)�ñ)L`�Uc���c�fr��9u]v�#[��.Ȣ�M����ٟ���ڎ�	0��h:J��r+='	�~���o�l�����[�:�������V��G�����6�&c��W�vz4�{����ĢSj[�AG�cF�����!�a��G�D�p8�����#!G]�3�XA-�>�/
�.��΃���'���_ۭh�/�+�����:�����?>lu�P�����:? ީV��h .o��s�c�]}�>9�w�>���yΥs�>~R�rx����J?�O��{��[������h(�0�,�:��ű��c�?����ZA|�L*a�xO�z��|Cj;�2B�B�U�Ʌ��F\��!��(�s�����?գk      �   �   x�}�=�P���SlgL̋�
ހ���#��3<�pO�=�+�ر��7���#Dܮ?lS����,�lGf	zK���8�픢@����I;h� �����rǛ_��D��e�^����K�V��������{��l��xK �Ѳ>#����H�      �   �  x��Xko�8�����,P$@$�i҇�ۙv;]t0���`�-�7��T��sI�����.��y���{�Ao�����z��UEB���V�^�F�B�\IG��k�4}��ڷ��P��1��O�Qy2����#�޸x6��������?�b��r��,H𾩪�1�n��������υ�Ԉ�R�$yV#��ffEMZ�±sc/�7�^-Rz^��y�W�.v��%\�.G��/��F�\��B^!��X*���*Y����E��4,�>���u�F���Jv����������Jn8RX �A����������0����z��|���^U�ߒF�J+�OJ�7̲�|�V�s������luE�{���H�v�yag�?=�4���<o���Km�L��p��@��f3����5�[M��Q��ߚ�c;v-��ʤ�3��̙�B/�F�n}�N.GYؼ�2ۥ���}	|���	��6����n�������J���M'~t���[�]J�+_F���X�%�Byc��J���yk�l` 0ʺGq���i�J`-c��2��FB�I���KG������<9wT��aE��"��ï���
�m�`�g&u�T�T�����ev0��{��FL��� m'�(7h2(��r%��J�ֆu��=q4�n�?���~�B�t�!M���J����� �\6��h��o��dѭ3�W(��U�VX�Q��8�݇��ޢ}[Zn7G3͊�N:1ޛ:� _I��`|Õ�#�g�,b[l}�z�&�k�,���4��Q�A�㎩�k�]�0�?f�qAD-�43���&�+��НP�	�Iꝧm�����pI��WEs9�DP��FOլ���
���B^®Δ�;��E?�j���i��<i�0�Ә8i�]Ӗv�i���ސ����0:U��4A�^�ky4�8����a�uKu����D�ķ6̗Ub��s�D�aά��ꜟ�b��Rz���]��10m+�oD�[8/�c�ϫ�P]�B��Ki��ȝ�*/YĜ]_6O�	�;8��]��S��B���jB���1��� �΄��a�b9��
�b���BQ9���#o\��eݸ�}�x}�A�q�%cjIٚzq�b�Ե��ô���d�����pu.���/ͪ.n���Zǲ7X�M����I{��%�f��` >��VA�F�� ��A-,�{Б��C�h'	���(k��&Jg!nV����;-��V�X�x�T�͖�Ľ�85�@�ZiQ��N�����#��|�C_(���)MS^�W,'y�L�T���%q�(��6��".����'�D:����p�^)���Qނ�jp�%�P�G,
&6"X���U��lS秳�Q:8I�m ������,����2Y��ێ���J���a�j��u����f��~����^�z���0y�	�0�bB�'�w�l�ꃣ����&���Xxu%ݰ��j)���z�N���
T�B���yą(Z,�M��w�C�B�<|��X���=��?
�Q�H��Z:]��3�0�D!J���~:���~2x��m�
`��ɓ�4*;��`ߣ�v6퓳}�C	|_}�U�:�4�W��hC�Oφ�<���Z'!0�UB� '58��Y�+A��/:�v7�s0�!����	X��H��݁�����o(�( �cv�A.u8F��Zt��0�Qm�jHke�����XDB'��.Q��u4�Z��Nb��ŗZn��!K �,�\5�@���C#�ܪƯ9HԹe�ڠ���%�2�Vl;�'�42��Ut�b7�9�;�چ��k��]/h!}��w�m��لpD���k���V�2����#�׾ö�0����5����o!�7��!�7x������Ѻsi}\����P�,�:�O�R�5奌�$�9^��h��봂�W��֜�#V�{C/�\W�x��C[��1u(��6��f�q��h�zF���kY-�I���7l�
�چ���?x��g��U��GO�F�P�JB�T��?l��Ѣ
_>4����{�;��*�fG���+Q�5~J�j��Z�h4�Č��?��/�(����B�O8��\��W�Y)l�5� 2�~v3
��Gu�7����3�[˺�kK�[��՛���޻w�?ۚ��      �   �  x�}RMo�0=ۿ��b+f�I�0��;�rPв�W%*���(%ڭ`A������E����I��N��㳾��+xT6j}
7Q��۰�ym�4���х�`t�����	Ҹ���yY�B��� ut���e��(+�I�p��%pc�T����N���j�G�- <&[�F��;*�cc��V	�FY԰�싎�:h��owͩ���]��\:M~@��V�r�����x��9��!��ؔŢ2�[�d@;��7�6���28A�ѣ���Ƿ���M���sM�S�u��;�K����1���V�R�P?ր=FZ��<�^+����IL�~Z��_s�+bK�00�YL~2�;�N
U����s�#{�4(Dn����Iy��"�hs|"�q�u1y����-?���(:�z��N|W�k�?��a�$Mx�؈��r��f���l�fB���%��u?)�����vP&�      �   �  x���_��:Ư�wA���M69uT@QD�rS)B��"�ߙOf��rӷM���>}�B��	�Ӷ�Q�}?����V7��
��ė8Ø�ZU��!�Տ� %B?��(�*,�<ca�>w07@��F�`��`T�ڨ��\�-�i���0=���Y�2�����3@�
TU�e"X=U�AR����ȜM�����W��"����y��3�K֜I�l%I/�Ө��(� t�bCw��i}V����s�]�n���Te"�[���Z�V�B7�\e��b\V� �м��=�*r�Rn�����������D�Ғ���$��SA+�?��@;0�\�MҦ6����C���Hs�CG�a�t"qE��v��,�?�;:ݲ�+aT�{�46������(��ڦ��n�sٴ
T���N��	�<@iA��y�?W���MW,M8+Q1��#8�/�lnx���rZ�z�L�V� }E
��ѕ���9�����q�Ꮌoլ��ƴh�MF~|����c���"��*�(����$"o8q��{�t!5q���	�8I-�(��s@�`8T������DUY(m{p��ho�a%�������c�|aEP�5#1`Ϫ����a�9%�5@Q�ێ�I�l����F�qa��ŕ�r�A�h]�4Nʏ��?e��|_��O�Ka���Fx�<� y�G�:.��{P�� I����>76nt'��<$׋=Y������:��W����z���68K     