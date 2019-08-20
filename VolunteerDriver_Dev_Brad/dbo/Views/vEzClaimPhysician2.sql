





CREATE VIEW [dbo].[vEzClaimPhysician2]
AS
SELECT     EZClaimPhysicianID AS PhyRecID, 
           FacilityName AS PhyName, 
           2 AS PhyEntityType, 
           FacilityName AS PhyLastName, 
           RDropoffAddress AS PhyAddress1, 
           RDropoffCity AS PhyCity, 
           RDropoffState AS PhyState, 
           ISNULL(RDropoffZip, '') + '-' + ISNULL(RDropoffZip4, '') AS PhyZip, 
           'Facility' AS PhyType, 
           GETDATE() AS PhysicianDateTimeCreated, 
           GETDATE() AS PhysicianDateTimeModified, 
           0 AS PhyInactive, 
           RideID
FROM       dbo.tblride R
left join tblAddressType AT
on r.DOAddressTypeID = AT.AddressTypeID
WHERE     (EZClaimPhysicianID IS NULL) AND (SeqNo = 1)



