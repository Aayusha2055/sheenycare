BEGIN TRAN
UPDATE dbo.Righty 
    SET Numbers = Numbers + 1;
GO

UPDATE dbo.Lefty
    SET Numbers = Numbers + 1;
GO

ROLLBACK