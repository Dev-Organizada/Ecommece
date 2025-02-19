CREATE TABLE [dbo].[Fact_Ordens]
(
	[Id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Created_At] DATETIME NULL, 
    [Customer_Id] NVARCHAR(50) NULL, 
    [Status] NVARCHAR(200) NULL, 
    CONSTRAINT [FK_Fact_Ordens_Dim_Clientes] FOREIGN KEY ([Customer_Id]) REFERENCES [Dim_Clientes]([Id])
)
