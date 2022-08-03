SET check_function_bodies = false;
CREATE TABLE public.organization (
    id integer NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.organization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.organization_id_seq OWNED BY public.organization.id;
CREATE TABLE public.organization_user (
    id integer NOT NULL,
    user_id integer NOT NULL,
    organization_id integer NOT NULL
);
CREATE SEQUENCE public.organization_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.organization_user_id_seq OWNED BY public.organization_user.id;
CREATE TABLE public."user" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL
);
CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
ALTER TABLE ONLY public.organization ALTER COLUMN id SET DEFAULT nextval('public.organization_id_seq'::regclass);
ALTER TABLE ONLY public.organization_user ALTER COLUMN id SET DEFAULT nextval('public.organization_user_id_seq'::regclass);
ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.organization_user
    ADD CONSTRAINT organization_user_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.organization_user
    ADD CONSTRAINT organization_user_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.organization_user
    ADD CONSTRAINT organization_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
