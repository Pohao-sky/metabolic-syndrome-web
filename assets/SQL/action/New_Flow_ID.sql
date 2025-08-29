-- 1) 先新增一個自動遞增的欄位
ALTER TABLE BLOOD_LIPIDS
ADD NewID INT IDENTITY(1,1);

-- 2) 如果要讓它成為主鍵，先移除舊主鍵約束（名稱依你的實際情況）

-- 3) 設定新欄位為主鍵

-- 4) 若需要把欄位名稱改回 Id
EXEC sp_rename 'BLOOD_LIPIDS.NewID', 'Id', 'COLUMN';
