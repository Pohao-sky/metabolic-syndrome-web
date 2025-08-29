import pyodbc

conn = pyodbc.connect(
    "DRIVER={ODBC Driver 18 for SQL Server};"
    "SERVER=himhealth.mcu.edu.tw,8081;"
    "DATABASE=metabolic_syndrome;"
    "UID=miUser;"
    "PWD=Mcu123;"
    "Encrypt=yes;"
    "TrustServerCertificate=yes;"
)
print("連線成功！")
