USE [SGEU]
GO

/****** Object:  Table [dbo].[turmas]    Script Date: 18/11/2015 10:12:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[turmas](
	[idturma] [int] NOT NULL,
	[nome_turma] [varchar](50) NOT NULL,
 CONSTRAINT [PK_turmas] PRIMARY KEY CLUSTERED 
(
	[idturma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

