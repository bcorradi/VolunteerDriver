CREATE VIEW [dbo].[vAllTripsLegs]
AS
SELECT     dbo.tblRide.RideDate, dbo.tblClient.ClLN + N', ' + dbo.tblClient.ClFN AS [Client Name], dbo.tblRide.RPickUpAddress, dbo.tblRide.RPickupCity, 
                      dbo.tblRide.RDropoffAddress, dbo.tblRide.RDropoffCity, dbo.tblClient.ClPhone, dbo.tblRide.SchedulePickupTime, dbo.tblTrip.TripID, dbo.tblTrip.TripCanceled, 
                      dbo.tblRide.Canceled, dbo.tblRide.DriverID, dbo.tblRide.SelectCheck, dbo.tblRide.ScheduleApptTime, dbo.ltblTripType.TripType, dbo.ltblCounty.County, 
                      dbo.tblDriver.LNFN, dbo.tblRide.NoShow, dbo.tblInsurance.Insurance, dbo.tblRide.SeqNo, dbo.tblTrip.PendDrConf, dbo.tblRide.LoadedMiles, 
                      dbo.tblRide.UnloadedMiles
FROM         dbo.ltblTripType (NOLOCK) INNER JOIN
                      dbo.tblTrip (NOLOCK) INNER JOIN
                      dbo.tblRide (NOLOCK) ON dbo.tblTrip.TripID = dbo.tblRide.TripID ON dbo.ltblTripType.TripTypeID = dbo.tblTrip.TripTypeId INNER JOIN
                      dbo.tblClient (NOLOCK) ON dbo.tblRide.ClientID = dbo.tblClient.ClientID INNER JOIN
                      dbo.tblInsurance (NOLOCK) ON dbo.tblRide.InsuranceID = dbo.tblInsurance.InsuranceID LEFT OUTER JOIN
                      dbo.ltblCounty (NOLOCK) ON dbo.tblRide.County = dbo.ltblCounty.CountyID LEFT OUTER JOIN
                      dbo.tblDriver (NOLOCK) ON dbo.tblRide.DriverID = dbo.tblDriver.DriverID
--ORDER BY dbo.tblRide.RideDate, dbo.tblClient.ClLN, dbo.tblClient.ClFN

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
         Begin Table = "ltblTripType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 193
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTrip"
            Begin Extent = 
               Top = 6
               Left = 231
               Bottom = 121
               Right = 446
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblRide"
            Begin Extent = 
               Top = 6
               Left = 484
               Bottom = 269
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblClient"
            Begin Extent = 
               Top = 2
               Left = 926
               Bottom = 117
               Right = 1114
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblInsurance"
            Begin Extent = 
               Top = 197
               Left = 711
               Bottom = 312
               Right = 898
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblDriver"
            Begin Extent = 
               Top = 196
               Left = 1210
               Bottom = 311
               Right = 1413
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 189
               Left = 60
               Bottom = 304
               Right = 220
            End
            Di', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vAllTripsLegs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'splayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 24
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vAllTripsLegs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vAllTripsLegs';

