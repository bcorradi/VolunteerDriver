﻿
CREATE VIEW [dbo].[vDriverList]
AS
SELECT       dbo.tblDriver.DrLastName, dbo.tblDriver.DrFirstName, dbo.tblDriver.DrPhone1, dbo.tblDriver.DrPhoneAlt, dbo.ltblCounty.County, 
             dbo.tblDriver.DuluthOnly, dbo.tblDriver.RRMed, dbo.tblDriver.LicenseExpires, dbo.tblDriver.DrInsPolicyExp, 
             dbo.tblDriverAddress.DrCity, dbo.tblDriver.Active, 
             dbo.tblDriver.DriverID,dbo.tblDriver.DrMDRCheck,dbo.tblDriver.Availability
FROM         dbo.tblDriver (NOLOCK) 
             LEFT OUTER JOIN dbo.tblDriverAddress (NOLOCK) 
             ON dbo.tblDriver.DriverID = dbo.tblDriverAddress.DriverID 
             and (dbo.tblDriverAddress.Active <> 0)
             LEFT OUTER JOIN dbo.ltblCounty (NOLOCK) 
             ON dbo.tblDriver.CountyID = dbo.ltblCounty.CountyID
WHERE isnull(tblDriver.Deleted,0) <> 1
--WHERE     (dbo.tblDriverAddress.Active <> 0) --removed this and place in join condition 
--if a driver doesnt have an active address the application no longer shows the driver so users cant add an active address

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "tblDriver"
            Begin Extent = 
               Top = 12
               Left = 375
               Bottom = 268
               Right = 555
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblDriverAddress"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 280
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 122
               Left = 678
               Bottom = 237
               Right = 838
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
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1425
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverList';
