DECLARE @account NVARCHAR(50) = 'Mcu001';
DECLARE @password NVARCHAR(100) = 'pass1234';

SELECT user_id, account, username
FROM USERS
WHERE account = @account
  AND password = @password;
