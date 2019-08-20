CREATE VIEW dbo.vClientList
AS
SELECT        dbo.tblClient.ClientID, dbo.tblClient.ClFN, dbo.tblClient.ClLN, dbo.tblClient.ClMI, dbo.tblClient.Active, dbo.tblClient.ClPhone, dbo.tblClientAddress.ClCity, dbo.ltblCounty.County, dbo.tblInsurance.Insurance, dbo.tblClient.ClDOB, 
                         dbo.tblClientInsurance.MemberID
FROM            dbo.tblClient RIGHT OUTER JOIN
                         dbo.tblClientAddress ON dbo.tblClient.ClientID = dbo.tblClientAddress.ClientID RIGHT OUTER JOIN
                         dbo.ltblCounty ON dbo.tblClientAddress.County = dbo.ltblCounty.CountyID RIGHT OUTER JOIN
                         dbo.tblClientInsurance ON dbo.tblClient.ClientID = dbo.tblClientInsurance.ClientID RIGHT OUTER JOIN
                         dbo.tblInsurance ON dbo.tblClientInsurance.InsuranceID = dbo.tblInsurance.InsuranceID
WHERE        (dbo.tblClientInsurance.Active <> 0) AND (dbo.tblClient.Active <> 0) OR
                         (dbo.tblClientInsurance.Active IS NULL) AND (dbo.tblClient.Active <> 0) OR
                         (dbo.tblClientInsurance.Active <> 0) AND (dbo.tblClient.Active <> 0) AND (dbo.tblClientAddress.Active IS NULL) OR
                         (dbo.tblClientInsurance.Active IS NULL) AND (dbo.tblClient.Active <> 0) AND (dbo.tblClientAddress.Active IS NULL)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[19] 4[42] 2[20] 3) )"
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
         Begin Table = "tblClient"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 233
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 15
         End
         Begin Table = "tblClientInsurance"
            Begin Extent = 
               Top = 6
               Left = 461
               Bottom = 318
               Right = 742
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tblInsurance"
            Begin Extent = 
               Top = 21
               Left = 861
               Bottom = 136
               Right = 1048
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "tblClientAddress"
            Begin Extent = 
               Top = 116
               Left = 278
               Bottom = 231
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 6
               Left = 1086
               Bottom = 121
               Right = 1246
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
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vClientList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'Begin ColumnWidths = 13
         Column = 1440
         Alias = 900
         Table = 1530
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
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vClientList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vClientList';

