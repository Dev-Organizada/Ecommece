CREATE TABLE [dbo].[Dim_Produto]
(
	[Id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(200) NULL, 
    [Price] MONEY NULL, 
    [Id_category] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_Dim_Produto_Dim_Categoria] FOREIGN KEY (Id_category) REFERENCES Dim_Categoria(id)
)
