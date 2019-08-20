CREATE VIEW [dbo].[vDriverSummaryHistory]
AS
SELECT     dbo.tblDriver.DrLastName, dbo.tblDriver.DrFirstName, dbo.tblTrip.TripID, dbo.tblDriver.DriverID, dbo.tblDriver.DrPhone1, 
                      dbo.tblDriver.DrPhoneAlt, dbo.tblDriver.DrInsPolicyExp, CASE WHEN tbldriver.countyid IS NOT NULL 
                      THEN ltblcounty.county ELSE 'Driver Missing County' END AS COUNTY, dbo.tblRide.RideDate, dbo.tblDriverAddress.DrCity
FROM         dbo.ltblCounty (NOLOCK) RIGHT OUTER JOIN
                      dbo.tblDriver (NOLOCK) LEFT OUTER JOIN
                      dbo.tblDriverAddress (NOLOCK) ON dbo.tblDriver.DriverID = dbo.tblDriverAddress.DriverID LEFT OUTER JOIN
                      dbo.tblTrip (NOLOCK) ON dbo.tblDriver.DriverID = dbo.tblTrip.DriverID ON dbo.ltblCounty.CountyID = dbo.tblDriver.CountyID LEFT OUTER JOIN
                      dbo.tblRide (NOLOCK) ON dbo.tblTrip.TripID = dbo.tblRide.TripID
WHERE     (dbo.tblDriver.Active <> 0) AND (dbo.tblDriverAddress.Active <> 0) AND (dbo.tblTrip.TripCanceled = 0) AND (dbo.tblRide.Canceled = 0) OR
                      (dbo.tblDriver.Active <> 0) AND (dbo.tblDriverAddress.Active <> 0) AND (dbo.tblTrip.TripID IS NULL)
--ORDER BY dbo.tblDriver.DrLastName, dbo.tblDriver.DrFirstName

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
         Begin Table = "tblRide"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 117
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 34
         End
         Begin Table = "tblDriver"
            Begin Extent = 
               Top = 41
               Left = 644
               Bottom = 152
               Right = 843
            End
            DisplayFlags = 280
            TopColumn = 41
         End
         Begin Table = "tblTrip"
            Begin Extent = 
               Top = 10
               Left = 368
               Bottom = 121
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 12
               Left = 997
               Bottom = 123
               Right = 1173
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblDriverAddress"
            Begin Extent = 
               Top = 143
               Left = 449
               Bottom = 258
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
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
         Width = 1995
         Width = 1500
      End
   End
   Begin CriteriaPane =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverSummaryHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' 
      Begin ColumnWidths = 11
         Column = 7530
         Alias = 1275
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 2700
         Or = 1350
         Or = 1350
         Or = 2490
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverSummaryHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverSummaryHistory';

