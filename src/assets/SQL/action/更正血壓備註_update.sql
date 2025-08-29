-- 更正血壓備註
UPDATE BLOOD_PRESSURE
SET note = '剛運動完'
WHERE id = 169 AND user_id = 1;