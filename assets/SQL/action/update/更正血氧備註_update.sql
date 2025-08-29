-- 更正血氧備註
UPDATE BLOOD_OXYGEN
SET note = '夜間測量'
WHERE id = 1 AND user_id = 1;
