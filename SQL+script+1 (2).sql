CREATE TABLE [dbo].[employees]
(
    empID INT NOT NULL,
    empName NVARCHAR(50),
    gender NVARCHAR(50),
    dept NVARCHAR(50)
)
WITH
(
    DISTRIBUTION = HASH(empID),
    CLUSTERED COLUMNSTORE INDEX
)
GO

INSERT INTO dbo.employees VALUES(1, 'John', 'Male', 'IT')
INSERT INTO dbo.employees VALUES(2, 'Sophia', 'Female', 'HR')
INSERT INTO dbo.employees VALUES(3, 'Vinny', 'Female', 'Sales')
INSERT INTO dbo.employees VALUES(4, 'Tom', 'Male', 'IT')
INSERT INTO dbo.employees VALUES(5, 'Jennifer', 'Female', 'IT')
INSERT INTO dbo.employees VALUES(6, 'Bruce', 'Male', 'HR')
INSERT INTO dbo.employees VALUES(7, 'David', 'Male', 'Sales')
INSERT INTO dbo.employees VALUES(8, 'Neena', 'Female', 'Sales')

SELECT * FROM dbo.employees
