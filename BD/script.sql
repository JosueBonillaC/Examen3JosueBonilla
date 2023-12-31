USE [EncuestasDB]
GO
/****** Object:  Table [dbo].[Encuestas]    Script Date: 18/12/2023 08:58:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encuestas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Edad] [int] NOT NULL,
	[Correo] [nvarchar](100) NULL,
	[PartidoPolitico] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Encuestas]  WITH CHECK ADD CHECK  (([Edad]>=(18) AND [Edad]<=(50)))
GO
ALTER TABLE [dbo].[Encuestas]  WITH CHECK ADD  CONSTRAINT [CK_Correo] CHECK  (([Correo] like '%@%'))
GO
ALTER TABLE [dbo].[Encuestas] CHECK CONSTRAINT [CK_Correo]
GO
