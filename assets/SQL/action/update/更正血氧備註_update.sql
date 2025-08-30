-- 更正血氧
UPDATE BLOOD_OXYGEN
SET oxygen_saturation = 97,
    note = '夜間測量'
WHERE id = 1 AND user_id = 1;
