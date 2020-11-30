
SET STATISTICS IO ON;

SELECT Id
FROM dbo.Users;

SELECT Id
FROM dbo.Users
WHERE LastAccessDate > '2014/07/01'
ORDER BY LastAccessDate;
GO
