


/*where c.ClientID in (753, 760, 768, 770, 2066)
order by c.ClientID desc*/
CREATE VIEW [dbo].[vEzClaimPatient]
AS
SELECT     c.ClientID, ca.ClientAddressID, ca.ClAddressID, CI.ClientInsuranceID, c.ClFN AS PatientFirstName, c.ClLN AS PatientLastName, c.ClMI AS PatientMI, 
                      c.ClDOB AS PatientBirthDate, ca.ClAddress AS PatientStreetAddress, ca.ClCity AS PatientCity, ca.ClState AS PatientState, ca.ClZip AS PatientZipCode, 
                      c.Gender AS PatientSex, c.ClPhone AS PatientPhoneNo, 1 AS PatientSigOnFile, 0 AS InsuranceType, c.ClLN + ' ' + c.ClFN + ' ' + isnull(c.ClMI,'') AS InsuredName, 
                      CI.MemberID AS InsuredIDNo, CI.GroupID AS InsuredGroupNo, ca.ClAddress AS InsuredStreetAddress, ca.ClCity AS InsuredCity, ca.ClState AS InsuredState, 
                      ca.ClZip AS InsuredZipCode, c.ClDOB AS InsuredDOB, 0 AS InsuredSex, c.ClPhone AS InsuredPhoneNo, 0 AS InsuredSigOnFile, 0 AS OtherSex, 1 AS PatientRel, 
                      0 AS PatientMarriedStatus, 0 AS PatientEmploymentStatus, 2 AS AnotherPlan, 0 AS RelatedTo, 0 AS OutsideLab, 1 AS PhysicianSigOnFile, 
                      I.EZClaimDiagnosisCode AS Diagnosis1, 1 AS AcceptAssignment, 0 AS SSNOrEIN, 99 AS DefaultPlace, 'A' AS DefaultDiagnosisCode, 1.00 AS DefaultCharge, 
                      1 AS DefaultDays, 0.00 AS DefaultAmountPaid, 1 AS Active, 0 AS Summarize, 0 AS PrintSigDate, 'MMDDYYYY' AS ServiceDateFormat, 'DD CC' AS CurrencyFormat, 
                      'MMDDYYYY' AS DateFormat, 1 AS DefaultfDays, 0 AS bPhysicianPrintDate, 0 AS bBlankZeroAmounts2930, 
                      CASE WHEN I.EzClaimContractID = 1 THEN 0 WHEN I.EzClaimContractID = 11 THEN 1 WHEN I.EzClaimContractID = 10 THEN 1 WHEN I.EzClaimContractID = 9 THEN 0 WHEN
                       I.EzClaimContractID = 8 THEN 0 WHEN I.EzClaimContractID = 0 THEN 0 END AS bBlankBox30, 0 AS bPhysicianPhoneOnBottom, 
                      I.EzClaimPayerID AS PrimaryPayerFKey, 0 AS SecondaryPayerFKey, 0 AS bIncludeNotes, 0 AS bBlankAllZeroAmounts, I.EZClaimContractID AS ContractID, 
                      0 AS bResponseInd, 1 AS PrintHCFAForm, CONVERT(varchar(8), GETDATE(), 112) AS ChangeDate, CONVERT(varchar, GETDATE(), 108) + ':00' AS ChangeTime, 
                      'Default' AS CodeLibraryName, 0 AS ReferringProviderFID, 0 AS FacilityFID, 'A0080' AS DefaultProcedure, 1995 AS BillingProviderFID, 17 AS RenderingProviderFID, 
                      0 AS bLockRecord, '<Use Initial Charge Values>' AS DefaultClaimTemplate, 0 AS OtherPatientRel, --CI.InsuranceID,
                      r.RideDate,r.InsuranceID,t.MIPOnly
FROM         dbo.tblClient AS c INNER JOIN
                      dbo.tblClientAddress AS ca ON c.ClientID = ca.ClientID AND c.Active = 1 AND ca.Active = 1 INNER JOIN
                      dbo.tblClientInsurance AS CI ON c.ClientID = CI.ClientID AND CI.Active = 1 INNER JOIN
                      dbo.tblInsurance AS I ON CI.InsuranceID = I.InsuranceID inner join 
                      tblRide r on c.ClientID = r.ClientID and ci.InsuranceID = r.InsuranceID inner join
                      tbltrip t on r.TripID = t.tripID
where r.Canceled = 0 and (t.MIPOnly is null or t.MIPOnly <> 1)
 




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
         Begin Table = "c"
            Begin Extent = 
               Top = 51
               Left = 420
               Bottom = 274
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ca"
            Begin Extent = 
               Top = 22
               Left = 20
               Bottom = 305
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CI"
            Begin Extent = 
               Top = 30
               Left = 743
               Bottom = 273
               Right = 976
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "I"
            Begin Extent = 
               Top = 128
               Left = 1148
               Bottom = 243
               Right = 1337
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vEzClaimPatient';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vEzClaimPatient';

