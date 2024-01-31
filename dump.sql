CREATE TABLE public.beep (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    author_id uuid NOT NULL,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    like_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.beep OWNER TO postgres;

--
-- Name: follow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.follow (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    follower uuid NOT NULL,
    followee uuid NOT NULL
);


ALTER TABLE public.follow OWNER TO postgres;

--
-- Name: liked; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liked (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    liker_id uuid NOT NULL,
    beep_id uuid NOT NULL
);


ALTER TABLE public.liked OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    auth0_id text NOT NULL,
    picture text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: beep; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.beep VALUES ('2931bb55-0380-4a14-ae41-e506b8029695', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'hello', '2024-01-27 18:00:35.489135', 0);
INSERT INTO public.beep VALUES ('d3409248-11ec-42b2-8b1b-9eed9c155977', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'hola', '2024-01-27 18:05:12.37853', 0);
INSERT INTO public.beep VALUES ('c91315cd-5dfb-4b01-b2c5-da702a1a58e9', '6a43a21d-8261-40e6-969f-f9bd8e0670ef', 'salut !', '2024-01-31 08:14:26.349172', 0);
INSERT INTO public.beep VALUES ('39093dcd-1c21-4a9b-8c21-082cbda64e2d', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', 'beeeep', '2024-01-31 08:14:36.573566', 0);
INSERT INTO public.beep VALUES ('132a05f0-21fb-4215-96c0-2f85af0ecf7c', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'yo', '2024-01-27 18:59:31.683918', 0);
INSERT INTO public.beep VALUES ('990a1df1-b503-40b5-8aca-129fa3b6a737', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'salut', '2024-01-27 19:02:49.367415', 0);
INSERT INTO public.beep VALUES ('ed531b98-1aee-4639-988b-d44b3782e6f4', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'bonjour', '2024-01-27 19:03:33.478406', 0);
INSERT INTO public.beep VALUES ('ca0d68e0-dea2-43a5-af10-0eb6cf8bb95f', 'd09ef501-195c-4295-8e72-0e3daf1e224e', 'Oh nan', '2024-01-31 08:14:43.029311', 0);
INSERT INTO public.beep VALUES ('8c673008-26fd-446d-a6b1-51c777b6dcaa', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', 'dinggz', '2024-01-31 08:14:48.617669', 0);
INSERT INTO public.beep VALUES ('09fb9c16-6cdf-4b2d-8697-5e95110ec8dd', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'hey
', '2024-01-27 19:02:17.466879', 0);
INSERT INTO public.beep VALUES ('62e08512-12f9-45c0-bd94-5079e8faf22f', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'ça va', '2024-01-31 08:15:04.030053', 0);
INSERT INTO public.beep VALUES ('b23384d3-af77-4720-a8a7-10bcacfd06f1', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'hallo', '2024-01-27 19:03:52.982353', 1);
INSERT INTO public.beep VALUES ('9ab1883d-3459-4e5b-ab09-5e4c43cb5223', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'ouais', '2024-01-27 19:15:19.057334', 0);
INSERT INTO public.beep VALUES ('19284163-a150-4403-908c-04fdb7ac5e4b', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'ça va
', '2024-01-31 08:15:04.40318', 0);
INSERT INTO public.beep VALUES ('3aae2b27-9e18-4ef9-9b0a-da009774dca5', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'hello', '2024-01-27 17:59:47.553267', 0);
INSERT INTO public.beep VALUES ('fd42059b-05c6-459e-9235-4a51a907cdb0', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'ça va', '2024-01-31 08:15:04.403174', 0);
INSERT INTO public.beep VALUES ('cb6a3595-fc63-4379-b433-f6b445a320a4', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'hello', '2024-01-27 18:04:25.894427', 0);
INSERT INTO public.beep VALUES ('07bc572d-d64f-46a4-85d9-a195a2938e0d', 'a377fc1d-aef5-4458-9f0f-83d70f5b524c', 'Test !', '2024-01-28 17:29:46.888956', 0);
INSERT INTO public.beep VALUES ('45fa2128-3283-4c6c-bd3d-47934349cada', 'ed24cd65-b684-4b15-97e3-090407e7093e', '', '2024-01-31 08:15:10.235724', 0);
INSERT INTO public.beep VALUES ('2caf9f1b-66fb-434d-b12b-1fdf5de0cbed', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'testlit', '2024-01-30 19:09:00.567953', 0);
INSERT INTO public.beep VALUES ('69699013-cc36-413b-aa1a-6200fedf09a2', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'test', '2024-01-30 19:10:05.910183', 0);
INSERT INTO public.beep VALUES ('38976a36-b5c0-44b0-8c21-488761f18617', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'yes', '2024-01-30 19:13:52.614544', 0);
INSERT INTO public.beep VALUES ('06ba1dbd-87a8-4898-9d7c-c2b7a101780d', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'oui', '2024-01-30 19:14:31.541108', 0);
INSERT INTO public.beep VALUES ('774ebc70-83a2-4f8d-9be8-e2dd3d7733b8', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'uwgedou', '2024-01-30 19:35:53.244353', 0);
INSERT INTO public.beep VALUES ('56d74e1f-9411-4049-8353-32c1ff8d0dd9', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'post', '2024-01-30 19:38:50.853428', 0);
INSERT INTO public.beep VALUES ('8daf014c-d880-400f-a29f-bb2efb50ec1a', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'la', '2024-01-30 19:39:02.18769', 0);
INSERT INTO public.beep VALUES ('d5b7d7bd-43ec-4b27-92c2-a23bca60acae', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'adqw', '2024-01-30 19:42:37.586074', 0);
INSERT INTO public.beep VALUES ('98cd84e5-7fc7-40d3-90e4-36587cd2022f', '1db52a94-ded7-44ca-892f-3573c0efb925', 'pizza miam', '2024-01-31 08:19:29.928278', 3);
INSERT INTO public.beep VALUES ('944e58c5-94e4-45f4-8cb2-cd2debd1956c', '94b78456-713a-4285-83d4-08cebde905cc', 'Bonjour!', '2024-01-31 08:14:57.425061', 1);
INSERT INTO public.beep VALUES ('32e63254-e558-43dd-a59c-9e646c0fff12', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', 'Hello!!', '2024-01-31 08:13:04.430682', 1);
INSERT INTO public.beep VALUES ('d4af2aa9-c64b-4252-a92a-b7e7d627ce0f', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:20.976146', 0);
INSERT INTO public.beep VALUES ('40053900-4cab-4bfb-9c8f-fe76e4334e55', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:21.175594', 0);
INSERT INTO public.beep VALUES ('d78863e4-ed90-4717-872e-cf72b53c91a6', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:21.343675', 0);
INSERT INTO public.beep VALUES ('3c07e369-be84-4d5b-aef6-461588bae435', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'Comment ça va', '2024-01-31 08:13:32.437159', 1);
INSERT INTO public.beep VALUES ('073c72f3-8c5b-4921-976b-6f17fe969cd5', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:21.563004', 0);
INSERT INTO public.beep VALUES ('1852d404-b5f4-412b-a79e-4ada7073e2b6', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:21.73364', 0);
INSERT INTO public.beep VALUES ('23fbf9f3-5d9c-46f9-87ed-07ed8ac71e65', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:21.870827', 0);
INSERT INTO public.beep VALUES ('0a1a7ac7-37ae-43e1-9c3d-72732aaaa98b', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:22.007852', 0);
INSERT INTO public.beep VALUES ('2e8b7012-011b-4f02-8015-0a0392555c0f', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:22.144084', 0);
INSERT INTO public.beep VALUES ('7958e536-968f-468d-a12f-7f023510d976', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'lala', '2024-01-30 23:27:30.103441', 0);
INSERT INTO public.beep VALUES ('8a5e23aa-4b8f-4158-ae94-e963956b721c', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:22.283524', 0);
INSERT INTO public.beep VALUES ('03ca5b33-b051-40bc-b465-e1f92df744af', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'lala', '2024-01-30 19:39:45.713128', 0);
INSERT INTO public.beep VALUES ('1872ab8e-ac4d-4fa9-b5a5-e00167f784a2', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'bien et toi', '2024-01-31 08:14:19.315796', 2);
INSERT INTO public.beep VALUES ('9c05196c-7cb6-4dfc-ac63-384e7e3f0542', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'uwedhou', '2024-01-30 19:40:04.107539', 0);
INSERT INTO public.beep VALUES ('1f409303-0c0b-42e6-94f8-f9a43f9526be', 'a011a178-c0cf-480d-a595-92f48735ce6d', '', '2024-01-31 08:13:00.80789', 1);
INSERT INTO public.beep VALUES ('dd37e0c2-0ed5-402e-9d3e-7a210912e969', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'sqdqsd', '2024-01-31 08:13:00.283186', 1);
INSERT INTO public.beep VALUES ('7669c77f-ec79-4354-bd99-7ebda34a04de', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:25.455608', 0);
INSERT INTO public.beep VALUES ('c43f51e3-9502-4969-ad52-81b450a31a7f', '36946529-25e7-4e22-b0e5-3e211119562b', 'hello', '2024-01-27 18:07:31.412498', 0);
INSERT INTO public.beep VALUES ('12955cc6-fe13-4144-ba45-952c4a7116f5', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:25.611061', 0);
INSERT INTO public.beep VALUES ('f046a8d1-7fa1-4f05-9f58-cda192c26fc6', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'hallo', '2024-01-27 18:06:28.642731', 1);
INSERT INTO public.beep VALUES ('08043bfb-20e9-41f8-8eca-db22c671e536', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'post', '2024-01-31 08:11:19.105753', 0);
INSERT INTO public.beep VALUES ('b326b5c2-c30c-48c0-94a0-beb77e763ea3', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'Bonjour', '2024-01-31 08:11:46.852963', 0);
INSERT INTO public.beep VALUES ('61522741-340d-4ea8-b95b-d0fde6e61e69', '92a3b4d6-5606-4b66-bb9e-4e1c656f073f', 'yo', '2024-01-31 08:15:34.422758', 0);
INSERT INTO public.beep VALUES ('71f8040a-d868-4d8c-9fe7-e788e03ff8c9', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'Hello ! ', '2024-01-31 08:12:59.785137', 0);
INSERT INTO public.beep VALUES ('402d8033-5334-4a69-92de-bbcd4c1c4c92', 'd09ef501-195c-4295-8e72-0e3daf1e224e', 'Welcome', '2024-01-31 08:13:09.231737', 0);
INSERT INTO public.beep VALUES ('76c7d8c2-862c-4067-a71a-af00af9f4c58', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'A mis deux fois la noire', '2024-01-31 08:13:33.219528', 0);
INSERT INTO public.beep VALUES ('12b1a79a-c0ab-46c1-88f8-c3c3d4371538', 'd09ef501-195c-4295-8e72-0e3daf1e224e', 'Kkx', '2024-01-31 08:13:40.892039', 0);
INSERT INTO public.beep VALUES ('c2d15da9-35a1-4929-a9ea-1fa4ae3bd583', 'd09ef501-195c-4295-8e72-0e3daf1e224e', 'g', '2024-01-31 08:13:41.516094', 0);
INSERT INTO public.beep VALUES ('0b75c295-5937-4a5f-9e3b-64f582b9f6a0', 'c95d3534-6a8e-4b08-bf69-f714018deb65', 'hello', '2024-01-31 08:14:15.215168', 0);
INSERT INTO public.beep VALUES ('192995c5-3cef-49c2-872a-02de4e92d815', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:25.771183', 0);
INSERT INTO public.beep VALUES ('8fd30f15-0055-48c7-b361-986858f24bdd', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'SELECT * FROM USER', '2024-01-31 08:15:25.812543', 0);
INSERT INTO public.beep VALUES ('93698809-f28f-41a2-87d1-b60bde29892a', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:25.914568', 0);
INSERT INTO public.beep VALUES ('9ddd41a4-cc43-43c7-bc71-5a8d815b9b2a', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:26.070964', 0);
INSERT INTO public.beep VALUES ('08f47ae3-9644-41be-a31d-07de5d098c06', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'Salut :D', '2024-01-31 08:12:03.379805', 2);
INSERT INTO public.beep VALUES ('c9eba7b6-3701-4295-9d7d-3c46e29ea442', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'O-o', '2024-01-31 08:12:41.718498', 1);
INSERT INTO public.beep VALUES ('dc0a0d40-c323-4603-ab1b-4655c76e9f33', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'Salut', '2024-01-31 08:12:57.485463', 1);
INSERT INTO public.beep VALUES ('d1f16c99-5f98-43f4-a4be-3a9b1cadf3a0', 'b029fdc0-0698-4518-8a25-877e9aca1f25', '3A Nancy c''est sous côté en vrai', '2024-01-31 08:13:28.995962', 1);
INSERT INTO public.beep VALUES ('30949fdc-9190-4fe8-a413-e6e4f118cc31', 'd09ef501-195c-4295-8e72-0e3daf1e224e', 'test', '2024-01-31 08:15:48.765172', 0);
INSERT INTO public.beep VALUES ('8d741874-9648-489d-bb8f-0462d8d05c35', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', 'Hello!!
', '2024-01-31 08:13:05.326067', 2);
INSERT INTO public.beep VALUES ('2208e6d7-56a8-4518-a317-1a66708509e6', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'ihdewduo', '2024-01-27 18:07:14.692552', 1);
INSERT INTO public.beep VALUES ('4f603e7c-dcad-4966-bfea-1e7f6f101fef', '1db52a94-ded7-44ca-892f-3573c0efb925', 'coucou les copains', '2024-01-31 08:13:37.259964', 1);
INSERT INTO public.beep VALUES ('02b92973-c89e-4a30-b9e5-9720605ab12b', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:26.40108', 1);
INSERT INTO public.beep VALUES ('aca8e83b-62c9-4604-b37f-d8ef8ea436ce', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', 'Hiiiii', '2024-01-31 08:15:38.418836', 2);
INSERT INTO public.beep VALUES ('baf5ee10-56ec-4b31-b3e1-75b7e4f45ed4', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'Salut', '2024-01-31 08:15:34.167592', 1);
INSERT INTO public.beep VALUES ('7316d611-6728-49ce-92ed-1a4c11fcecc2', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:26.211169', 1);
INSERT INTO public.beep VALUES ('0150d774-90a9-4187-9ad4-5d56a7f577ab', 'b029fdc0-0698-4518-8a25-877e9aca1f25', 'faites des memes sur fb', '2024-01-31 08:16:38.061655', 0);
INSERT INTO public.beep VALUES ('64e780dd-9c60-4431-bfd6-e2ff38d51340', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'la dingguerrrie', '2024-01-31 08:16:05.417643', 1);
INSERT INTO public.beep VALUES ('a78e6692-6465-4af5-a6d8-2a1cb0311872', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'Pizza à midiiii!', '2024-01-31 08:18:15.136437', 0);
INSERT INTO public.beep VALUES ('c97c4155-8d12-4e7b-a35f-792eb748d2d9', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'yes', '2024-01-30 23:36:48.824347', 1);
INSERT INTO public.beep VALUES ('967ed250-6118-4a82-aeb0-7372261922ba', '1db52a94-ded7-44ca-892f-3573c0efb925', 'hellooooooooooo', '2024-01-31 08:15:10.29369', 2);
INSERT INTO public.beep VALUES ('d108bd36-6ef8-4d45-95b2-de127d19ef09', 'ff206042-cc3c-48e1-ab73-57d78791f80e', 'hello', '2024-01-31 08:19:19.876083', 0);
INSERT INTO public.beep VALUES ('a4f0d0b4-0082-48dd-a07f-51b514cda4e9', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'Bonjour', '2024-01-31 08:18:06.700512', 1);
INSERT INTO public.beep VALUES ('8882a97f-b73a-4ef3-b4ce-d5bafeb49896', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '2024-01-31 08:19:28.020214', 0);
INSERT INTO public.beep VALUES ('e017de8e-55e9-4f98-9a90-7f851b61afb0', 'a011a178-c0cf-480d-a595-92f48735ce6d', '', '2024-01-31 08:19:28.55629', 0);
INSERT INTO public.beep VALUES ('85ba14fb-0267-42cf-836e-ba5e30b30e82', '2fc3ad1a-3212-4828-bcfb-83403073b0f5', 'Salut la team, il est où le totem ça fait quelque jours que je peux plus utiliser ma douche perso ?', '2024-01-31 08:19:56.232007', 0);
INSERT INTO public.beep VALUES ('f3508209-77df-4de2-a4ee-360452a01946', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'qsldkjqlskdjq', '2024-01-31 08:20:25.405987', 0);
INSERT INTO public.beep VALUES ('a2ea0900-cee6-4106-be7c-f8e26a898547', 'a011a178-c0cf-480d-a595-92f48735ce6d', '', '2024-01-31 08:20:26.29363', 0);
INSERT INTO public.beep VALUES ('b723a3aa-5535-4341-8ae6-8378e13fad4d', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'LOL NON', '2024-01-31 08:20:47.969581', 0);
INSERT INTO public.beep VALUES ('937e5069-c155-48bb-a8ea-4db50d41c874', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'Salut mes petits chats', '2024-01-31 08:23:47.89625', 0);
INSERT INTO public.beep VALUES ('6196157a-a2c9-43d1-b090-df048097ec03', 'b1898dee-0989-4345-954f-04e047ab07a2', 'moi je ne pense pas qu''il y ait de bonnes ou de mauvaises situations, moi si je devais résumer ma vie avec vous aujourd''hui je dirai que c''est d''abord des rencontres. Des gens qui m''ont tendu la main à un moment où je ne pouvais pas, ou j''étais seule chez moi. 1/?

', '2024-01-31 08:20:31.577851', 0);
INSERT INTO public.beep VALUES ('a1bb4b72-3b0e-4379-9bff-73d4c6030b52', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'je pense que j''ai de l''avenir dans le billard', '2024-01-31 08:20:41.190877', 0);
INSERT INTO public.beep VALUES ('a19f214d-3935-4a1d-8d46-322b830d1142', 'd09ef501-195c-4295-8e72-0e3daf1e224e', 'Je pense pas', '2024-01-31 08:20:54.489587', 0);
INSERT INTO public.beep VALUES ('845ee52a-592b-422d-a5e6-6b3ebf71e111', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'C''est Marseille bébé', '2024-01-31 08:24:16.721578', 0);
INSERT INTO public.beep VALUES ('6538c23e-f314-4c71-8f52-9c0f7792d06c', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4', 'cc cv?', '2024-01-31 08:15:48.197184', 2);
INSERT INTO public.beep VALUES ('e1b807a9-5e63-44bb-8846-280af8a58ee7', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'Téléphone beep', '2024-01-31 08:24:11.869598', 0);
INSERT INTO public.beep VALUES ('58a5ef14-63a4-48ef-b45d-25bca0ef7d98', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'mince :(', '2024-01-31 08:15:27.941501', 3);
INSERT INTO public.beep VALUES ('a7f0f6d4-1c89-4a10-8d66-71ac32ca0165', 'b1898dee-0989-4345-954f-04e047ab07a2', 'Et c''est curieux de se dire que les hasards, les rencontres forgent une destinée, car quand on a le goût de la chose, le goût de la chose bien faite, le beau geste, et bien parfois on ne trouve pas l''interlocuteur en face, je dirais le miroir qui vous aide à avancer.
 2/', '2024-01-31 08:21:29.967565', 0);
INSERT INTO public.beep VALUES ('b1234d72-e9bb-41c8-ad52-0c95b49a02fa', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', '', '2024-01-31 08:31:23.092406', 0);
INSERT INTO public.beep VALUES ('fa71ece3-753d-4105-8dea-d2096e1858a1', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'Beep Beep Beep Beep, Beep Beep Beep Beep Beep Beep', '2024-01-31 08:31:26.17881', 0);
INSERT INTO public.beep VALUES ('c8304903-d4e9-488d-a71d-2776d8656880', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'Beep Beep Beep Beep, Beep Beep Beep Beep Beep Beep', '2024-01-31 08:31:31.173963', 0);
INSERT INTO public.beep VALUES ('76b389e0-2969-49e0-b98d-4829b61f724d', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'Ils sont bloqués, j''les dépasse', '2024-01-31 08:31:39.046208', 0);
INSERT INTO public.beep VALUES ('bc67021d-ec0e-41db-be00-ed46a538c302', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'J''me gare devant la terrasse', '2024-01-31 08:31:45.193884', 0);
INSERT INTO public.beep VALUES ('c5b6ab87-c1db-4bfc-9ad5-ec706659e9f6', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', 'miaammmm', '2024-01-31 08:31:52.613804', 0);
INSERT INTO public.beep VALUES ('1c0b972d-8568-4b40-8451-f6bea1fbbc69', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '', '2024-01-31 08:15:26.494254', 2);


--
-- Data for Name: follow; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.follow VALUES ('c1f93d57-b1e9-44d9-8577-3ef9c0ad7057', 'a377fc1d-aef5-4458-9f0f-83d70f5b524c', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('9ae2522b-0485-4215-9839-fd7786492430', 'a18d6919-c545-4758-b0ff-c853ca82599e', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('fee11c62-9c62-4acf-9ea2-28f09b2dd67d', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', '36946529-25e7-4e22-b0e5-3e211119562b');
INSERT INTO public.follow VALUES ('e3047b76-ae5b-49ce-9eba-30be1e061a1a', '1db52a94-ded7-44ca-892f-3573c0efb925', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d');
INSERT INTO public.follow VALUES ('b6e6dd8e-432c-424a-afa7-4249b8287c50', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('41639bf2-d890-4db3-9dd5-7ac30a682c51', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('fe280bec-c1cb-4dc6-bb55-eaea4e03e665', '963be64b-3c4f-4abe-a352-8fb9fac480ea', '36946529-25e7-4e22-b0e5-3e211119562b');
INSERT INTO public.follow VALUES ('4d01beec-cc14-423c-8376-5fd7b344bbf2', 'd09ef501-195c-4295-8e72-0e3daf1e224e', 'a011a178-c0cf-480d-a595-92f48735ce6d');
INSERT INTO public.follow VALUES ('08ea9f04-65f9-4157-bc33-e90315b58b39', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('6189791f-afa6-4fea-9c5a-7810d2c656ea', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841');
INSERT INTO public.follow VALUES ('969c0b14-52f4-4670-8670-8943d0b16434', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'a011a178-c0cf-480d-a595-92f48735ce6d');
INSERT INTO public.follow VALUES ('e4aa8df4-7a4b-4e72-b5f2-6f69f24196ae', 'dd9e1d56-4cea-4693-9d75-e5a708b631d4', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('bdc82d1b-ad70-4c55-994a-db7b2c4045f3', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'd09ef501-195c-4295-8e72-0e3daf1e224e');
INSERT INTO public.follow VALUES ('5a2e041e-0579-4c9d-9b5b-876138281255', '1db52a94-ded7-44ca-892f-3573c0efb925', '36946529-25e7-4e22-b0e5-3e211119562b');
INSERT INTO public.follow VALUES ('fba303aa-b1f5-4de5-8ec9-0730f98302d5', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('e2ee05c7-0e3a-4c67-be88-103190e9682e', '92a3b4d6-5606-4b66-bb9e-4e1c656f073f', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('a6574608-4a1e-4492-a861-f0fd09094f49', 'dd9e1d56-4cea-4693-9d75-e5a708b631d4', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d');
INSERT INTO public.follow VALUES ('f430e6af-06cf-4364-8f4e-441a3a4b8fc1', 'b029fdc0-0698-4518-8a25-877e9aca1f25', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54');
INSERT INTO public.follow VALUES ('971d09df-bcb5-4005-8770-92b5d68e3705', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', '36946529-25e7-4e22-b0e5-3e211119562b');
INSERT INTO public.follow VALUES ('930c7076-cd82-405f-ba21-047958a4fc36', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('944c7bcf-1695-49bb-bd9f-a7292861406f', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', 'b029fdc0-0698-4518-8a25-877e9aca1f25');
INSERT INTO public.follow VALUES ('2447fa23-26c6-4745-89bd-06751c2a4db6', '1db52a94-ded7-44ca-892f-3573c0efb925', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('4fcd9b1a-3d69-40a2-a17d-aa1c3907e920', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('70b9cb40-e56b-48a4-b91b-2afce726556c', 'dd9e1d56-4cea-4693-9d75-e5a708b631d4', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('f70fbdf8-c815-4673-bdf3-51e7f0d78579', '94b78456-713a-4285-83d4-08cebde905cc', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d');
INSERT INTO public.follow VALUES ('16814284-d502-42a1-8e69-b47683bf1ffd', '1db52a94-ded7-44ca-892f-3573c0efb925', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('2bda1232-1038-418a-ac7c-a09021968c38', 'dd9e1d56-4cea-4693-9d75-e5a708b631d4', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('4912ef8e-4a16-4e48-abe1-1a226bc2c4d3', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4');
INSERT INTO public.follow VALUES ('9d995173-f2c6-4f6b-85c4-f2d5eaa2c3a5', 'ed24cd65-b684-4b15-97e3-090407e7093e', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4');
INSERT INTO public.follow VALUES ('27247a45-32a2-4206-83c1-8280a8d7de7d', '1db52a94-ded7-44ca-892f-3573c0efb925', 'dd9e1d56-4cea-4693-9d75-e5a708b631d4');
INSERT INTO public.follow VALUES ('998d393c-ee3d-4b5f-8d03-73ce0653a6bb', 'a011a178-c0cf-480d-a595-92f48735ce6d', '963be64b-3c4f-4abe-a352-8fb9fac480ea');
INSERT INTO public.follow VALUES ('ba1dc32c-b686-44fe-862c-b1aa5588d55c', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('766c2191-4915-4bc1-ac04-63efe866cc30', '92a3b4d6-5606-4b66-bb9e-4e1c656f073f', '94b78456-713a-4285-83d4-08cebde905cc');
INSERT INTO public.follow VALUES ('f5c9b17f-212c-4cb3-9944-ab4883b84a11', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('db84a678-2047-4577-a402-4bda6e5ee88d', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('b5241335-a266-477b-a461-1b397e3146be', '94b78456-713a-4285-83d4-08cebde905cc', '92a3b4d6-5606-4b66-bb9e-4e1c656f073f');
INSERT INTO public.follow VALUES ('6b7f9805-b14e-4465-b260-8d264d436aa4', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('2d47ad4b-c0ea-4d7f-97d0-ee8305ec8d5c', 'b029fdc0-0698-4518-8a25-877e9aca1f25', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('41703959-ef1b-4488-95e7-75cd272b0846', 'a011a178-c0cf-480d-a595-92f48735ce6d', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('20478540-0ebf-430c-92df-ddfce604a0fb', '1db52a94-ded7-44ca-892f-3573c0efb925', 'b029fdc0-0698-4518-8a25-877e9aca1f25');
INSERT INTO public.follow VALUES ('77b52b73-22c2-4c23-82c8-8b235d3c8717', 'c95d3534-6a8e-4b08-bf69-f714018deb65', 'b1898dee-0989-4345-954f-04e047ab07a2');
INSERT INTO public.follow VALUES ('de816146-5a24-4563-8f89-ca7ddefba802', 'b029fdc0-0698-4518-8a25-877e9aca1f25', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('78bbf04d-746e-475d-9d5f-f297ac6bf727', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('f4eba4f1-325a-4e5a-8f3e-b85ab32fc071', 'dd9e1d56-4cea-4693-9d75-e5a708b631d4', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('51097b95-914f-49e1-ba6b-ccf2821c93a8', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('3831ade5-81fd-4ad6-8191-75d8040fa652', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('9901c3f4-9d25-494e-9868-bd1e7e52fe90', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4', 'b029fdc0-0698-4518-8a25-877e9aca1f25');
INSERT INTO public.follow VALUES ('3d519035-1952-4424-9168-b21e573076d2', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54');
INSERT INTO public.follow VALUES ('d0a14152-20de-44c9-8356-564521c2be9d', 'c95d3534-6a8e-4b08-bf69-f714018deb65', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54');
INSERT INTO public.follow VALUES ('7d4c414d-6682-49d3-9ea1-9e01ce1d3873', 'c95d3534-6a8e-4b08-bf69-f714018deb65', 'b029fdc0-0698-4518-8a25-877e9aca1f25');
INSERT INTO public.follow VALUES ('56dc8b06-8457-4419-b7ec-85fca25be4ef', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('f8e54849-7fe6-4661-8c91-26dd965f2d5a', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('8e427b9b-0e8d-44f5-acbf-5d41142f3bec', 'c95d3534-6a8e-4b08-bf69-f714018deb65', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926');
INSERT INTO public.follow VALUES ('a3eaca85-db15-4abd-984a-632dd3d01429', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'b029fdc0-0698-4518-8a25-877e9aca1f25');
INSERT INTO public.follow VALUES ('4605ccd5-cf64-40ad-b237-a42c10df7da3', 'c95d3534-6a8e-4b08-bf69-f714018deb65', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('26611066-1596-4b02-a6fa-83737781013a', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54');
INSERT INTO public.follow VALUES ('4cc87558-4c6a-48b8-8d49-3838c8953490', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'ff206042-cc3c-48e1-ab73-57d78791f80e');
INSERT INTO public.follow VALUES ('208194ca-6ad8-4b83-aa16-5c361a7a34fb', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('4a314bd4-cc7b-4b4c-8dab-6fcfcc1ac847', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', '963be64b-3c4f-4abe-a352-8fb9fac480ea');
INSERT INTO public.follow VALUES ('8831b6fa-45f2-42e7-9965-04a4dde575fc', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'a011a178-c0cf-480d-a595-92f48735ce6d');
INSERT INTO public.follow VALUES ('a7e900ab-2fdb-4dc7-8ee6-c7d7e0012f2b', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', '0e844cd5-2f5b-40e9-ba57-32bebee4053f');
INSERT INTO public.follow VALUES ('73987318-1141-4604-b4b9-ad7fe7eb1536', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', '36946529-25e7-4e22-b0e5-3e211119562b');
INSERT INTO public.follow VALUES ('a4439ffb-26c6-4aef-949d-6c23714d4724', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'ed24cd65-b684-4b15-97e3-090407e7093e');
INSERT INTO public.follow VALUES ('ae35e977-41c4-4744-85f1-2b05f761a3ff', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'ff206042-cc3c-48e1-ab73-57d78791f80e');
INSERT INTO public.follow VALUES ('c2238d70-206e-43ad-b097-073ea1217da1', 'c95d3534-6a8e-4b08-bf69-f714018deb65', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('344e29d1-0cc9-45ce-9c7f-3b3329809cea', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('68c8be80-7fb1-40dd-aba5-fcc342062179', '963be64b-3c4f-4abe-a352-8fb9fac480ea', '1db52a94-ded7-44ca-892f-3573c0efb925');
INSERT INTO public.follow VALUES ('21c5c2d2-c6ab-4b04-bf71-f4ccfa6e73ce', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'b029fdc0-0698-4518-8a25-877e9aca1f25');
INSERT INTO public.follow VALUES ('6646b3c8-3e58-442e-8bd3-7c56e99221ed', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54');
INSERT INTO public.follow VALUES ('38fc5a07-b8a3-4940-8439-36929c275631', 'bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54');


--
-- Data for Name: liked; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.liked VALUES ('9c036f8f-fb25-4380-90f5-9be2f6fb8c4e', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'b23384d3-af77-4720-a8a7-10bcacfd06f1');
INSERT INTO public.liked VALUES ('48055fe3-aec1-494b-bbbe-cda2a5f27787', 'a377fc1d-aef5-4458-9f0f-83d70f5b524c', '2208e6d7-56a8-4518-a317-1a66708509e6');
INSERT INTO public.liked VALUES ('bfeb8afd-8a92-4989-9eda-d83cd361ba60', 'a18d6919-c545-4758-b0ff-c853ca82599e', 'f046a8d1-7fa1-4f05-9f58-cda192c26fc6');
INSERT INTO public.liked VALUES ('ef3a016e-b039-4b61-91bd-d8cfe998f9c5', '0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'c97c4155-8d12-4e7b-a35f-792eb748d2d9');
INSERT INTO public.liked VALUES ('5071ebbd-87b9-4165-a658-314350f9b1c5', 'ed24cd65-b684-4b15-97e3-090407e7093e', '08f47ae3-9644-41be-a31d-07de5d098c06');
INSERT INTO public.liked VALUES ('2884423f-3918-4c81-b8f1-6f5c66d5bd6e', '1db52a94-ded7-44ca-892f-3573c0efb925', '967ed250-6118-4a82-aeb0-7372261922ba');
INSERT INTO public.liked VALUES ('47975a45-4cf4-4478-8b27-11d07d1274e4', '1db52a94-ded7-44ca-892f-3573c0efb925', '8d741874-9648-489d-bb8f-0462d8d05c35');
INSERT INTO public.liked VALUES ('063b9d58-f011-4a99-9736-e226f186f07b', '1db52a94-ded7-44ca-892f-3573c0efb925', '32e63254-e558-43dd-a59c-9e646c0fff12');
INSERT INTO public.liked VALUES ('49539b7c-5a8a-4d74-8000-6e124f133414', '963be64b-3c4f-4abe-a352-8fb9fac480ea', '1872ab8e-ac4d-4fa9-b5a5-e00167f784a2');
INSERT INTO public.liked VALUES ('4f93628d-64d7-4cfd-abec-c890ae64cf41', '1db52a94-ded7-44ca-892f-3573c0efb925', '3c07e369-be84-4d5b-aef6-461588bae435');
INSERT INTO public.liked VALUES ('ba4ed6fe-c27e-4703-abf6-8be70af0c0ea', '1db52a94-ded7-44ca-892f-3573c0efb925', '1872ab8e-ac4d-4fa9-b5a5-e00167f784a2');
INSERT INTO public.liked VALUES ('6cc811b7-7688-42e8-9181-7d52d4e3ca32', '963be64b-3c4f-4abe-a352-8fb9fac480ea', '1f409303-0c0b-42e6-94f8-f9a43f9526be');
INSERT INTO public.liked VALUES ('fb142318-30a8-4721-b7d7-a4dc84a71aa8', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'dd37e0c2-0ed5-402e-9d3e-7a210912e969');
INSERT INTO public.liked VALUES ('4a7ca112-ee6f-4986-8e9f-73eecda75bfe', '963be64b-3c4f-4abe-a352-8fb9fac480ea', '08f47ae3-9644-41be-a31d-07de5d098c06');
INSERT INTO public.liked VALUES ('051ff26c-6ff5-4143-b1ce-8efbaa3db7c5', '1db52a94-ded7-44ca-892f-3573c0efb925', 'c9eba7b6-3701-4295-9d7d-3c46e29ea442');
INSERT INTO public.liked VALUES ('7f32b9be-062b-4707-9b0d-9f745614a8e4', '1db52a94-ded7-44ca-892f-3573c0efb925', 'dc0a0d40-c323-4603-ab1b-4655c76e9f33');
INSERT INTO public.liked VALUES ('b21d09f8-25c6-4b8a-8c14-07475f6045e1', '1db52a94-ded7-44ca-892f-3573c0efb925', 'd1f16c99-5f98-43f4-a4be-3a9b1cadf3a0');
INSERT INTO public.liked VALUES ('5de89d27-60e1-496d-b0fd-29294348b17e', '94b78456-713a-4285-83d4-08cebde905cc', '944e58c5-94e4-45f4-8cb2-cd2debd1956c');
INSERT INTO public.liked VALUES ('ac31d0cd-55f7-40c3-8a34-ba7fd6dc3235', '94b78456-713a-4285-83d4-08cebde905cc', '8d741874-9648-489d-bb8f-0462d8d05c35');
INSERT INTO public.liked VALUES ('a421c304-1c6c-44de-b98f-f5029eb7394b', '1db52a94-ded7-44ca-892f-3573c0efb925', 'aca8e83b-62c9-4604-b37f-d8ef8ea436ce');
INSERT INTO public.liked VALUES ('e1ea7170-aef3-4d31-9abc-ccec3e7b8b96', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', 'aca8e83b-62c9-4604-b37f-d8ef8ea436ce');
INSERT INTO public.liked VALUES ('e7173169-7d00-42ca-9ccd-6561885b3847', '1db52a94-ded7-44ca-892f-3573c0efb925', 'baf5ee10-56ec-4b31-b3e1-75b7e4f45ed4');
INSERT INTO public.liked VALUES ('45d11efe-94a8-41ed-930a-5739399e8f8f', '1db52a94-ded7-44ca-892f-3573c0efb925', '58a5ef14-63a4-48ef-b45d-25bca0ef7d98');
INSERT INTO public.liked VALUES ('15c1f431-8bd9-4c37-8308-d8b2f9bb6fac', '1db52a94-ded7-44ca-892f-3573c0efb925', '1c0b972d-8568-4b40-8451-f6bea1fbbc69');
INSERT INTO public.liked VALUES ('1e99aea1-1a1f-430c-8566-cf5902694bef', '1db52a94-ded7-44ca-892f-3573c0efb925', '02b92973-c89e-4a30-b9e5-9720605ab12b');
INSERT INTO public.liked VALUES ('7b853baa-eb6b-43c7-9694-1499614d7523', '1db52a94-ded7-44ca-892f-3573c0efb925', '7316d611-6728-49ce-92ed-1a4c11fcecc2');
INSERT INTO public.liked VALUES ('2c0c7cff-045f-4d27-8653-ea46e2085249', 'c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', '64e780dd-9c60-4431-bfd6-e2ff38d51340');
INSERT INTO public.liked VALUES ('c9fcbeef-5b45-4e51-84f1-540367ed507c', 'a011a178-c0cf-480d-a595-92f48735ce6d', '58a5ef14-63a4-48ef-b45d-25bca0ef7d98');
INSERT INTO public.liked VALUES ('71b7ed6b-2452-42cc-a84c-d1d61e3416d1', '963be64b-3c4f-4abe-a352-8fb9fac480ea', '1c0b972d-8568-4b40-8451-f6bea1fbbc69');
INSERT INTO public.liked VALUES ('a20b2909-b890-45b7-87b0-b1b66f3ab9b7', 'aa755dea-ccdd-4b02-95a6-505c35a0e4b4', '6538c23e-f314-4c71-8f52-9c0f7792d06c');
INSERT INTO public.liked VALUES ('85963592-c4a7-4b5a-98bb-3350c440641f', '963be64b-3c4f-4abe-a352-8fb9fac480ea', 'a4f0d0b4-0082-48dd-a07f-51b514cda4e9');
INSERT INTO public.liked VALUES ('976f6bad-3982-422e-9c89-d0b6f6a6a554', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '6538c23e-f314-4c71-8f52-9c0f7792d06c');
INSERT INTO public.liked VALUES ('4f3fbb9d-a9f1-4087-aa32-d3ad3c720d31', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '58a5ef14-63a4-48ef-b45d-25bca0ef7d98');
INSERT INTO public.liked VALUES ('afaefeb2-19a0-47af-89ed-a9151f70f0dd', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '4f603e7c-dcad-4966-bfea-1e7f6f101fef');
INSERT INTO public.liked VALUES ('313f3cc0-dcd8-4105-8cc2-3d6f1fb8ffc7', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '967ed250-6118-4a82-aeb0-7372261922ba');
INSERT INTO public.liked VALUES ('73a99b00-37ed-414d-8a39-82a65a778b43', 'eb603b5f-5a53-4e41-898b-eb3b5a08a926', '98cd84e5-7fc7-40d3-90e4-36587cd2022f');
INSERT INTO public.liked VALUES ('c298eb2f-6e23-4a32-9415-d5286d096db6', 'f750f4c1-0648-44e1-95c5-d89dc54a7c54', '98cd84e5-7fc7-40d3-90e4-36587cd2022f');
INSERT INTO public.liked VALUES ('619aadf2-74e6-41a2-8b19-4462c42dccca', 'b029fdc0-0698-4518-8a25-877e9aca1f25', '98cd84e5-7fc7-40d3-90e4-36587cd2022f');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES ('0e844cd5-2f5b-40e9-ba57-32bebee4053f', 'martin1', 'auth0|65afe1935a03d648f0973c6d', 'https://s.gravatar.com/avatar/ab59e38ada8474557ef44ef4f9838a44?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fma.png');
INSERT INTO public.users VALUES ('36946529-25e7-4e22-b0e5-3e211119562b', 'martin2', 'auth0|65afe1b0a493d18b8f4b6c39', 'https://s.gravatar.com/avatar/ab59e38ada8474557ef44ef4f9838a44?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fma.png');
INSERT INTO public.users VALUES ('a18d6919-c545-4758-b0ff-c853ca82599e', 'martin3', 'auth0|65b54fd6184c667d1a62218d', 'https://s.gravatar.com/avatar/bdc0c78c618b0d3901cfe51bfdbb87e0?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fma.png');
INSERT INTO public.users VALUES ('a377fc1d-aef5-4458-9f0f-83d70f5b524c', 'julien1619', 'auth0|65b68ef8184c667d1a62b606', 'https://s.gravatar.com/avatar/52e85478df708bf0be8b504af2ab6ae0?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fju.png');
INSERT INTO public.users VALUES ('ed24cd65-b684-4b15-97e3-090407e7093e', 'fat33', 'auth0|65ba00be2a94cc1c6c354b0d', 'https://s.gravatar.com/avatar/70b03db954aa45fc2559e85f5d5bd13e?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fa.png');
INSERT INTO public.users VALUES ('c8eac9f5-75b6-4804-b396-d3f5de6bcc5d', 'camille1', 'auth0|65ba00d42a94cc1c6c354b19', 'https://s.gravatar.com/avatar/e206136e1273747f803db19a235b3dda?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fca.png');
INSERT INTO public.users VALUES ('1db52a94-ded7-44ca-892f-3573c0efb925', 'lisebabe', 'auth0|65ba00eb2cc3170792b20b55', 'https://s.gravatar.com/avatar/8c79d84a2561f340c3d468b894216966?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fli.png');
INSERT INTO public.users VALUES ('963be64b-3c4f-4abe-a352-8fb9fac480ea', 'guil_tr', 'auth0|65ba0100cf6c23964c040dd9', 'https://s.gravatar.com/avatar/f122fca4ff9294475231195348e823a7?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fgt.png');
INSERT INTO public.users VALUES ('eb603b5f-5a53-4e41-898b-eb3b5a08a926', 'emiliano', 'auth0|65ba01052a94cc1c6c354b3b', 'https://s.gravatar.com/avatar/8b4728a0e406826bb4005bfb528e6896?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fem.png');
INSERT INTO public.users VALUES ('a011a178-c0cf-480d-a595-92f48735ce6d', 'eymeg', 'auth0|65ba0105cf6c23964c040ddf', 'https://s.gravatar.com/avatar/803c601aefe74e3066c6080375535f39?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fey.png');
INSERT INTO public.users VALUES ('d09ef501-195c-4295-8e72-0e3daf1e224e', 'kix', 'auth0|65ba010ecf6c23964c040deb', 'https://s.gravatar.com/avatar/a45b1894716c6be7cd72e222f543300a?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fky.png');
INSERT INTO public.users VALUES ('b029fdc0-0698-4518-8a25-877e9aca1f25', 'aymeri', 'auth0|65ba010e2cc3170792b20b72', 'https://s.gravatar.com/avatar/667da92c2640737827394b5ac26238a9?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fay.png');
INSERT INTO public.users VALUES ('dd9e1d56-4cea-4693-9d75-e5a708b631d4', 'chrisvair', 'auth0|65ba01112a94cc1c6c354b41', 'https://s.gravatar.com/avatar/2d2c90aa1a99872bfe727610bc6f6086?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fch.png');
INSERT INTO public.users VALUES ('bd47f2c5-5169-47e6-afb7-9dbb965dd841', 'oscar', 'auth0|65ba01164704df626a74333f', 'https://s.gravatar.com/avatar/365502f1c426b3d4208198f1089ae7fa?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fos.png');
INSERT INTO public.users VALUES ('f750f4c1-0648-44e1-95c5-d89dc54a7c54', 'thomad', 'auth0|65ba0125cf6c23964c040dfe', 'https://s.gravatar.com/avatar/7afff4e06c292e7c8bc62190ae181bec?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fth.png');
INSERT INTO public.users VALUES ('c95d3534-6a8e-4b08-bf69-f714018deb65', 'elise', 'auth0|65ba013b4704df626a74335b', 'https://s.gravatar.com/avatar/78ac3310a6c2edf8ad5e0faadd94905d?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fel.png');
INSERT INTO public.users VALUES ('6a43a21d-8261-40e6-969f-f9bd8e0670ef', 'fb', 'auth0|65ba0142cf6c23964c040e13', 'https://s.gravatar.com/avatar/22ecdcb0818683fae2125750b58871c1?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Ffa.png');
INSERT INTO public.users VALUES ('94b78456-713a-4285-83d4-08cebde905cc', 'gomez', 'auth0|65ba01462a94cc1c6c354b63', 'https://s.gravatar.com/avatar/c4fbf8b389d81f78fc50a137456dd674?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fgo.png');
INSERT INTO public.users VALUES ('92a3b4d6-5606-4b66-bb9e-4e1c656f073f', 'dino', 'auth0|65ba014a2a94cc1c6c354b68', 'https://s.gravatar.com/avatar/57625e542eb88410ed238661b359b085?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fdi.png');
INSERT INTO public.users VALUES ('aa755dea-ccdd-4b02-95a6-505c35a0e4b4', 'magnifiquemath', 'auth0|65ba015fcf6c23964c040e2d', 'https://s.gravatar.com/avatar/ade9aff32c3344587e1c411cfe5d4300?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fma.png');
INSERT INTO public.users VALUES ('b1898dee-0989-4345-954f-04e047ab07a2', 'potato93', 'auth0|65ba019d2a94cc1c6c354b9b', 'https://s.gravatar.com/avatar/6a84381e091db3f9ecc39198597e4df3?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fal.png');
INSERT INTO public.users VALUES ('ff206042-cc3c-48e1-ab73-57d78791f80e', 'swerc_k', 'auth0|65ba01e1cf6c23964c040e85', 'https://s.gravatar.com/avatar/29059d93b3b8d73353dba97f48cbbec7?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fka.png');
INSERT INTO public.users VALUES ('2fc3ad1a-3212-4828-bcfb-83403073b0f5', 'masterfifi', 'auth0|65ba021b2cc3170792b20c42', 'https://s.gravatar.com/avatar/078ee4407e7545cc6c0080d80f6b6fa4?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Ffi.png');
INSERT INTO public.users VALUES ('fe436fcb-3acc-4389-97d1-9729e38d7e2e', 'alexandre', 'auth0|65ba12a82cc3170792b21986', 'https://s.gravatar.com/avatar/fd35dc9d62673d16dc49b5520c9dd2d3?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fpu.png');


--
-- Name: beep beep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beep
    ADD CONSTRAINT beep_pkey PRIMARY KEY (id);


--
-- Name: follow follow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_pkey PRIMARY KEY (id);


--
-- Name: liked liked_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liked
    ADD CONSTRAINT liked_pkey PRIMARY KEY (id);


--
-- Name: liked liker_beep_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liked
    ADD CONSTRAINT liker_beep_unique UNIQUE (liker_id, beep_id);


--
-- Name: follow unique_follow_followee; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT unique_follow_followee UNIQUE (follower, followee);


--
-- Name: users users_auth0_sub_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_auth0_sub_key UNIQUE (auth0_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: beep_author_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX beep_author_idx ON public.beep USING btree (author_id);


--
-- Name: follow_followee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_followee ON public.follow USING btree (followee);


--
-- Name: follow_follower; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_follower ON public.follow USING btree (follower);


--
-- Name: beep beep_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beep
    ADD CONSTRAINT beep_author_id_fkey FOREIGN KEY (author_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: follow follow_followee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_followee_fkey FOREIGN KEY (followee) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: follow follow_follower_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_follower_fkey FOREIGN KEY (follower) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: liked liked_beep_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liked
    ADD CONSTRAINT liked_beep_id_fkey FOREIGN KEY (beep_id) REFERENCES beep(id) ON DELETE CASCADE;


--
-- Name: liked liked_liker_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liked
    ADD CONSTRAINT liked_liker_id_fkey FOREIGN KEY (liker_id) REFERENCES users(id) ON DELETE CASCADE;



