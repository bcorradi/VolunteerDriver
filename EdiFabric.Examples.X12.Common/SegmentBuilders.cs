﻿using EdiFabric.Core.Model.Edi.X12;
using System;
//using AEOA.Volunteer.Data;
using ISA = EdiFabric.Core.Model.Edi.X12.ISA;
using GS = EdiFabric.Core.Model.Edi.X12.GS;

namespace EdiFabric.Examples.X12.Common
{
    public static class SegmentBuilders
    {


        /// <summary>
        /// Build ISA.
        /// </summary>
        public static ISA BuildIsa(string controlNumber, string testIndicator = "P")
        {
            return new ISA
            {

                //  Authorization Information Qualifier
                AuthorizationInformationQualifier_1 = "00",
                //  Authorization Information
                AuthorizationInformation_2 = "".PadRight(10),
                //  Security Information Qualifier
                SecurityInformationQualifier_3 = "00",
                //  Security Information
                SecurityInformation_4 = "".PadRight(10),
                //  Interchange ID Qualifier
                SenderIDQualifier_5 = "ZZ",
                //  Interchange Sender
                InterchangeSenderID_6 = "AV09311993".PadRight(15),
                //  Interchange ID Qualifier
                ReceiverIDQualifier_7 = "01",
                //  Interchange Receiver
                InterchangeReceiverID_8 = "030240928".PadRight(15),
                //  Date
                InterchangeDate_9 = DateTime.Now.Date.ToString("yyMMdd"),
                //  Time
                InterchangeTime_10 = DateTime.Now.TimeOfDay.ToString("hhmm"),
                //  Standard identifier
                InterchangeControlStandardsIdentifier_11 = "^",
                //  Interchange Version ID
                //  This is the ISA version and not the transaction sets versions
                InterchangeControlVersionNumber_12 = "00501",
                //  Interchange Control Number
                InterchangeControlNumber_13 = controlNumber.PadLeft(9, '0'),
                //  Acknowledgment Requested (0 or 1)
                AcknowledgementRequested_14 = "1",
                //  Test Indicator
                UsageIndicator_15 = testIndicator,
                ComponentElementSeparator_16 = ":"
            };
        }


        /// <summary>
        /// Build GS.
        /// </summary>
        public static GS BuildGs(string controlNumber)
        {
            return new GS
            {
                //  Functional ID Code
                CodeIdentifyingInformationType_1 = "HC",
                //  Application Senders Code
                SenderIDCode_2 = "AV09311993",
                //  Application Receivers Code
                ReceiverIDCode_3 = "030240928",
                //  Date
                Date_4 = DateTime.Now.Date.ToString("yyyyMMdd"),
                //  Time
                Time_5 = DateTime.Now.TimeOfDay.ToString("hhmm"),
                //  Group Control Number
                //  Must be unique to both partners for this interchange
                GroupControlNumber_6 = controlNumber.PadLeft(9, '0'),
                //  Responsible Agency Code
                TransactionTypeCode_7 = "X",
                //  Version/Release/Industry id code
                VersionAndRelease_8 = "005010X222A1"
            };
        }
    }
}
