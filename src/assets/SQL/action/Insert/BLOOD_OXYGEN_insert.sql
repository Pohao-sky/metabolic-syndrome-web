--有NOTE
INSERT INTO BLOOD_OXYGEN (user_id, oxygen_saturation, note, measured_time) VALUES
(1, 98, '運動後', GETDATE());

--無NOTE
INSERT INTO BLOOD_OXYGEN (user_id, oxygen_saturation, note, measured_time) VALUES
(1, 98, '無', GETDATE());
