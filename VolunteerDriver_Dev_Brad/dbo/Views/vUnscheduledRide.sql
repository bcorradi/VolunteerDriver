CREATE VIEW dbo.vUnscheduledRide
AS
SELECT        dbo.ftptest.vendor, dbo.ftptest.seqrideid, dbo.ftptest.seqridelegid, dbo.ftptest.status, dbo.ftptest.ridedate, dbo.ftptest.primaryRiderExternalMemberID, dbo.ftptest.primaryRiderLastName, dbo.ftptest.primaryRiderFirstName, 
                         dbo.ftptest.primaryridermiddleinitial, dbo.ftptest.cabridetype, dbo.ftptest.pickupdate, dbo.ftptest.appointmentdate, dbo.ftptest.fromfacilityname, dbo.ftptest.fromstreet, dbo.ftptest.fromstreet2, dbo.ftptest.fromcity, 
                         dbo.ftptest.fromstate, dbo.ftptest.fromzip, dbo.ftptest.fromcounty, dbo.ftptest.fromphone, dbo.ftptest.tofacilityname, dbo.ftptest.tostreet, dbo.ftptest.tostreet2, dbo.ftptest.tocity, dbo.ftptest.tostate, dbo.ftptest.tozip, 
                         dbo.ftptest.tocounty, dbo.ftptest.tophone, dbo.ftptest.numberofriders, dbo.ftptest.estimatedmileage, dbo.ftptest.instructions, dbo.ftptest.modified, dbo.ftptest.primaryriderstreet1, dbo.ftptest.primaryriderstreet2, 
                         dbo.ftptest.primaryridercity, dbo.ftptest.primaryriderstate, dbo.ftptest.primaryriderzip, dbo.ftptest.Primaryridercounty, dbo.ftptest.primaryriderphone, dbo.ftptest.primaryridergender, dbo.ftptest.primaryriderdateofbirth, 
                         dbo.ftptest.mode, dbo.ftptest.fromzip4, dbo.ftptest.tozip4, dbo.tblClient.ClientID, dbo.tblClientInsurance.ClientInsuranceID, dbo.tblClientInsurance.InsuranceID, dbo.tblClientInsurance.Active, 
                         dbo.tblAddress.AddressID AS PUAddressID, tblAddress_1.AddressID AS DOAddressID, dbo.tblClient.ClFN, dbo.tblClient.ClLN, dbo.tblClient.County, dbo.tblAddress.AddressTypeID AS PUAddressTypeID, 
                         tblAddress_1.AddressTypeID AS DOAddressTypeID, dbo.tblClientInsurance.MemberID, dbo.tblInsurance.Insurance
FROM            dbo.tblClient LEFT OUTER JOIN
                         dbo.tblClientInsurance LEFT OUTER JOIN
                         dbo.tblInsurance ON dbo.tblClientInsurance.InsuranceID = dbo.tblInsurance.InsuranceID ON dbo.tblClient.ClientID = dbo.tblClientInsurance.ClientID RIGHT OUTER JOIN
                         dbo.tblAddress RIGHT OUTER JOIN
                         dbo.tblAddress AS tblAddress_1 RIGHT OUTER JOIN
                         dbo.ftptest ON tblAddress_1.Address = dbo.ftptest.tostreet AND tblAddress_1.City = dbo.ftptest.tocity ON dbo.tblAddress.Address = dbo.ftptest.fromstreet AND dbo.tblAddress.City = dbo.ftptest.fromcity ON 
                         dbo.tblClient.ClDOB = dbo.ftptest.primaryriderdateofbirth AND dbo.tblClientInsurance.MemberID = dbo.ftptest.primaryRiderExternalMemberID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vUnscheduledRide';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'lumn = 2445
         Alias = 1995
         Table = 2490
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 3105
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vUnscheduledRide';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[30] 2[11] 3) )"
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
               Top = 8
               Left = 361
               Bottom = 419
               Right = 564
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tblClientInsurance"
            Begin Extent = 
               Top = 2
               Left = 615
               Bottom = 409
               Right = 807
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblInsurance"
            Begin Extent = 
               Top = 221
               Left = 847
               Bottom = 351
               Right = 1017
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblAddress"
            Begin Extent = 
               Top = 1
               Left = 1026
               Bottom = 411
               Right = 1220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblAddress_1"
            Begin Extent = 
               Top = 0
               Left = 1222
               Bottom = 410
               Right = 1416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ftptest"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 416
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 11
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
         Co', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vUnscheduledRide';

