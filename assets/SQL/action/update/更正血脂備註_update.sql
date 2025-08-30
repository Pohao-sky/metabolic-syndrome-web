--修改血脂
UPDATE BLOOD_LIPIDS
SET total_cholesterol = 190,
    triglyceride = 120,
    LDL_cholesterol = 100,
    HDL_cholesterol = 55,
    note = '檢驗中心化驗'
WHERE id = 1 AND user_id = 1;
