CREATE TABLE [dbo].[Dim_Item]
(
	[Id] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Order_Id] NVARCHAR(50) NULL, 
    [Product_Id] NVARCHAR(50) NULL, 
    [Quantity] INT NULL, 
    [Total_Price] MONEY NULL, 
    CONSTRAINT [FK_Dim_Item_Fact_Ordens] FOREIGN KEY (Order_Id) REFERENCES Fact_Ordens(Id), 
    CONSTRAINT [FK_Dim_Item_Dim_Produto] FOREIGN KEY (Product_Id) REFERENCES Dim_Produto(Id)
)
