-- 更正血壓數值與備註
UPDATE BLOOD_PRESSURE
SET systolic = 135,
    diastolic = 85,
    note = '剛運動完'
WHERE id = 169 AND user_id = 1;
