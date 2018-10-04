CREATE TABLE [dbo].[Register](
	[Email] [varchar](50) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[ConfirmPassword] [varchar](20) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[PostalCode] [int] NOT NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Student](
	[StudentID] [varchar](50) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ConfirmPassword] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Publication](
	[PublicationID] [int] IDENTITY(1,1) NOT NULL,
	[PublicationName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Publication] PRIMARY KEY CLUSTERED 
(
	[PublicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BorrowBook](
	[BorrowBookID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[BookName] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Author] [varchar](100) NULL,
	[BorrowDate] [varchar](50) NULL,
	[ReturnDate] [varchar](50) NULL,
	[Fine] [decimal](18, 0) NULL,
 CONSTRAINT [PK_BorrowBook] PRIMARY KEY CLUSTERED 
(
	[BorrowBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BorrowBook] ADD  CONSTRAINT [DF_BorrowBook_ReturnDate]  DEFAULT ((0)) FOR [ReturnDate]
GO

ALTER TABLE [dbo].[BorrowBook] ADD  CONSTRAINT [DF_BorrowBook_Fine]  DEFAULT ((0)) FOR [Fine]
GO

CREATE TABLE [dbo].[FeedBack](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](100) NULL,
	[Message] [varchar](200) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


