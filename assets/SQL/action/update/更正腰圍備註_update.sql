-- 更正腰圍數值與備註
UPDATE WAISTLINE
SET waist_cm = 85.2,
    note = '健檢測量'
WHERE id = 1 AND user_id = 1;
