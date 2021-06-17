USE [SGEU]
GO

/****** Object:  Table [dbo].[Menu]    Script Date: 18/11/2015 10:12:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Menu](
	[idmenu] [int] NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[URL] [varchar](50) NOT NULL,
	[Ordem] [int] NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[idmenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

