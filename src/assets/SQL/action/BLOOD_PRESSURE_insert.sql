--有NOTE
INSERT INTO BLOOD_PRESSURE (user_id, systolic, diastolic, note, measured_time) VALUES
(1, 122, 78,  '居家量測',   GETDATE());

--無NOTE
INSERT INTO BLOOD_PRESSURE (user_id, systolic, diastolic, note, measured_time) VALUES
(1, 122, 78,  '無',   GETDATE());
