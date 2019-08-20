
CREATE view vEzPatientClientLinktest
as

--memberid has to be the same
--groupid only for Blue Cross
select distinct PatientID,c.ClientID,r.PUAddressID as AddressID, r.InsuranceID, --i.Insurance,
SUSER_SNAME() as username
 from ezclaimtest...[Patient Table] 
 inner join tblClient c
 on PatientFirstName = ClFN
 and PatientLastName = ClLN
 and c.ClDOB = patientbirthdate
 and patientdatetimemodified >= '2014-03-03'
 --inner join tblClientAddress ca
 inner join tblRide r
 on c.ClientID = r.clientid
 and PatientStreetaddress = r.RPickUpAddress
 and r.SeqNo = 1

 --and ca.Active = 1
 --inner join tblclientinsurance ci
 --on c.ClientID = ci.ClientID
 ----and c.Insurance = ci.InsuranceID
 --and ci.Active = 1
 inner join tblInsurance i
 on r.InsuranceID = i.InsuranceID
 --on ci.InsuranceID = i.InsuranceID
 and i.EZClaimContractID = contractid 
 --and i.Active = 1
 --where patientid in (5221, 5227, 5317)
where c.Active = 1