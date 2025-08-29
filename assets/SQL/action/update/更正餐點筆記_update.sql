-- 更正餐點筆記
UPDATE DIETS
SET meal_time='2025-08-25 12:10',
	meal_detail ='牛排',
	meal_type='午餐'
WHERE id = 1 AND user_id = 1;
