using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.DirectoryServices.AccountManagement;
using System.Security.Principal;



namespace AEOA.VolunteerDriver
{
    public class VolunteerDriver
    {
        public static string ConnectionString
        {
            get
            {                
                return AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;                
            }
        }

        public static string CurrentUser
        {
            get
            {
                WindowsIdentity identity = WindowsIdentity.GetCurrent();

                return identity.Name; 

                //return System.DirectoryServices.AccountManagement.UserPrincipal.Current.DisplayName;
            }
        }

    }
}
