PGDMP                     
    z            djangobabu_db #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) )   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16537    djangobabu_db    DATABASE     \   CREATE DATABASE djangobabu_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_IN';
    DROP DATABASE djangobabu_db;
                postgres    false            �            1259    21490    admin_honeypot_loginattempt    TABLE       CREATE TABLE public.admin_honeypot_loginattempt (
    id bigint NOT NULL,
    username character varying(255),
    ip_address inet,
    session_key character varying(50),
    user_agent text,
    "timestamp" timestamp with time zone NOT NULL,
    path text
);
 /   DROP TABLE public.admin_honeypot_loginattempt;
       public         heap    postgres    false            �            1259    21495 "   admin_honeypot_loginattempt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_honeypot_loginattempt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.admin_honeypot_loginattempt_id_seq;
       public          postgres    false    209            �           0    0 "   admin_honeypot_loginattempt_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.admin_honeypot_loginattempt_id_seq OWNED BY public.admin_honeypot_loginattempt.id;
          public          postgres    false    210            �            1259    21496 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    21499    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    211            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    212            �            1259    21500    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    21503    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    213            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    214            �            1259    21504    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    21507    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    215            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    216            �            1259    21508 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    21513    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    21516    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    218            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    219            �            1259    21517    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    217            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    220            �            1259    21518    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    21521 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    221            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    222            �            1259    21522 	   blog_post    TABLE     �  CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    content text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    status integer NOT NULL,
    author_id integer NOT NULL,
    views integer NOT NULL,
    banner character varying(100) NOT NULL,
    description text
);
    DROP TABLE public.blog_post;
       public         heap    postgres    false            �            1259    21527    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          postgres    false    223            �           0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          postgres    false    224            �            1259    21528    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    21534    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    226            �            1259    21535 "   django_celery_beat_clockedschedule    TABLE     �   CREATE TABLE public.django_celery_beat_clockedschedule (
    id integer NOT NULL,
    clocked_time timestamp with time zone NOT NULL
);
 6   DROP TABLE public.django_celery_beat_clockedschedule;
       public         heap    postgres    false            �            1259    21538 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_clockedschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_clockedschedule_id_seq;
       public          postgres    false    227            �           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_clockedschedule_id_seq OWNED BY public.django_celery_beat_clockedschedule.id;
          public          postgres    false    228            �            1259    21539 "   django_celery_beat_crontabschedule    TABLE     j  CREATE TABLE public.django_celery_beat_crontabschedule (
    id integer NOT NULL,
    minute character varying(240) NOT NULL,
    hour character varying(96) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(124) NOT NULL,
    month_of_year character varying(64) NOT NULL,
    timezone character varying(63) NOT NULL
);
 6   DROP TABLE public.django_celery_beat_crontabschedule;
       public         heap    postgres    false            �            1259    21544 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_crontabschedule_id_seq;
       public          postgres    false    229            �           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_crontabschedule_id_seq OWNED BY public.django_celery_beat_crontabschedule.id;
          public          postgres    false    230            �            1259    21545 #   django_celery_beat_intervalschedule    TABLE     �   CREATE TABLE public.django_celery_beat_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);
 7   DROP TABLE public.django_celery_beat_intervalschedule;
       public         heap    postgres    false            �            1259    21548 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.django_celery_beat_intervalschedule_id_seq;
       public          postgres    false    231            �           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.django_celery_beat_intervalschedule_id_seq OWNED BY public.django_celery_beat_intervalschedule.id;
          public          postgres    false    232            �            1259    21549    django_celery_beat_periodictask    TABLE     ?  CREATE TABLE public.django_celery_beat_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    solar_id integer,
    one_off boolean NOT NULL,
    start_time timestamp with time zone,
    priority integer,
    headers text NOT NULL,
    clocked_id integer,
    expire_seconds integer,
    CONSTRAINT django_celery_beat_periodictask_expire_seconds_check CHECK ((expire_seconds >= 0)),
    CONSTRAINT django_celery_beat_periodictask_priority_check CHECK ((priority >= 0)),
    CONSTRAINT django_celery_beat_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);
 3   DROP TABLE public.django_celery_beat_periodictask;
       public         heap    postgres    false            �            1259    21557 &   django_celery_beat_periodictask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.django_celery_beat_periodictask_id_seq;
       public          postgres    false    233            �           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.django_celery_beat_periodictask_id_seq OWNED BY public.django_celery_beat_periodictask.id;
          public          postgres    false    234            �            1259    21558     django_celery_beat_periodictasks    TABLE     �   CREATE TABLE public.django_celery_beat_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);
 4   DROP TABLE public.django_celery_beat_periodictasks;
       public         heap    postgres    false            �            1259    21561     django_celery_beat_solarschedule    TABLE     �   CREATE TABLE public.django_celery_beat_solarschedule (
    id integer NOT NULL,
    event character varying(24) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);
 4   DROP TABLE public.django_celery_beat_solarschedule;
       public         heap    postgres    false            �            1259    21564 '   django_celery_beat_solarschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_solarschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_beat_solarschedule_id_seq;
       public          postgres    false    236            �           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_beat_solarschedule_id_seq OWNED BY public.django_celery_beat_solarschedule.id;
          public          postgres    false    237            �            1259    21565 "   django_celery_results_chordcounter    TABLE       CREATE TABLE public.django_celery_results_chordcounter (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    sub_tasks text NOT NULL,
    count integer NOT NULL,
    CONSTRAINT django_celery_results_chordcounter_count_check CHECK ((count >= 0))
);
 6   DROP TABLE public.django_celery_results_chordcounter;
       public         heap    postgres    false            �            1259    21571 )   django_celery_results_chordcounter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_chordcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_results_chordcounter_id_seq;
       public          postgres    false    238            �           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_results_chordcounter_id_seq OWNED BY public.django_celery_results_chordcounter.id;
          public          postgres    false    239            �            1259    21572 !   django_celery_results_groupresult    TABLE     ^  CREATE TABLE public.django_celery_results_groupresult (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_done timestamp with time zone NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text
);
 5   DROP TABLE public.django_celery_results_groupresult;
       public         heap    postgres    false            �            1259    21577 (   django_celery_results_groupresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_groupresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.django_celery_results_groupresult_id_seq;
       public          postgres    false    240            �           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.django_celery_results_groupresult_id_seq OWNED BY public.django_celery_results_groupresult.id;
          public          postgres    false    241            �            1259    21578     django_celery_results_taskresult    TABLE     L  CREATE TABLE public.django_celery_results_taskresult (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    meta text,
    task_args text,
    task_kwargs text,
    task_name character varying(255),
    worker character varying(100),
    date_created timestamp with time zone NOT NULL,
    periodic_task_name character varying(255)
);
 4   DROP TABLE public.django_celery_results_taskresult;
       public         heap    postgres    false            �            1259    21583 '   django_celery_results_taskresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_results_taskresult_id_seq;
       public          postgres    false    242            �           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;
          public          postgres    false    243            �            1259    21584    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    21587    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    244            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    245            �            1259    21588 "   django_mail_template_configuration    TABLE     �   CREATE TABLE public.django_mail_template_configuration (
    id bigint NOT NULL,
    process character varying(200) NOT NULL,
    description text,
    mail_template_id bigint
);
 6   DROP TABLE public.django_mail_template_configuration;
       public         heap    postgres    false            �            1259    21593 )   django_mail_template_configuration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_mail_template_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_mail_template_configuration_id_seq;
       public          postgres    false    246            �           0    0 )   django_mail_template_configuration_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_mail_template_configuration_id_seq OWNED BY public.django_mail_template_configuration.id;
          public          postgres    false    247            �            1259    21594 !   django_mail_template_mailtemplate    TABLE     �  CREATE TABLE public.django_mail_template_mailtemplate (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    "to" character varying(1000),
    from_email character varying(254) NOT NULL,
    subject character varying(140) NOT NULL,
    body text,
    description text,
    bcc character varying(1000),
    cc character varying(1000),
    reply_to character varying(1000)
);
 5   DROP TABLE public.django_mail_template_mailtemplate;
       public         heap    postgres    false            �            1259    21599 (   django_mail_template_mailtemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_mail_template_mailtemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.django_mail_template_mailtemplate_id_seq;
       public          postgres    false    248            �           0    0 (   django_mail_template_mailtemplate_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.django_mail_template_mailtemplate_id_seq OWNED BY public.django_mail_template_mailtemplate.id;
          public          postgres    false    249            �            1259    21600    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    21605    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    250            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    251            �            1259    21606    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    21611    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    21614    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    253            �           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    254            �            1259    21615    home_contact    TABLE     �   CREATE TABLE public.home_contact (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(250) NOT NULL,
    message text NOT NULL,
    subject character varying(50)
);
     DROP TABLE public.home_contact;
       public         heap    postgres    false                        1259    21620    home_contact_id_seq    SEQUENCE     |   CREATE SEQUENCE public.home_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_contact_id_seq;
       public          postgres    false    255            �           0    0    home_contact_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_contact_id_seq OWNED BY public.home_contact.id;
          public          postgres    false    256                       1259    21621    home_subscribe    TABLE     j   CREATE TABLE public.home_subscribe (
    id bigint NOT NULL,
    email character varying(250) NOT NULL
);
 "   DROP TABLE public.home_subscribe;
       public         heap    postgres    false                       1259    21624    home_subscribe_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.home_subscribe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.home_subscribe_id_seq;
       public          postgres    false    257            �           0    0    home_subscribe_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.home_subscribe_id_seq OWNED BY public.home_subscribe.id;
          public          postgres    false    258                       1259    21625    otp_static_staticdevice    TABLE     �  CREATE TABLE public.otp_static_staticdevice (
    id bigint NOT NULL,
    name character varying(64) NOT NULL,
    confirmed boolean NOT NULL,
    user_id integer NOT NULL,
    throttling_failure_count integer NOT NULL,
    throttling_failure_timestamp timestamp with time zone,
    CONSTRAINT otp_static_staticdevice_throttling_failure_count_check CHECK ((throttling_failure_count >= 0))
);
 +   DROP TABLE public.otp_static_staticdevice;
       public         heap    postgres    false                       1259    21629    otp_static_staticdevice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otp_static_staticdevice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.otp_static_staticdevice_id_seq;
       public          postgres    false    259            �           0    0    otp_static_staticdevice_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.otp_static_staticdevice_id_seq OWNED BY public.otp_static_staticdevice.id;
          public          postgres    false    260                       1259    21630    otp_static_statictoken    TABLE     �   CREATE TABLE public.otp_static_statictoken (
    id bigint NOT NULL,
    token character varying(16) NOT NULL,
    device_id bigint NOT NULL
);
 *   DROP TABLE public.otp_static_statictoken;
       public         heap    postgres    false                       1259    21633    otp_static_statictoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otp_static_statictoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.otp_static_statictoken_id_seq;
       public          postgres    false    261            �           0    0    otp_static_statictoken_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.otp_static_statictoken_id_seq OWNED BY public.otp_static_statictoken.id;
          public          postgres    false    262                       1259    21634    otp_totp_totpdevice    TABLE     +  CREATE TABLE public.otp_totp_totpdevice (
    id bigint NOT NULL,
    name character varying(64) NOT NULL,
    confirmed boolean NOT NULL,
    key character varying(80) NOT NULL,
    step smallint NOT NULL,
    t0 bigint NOT NULL,
    digits smallint NOT NULL,
    tolerance smallint NOT NULL,
    drift smallint NOT NULL,
    last_t bigint NOT NULL,
    user_id integer NOT NULL,
    throttling_failure_count integer NOT NULL,
    throttling_failure_timestamp timestamp with time zone,
    CONSTRAINT otp_totp_totpdevice_digits_check CHECK ((digits >= 0)),
    CONSTRAINT otp_totp_totpdevice_step_check CHECK ((step >= 0)),
    CONSTRAINT otp_totp_totpdevice_throttling_failure_count_check CHECK ((throttling_failure_count >= 0)),
    CONSTRAINT otp_totp_totpdevice_tolerance_check CHECK ((tolerance >= 0))
);
 '   DROP TABLE public.otp_totp_totpdevice;
       public         heap    postgres    false                       1259    21641    otp_totp_totpdevice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otp_totp_totpdevice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.otp_totp_totpdevice_id_seq;
       public          postgres    false    263            �           0    0    otp_totp_totpdevice_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.otp_totp_totpdevice_id_seq OWNED BY public.otp_totp_totpdevice.id;
          public          postgres    false    264            	           1259    21642 
   taggit_tag    TABLE     �   CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);
    DROP TABLE public.taggit_tag;
       public         heap    postgres    false            
           1259    21645    taggit_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.taggit_tag_id_seq;
       public          postgres    false    265            �           0    0    taggit_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;
          public          postgres    false    266                       1259    21646    taggit_taggeditem    TABLE     �   CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.taggit_taggeditem;
       public         heap    postgres    false                       1259    21649    taggit_taggeditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.taggit_taggeditem_id_seq;
       public          postgres    false    267            �           0    0    taggit_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;
          public          postgres    false    268                       2604    21650    admin_honeypot_loginattempt id    DEFAULT     �   ALTER TABLE ONLY public.admin_honeypot_loginattempt ALTER COLUMN id SET DEFAULT nextval('public.admin_honeypot_loginattempt_id_seq'::regclass);
 M   ALTER TABLE public.admin_honeypot_loginattempt ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209                       2604    21651    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211                       2604    21652    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213                       2604    21653    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                       2604    21654    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    217                       2604    21655    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                       2604    21656    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221                        2604    21657    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            !           2604    21658    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            #           2604    21659 %   django_celery_beat_clockedschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_clockedschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            $           2604    21660 %   django_celery_beat_crontabschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_crontabschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_crontabschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            %           2604    21661 &   django_celery_beat_intervalschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_intervalschedule_id_seq'::regclass);
 U   ALTER TABLE public.django_celery_beat_intervalschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            &           2604    21662 "   django_celery_beat_periodictask id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_periodictask_id_seq'::regclass);
 Q   ALTER TABLE public.django_celery_beat_periodictask ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            *           2604    21663 #   django_celery_beat_solarschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_solarschedule_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_beat_solarschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            +           2604    21664 %   django_celery_results_chordcounter id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_chordcounter_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_results_chordcounter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            -           2604    21665 $   django_celery_results_groupresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_groupresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_groupresult_id_seq'::regclass);
 S   ALTER TABLE public.django_celery_results_groupresult ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            .           2604    21666 #   django_celery_results_taskresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_results_taskresult ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            /           2604    21667    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            0           2604    21668 %   django_mail_template_configuration id    DEFAULT     �   ALTER TABLE ONLY public.django_mail_template_configuration ALTER COLUMN id SET DEFAULT nextval('public.django_mail_template_configuration_id_seq'::regclass);
 T   ALTER TABLE public.django_mail_template_configuration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            1           2604    21669 $   django_mail_template_mailtemplate id    DEFAULT     �   ALTER TABLE ONLY public.django_mail_template_mailtemplate ALTER COLUMN id SET DEFAULT nextval('public.django_mail_template_mailtemplate_id_seq'::regclass);
 S   ALTER TABLE public.django_mail_template_mailtemplate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            2           2604    21670    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250            3           2604    21671    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            4           2604    21672    home_contact id    DEFAULT     r   ALTER TABLE ONLY public.home_contact ALTER COLUMN id SET DEFAULT nextval('public.home_contact_id_seq'::regclass);
 >   ALTER TABLE public.home_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            5           2604    21673    home_subscribe id    DEFAULT     v   ALTER TABLE ONLY public.home_subscribe ALTER COLUMN id SET DEFAULT nextval('public.home_subscribe_id_seq'::regclass);
 @   ALTER TABLE public.home_subscribe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257            6           2604    21674    otp_static_staticdevice id    DEFAULT     �   ALTER TABLE ONLY public.otp_static_staticdevice ALTER COLUMN id SET DEFAULT nextval('public.otp_static_staticdevice_id_seq'::regclass);
 I   ALTER TABLE public.otp_static_staticdevice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            8           2604    21675    otp_static_statictoken id    DEFAULT     �   ALTER TABLE ONLY public.otp_static_statictoken ALTER COLUMN id SET DEFAULT nextval('public.otp_static_statictoken_id_seq'::regclass);
 H   ALTER TABLE public.otp_static_statictoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            9           2604    21676    otp_totp_totpdevice id    DEFAULT     �   ALTER TABLE ONLY public.otp_totp_totpdevice ALTER COLUMN id SET DEFAULT nextval('public.otp_totp_totpdevice_id_seq'::regclass);
 E   ALTER TABLE public.otp_totp_totpdevice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263            >           2604    21677    taggit_tag id    DEFAULT     n   ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);
 <   ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265            ?           2604    21678    taggit_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            p          0    21490    admin_honeypot_loginattempt 
   TABLE DATA           {   COPY public.admin_honeypot_loginattempt (id, username, ip_address, session_key, user_agent, "timestamp", path) FROM stdin;
    public          postgres    false    209   ~�      r          0    21496 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    211   ��      t          0    21500    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    213   ��      v          0    21504    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    215   ՞      x          0    21508 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    217   *�      y          0    21513    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    218   ڣ      |          0    21518    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    221   ��      ~          0    21522 	   blog_post 
   TABLE DATA           �   COPY public.blog_post (id, title, slug, updated_on, content, created_on, status, author_id, views, banner, description) FROM stdin;
    public          postgres    false    223   �      �          0    21528    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    225   �      �          0    21535 "   django_celery_beat_clockedschedule 
   TABLE DATA           N   COPY public.django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
    public          postgres    false    227   e�      �          0    21539 "   django_celery_beat_crontabschedule 
   TABLE DATA           �   COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
    public          postgres    false    229   ��      �          0    21545 #   django_celery_beat_intervalschedule 
   TABLE DATA           P   COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
    public          postgres    false    231   ��      �          0    21549    django_celery_beat_periodictask 
   TABLE DATA           '  COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
    public          postgres    false    233   Ȧ      �          0    21558     django_celery_beat_periodictasks 
   TABLE DATA           N   COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
    public          postgres    false    235   =�      �          0    21561     django_celery_beat_solarschedule 
   TABLE DATA           Z   COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
    public          postgres    false    236   }�      �          0    21565 "   django_celery_results_chordcounter 
   TABLE DATA           \   COPY public.django_celery_results_chordcounter (id, group_id, sub_tasks, count) FROM stdin;
    public          postgres    false    238   ��      �          0    21572 !   django_celery_results_groupresult 
   TABLE DATA           �   COPY public.django_celery_results_groupresult (id, group_id, date_created, date_done, content_type, content_encoding, result) FROM stdin;
    public          postgres    false    240   ��      �          0    21578     django_celery_results_taskresult 
   TABLE DATA           �   COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created, periodic_task_name) FROM stdin;
    public          postgres    false    242   ԧ      �          0    21584    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    244   n�      �          0    21588 "   django_mail_template_configuration 
   TABLE DATA           h   COPY public.django_mail_template_configuration (id, process, description, mail_template_id) FROM stdin;
    public          postgres    false    246   ��      �          0    21594 !   django_mail_template_mailtemplate 
   TABLE DATA           �   COPY public.django_mail_template_mailtemplate (id, title, "to", from_email, subject, body, description, bcc, cc, reply_to) FROM stdin;
    public          postgres    false    248   �      �          0    21600    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    250   y�      �          0    21606    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    252   �      �          0    21611    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    253   *�      �          0    21615    home_contact 
   TABLE DATA           I   COPY public.home_contact (id, name, email, message, subject) FROM stdin;
    public          postgres    false    255   W�      �          0    21621    home_subscribe 
   TABLE DATA           3   COPY public.home_subscribe (id, email) FROM stdin;
    public          postgres    false    257   �      �          0    21625    otp_static_staticdevice 
   TABLE DATA           �   COPY public.otp_static_staticdevice (id, name, confirmed, user_id, throttling_failure_count, throttling_failure_timestamp) FROM stdin;
    public          postgres    false    259   �      �          0    21630    otp_static_statictoken 
   TABLE DATA           F   COPY public.otp_static_statictoken (id, token, device_id) FROM stdin;
    public          postgres    false    261   �      �          0    21634    otp_totp_totpdevice 
   TABLE DATA           �   COPY public.otp_totp_totpdevice (id, name, confirmed, key, step, t0, digits, tolerance, drift, last_t, user_id, throttling_failure_count, throttling_failure_timestamp) FROM stdin;
    public          postgres    false    263   ;�      �          0    21642 
   taggit_tag 
   TABLE DATA           4   COPY public.taggit_tag (id, name, slug) FROM stdin;
    public          postgres    false    265   X�      �          0    21646    taggit_taggeditem 
   TABLE DATA           S   COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public          postgres    false    267   }�      �           0    0 "   admin_honeypot_loginattempt_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.admin_honeypot_loginattempt_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    212            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 108, true);
          public          postgres    false    216            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    219            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    220            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    222            �           0    0    blog_post_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_post_id_seq', 7, true);
          public          postgres    false    224            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);
          public          postgres    false    226            �           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_beat_clockedschedule_id_seq', 1, false);
          public          postgres    false    228            �           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.django_celery_beat_crontabschedule_id_seq', 1, true);
          public          postgres    false    230            �           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.django_celery_beat_intervalschedule_id_seq', 1, false);
          public          postgres    false    232            �           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.django_celery_beat_periodictask_id_seq', 1, true);
          public          postgres    false    234            �           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_celery_beat_solarschedule_id_seq', 1, false);
          public          postgres    false    237            �           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_results_chordcounter_id_seq', 1, false);
          public          postgres    false    239            �           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.django_celery_results_groupresult_id_seq', 1, false);
          public          postgres    false    241            �           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 11, true);
          public          postgres    false    243            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);
          public          postgres    false    245            �           0    0 )   django_mail_template_configuration_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.django_mail_template_configuration_id_seq', 1, true);
          public          postgres    false    247            �           0    0 (   django_mail_template_mailtemplate_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_mail_template_mailtemplate_id_seq', 1, true);
          public          postgres    false    249            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 88, true);
          public          postgres    false    251            �           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    254            �           0    0    home_contact_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_contact_id_seq', 8, true);
          public          postgres    false    256            �           0    0    home_subscribe_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.home_subscribe_id_seq', 1, false);
          public          postgres    false    258            �           0    0    otp_static_staticdevice_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.otp_static_staticdevice_id_seq', 1, false);
          public          postgres    false    260            �           0    0    otp_static_statictoken_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.otp_static_statictoken_id_seq', 1, false);
          public          postgres    false    262            �           0    0    otp_totp_totpdevice_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.otp_totp_totpdevice_id_seq', 1, false);
          public          postgres    false    264            �           0    0    taggit_tag_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, true);
          public          postgres    false    266            �           0    0    taggit_taggeditem_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 6, true);
          public          postgres    false    268            A           2606    21680 <   admin_honeypot_loginattempt admin_honeypot_loginattempt_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.admin_honeypot_loginattempt
    ADD CONSTRAINT admin_honeypot_loginattempt_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.admin_honeypot_loginattempt DROP CONSTRAINT admin_honeypot_loginattempt_pkey;
       public            postgres    false    209            D           2606    21682    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    211            I           2606    21684 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    213    213            L           2606    21686 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    213            F           2606    21688    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    211            O           2606    21690 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    215    215            Q           2606    21692 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    215            Y           2606    21694 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    218            \           2606    21696 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    218    218            S           2606    21698    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    217            _           2606    21700 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    221            b           2606    21702 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    221    221            V           2606    21704     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    217            e           2606    21706    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            postgres    false    223            h           2606    21708    blog_post blog_post_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_slug_key;
       public            postgres    false    223            k           2606    21710    blog_post blog_post_title_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_title_key UNIQUE (title);
 G   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_title_key;
       public            postgres    false    223            n           2606    21712 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    225            q           2606    21714 J   django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule
    ADD CONSTRAINT django_celery_beat_clockedschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_clockedschedule DROP CONSTRAINT django_celery_beat_clockedschedule_pkey;
       public            postgres    false    227            s           2606    21716 J   django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule
    ADD CONSTRAINT django_celery_beat_crontabschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_crontabschedule DROP CONSTRAINT django_celery_beat_crontabschedule_pkey;
       public            postgres    false    229            u           2606    21718 L   django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule
    ADD CONSTRAINT django_celery_beat_intervalschedule_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.django_celery_beat_intervalschedule DROP CONSTRAINT django_celery_beat_intervalschedule_pkey;
       public            postgres    false    231            {           2606    21720 H   django_celery_beat_periodictask django_celery_beat_periodictask_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_name_key UNIQUE (name);
 r   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_name_key;
       public            postgres    false    233            }           2606    21722 D   django_celery_beat_periodictask django_celery_beat_periodictask_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_pkey;
       public            postgres    false    233            �           2606    21724 F   django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictasks
    ADD CONSTRAINT django_celery_beat_periodictasks_pkey PRIMARY KEY (ident);
 p   ALTER TABLE ONLY public.django_celery_beat_periodictasks DROP CONSTRAINT django_celery_beat_periodictasks_pkey;
       public            postgres    false    235            �           2606    21726 `   django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq UNIQUE (event, latitude, longitude);
 �   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq;
       public            postgres    false    236    236    236            �           2606    21728 F   django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solarschedule_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solarschedule_pkey;
       public            postgres    false    236            �           2606    21730 R   django_celery_results_chordcounter django_celery_results_chordcounter_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_group_id_key UNIQUE (group_id);
 |   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_group_id_key;
       public            postgres    false    238            �           2606    21732 J   django_celery_results_chordcounter django_celery_results_chordcounter_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_pkey;
       public            postgres    false    238            �           2606    21734 P   django_celery_results_groupresult django_celery_results_groupresult_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_group_id_key UNIQUE (group_id);
 z   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_group_id_key;
       public            postgres    false    240            �           2606    21736 H   django_celery_results_groupresult django_celery_results_groupresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_pkey;
       public            postgres    false    240            �           2606    21738 F   django_celery_results_taskresult django_celery_results_taskresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_pkey;
       public            postgres    false    242            �           2606    21740 M   django_celery_results_taskresult django_celery_results_taskresult_task_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);
 w   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_task_id_key;
       public            postgres    false    242            �           2606    21742 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    244    244            �           2606    21744 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    244            �           2606    21746 J   django_mail_template_configuration django_mail_template_configuration_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_mail_template_configuration
    ADD CONSTRAINT django_mail_template_configuration_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_mail_template_configuration DROP CONSTRAINT django_mail_template_configuration_pkey;
       public            postgres    false    246            �           2606    21748 H   django_mail_template_mailtemplate django_mail_template_mailtemplate_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_mail_template_mailtemplate
    ADD CONSTRAINT django_mail_template_mailtemplate_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.django_mail_template_mailtemplate DROP CONSTRAINT django_mail_template_mailtemplate_pkey;
       public            postgres    false    248            �           2606    21750 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    250            �           2606    21752 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    252            �           2606    21754 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    253            �           2606    21756    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    253            �           2606    21758    home_contact home_contact_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_contact
    ADD CONSTRAINT home_contact_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_contact DROP CONSTRAINT home_contact_pkey;
       public            postgres    false    255            �           2606    21760 '   home_subscribe home_subscribe_email_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.home_subscribe
    ADD CONSTRAINT home_subscribe_email_key UNIQUE (email);
 Q   ALTER TABLE ONLY public.home_subscribe DROP CONSTRAINT home_subscribe_email_key;
       public            postgres    false    257            �           2606    21762 "   home_subscribe home_subscribe_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.home_subscribe
    ADD CONSTRAINT home_subscribe_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.home_subscribe DROP CONSTRAINT home_subscribe_pkey;
       public            postgres    false    257            �           2606    21764 4   otp_static_staticdevice otp_static_staticdevice_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.otp_static_staticdevice
    ADD CONSTRAINT otp_static_staticdevice_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.otp_static_staticdevice DROP CONSTRAINT otp_static_staticdevice_pkey;
       public            postgres    false    259            �           2606    21766 2   otp_static_statictoken otp_static_statictoken_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.otp_static_statictoken
    ADD CONSTRAINT otp_static_statictoken_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.otp_static_statictoken DROP CONSTRAINT otp_static_statictoken_pkey;
       public            postgres    false    261            �           2606    21768 ,   otp_totp_totpdevice otp_totp_totpdevice_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.otp_totp_totpdevice
    ADD CONSTRAINT otp_totp_totpdevice_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.otp_totp_totpdevice DROP CONSTRAINT otp_totp_totpdevice_pkey;
       public            postgres    false    263            �           2606    21770    taggit_tag taggit_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
       public            postgres    false    265            �           2606    21772    taggit_tag taggit_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
       public            postgres    false    265            �           2606    21774    taggit_tag taggit_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
       public            postgres    false    265            �           2606    21776 J   taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);
 t   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq;
       public            postgres    false    267    267    267            �           2606    21778 (   taggit_taggeditem taggit_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
       public            postgres    false    267            B           1259    21779    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    211            G           1259    21780 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    213            J           1259    21781 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    213            M           1259    21782 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    215            W           1259    21783 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    218            Z           1259    21784 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    218            ]           1259    21785 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    221            `           1259    21786 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    221            T           1259    21787     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    217            c           1259    21788    blog_post_author_id_dd7a8485    INDEX     W   CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);
 0   DROP INDEX public.blog_post_author_id_dd7a8485;
       public            postgres    false    223            f           1259    21789    blog_post_slug_b95473f2_like    INDEX     f   CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_post_slug_b95473f2_like;
       public            postgres    false    223            i           1259    21790    blog_post_title_adf2f203_like    INDEX     h   CREATE INDEX blog_post_title_adf2f203_like ON public.blog_post USING btree (title varchar_pattern_ops);
 1   DROP INDEX public.blog_post_title_adf2f203_like;
       public            postgres    false    223            l           1259    21791 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    225            o           1259    21792 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    225            �           1259    21793    django_cele_date_cr_bd6c1d_idx    INDEX     t   CREATE INDEX django_cele_date_cr_bd6c1d_idx ON public.django_celery_results_groupresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_bd6c1d_idx;
       public            postgres    false    240            �           1259    21794    django_cele_date_cr_f04a50_idx    INDEX     s   CREATE INDEX django_cele_date_cr_f04a50_idx ON public.django_celery_results_taskresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_f04a50_idx;
       public            postgres    false    242            �           1259    21795    django_cele_date_do_caae0e_idx    INDEX     q   CREATE INDEX django_cele_date_do_caae0e_idx ON public.django_celery_results_groupresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_caae0e_idx;
       public            postgres    false    240            �           1259    21796    django_cele_date_do_f59aad_idx    INDEX     p   CREATE INDEX django_cele_date_do_f59aad_idx ON public.django_celery_results_taskresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_f59aad_idx;
       public            postgres    false    242            �           1259    21797    django_cele_status_9b6201_idx    INDEX     l   CREATE INDEX django_cele_status_9b6201_idx ON public.django_celery_results_taskresult USING btree (status);
 1   DROP INDEX public.django_cele_status_9b6201_idx;
       public            postgres    false    242            �           1259    21798    django_cele_task_na_08aec9_idx    INDEX     p   CREATE INDEX django_cele_task_na_08aec9_idx ON public.django_celery_results_taskresult USING btree (task_name);
 2   DROP INDEX public.django_cele_task_na_08aec9_idx;
       public            postgres    false    242            �           1259    21799    django_cele_worker_d54dd8_idx    INDEX     l   CREATE INDEX django_cele_worker_d54dd8_idx ON public.django_celery_results_taskresult USING btree (worker);
 1   DROP INDEX public.django_cele_worker_d54dd8_idx;
       public            postgres    false    242            v           1259    21800 3   django_celery_beat_periodictask_clocked_id_47a69f82    INDEX     �   CREATE INDEX django_celery_beat_periodictask_clocked_id_47a69f82 ON public.django_celery_beat_periodictask USING btree (clocked_id);
 G   DROP INDEX public.django_celery_beat_periodictask_clocked_id_47a69f82;
       public            postgres    false    233            w           1259    21801 3   django_celery_beat_periodictask_crontab_id_d3cba168    INDEX     �   CREATE INDEX django_celery_beat_periodictask_crontab_id_d3cba168 ON public.django_celery_beat_periodictask USING btree (crontab_id);
 G   DROP INDEX public.django_celery_beat_periodictask_crontab_id_d3cba168;
       public            postgres    false    233            x           1259    21802 4   django_celery_beat_periodictask_interval_id_a8ca27da    INDEX     �   CREATE INDEX django_celery_beat_periodictask_interval_id_a8ca27da ON public.django_celery_beat_periodictask USING btree (interval_id);
 H   DROP INDEX public.django_celery_beat_periodictask_interval_id_a8ca27da;
       public            postgres    false    233            y           1259    21803 2   django_celery_beat_periodictask_name_265a36b7_like    INDEX     �   CREATE INDEX django_celery_beat_periodictask_name_265a36b7_like ON public.django_celery_beat_periodictask USING btree (name varchar_pattern_ops);
 F   DROP INDEX public.django_celery_beat_periodictask_name_265a36b7_like;
       public            postgres    false    233            ~           1259    21804 1   django_celery_beat_periodictask_solar_id_a87ce72c    INDEX     �   CREATE INDEX django_celery_beat_periodictask_solar_id_a87ce72c ON public.django_celery_beat_periodictask USING btree (solar_id);
 E   DROP INDEX public.django_celery_beat_periodictask_solar_id_a87ce72c;
       public            postgres    false    233            �           1259    21805 9   django_celery_results_chordcounter_group_id_1f70858c_like    INDEX     �   CREATE INDEX django_celery_results_chordcounter_group_id_1f70858c_like ON public.django_celery_results_chordcounter USING btree (group_id varchar_pattern_ops);
 M   DROP INDEX public.django_celery_results_chordcounter_group_id_1f70858c_like;
       public            postgres    false    238            �           1259    21806 8   django_celery_results_groupresult_group_id_a085f1a9_like    INDEX     �   CREATE INDEX django_celery_results_groupresult_group_id_a085f1a9_like ON public.django_celery_results_groupresult USING btree (group_id varchar_pattern_ops);
 L   DROP INDEX public.django_celery_results_groupresult_group_id_a085f1a9_like;
       public            postgres    false    240            �           1259    21807 6   django_celery_results_taskresult_task_id_de0d95bf_like    INDEX     �   CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);
 J   DROP INDEX public.django_celery_results_taskresult_task_id_de0d95bf_like;
       public            postgres    false    242            �           1259    21808 <   django_mail_template_configuration_mail_template_id_701be874    INDEX     �   CREATE INDEX django_mail_template_configuration_mail_template_id_701be874 ON public.django_mail_template_configuration USING btree (mail_template_id);
 P   DROP INDEX public.django_mail_template_configuration_mail_template_id_701be874;
       public            postgres    false    246            �           1259    21809 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    252            �           1259    21810 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    252            �           1259    21811     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    253            �           1259    21812 "   home_subscribe_email_36344b62_like    INDEX     r   CREATE INDEX home_subscribe_email_36344b62_like ON public.home_subscribe USING btree (email varchar_pattern_ops);
 6   DROP INDEX public.home_subscribe_email_36344b62_like;
       public            postgres    false    257            �           1259    21813 (   otp_static_staticdevice_user_id_7f9cff2b    INDEX     o   CREATE INDEX otp_static_staticdevice_user_id_7f9cff2b ON public.otp_static_staticdevice USING btree (user_id);
 <   DROP INDEX public.otp_static_staticdevice_user_id_7f9cff2b;
       public            postgres    false    259            �           1259    21814 )   otp_static_statictoken_device_id_74b7c7d1    INDEX     q   CREATE INDEX otp_static_statictoken_device_id_74b7c7d1 ON public.otp_static_statictoken USING btree (device_id);
 =   DROP INDEX public.otp_static_statictoken_device_id_74b7c7d1;
       public            postgres    false    261            �           1259    21815 %   otp_static_statictoken_token_d0a51866    INDEX     i   CREATE INDEX otp_static_statictoken_token_d0a51866 ON public.otp_static_statictoken USING btree (token);
 9   DROP INDEX public.otp_static_statictoken_token_d0a51866;
       public            postgres    false    261            �           1259    21816 *   otp_static_statictoken_token_d0a51866_like    INDEX     �   CREATE INDEX otp_static_statictoken_token_d0a51866_like ON public.otp_static_statictoken USING btree (token varchar_pattern_ops);
 >   DROP INDEX public.otp_static_statictoken_token_d0a51866_like;
       public            postgres    false    261            �           1259    21817 $   otp_totp_totpdevice_user_id_0fb18292    INDEX     g   CREATE INDEX otp_totp_totpdevice_user_id_0fb18292 ON public.otp_totp_totpdevice USING btree (user_id);
 8   DROP INDEX public.otp_totp_totpdevice_user_id_0fb18292;
       public            postgres    false    263            �           1259    21818    taggit_tag_name_58eb2ed9_like    INDEX     h   CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_name_58eb2ed9_like;
       public            postgres    false    265            �           1259    21819    taggit_tag_slug_6be58b2c_like    INDEX     h   CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_slug_6be58b2c_like;
       public            postgres    false    265            �           1259    21820 *   taggit_taggeditem_content_type_id_9957a03c    INDEX     s   CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
       public            postgres    false    267            �           1259    21821 8   taggit_taggeditem_content_type_id_object_id_196cc965_idx    INDEX     �   CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
       public            postgres    false    267    267            �           1259    21822 $   taggit_taggeditem_object_id_e2d7d1df    INDEX     g   CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);
 8   DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
       public            postgres    false    267            �           1259    21823 !   taggit_taggeditem_tag_id_f4f5b767    INDEX     a   CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);
 5   DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
       public            postgres    false    267            �           2606    21824 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3409    213    215            �           2606    21829 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    213    211    3398            �           2606    21834 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    215    3486    244            �           2606    21839 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    218    211    3398            �           2606    21844 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    218    217    3411            �           2606    21849 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    3409    221            �           2606    21854 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3411    217    221            �           2606    21859 6   blog_post blog_post_author_id_dd7a8485_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id;
       public          postgres    false    3411    217    223            �           2606    21864 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    244    3486    225            �           2606    21869 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    217    225    3411            �           2606    21874 U   django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce;
       public          postgres    false    233    3441    227            �           2606    21879 U   django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce;
       public          postgres    false    3443    229    233            �           2606    21884 V   django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce;
       public          postgres    false    231    3445    233            �           2606    21889 S   django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce;
       public          postgres    false    3460    233    236            �           2606    21894 b   django_mail_template_configuration django_mail_template_configuration_mail_template_id_701be874_fk    FK CONSTRAINT       ALTER TABLE ONLY public.django_mail_template_configuration
    ADD CONSTRAINT django_mail_template_configuration_mail_template_id_701be874_fk FOREIGN KEY (mail_template_id) REFERENCES public.django_mail_template_mailtemplate(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.django_mail_template_configuration DROP CONSTRAINT django_mail_template_configuration_mail_template_id_701be874_fk;
       public          postgres    false    248    3491    246            �           2606    21899 P   otp_static_staticdevice otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.otp_static_staticdevice
    ADD CONSTRAINT otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.otp_static_staticdevice DROP CONSTRAINT otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id;
       public          postgres    false    259    217    3411            �           2606    21904 C   otp_static_statictoken otp_static_statictoken_device_id_74b7c7d1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.otp_static_statictoken
    ADD CONSTRAINT otp_static_statictoken_device_id_74b7c7d1_fk FOREIGN KEY (device_id) REFERENCES public.otp_static_staticdevice(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.otp_static_statictoken DROP CONSTRAINT otp_static_statictoken_device_id_74b7c7d1_fk;
       public          postgres    false    259    3511    261            �           2606    21909 H   otp_totp_totpdevice otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.otp_totp_totpdevice
    ADD CONSTRAINT otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.otp_totp_totpdevice DROP CONSTRAINT otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id;
       public          postgres    false    263    3411    217            �           2606    21914 I   taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
       public          postgres    false    244    267    3486            �           2606    21919 D   taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
       public          postgres    false    3525    267    265            p      x������ � �      r      x������ � �      t      x������ � �      v   E  x�u��n�:���S�	����3�.�p�Ԉ�Ӌ���)R$�tgS߁�l��������|�������8��	��j@���v�!K �~��c��
������-�P�����1,�0�L�8`iN��N����X4(�#[T$x�)�����nJ0�ֽHs4��q�!h��� .p�L��M�G�*9?��������hxn���`�f����a��{S�m��H�!ş���G�/^�fF�]ź�z��6`�l����0�팡���\g\%�3}Vo�h'<�B�7�� TN#@ ���qr��]oK?o����nK�Œ##��l�(YbTd��9�J�c]��SJ��f�*O�Ȉ���3*b"� kt"E(� ���iYM(rhI�ٖ*�i�*�������e�MF9{��b\l���V*mq��q��8�øHT�ia���^����ø�f�-b�&3!Y6��6�$q���(a��P��~��ܛq�5��ҿ��c��V�-`ʠ�W9.xJ���.�S9��>��5v�q���;�*�%���
UR���
Q��{ZT����<��7-W�jڵ!��l�K%�y�];���p�4��rm�w�W��얰ئ�v�x�� *�]��,#��o���B�@�)����6@�po�B�5z��8�x�л�VP��
�i>v|M��������m	_���e��7�u�2O՛�z��՛�����0��1�%��K.��m���bS�d��]R�K2��.�`쒌���4o{�c�jS�M���>��<}p%��\B�\J��(��gW8W,�i���s8.���5�婜�Rs�<��@Ti��`��_�0^��}������G��GU�;�k��ѝ�k�(ҝ �q�ҟ�����nI%�8hO�Rw>�I��֝�oR#*v�����j��sO����*�7�ٓ���b!Qջ���XHD�tI8W����?a�ϡ�,���cĞTg,�����p�;��Q��d�-l?�O0^� �h}%��Gi����ڥ�F^�rEܧ4_�X���֊E@(�͓5$\-��$�Z )�;���#������      x   �   x�3�,H�NI3�/�H425S123 ��|�'Ǌ����<���\�BO7c7W/�<�Д*��r�����䤐L߰t��`?�ܢHC�ʐ��RO[N###]CC]#C3+s+#=3KScmS+c��Ĕ��<N (B�fz斆��\1z\\\ 4~,�      y      x������ � �      |      x������ � �      ~   �   x�}�M��0��ɯ�}i�w4H�z�%5�ئ4Y���[� ",3��=<�3��=�K�X�Q0!*�+�׎)�$Ֆ-��`�I��C�}����z1�/�pZRc�Z>��4���,|�0Bw��,��͖���|>��t4�62Bi����Q��,\+c�b>��H�VNr�����!���]>�B���L[�\HI	�)��
��R�      �   l  x���Aj�0E��)D�%B3��,�z��}Z��4v	ބ��WN�Q� �{O_j�%�R��P+o�4�El��!��f�Fbu\Ħ�4� ��ӫ -�«�$P�2�jM�ĺk����vq�Q!&e"����1�LY�b5�&g]:
�3p�圭�x���ʥ��J^{�	�)y��!���[��M�t��e&<7���AyV$.d��i8)�����d�P���U�F��Q#�� ��i��S�Fi ��,�1��_E �*(-֞yTY��޷�����kfM����ʧ�q�L����,�m����|��5��0J������m㮛��7zP)vlЖ<�u����:����~QUU}}h��      �      x������ � �      �      x�3�4�4����g�=... �      �      x������ � �      �   e   x�3�LN�I-��KJL�N�K�O�IM�+-�%�Y]��@% ����H��P��\��������@������L����؀���!JC�11620������ ��$�      �   0   x�3�4202�54�50W04�22�21�314550�60�26������ �1&      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x��VMk1=˿b�Ňv\�4�����B���4�$I+5��5����*��C(�O�e���ۧ�7�"��ְt�@��K=����c�������Ņ���I
�d>�t���Ī/��l5�
%�D��AݲlI��qV��[-���x��ɴ[�ٰm�n����� � %(�B�!{��g�^�����t��|���巳��>�����s�+��I�/&q���b�~l�����e��4�j8:����:|���]N}s��lބ��f��GÛ��y��>c��d�Of�����a+�[��g��F-���}� �;�H���hɐTH��ѭ�cIZY:L�5 ۍ>$4E�)P���ɨ!iL�;Ś�{��<m�Vks�>k ������+�	J�(���"�����A�X���\Kz���� �ɓ���G(��� �f�k�1Ge�/��An��l�t������w`�M1�r����J<@��+i��b�����(�L;���PR&�����/�"U5;��
ў���l�ɽ���ڭ���co�zʼL��d�Ru5��";��#�zi����z+�Q
�+5���=��)5����0&������G���-�E�Y��<�"-P�<�Z�L�SЮ8'� l��; v pK���`0�L�V�      �   ;  x����n� ��퇙J��.�"^�Jp�R�~�(j���p�Ǳ�(�vt<�$�؀�2�Dqt)9�_"}�<�a9Q�#R��<Qzx�D��i]�����/0�H�r�Lt�u	Tm��RL��P ���	U�z��nD���Cϭ!Oqn;�&V��b �=�:lQ����?��V^ıuFt��:��$T�-&����Y�gs#�����H){IP-klvo3p��s�%6����jլШ�o��N^AU��f��~�>G-���a�_���扥~4�T�d:��J������#���X�u��wK�F??�Ƀd      �      x�3�L��+IL.��M����4����� V�      �   �   x�-��
�0Dϛ�����R��c��dM�i6$J�z�
s�7�9��,�ʼ��`�B�J%m:��,;z�����.�-���&T��P�{0�������=�v��p�)�'��Q���i$��]�2�~����R���0�      �   �  x����r�8�������zH�g��b��6��Jr���/�풵{��|"@� H�ٍ��e�<�y����k�0�o�c���L=��Z0�o|+�l���z��1.��Fl���h�/Vr�ߏ{\���p߃�E��i�2Fp�.�R�JAK��n���������0e�S,���p�u��q\�IZ�bn
���0�0�U�LR L��H�7���f74���w�i�\�����}���_��B�f�b�I�(Gಢc��<�xG�?4�����s�)�p�p��ӌ/��t��Ij�6 )f|M^����yY�q)� b87 	#�rL���W��p�Kـ `\Ii���S7Q��;�c+���c.zo��m�q�Ϲ�i��!�s�/�9HI+�D��H�������!��%^є�5�l�qv����t|��Y��#��#�+��4~|f�Z���R�Jw�{߻�Q����p|�4�}w���-�T�!�[k�b�k�E�Ԛj%�!||���9�NC��pAm�(�.8e��j����EV��#���0�-��5M��H�͋�Omp�R~�![��^�X!O K �0@
�t�9���'�-�0�rF0�7_�~���r�
��Ip2�����pR�	 {w�P2�=Y$K��]{Lg�4A���}�^�����4~ɴ6̻�;ơ�l�呥��o�*��B����x\�D[�h�������߅>�l��j�b��O�
"M8�8���4 Aҗ��� v7��8V�� y'	g��c�d�q�pP��s��Ǿ���khO}���;�f<D��:\T�$kn�D��Ʈ�ê�p��3NE�-T6��9A�
�f8���q/�4nIsᾳXư�UV��I*�q7��ni�7l��8u�g��Aҗ�I�]_Cӆ����"��%���ǎI������֧*B��p*	�E�eR�TRUE(���c4���-{mq^�3��(���7)��`+-�b^%\E#�w��я��Ю*��>�;���M�^��q��sq[p����|ꗻ�g�He��nU�a�\�Λt��i?����O��T�[�dص�Z{p��<Ze��[�dD�'(ΗL�r��N��$�|2�:�����9No�&�-X�$ }+��s�y��M��4�T;��
)Ú����k�Pn�N2!RcԷBʸ6�����Όוt�"}����ND_�PzE�ފf%a]�x۞�}��Q���"��h�誄�r>��ۈ���ݚ(�J����0�1�K'z˱mQ�Ԧ
W@�㙿4��l's6�JWE���d�]����3-�@<-[�Dê����C�B�cq�c+�����xx`#�Oq2@Fp>5�rj
�A��4������b+΢ ,�i�0� 2p��eg���Ѝ�ڌ���K�t��.�xNz7����:���wþl.q�N���Z<�[
�{�,�r�X�-y��j�a�ٗf�ՊMۖ]A�Y)~n�;��	)�1�����.�1w}0��f��w�h�P�@���K�vD��k�2�]z��,�/��U�B����㐡�_��x�f+�FA�O"8:f�)�}�HQ���<������j���4�It3cMv���������/����#�64X�=b-��y*�UF�ᄥU��}zz�[���      �     x���n�0  �g���/���ʘ`2���%�"Pk�8_��3���K�K3�I��
���kT�˜N��&���+�q����������t��]G�\6mL�^�s;��Gɑ�e��a�X����W�<z�WQ1t�b��J�Yn@�F�'�4`a�8�'ȐR���S��j��Wռ��c��T��g7��[>Z�f��G��r��*���qn#�W�q �<��ߓn�� $C(C�j&�&җ��O}�� �{)I��?^�      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �   }   x���;
�@Dk�>���9e�F��%���*�ކ�*��yo:�Am"x�S�ͤ�F���6��Uc���a{���~�&Z��&�W��s`<���r�*�I̙\b�G�߫�w�'���-"�8ǰ�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3��K��\1z\\\ +�L      �      x�3�4�44�4�2�4�0b���� $��     