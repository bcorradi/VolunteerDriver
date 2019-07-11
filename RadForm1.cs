using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using Telerik.WinControls.UI;
using System.Configuration;

using AEOA.Volunteer.Data;

namespace TelerikWinFormsApp2
{
    public partial class RadForm1 : Telerik.WinControls.UI.RadForm
    {
        public RadForm1()
        {
            InitializeComponent();
        }

        private void MnuCounties_Click(object sender, EventArgs e)
        {

        }

        private void RadMenuItem3_Click(object sender, EventArgs e)
        {
            CodeMaintenanceDlg dlg = new CodeMaintenanceDlg();

            dlg.ShowDialog();
        }

        private void RadButton1_Click(object sender, EventArgs e)
        {
            string str = AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;

            County.LoadList(str);
        }
    }
}
