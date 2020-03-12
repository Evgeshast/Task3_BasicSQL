CREATE TABLE [dbo].[CreditCard]
(
	[CreditCardId] INT NOT NULL PRIMARY KEY, 
    [CardHolder] NCHAR(50) NOT NULL, 
    [ExpirationDate] DATE NOT NULL, 
    [EmployeeID] INT NOT NULL, 
    CONSTRAINT [FK_CreditCard_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [Employees]([EmployeeID])
)
