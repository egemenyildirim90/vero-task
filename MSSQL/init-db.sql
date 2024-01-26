IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'db_vero_digital')
BEGIN
    CREATE DATABASE db_vero_digital;
END
GO