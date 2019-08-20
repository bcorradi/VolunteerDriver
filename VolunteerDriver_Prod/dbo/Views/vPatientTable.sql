


CREATE view [dbo].[vPatientTable]
as
select 
PatientID,
PatientLastName,
PatientFirstName,
PatientMI,
PatientBirthDate,
PatientStreetAddress,
PatientCity,
PatientState,
PatientZipCode,
PatientSex,
PrimaryPayerFKey,
InsuredIDNo,
InsuredGroupNo,
InsuranceID
from ezclaim...[Patient Table] p
inner join tblInsurance i
on p.PrimaryPayerFKey = i.EzClaimPayerID
where p.active = 1
and patientlastname is not null



