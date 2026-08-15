CREATE TABLE dbo.employees_2
WITH
(
    DISTRIBUTION = HASH(empID),
    CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT * FROM dbo.employees
WHERE dept = 'IT'

SELECT * FROM dbo.employees_2
