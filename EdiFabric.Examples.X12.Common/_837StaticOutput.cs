using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EdiFabric.Core.Model.Edi.X12;

namespace EdiFabric.Examples.X12.Common
{
    // REMOVE SETS FROM CLASSES
    // FINISH PRODUCTION/TEST MODE

    public class _837StaticOutput
    {
        public enum eMode
        {
            Test = 0,
            Production = 1
        };

        public enum eProvider
        {
            BlueCross = 0,
            HealthPartners = 1,
            Medica = 2,
            UCare = 3
        }

        public const string DateFormat = "yyMMdd";
        public const string TimeFormat = "hhmm";
        private GS _GS;
        private Transaction _Transaction;
        private Submitter_1000A _Submitter;
        private Receiver_1000B _Receiver;
        private BillingProvider_2000A _BillingProvider;        
        private Subscriber_2000B _Subscriber;

        public ISA ISA { get; }

        public GS GS { get { return _GS; } }

        public Transaction Transaction { get { return _Transaction; } }

        public Submitter_1000A Submitter { get { return _Submitter; } }

        public Receiver_1000B Receiver { get { return _Receiver; } }

        public BillingProvider_2000A BillingProvider { get { return _BillingProvider; } }

        public Subscriber_2000B Subscriber { get { return _Subscriber; } }
        
        public eMode Mode { get; set; }
                
        //public ISA ISA 

        public _837StaticOutput(eProvider provider, eMode mode)
        {
            //ISA = new ISA(mode);
            _GS = new GS();

            

            _Transaction = new Transaction();
            _Submitter = new Submitter_1000A();
            _Receiver = new Receiver_1000B();

            _BillingProvider = new BillingProvider_2000A(provider);
            _Subscriber = new Subscriber_2000B(provider);

        }        
    }


    //public class ISA
    //{
    //    public string AuthorizationInformationQualifier { get; set; }

    //    public string AuthorizationInformation { get; set; }

    //    public string SecurityInformationQualifier { get; set; }

    //    public string SecurityInformation { get; set; }

    //    public string InterchangeSenderIDQualifier { get; set; }

    //    public string InterchangeSenderID { get; set; }

    //    public string InterchangeReceiverIDQualifier { get; set; }

    //    public string InterchangeReceiverID { get; set; }

    //    public DateTime InterchangeDate { get; set; }

    //    public string InterchangeDateStr
    //    {
    //        get
    //        {
    //            return InterchangeDate.ToString(_837StaticOutput.DateFormat);
    //        }
    //    }

    //    public DateTime InterchangeTime { get; set; }

    //    public string InterchangeTimeStr
    //    {
    //        get
    //        {
    //            return InterchangeTime.ToString(_837StaticOutput.TimeFormat);
    //        }
    //    }

    //    public char InterchangeStandardsIdentifier { get; set; }

    //    public string InterchangeVersionNumber { get; set; }

    //    public string InterchangeControlNumber { get; set; }

    //    public string AcknowledgementRequested { get; set; }

    //    public string TestIndicator { get; set; }

    //    public string ComponentElementSeperator { get; set; }

    //    public ISA(_837StaticOutput.eMode mode)
    //    {
    //        AuthorizationInformationQualifier = "00";
    //        AuthorizationInformation = string.Empty;
    //        SecurityInformationQualifier = "00";
    //        SecurityInformation = string.Empty;
    //        InterchangeSenderIDQualifier = "30";
    //        InterchangeSenderID = "41-6052144";
    //        InterchangeReceiverIDQualifier = "30";               
    //        InterchangeReceiverID = "223387853";
    //        InterchangeDate = DateTime.Now;
    //        InterchangeTime = DateTime.Now;
    //        InterchangeStandardsIdentifier = '^';
    //        InterchangeVersionNumber = "00501";
    //        InterchangeControlNumber = string.Empty;
    //        AcknowledgementRequested = "1";
    //        TestIndicator = mode == _837StaticOutput.eMode.Production ? "P" : "T";
    //        ComponentElementSeperator = ":";
    //    }
    //}

    //public class GS
    //{
    //    public string FunctionalIdentifierCode { get; set; }

    //    public string ApplicationSendersCode { get; set; }

    //    public string ApplicationReceiversCode { get; set; }

    //    public DateTime Date { get; set; }

    //    public string DateStr
    //    {
    //        get
    //        {
    //            return Date.ToString(_837StaticOutput.DateFormat);
    //        }
    //    }

    //    public DateTime Time { get; set; }

    //    public string TimeStr
    //    {
    //        get
    //        {
    //            return Time.ToString(_837StaticOutput.TimeFormat);
    //        }
    //    }

    //    public string GroupControlNumber { get; set; }

    //    public string ResponsibleAgencyCode { get; set; }

    //    public string VersionIdentifierCode { get; set; }

    //    public GS()
    //    {
    //        FunctionalIdentifierCode = "HC";
    //        ApplicationSendersCode = "416052144";
    //        ApplicationReceiversCode = "223387853";
    //        Date = DateTime.Now;
    //        Time = DateTime.Now;
    //        GroupControlNumber = "1234";
    //        ResponsibleAgencyCode = "X";
    //        VersionIdentifierCode = "005010X222A1";
    //    }

    //}


    public class Transaction
    {
        ST ST;

        public string ST_IdentifierCode { get; set; }

        public string BHT_StructureCode { get; set; }

        public string BHT_SetPurposeCode { get; set; }

        public string BHT_ReferenceIdentification { get; set; }

        public DateTime Date { get; set; }

        public string DateStr
        {
            get
            {
                return Date.ToString(_837StaticOutput.DateFormat);
            }
        }

        public DateTime Time { get; set; }

        public string TimeStr
        {
            get
            {
                return Time.ToString(_837StaticOutput.TimeFormat);
            }
        }

        public string TypeCode { get; set; }

        public Transaction()
        {
            ST = new ST();

            ST.TransactionSetIdentifierCode_01 = "837";
            ST.TransactionSetControlNumber_02 = "000000001";
            ST.ImplementationConventionPreference_03 = "005010X222A1";
            BHT_StructureCode = "0019";
            BHT_SetPurposeCode = "00";
            BHT_ReferenceIdentification = "";
            Date = DateTime.Now;
            Time = DateTime.Now;
            TypeCode = "CH";
        }
    }

    public class Submitter_1000A
    {
        public string NM1_EntityIdentifierCode { get; set; }

        public string NM1_EntityTypeQualifier { get; set; }

        public string NM1_OrganizationName { get;set; }

        public string NM1_FirstName { get; set; }

        public string NM1_MiddleName { get; set; }

        public string NM1_NamePrefix { get; set; }

        public string NM1_NameSuffix { get; set; }

        public string NM1_IdentificationCodeQualifier { get; set; }

        public string NM1_IdentificationCode { get; set; }

        public string IC_ContactFunctionCode { get; set; }

        public string IC_Name { get; set; }

        public string IC_CommunicationQualifier { get; set; }

        public string IC_CommunicationNumber { get; set; }

        public string IC_CommunicationQualifier2 { get; set; }

        public string IC_CommunicationNumber2 { get; set; }



        public Submitter_1000A()
        {
            NM1_EntityIdentifierCode = "41";
            NM1_EntityTypeQualifier = "2";
            NM1_FirstName = "ARROWHEAD TRANSIT";
            NM1_MiddleName = string.Empty;
            NM1_NamePrefix = string.Empty;
            NM1_NameSuffix = string.Empty;
            NM1_IdentificationCodeQualifier = "46";
            NM1_IdentificationCode = "41-6052144";
            IC_ContactFunctionCode = "IC";
            IC_Name = "RYAN ZINTER";
            IC_CommunicationQualifier = "TE";
            IC_CommunicationNumber = "2187356813";
            IC_CommunicationQualifier2 = string.Empty;
            IC_CommunicationNumber2 = string.Empty;
        }
    }

    public class Receiver_1000B
    {
        public string NM1_EntityIdentifierCode { get; set; }

        public string NM1_EntityTypeQualifier { get; set; }

        public string NM1_OrganizationName { get; set; }

        public string NM1_FirstName { get; set; }

        public string NM1_IdentificationCodeQualifier { get; set; }

        public string NM1_IdentificationCode { get; set; }

        public Receiver_1000B()
        {
            NM1_EntityIdentifierCode = "40";

            NM1_EntityTypeQualifier = "2";

            NM1_OrganizationName = "IGI HEALTH";

            NM1_FirstName = string.Empty;

            NM1_IdentificationCodeQualifier = "46";

            NM1_IdentificationCode = "223387853";            
        }
    }

    public class BillingProvider_2000A
    {
        public string HL_HierarchicalIDNumber { get; set; }

        public string HL_ParentIDNumber { get; set; }

        public string HL_LevelCode { get; set; }

        public string HL_ChildCode { get; set; }

        public string PRV_ProviderCode { get; set; }

        public string PRV_ReferenceIdentificationCode { get; set; }

        public string PRV_ReferenceIdentification { get; set; }

        public string NM1_EntityIdentifierCode { get; set; }

        public string NM1_EntityTypeQualifier { get; set; }

        public string NM1_LastName { get; set; }

        public string NM1_FirstName { get; set; }

        public string NM1_MiddleName { get; set; }

        public string NM1_NamePrefix { get; set; }

        public string NM1_NameSuffix { get; set; }

        public string NM1_IdentificationCodeQualifier { get; set; }

        public string NM1_IdentificationCode { get; set; }

        public string PER_ContactFunctionCode { get; set; }

        public string PER_Name { get; set; }

        public string PER_CommunicationQualifier { get; set; }

        public string PER_CommunicationNumber { get; set; }

        public string N3_Street { get; set; }

        public string N3_Street2 { get; set; }

        public string N4_City { get; set; }

        public string N4_State { get; set; }

        public string N4_PostalCode { get; set; }

        public string REF_ReferenceIdentificationQualifier { get; set; }

        public string REF_ReferenceIdentifidation { get; set; }

        public BillingProvider_2000A(_837StaticOutput.eProvider provider)
        {
            HL_HierarchicalIDNumber = "1";
            HL_ParentIDNumber = string.Empty;
            HL_LevelCode = "20";
            HL_ChildCode = "1";

            PRV_ProviderCode = provider == _837StaticOutput.eProvider.BlueCross ?  "BI" : string.Empty;
            PRV_ReferenceIdentificationCode = provider == _837StaticOutput.eProvider.BlueCross ? "PXC" : string.Empty;
            PRV_ReferenceIdentification = provider == _837StaticOutput.eProvider.BlueCross ? "343900000X" : string.Empty;

            NM1_EntityIdentifierCode = "85";
            NM1_EntityTypeQualifier = "2";
            NM1_LastName = "ARROWHEAD TRANSIT";
            NM1_FirstName = string.Empty;
            NM1_MiddleName = string.Empty;
            NM1_NamePrefix = string.Empty;
            NM1_NameSuffix = string.Empty;
            NM1_IdentificationCodeQualifier =  provider != _837StaticOutput.eProvider.UCare ? "XX" : string.Empty;
            NM1_IdentificationCode = provider != _837StaticOutput.eProvider.UCare ? "1801114301" : string.Empty;

            N3_Street = "702 S 3RD AVE";
            N3_Street2 = string.Empty;

            N4_City = "VIRGINIA";
            N4_State = "MN";
            N4_PostalCode = "557922776";

            REF_ReferenceIdentificationQualifier = "EI";
            REF_ReferenceIdentifidation = "416052144";

            PER_ContactFunctionCode = "IC";
            PER_Name = "ARROWHEAD TRANSIT";
            PER_CommunicationQualifier = "TE";
            PER_CommunicationNumber = "2187492912";
        }
    }

    public class Subscriber_2000B
    {
        public string HL_HierarchicalIDNumber { get; set; }

        public string HL_ParentIDNumber { get; set; }

        public string HL_LevelCode { get; set; }

        public string HL_ChildCode { get; set; }

        public string SBR_PayerResponsibilitySequenceNumber { get; set; }

        public string SBR_IndividualResponsibilityCode { get; set; }

        public string SBR_ReferenceIdentification { get; set; }

        public string SBR_Name { get; set; }

        public string SBR_InsuranceTypeCode { get; set; }

        public string SBR_CoordinationBenefitsCode { get; set; }

        public string SBR_ResponseCode { get; set; }

        public string SBR_EmploymentStatusCode { get; set; }

        public string SBR_FilingIndicator { get; set; }

        public Subscriber_2000B(_837StaticOutput.eProvider provider)
        {
            HL_HierarchicalIDNumber = string.Empty;
            HL_ParentIDNumber = "1";
            HL_LevelCode = "22";
            HL_ChildCode = "0";

            SBR_PayerResponsibilitySequenceNumber = "P";
            SBR_IndividualResponsibilityCode = "18";
            SBR_ReferenceIdentification = string.Empty;
            SBR_Name = string.Empty;
            SBR_InsuranceTypeCode = string.Empty;
            SBR_CoordinationBenefitsCode = string.Empty;
            SBR_ResponseCode = string.Empty;
            SBR_EmploymentStatusCode = string.Empty;
            SBR_FilingIndicator = provider == _837StaticOutput.eProvider.BlueCross ? "MC" : "CI";
        }
    }
}
