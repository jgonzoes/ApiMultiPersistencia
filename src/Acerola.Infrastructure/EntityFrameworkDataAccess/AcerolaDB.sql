CREATE TABLE [dbo].[Account](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credit]    Script Date: 02/03/2020 12:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credit](
	[Id] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NULL,
	[Amount] [float] NULL,
	[TransactionDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 02/03/2020 12:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[SSN] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Debit]    Script Date: 02/03/2020 12:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Debit](
	[Id] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NULL,
	[Amount] [float] NULL,
	[TransactionDate] [datetime] NULL,
 CONSTRAINT [PK_Debit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 02/03/2020 12:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[Id] [uniqueidentifier] NOT NULL,
	[Amount] [float] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[AccountId] [uniqueidentifier] NULL,
	[TransactionType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Id], [CustomerId]) VALUES (N'b6cb50cf-2f5f-494c-ad9d-1b0ae29a2554', N'2e0cd1e8-2969-4e2b-b21a-957d456cb11e')
GO
INSERT [dbo].[Account] ([Id], [CustomerId]) VALUES (N'11f44296-7d9d-4421-afa2-1c2ccd313a5c', N'50d40289-7948-42ef-a725-8729435225a1')
GO
INSERT [dbo].[Account] ([Id], [CustomerId]) VALUES (N'6757bf47-8a3d-48ef-b4a5-d0a1b12a7ebd', N'74d0fd5b-1fbb-4c72-931a-5a97877c7f65')
GO
INSERT [dbo].[Account] ([Id], [CustomerId]) VALUES (N'eecae16a-8046-4c4b-ac0f-e1320e15119c', N'816f6333-6c21-4669-9b5f-3b405d7bddb6')
GO
INSERT [dbo].[Credit] ([Id], [AccountId], [Amount], [TransactionDate]) VALUES (N'84a1f1b6-8eb1-4298-81a3-6c7c6f7866f7', N'6757bf47-8a3d-48ef-b4a5-d0a1b12a7ebd', 10000, CAST(N'2020-03-02T16:42:29.990' AS DateTime))
GO
INSERT [dbo].[Credit] ([Id], [AccountId], [Amount], [TransactionDate]) VALUES (N'dbffc9be-4d37-4250-a090-9b4d3dd19776', N'b6cb50cf-2f5f-494c-ad9d-1b0ae29a2554', 10000, CAST(N'2020-03-02T16:43:44.423' AS DateTime))
GO
INSERT [dbo].[Credit] ([Id], [AccountId], [Amount], [TransactionDate]) VALUES (N'2c130976-f6c5-40e2-a62a-acb05538f9fc', N'11f44296-7d9d-4421-afa2-1c2ccd313a5c', 10000, CAST(N'2020-03-02T16:43:53.297' AS DateTime))
GO
INSERT [dbo].[Credit] ([Id], [AccountId], [Amount], [TransactionDate]) VALUES (N'8a03e2e3-f94f-4428-b40a-441c1de8fb2a', N'eecae16a-8046-4c4b-ac0f-e1320e15119c', 10000, CAST(N'2020-03-02T16:44:25.060' AS DateTime))
GO
INSERT [dbo].[Credit] ([Id], [AccountId], [Amount], [TransactionDate]) VALUES (N'a6036d75-feb3-4d37-a20c-b0670e607bc1', N'eecae16a-8046-4c4b-ac0f-e1320e15119c', 15000, CAST(N'2020-03-02T16:48:40.340' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'816f6333-6c21-4669-9b5f-3b405d7bddb6', N'oscar', N'202003011236')
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'6e3d9994-4f45-4a27-85a5-3c259ef39ef8', N'joaquin', N'202003011234')
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'74d0fd5b-1fbb-4c72-931a-5a97877c7f65', N'joaquin', N'202003011234')
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'33c9b7bb-e237-46cd-9573-7b7494a88a68', N'joaquin', N'202003011234')
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'50d40289-7948-42ef-a725-8729435225a1', N'joaquin', N'202003011235')
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'2e0cd1e8-2969-4e2b-b21a-957d456cb11e', N'joaquin', N'202003011235')
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'd30e202c-092c-41a7-a28a-982fc1d974c8', N'joaquin', N'202003011234')
GO
INSERT [dbo].[Customer] ([Id], [Name], [SSN]) VALUES (N'3229a8f6-50a8-4474-8873-9b6d19f7d458', N'joaquin', N'202003011234')
GO
INSERT [dbo].[Debit] ([Id], [AccountId], [Amount], [TransactionDate]) VALUES (N'058bf4c3-18b9-4459-ab4f-72c54653babe', N'eecae16a-8046-4c4b-ac0f-e1320e15119c', 15000, CAST(N'2020-03-02T16:49:14.977' AS DateTime))
GO

