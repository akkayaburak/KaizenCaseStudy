



INSERT INTO public.text_content DEFAULT VALUES


INSERT INTO public.languages (language_code) VALUES ('en');
INSERT INTO public.languages (language_code) VALUES ('tr');

INSERT INTO public.name (value) VALUES ('News1');
INSERT INTO public.name (value) VALUES ('News2');

INSERT INTO public.text_content (original_text, original_language_id) VALUES ('Title',1);

INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.title (value,name_id,text_content_id) VALUES ('Title',1,3)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (3,1,'Title',1)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (3,2,'Başlık',1)


INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.detail (value,name_id,text_content_id) VALUES ('Detail',1,4)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (4,1,'Detail',1)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (4,2,'Detay',1)

INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.image_url (value,name_id,text_content_id) VALUES ('ImgUrl1',1,5)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (5,1,'ImgUrl1',1)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (5,2,'ImgUrl1',1)

INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.category (value,name_id,text_content_id) VALUES ('Economy',1,6)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (6,1,'Economy',1)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (6,2,'Ekonomi',1)




INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.title (value,name_id,text_content_id) VALUES ('Title',2,7)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (7,1,'Title',2)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (7,2,'Başlık',2)


INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.detail (value,name_id,text_content_id) VALUES ('Detail',2,8)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (8,1,'Detail',2)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (8,2,'Detay',2)

INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.image_url (value,name_id,text_content_id) VALUES ('ImgUrl1',2,9)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (9,1,'ImgUrl1',2)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (9,2,'ImgUrl1',2)

INSERT INTO public.text_content DEFAULT VALUES
INSERT INTO public.category (value,name_id,text_content_id) VALUES ('Economy',2,10)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (10,1,'Economy',2)
INSERT INTO public.translations (text_content_id,language_id,translation,name_id) VALUES (10,2,'Ekonomi',2)











