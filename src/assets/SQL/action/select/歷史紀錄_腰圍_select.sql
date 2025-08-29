DECLARE @user_id INT = 1;
DECLARE @page  INT = 1;
DECLARE @size  INT = 10;

SELECT waist_cm, note, measured_time
FROM WAISTLINE
WHERE user_id = @user_id
ORDER BY measured_time DESC
OFFSET (@page - 1) * @size ROWS FETCH NEXT @size ROWS ONLY;