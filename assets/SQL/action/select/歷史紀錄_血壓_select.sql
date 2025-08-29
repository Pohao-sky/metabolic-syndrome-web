-- 歷史紀錄頁：分頁 (血壓為例）
DECLARE @user_id INT = 1;
DECLARE @page  INT = 1;
DECLARE @size  INT = 10;

SELECT systolic, diastolic, note, measured_time
FROM BLOOD_PRESSURE
WHERE user_id = @user_id
ORDER BY measured_time DESC
OFFSET (@page - 1) * @size ROWS FETCH NEXT @size ROWS ONLY;
