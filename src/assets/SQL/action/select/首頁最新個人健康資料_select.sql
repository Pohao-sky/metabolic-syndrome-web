DECLARE @user_id INT = 1;

WITH bp AS (
  SELECT user_id, systolic, diastolic, measured_time AS bp_time,
         ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY measured_time DESC) rn
  FROM BLOOD_PRESSURE
),
bo AS (
  SELECT user_id, oxygen_saturation, measured_time AS bo_time,
         ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY measured_time DESC) rn
  FROM BLOOD_OXYGEN
),
bl AS (
  SELECT user_id, total_cholesterol, triglyceride, LDL_cholesterol, HDL_cholesterol,
         measured_time AS lipids_time,
         ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY measured_time DESC) rn
  FROM BLOOD_LIPIDS
),
w AS (
  SELECT user_id, waist_cm, measured_time AS waist_time,
         ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY measured_time DESC) rn
  FROM WAISTLINE
),
d AS (
  SELECT user_id, meal_type, meal_detail, meal_time,
         ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY meal_time DESC) rn
  FROM DIETS
)
SELECT
  u.username,
  bp.systolic, bp.diastolic, bp.bp_time,
  bo.oxygen_saturation, bo.bo_time,
  bl.total_cholesterol, bl.triglyceride, bl.LDL_cholesterol, bl.HDL_cholesterol, bl.lipids_time,
  w.waist_cm, w.waist_time,
  d.meal_type, d.meal_detail, d.meal_time
FROM USERS u
LEFT JOIN bp ON bp.user_id = u.user_id AND bp.rn = 1
LEFT JOIN bo ON bo.user_id = u.user_id AND bo.rn = 1
LEFT JOIN bl ON bl.user_id = u.user_id AND bl.rn = 1
LEFT JOIN w  ON w.user_id  = u.user_id AND w.rn  = 1
LEFT JOIN d  ON d.user_id  = u.user_id AND d.rn  = 1
WHERE u.user_id = @user_id;
