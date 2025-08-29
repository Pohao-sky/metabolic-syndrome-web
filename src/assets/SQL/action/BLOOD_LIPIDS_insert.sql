--有NOTE
INSERT INTO BLOOD_LIPIDS (user_id, total_cholesterol, triglyceride, LDL_cholesterol, HDL_cholesterol, note, measured_time) VALUES
(1, 190, 120, 100, 55, '空腹', GETDATE());

--無NOTE
INSERT INTO BLOOD_LIPIDS (user_id, total_cholesterol, triglyceride, LDL_cholesterol, HDL_cholesterol, note, measured_time) VALUES
(1, 190, 120, 100, 55, '無', GETDATE());
