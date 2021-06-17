USE [SGEU]
GO

/****** Object:  View [dbo].[V_alunosturma]    Script Date: 18/11/2015 10:37:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_alunosturma]
AS
SELECT        dbo.usuarios.nome_usuario, RIGHT('0' + CAST(SUM(DATEDIFF(mi, dbo.registro_horario.entrada, dbo.registro_horario.saida)) / 60 AS VARCHAR(2)), 2) + ':' + RIGHT('0' + CAST(SUM(DATEDIFF(mi, 
                         dbo.registro_horario.entrada, dbo.registro_horario.saida)) % 60 AS VARCHAR(2)), 2) AS totalhoras, dbo.usuarios.id_turma
FROM            dbo.turmas INNER JOIN
                         dbo.usuarios ON dbo.turmas.idturma = dbo.usuarios.id_turma INNER JOIN
                         dbo.registro_horario ON dbo.usuarios.idusuario = dbo.registro_horario.idusuario
WHERE        (dbo.usuarios.id_turma = 1)
GROUP BY dbo.usuarios.nome_usuario, dbo.usuarios.id_turma

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[5] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "turmas"
            Begin Extent = 
               Top = 25
               Left = 278
               Bottom = 171
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "usuarios"
            Begin Extent = 
               Top = 27
               Left = 42
               Bottom = 208
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "registro_horario"
            Begin Extent = 
               Top = 0
               Left = 525
               Bottom = 158
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1260
         Width = 1455
         Width = 1725
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_alunosturma'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_alunosturma'
GO

