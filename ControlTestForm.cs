using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace AEOA.VolunteerDriver
{
    public partial class ControlTestForm : Telerik.WinControls.UI.RadForm
    {
        public ControlTestForm()
        {
            InitializeComponent();
        }

        private void ControlTestForm_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblInsuranceRules' table. You can move, or remove it, as needed.
            this.tblInsuranceRulesTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblInsuranceRules);
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblInsurance' table. You can move, or remove it, as needed.
            this.tblInsuranceTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblInsurance);
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblAddressType' table. You can move, or remove it, as needed.
            this.tblAddressTypeTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblAddressType);
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblAddress' table. You can move, or remove it, as needed.
            this.tblAddressTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblAddress);

            //SqlCommand cmd = new SqlCommand(VolunteerDriver.ConnectionString);

            DataTable dt = new DataTable();

            using (SqlCommand cmd = new SqlCommand(VolunteerDriver.ConnectionString))
            {
                //cmd.CommandText = 
                //using (SqlDataReader rdr = cmd.ExecuteReader())
                //{
                    
                //}
            }
            
            

        }
    }
}
