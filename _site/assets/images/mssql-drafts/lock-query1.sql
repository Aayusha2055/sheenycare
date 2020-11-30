    CREATE TABLE dbo.Lefty (Numbers INT PRIMARY KEY);
    INSERT INTO dbo.Lefty VALUES (1),(2),(3);
    CREATE TABLE dbo.Righty (Numbers INT PRIMARY KEY);
    INSERT INTO dbo.Righty VALUES (1), (2), (3);
    GO

    BEGIN TRAN
    UPDATE dbo.Lefty
        SET Numbers = Numbers + 1;
    GO

    UPDATE dbo.Righty
        SET Numbers = Numbers + 1;
    GO

    ROLLBACK

