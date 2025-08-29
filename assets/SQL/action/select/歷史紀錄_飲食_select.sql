-- 歷史紀錄頁：分頁 (飲食為例）
DECLARE @user_id INT = 1;
DECLARE @page  INT = 1;
DECLARE @size  INT = 10;

SELECT meal_type, meal_detail, meal_time
FROM DIETS
WHERE user_id = @user_id
ORDER BY meal_time DESC
OFFSET (@page - 1) * @size ROWS FETCH NEXT @size ROWS ONLY;
