




/*where c.ClientID in (753, 760, 768, 770, 2066)
order by c.ClientID desc*/
CREATE VIEW [dbo].[vEzClaimPatient2]
AS
SELECT     c.ClientID, r.RideID, CI.ClientInsuranceID, c.ClFN AS PatientFirstName, c.ClLN AS PatientLastName, c.ClMI AS PatientMI, 
                      c.ClDOB AS PatientBirthDate, r.RPickUpAddress AS PatientStreetAddress, r.RPickupCity AS PatientCity, r.rPickupState AS PatientState, r.RPickupZip AS PatientZipCode, 
                      c.Gender AS PatientSex, c.ClPhone AS PatientPhoneNo, 1 AS PatientSigOnFile, 0 AS InsuranceType, c.ClLN + ' ' + c.ClFN + ' ' + isnull(c.ClMI,'') AS InsuredName, 
                      CI.MemberID AS InsuredIDNo, CI.GroupID AS InsuredGroupNo, r.RPickUpAddress AS InsuredStreetAddress, r.RPickupCity AS InsuredCity, r.rPickupState AS InsuredState, 
                      r.RPickupZip AS InsuredZipCode, c.ClDOB AS InsuredDOB, 0 AS InsuredSex, c.ClPhone AS InsuredPhoneNo, 0 AS InsuredSigOnFile, 0 AS OtherSex, 1 AS PatientRel, 
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
                      r.RideDate,r.InsuranceID,t.MIPOnly,r.PUAddressID,r.DOAddressID
FROM         dbo.tblClient AS c INNER JOIN
                      --dbo.tblClientAddress AS ca ON c.ClientID = ca.ClientID AND c.Active = 1 AND ca.Active = 1 INNER JOIN
                      dbo.tblClientInsurance AS CI ON c.ClientID = CI.ClientID AND CI.Active = 1 INNER JOIN
                      dbo.tblInsurance AS I ON CI.InsuranceID = I.InsuranceID inner join 
                      tblRide r on c.ClientID = r.ClientID and ci.InsuranceID = r.InsuranceID inner join
                      tbltrip t on r.TripID = t.tripID
where r.Canceled = 0 and (t.MIPOnly is null or t.MIPOnly <> 1) and r.SeqNo = 1
 







