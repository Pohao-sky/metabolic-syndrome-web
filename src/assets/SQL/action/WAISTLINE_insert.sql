--有note
INSERT INTO WAISTLINE (user_id, waist_cm, note, measured_time) VALUES
(1, 82.50, N'剛吃飽', GETDATE());

--無note
INSERT INTO WAISTLINE (user_id, waist_cm, note, measured_time) VALUES
(1, 79.50, N'無', GETDATE());
