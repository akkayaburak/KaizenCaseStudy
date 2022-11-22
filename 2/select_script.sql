SELECT 
CONCAT(lang.language_code, '-',n.value, '-',tra.translation),
tc.text_content_id
FROM public.languages lang
INNER JOIN public.translations tra ON lang.language_id = tra.language_id
INNER JOIN public.text_content tc ON tc.text_content_id = tra.text_content_id
--INNER JOIN public.category cat ON cat.name_id = tra.name_id
--INNER JOIN public.detail det ON det.name_id = tra.name_id
--INNER JOIN public.image_url img ON img.name_id = tra.name_id
--INNER JOIN public.title ti ON ti.name_id = tra.name_id
INNER JOIN public.name n ON n.name_id = tra.name_id
WHERE lang.language_code = 'en'