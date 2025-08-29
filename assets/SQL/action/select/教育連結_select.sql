DECLARE @page INT = 1;
DECLARE @size INT = 10;

SELECT title, url, article_date
FROM EDUCATION_LINKS
ORDER BY is_pinned DESC, article_date DESC
OFFSET (@page - 1) * @size ROWS FETCH NEXT @size ROWS ONLY;
