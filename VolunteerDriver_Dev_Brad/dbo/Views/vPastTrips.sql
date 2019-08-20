CREATE VIEW dbo.vPastTrips
AS
SELECT        dbo.tblRide.RideDate, dbo.tblClient.ClLN + N', ' + dbo.tblClient.ClFN AS [Client Name], dbo.tblRide.RPickUpAddress, dbo.tblRide.RPickupCity, dbo.tblRide.RDropoffAddress, dbo.tblRide.RDropoffCity, dbo.tblClient.ClPhone, 
                         dbo.tblRide.SchedulePickupTime, dbo.tblTrip.TripID, dbo.tblTrip.TripCanceled, dbo.tblRide.Canceled, dbo.tblRide.DriverID, dbo.tblRide.SelectCheck, dbo.tblRide.ScheduleApptTime, dbo.ltblTripType.TripType, 
                         dbo.ltblCounty.County, dbo.tblDriver.LNFN, dbo.tblRide.NoShow, dbo.tblInsurance.Insurance, dbo.tblRide.SeqNo, dbo.tblTrip.PendDrConf, dbo.tblTrip.DateReceived, dbo.tblRide.AuthCode, dbo.tblRide.RepID, 
                         dbo.tblTrip.TripDriverMeals, dbo.tblTrip.TripDriverMisc, dbo.tblRide.LoadedMiles, dbo.tblRide.UnloadedMiles, dbo.tblRide.RDropoffZip, dbo.tblRide.RPickupZip, dbo.tblClient.ClFN, dbo.tblClient.ClLN, dbo.tblDriver.DrFirstName, 
                         dbo.tblDriver.DrLastName, dbo.tblRide.FacilityName, dbo.tblRide.RDropOffZip4, dbo.tblRide.ClientID, dbo.tblTrip.SeniorFitness, dbo.tblTrip.ElderlyWaiver, dbo.tblRide.MemberID, dbo.tblRide.PUAddressID, 
                         dbo.tblClient.ClDOB AS DOB, dbo.tblRide.RPickupZip4, dbo.tblRide.FaciltyZip4, dbo.tblRide.rPickupState, dbo.tblRide.rDropOffState, dbo.tblTrip.TripNotes, dbo.tblRide.InEzClaim, dbo.tblTrip.MaxReimburse, 
                         dbo.tblDriver.DrPhone1, dbo.tblTrip.EZClaimClaimID, dbo.tblTrip.Worker
FROM            dbo.ltblTripType WITH (NOLOCK) INNER JOIN
                         dbo.tblTrip WITH (NOLOCK) INNER JOIN
                         dbo.tblRide WITH (NOLOCK) ON dbo.tblTrip.TripID = dbo.tblRide.TripID ON dbo.ltblTripType.TripTypeID = dbo.tblTrip.TripTypeId LEFT OUTER JOIN
                         dbo.ltblCounty WITH (NOLOCK) ON dbo.tblTrip.BillingCounty = dbo.ltblCounty.CountyID LEFT OUTER JOIN
                         dbo.tblClient WITH (NOLOCK) ON dbo.tblRide.ClientID = dbo.tblClient.ClientID LEFT OUTER JOIN
                         dbo.tblInsurance WITH (NOLOCK) ON dbo.tblRide.InsuranceID = dbo.tblInsurance.InsuranceID LEFT OUTER JOIN
                         dbo.tblDriver WITH (NOLOCK) ON dbo.tblRide.DriverID = dbo.tblDriver.DriverID
WHERE        (dbo.tblRide.RideDate >= CONVERT(DATETIME, '2016-01-01 00:00:00', 102)) AND (NOT (dbo.tblRide.ClientID IS NULL)) AND (dbo.tblRide.Canceled = 0)

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
               Top = 32
               Left = 25
               Bottom = 147
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTrip"
            Begin Extent = 
               Top = 6
               Left = 231
               Bottom = 407
               Right = 446
            End
            DisplayFlags = 280
            TopColumn = 44
         End
         Begin Table = "tblRide"
            Begin Extent = 
               Top = 6
               Left = 484
               Bottom = 121
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 61
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 183
               Left = 696
               Bottom = 298
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblClient"
            Begin Extent = 
               Top = 171
               Left = 891
               Bottom = 286
               Right = 1079
            End
            DisplayFlags = 280
            TopColumn = 22
         End
         Begin Table = "tblInsurance"
            Begin Extent = 
               Top = 128
               Left = 1123
               Bottom = 243
               Right = 1310
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblDriver"
            Begin Extent = 
               Top = 6
               Left = 1161
               Bottom = 121
               Right = 1344
            End
       ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vPastTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'     DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 48
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
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3510
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 5415
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vPastTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vPastTrips';

