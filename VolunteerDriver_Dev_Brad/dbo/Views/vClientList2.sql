CREATE VIEW dbo.vClientList2
AS
SELECT DISTINCT c.ClientID, c.ClFN, isnull(c.ClMI, '') AS ClMI, c.ClLN, c.Active, c.ClPhone, c.CLDOB, isnull(STUFF
                             ((SELECT DISTINCT '; ' + isnull(ClCity, 'BLANK')
                                 FROM            tblClientAddress ca
                                 WHERE        ca.ClientID = c.ClientID AND ca.Active = 1 FOR XML Path('')), 1, 2, ''), 'BLANK') AS [ClCity], isnull(STUFF
                             ((SELECT DISTINCT '; ' + isnull(co.County, 'BLANK')
                                 FROM            tblClientAddress ca INNER JOIN
                                                          ltblCounty co ON ca.County = co.CountyID
                                 WHERE        ca.ClientID = c.ClientID AND ca.Active = 1 FOR XML Path('')), 1, 2, ''), 'BLANK') AS [County], isnull(STUFF
                             ((SELECT DISTINCT '; ' + isnull(i.insurance, 'NOT DEFINED')
                                 FROM            tblClientInsurance ci(nolock) INNER JOIN
                                                          tblInsurance i(nolock) ON ci.InsuranceID = i.InsuranceID
                                 WHERE        ci.ClientID = c.ClientID AND ci.Active = 1 FOR XML Path('')), 1, 2, ''), 'NOT DEFINED') AS [Insurance], isnull(STUFF
                             ((SELECT DISTINCT '; ' + isnull(ci.MemberID, 'NO MEMBERID')
                                 FROM            tblClientInsurance ci(nolock)
                                 WHERE        ci.ClientID = c.ClientID AND ci.Active = 1 FOR XML Path('')), 1, 2, ''), 'NO MEMBERID') AS [MemberID]
FROM            tblClient C(nolock)
WHERE        c.Active = 1
GROUP BY c.clientid, c.ClFN, isnull(c.ClMI, ''), c.ClLN, c.Active, c.ClPhone, c.CLDOB

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
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vClientList2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'r = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vClientList2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vClientList2';

