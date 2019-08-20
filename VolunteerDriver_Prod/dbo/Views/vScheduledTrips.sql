CREATE VIEW dbo.vScheduledTrips
AS
SELECT DISTINCT 
                         dbo.tblRide.RideDate, dbo.tblClient.ClLN + N', ' + dbo.tblClient.ClFN AS [Client Name], dbo.tblRide.RPickUpAddress, dbo.tblRide.RPickupCity, dbo.tblRide.RDropoffAddress, dbo.tblRide.RDropoffCity, dbo.tblClient.ClPhone, 
                         dbo.tblRide.SchedulePickupTime, dbo.tblTrip.TripID, dbo.tblTrip.TripCanceled, dbo.tblRide.Canceled, dbo.tblRide.DriverID, dbo.tblRide.SelectCheck, dbo.tblRide.ScheduleApptTime, dbo.ltblTripType.TripType, ltblCounty_1.County,
                          dbo.tblDriver.LNFN, dbo.tblRide.NoShow, dbo.tblInsurance.Insurance, dbo.tblRide.SeqNo, dbo.tblTrip.PendDrConf, dbo.tblRide.LoadedMiles, dbo.tblRide.UnloadedMiles, dbo.tblClient.ClientID, 
                         dbo.tblRide.ClientInsuranceID AS RideClientInsuranceID, dbo.tblInsurance.InsuranceID, dbo.tblRide.MemberID, dbo.tblRide.AuthCode,
                             (SELECT        MIN(Eligibility + 0) AS Eligibility
                               FROM            dbo.tblClientEligibility AS e
                               WHERE        (dbo.tblRide.ClientInsuranceID = ClientInsuranceID) AND (Cancelled = 0) AND (Eligibility = 1)) AS Eligibility, dbo.ltblCounty.County AS DriverCounty
FROM            dbo.ltblCounty INNER JOIN
                         dbo.tblDriver WITH (NOLOCK) ON dbo.ltblCounty.CountyID = dbo.tblDriver.CountyID RIGHT OUTER JOIN
                         dbo.tblClient WITH (NOLOCK) RIGHT OUTER JOIN
                         dbo.ltblTripType WITH (NOLOCK) INNER JOIN
                         dbo.tblTrip WITH (NOLOCK) INNER JOIN
                         dbo.tblRide WITH (NOLOCK) ON dbo.tblTrip.TripID = dbo.tblRide.TripID ON dbo.ltblTripType.TripTypeID = dbo.tblTrip.TripTypeId ON dbo.tblClient.ClientID = dbo.tblRide.ClientID LEFT OUTER JOIN
                         dbo.tblInsurance WITH (NOLOCK) ON dbo.tblRide.InsuranceID = dbo.tblInsurance.InsuranceID ON dbo.tblDriver.DriverID = dbo.tblRide.DriverID LEFT OUTER JOIN
                         dbo.ltblCounty AS ltblCounty_1 WITH (NOLOCK) ON dbo.tblRide.County = ltblCounty_1.CountyID
WHERE        (dbo.tblRide.RideDate >= GETDATE() - 1) AND (dbo.tblRide.RideDate < CONVERT(DATETIME, '2049-01-01 00:00:00', 102))

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
         Begin Table = "tblClient"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ltblTripType"
            Begin Extent = 
               Top = 6
               Left = 279
               Bottom = 136
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTrip"
            Begin Extent = 
               Top = 6
               Left = 489
               Bottom = 136
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblRide"
            Begin Extent = 
               Top = 6
               Left = 764
               Bottom = 136
               Right = 971
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblInsurance"
            Begin Extent = 
               Top = 6
               Left = 1009
               Bottom = 136
               Right = 1235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblDriver"
            Begin Extent = 
               Top = 6
               Left = 1273
               Bottom = 377
               Right = 1497
            End
            DisplayFlags = 280
            TopColumn = 31
         End
         Begin Table = "ltblCounty_1"
            Begin Extent = 
               Top = 178
               Left = 997
               Bottom = 308
               Right = 1174
            End
            ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vScheduledTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 145
               Left = 1560
               Bottom = 265
               Right = 1737
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vScheduledTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vScheduledTrips';

