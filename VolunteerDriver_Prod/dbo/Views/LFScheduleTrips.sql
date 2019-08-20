﻿CREATE VIEW [dbo].[LFScheduleTrips]
AS
SELECT     dbo.tblRide.RideDate, dbo.tblClient.ClLN + N', ' + dbo.tblClient.ClFN AS [Client Name], dbo.tblRide.RPickUpAddress, dbo.tblRide.RPickupCity, 
                      dbo.tblRide.RDropoffAddress, dbo.tblRide.RDropoffCity, dbo.tblClient.ClPhone, dbo.tblRide.SchedulePickupTime, dbo.tblTrip.TripID, dbo.tblTrip.TripCanceled, 
                      dbo.tblRide.Canceled, dbo.tblRide.DriverID, dbo.tblRide.SelectCheck, dbo.tblRide.ScheduleApptTime, dbo.ltblTripType.TripType, dbo.ltblCounty.County, 
                      dbo.tblDriver.LNFN, dbo.tblRide.NoShow, dbo.tblInsurance.Insurance, dbo.tblRide.SeqNo, dbo.tblTrip.PendDrConf, dbo.tblClient.ClientID, dbo.tblRide.AuthCode
FROM         dbo.ltblTripType (NOLOCK) INNER JOIN
                      dbo.tblTrip (NOLOCK) INNER JOIN
                      dbo.tblRide (NOLOCK) ON dbo.tblTrip.TripID = dbo.tblRide.TripID ON dbo.ltblTripType.TripTypeID = dbo.tblTrip.TripTypeId LEFT OUTER JOIN
                      dbo.tblClient (NOLOCK) ON dbo.tblRide.ClientID = dbo.tblClient.ClientID LEFT OUTER JOIN
                      dbo.tblInsurance (NOLOCK) ON dbo.tblRide.InsuranceID = dbo.tblInsurance.InsuranceID LEFT OUTER JOIN
                      dbo.tblDriver (NOLOCK) ON dbo.tblRide.DriverID = dbo.tblDriver.DriverID LEFT OUTER JOIN
                      dbo.ltblCounty (NOLOCK) ON dbo.tblRide.County = dbo.ltblCounty.CountyID
WHERE     (dbo.tblRide.RideDate >= GETDATE() - 1)
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
               Bottom = 346
               Right = 191
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblTrip"
            Begin Extent = 
               Top = 6
               Left = 229
               Bottom = 366
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblRide"
            Begin Extent = 
               Top = 6
               Left = 480
               Bottom = 358
               Right = 666
            End
            DisplayFlags = 280
            TopColumn = 17
         End
         Begin Table = "tblClient"
            Begin Extent = 
               Top = 6
               Left = 704
               Bottom = 352
               Right = 888
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblInsurance"
            Begin Extent = 
               Top = 6
               Left = 928
               Bottom = 356
               Right = 1108
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tblDriver"
            Begin Extent = 
               Top = 6
               Left = 1151
               Bottom = 362
               Right = 1352
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ltblCounty"
            Begin Extent = 
               Top = 6
               Left = 1390
               Bottom = 361
               Right = 1548
            End
            Disp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'LFScheduleTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'layFlags = 280
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
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1725
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'LFScheduleTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'LFScheduleTrips';
