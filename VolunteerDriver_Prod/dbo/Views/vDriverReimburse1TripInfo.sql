/*where (tbltrip.MIPOnly is null or tbltrip.MIPOnly <> 1)*/
CREATE VIEW dbo.vDriverReimburse1TripInfo
AS
SELECT        TOP (100) PERCENT dbo.tblDriver.LNFN, dbo.tblTrip.TripDriverMeals, dbo.tblTrip.TripDriverMisc, dbo.tblTrip.TripID, dbo.tblTrip.DriverRate, dbo.tblRide.SeqNo, dbo.tblRide.RStartTime, dbo.tblRide.RideDate, 
                         dbo.ltblCounty.County, dbo.tblDriverAddress.Active, dbo.tblDriverAddress.DrCity, dbo.tblTrip.DateReceived, dbo.tblTrip.TripDriverMilesPayable, dbo.tblTrip.TripCanceled, dbo.tblTrip.TripBegOdometer, 
                         dbo.tblTrip.TripEndOdometer, dbo.tblTrip.TripMilesTotal, dbo.tblTrip.TripDriverPersonalMiles, dbo.tblDriver.DriverID, ROUND((dbo.tblTrip.TripEndOdometer - dbo.tblTrip.TripBegOdometer - dbo.tblTrip.TripDriverPersonalMiles) 
                         * dbo.tblTrip.DriverRate, 2) AS TotalMileageReimburse, ROUND((dbo.tblTrip.TripEndOdometer - dbo.tblTrip.TripBegOdometer - dbo.tblTrip.TripDriverPersonalMiles) * dbo.tblTrip.DriverRate, 2) 
                         + dbo.tblTrip.TripDriverMeals + dbo.tblTrip.TripDriverMisc AS TotalReimburse, YEAR(dbo.tblRide.RideDate) AS TripYear, dbo.tblTrip.PaymentMadeDate, dbo.tblRide.REndTime, dbo.tblRide.RTripTime
FROM            dbo.tblDriverAddress WITH (NOLOCK) RIGHT OUTER JOIN
                         dbo.ltblCounty WITH (NOLOCK) RIGHT OUTER JOIN
                         dbo.tblRide WITH (NOLOCK) INNER JOIN
                         dbo.tblTrip WITH (NOLOCK) INNER JOIN
                         dbo.tblDriver WITH (NOLOCK) ON dbo.tblTrip.DriverID = dbo.tblDriver.DriverID ON dbo.tblRide.TripID = dbo.tblTrip.TripID ON dbo.ltblCounty.CountyID = dbo.tblTrip.BillingCounty ON 
                         dbo.tblDriverAddress.DriverAddressID = dbo.tblTrip.DriverAddressID
WHERE        (ISNULL(dbo.tblTrip.DateReceived, '') <> '')

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
         Begin Table = "tblDriverAddress"
            Begin Extent = 
               Top = 141
               Left = 968
               Bottom = 256
               Right = 1129
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 158
               Left = 355
               Bottom = 273
               Right = 515
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblRide"
            Begin Extent = 
               Top = 20
               Left = 66
               Bottom = 469
               Right = 264
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "tblTrip"
            Begin Extent = 
               Top = 6
               Left = 656
               Bottom = 245
               Right = 880
            End
            DisplayFlags = 280
            TopColumn = 54
         End
         Begin Table = "tblDriver"
            Begin Extent = 
               Top = 0
               Left = 1063
               Bottom = 115
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
      Begin ColumnWidths = 20
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
         Width = 1500
         Width = 1500
         Width = 15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverReimburse1TripInfo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'00
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
         Column = 2880
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 3000
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverReimburse1TripInfo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vDriverReimburse1TripInfo';

