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
using System.Data.SqlClient;

using AEOA.Volunteer.Data;
using AEOA.VolunteerDriver;

namespace AEOA.VolunteerDriver
{
    public partial class RadForm1 : Telerik.WinControls.UI.RadForm
    {
        public RadForm1()
        {
            InitializeComponent();
        }

        private void MnuCounties_Click(object sender, EventArgs e)
        {
            string str = AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;

            gridMain.DataSource = Address.LoadList(str);// County.LoadList(str);
        }

        private void RadMenuItem3_Click(object sender, EventArgs e)
        {
            CodeMaintenanceDlg dlg = new CodeMaintenanceDlg();

            dlg.ShowDialog();
        }

        private void RadButton1_Click(object sender, EventArgs e)
        {
            string str = AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;
            //gridMain.Templates.Add()
            gridMain.AutoGenerateHierarchy = true;
            gridMain.DataSource = Insurance.LoadList(str);
        }

        private void RadForm1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblInsuranceRules' table. You can move, or remove it, as needed.
            this.tblInsuranceRulesTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblInsuranceRules);
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblRate' table. You can move, or remove it, as needed.
            this.tblRateTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblRate);
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblInsurance' table. You can move, or remove it, as needed.
            this.tblInsuranceTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblInsurance);
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.ltblRules' table. You can move, or remove it, as needed.
            this.ltblRulesTableAdapter.Fill(this.volunteer_Dev_BradDataSet.ltblRules);
            //var table = new DataTable();

            ////var connection = "Data Source=hermes\vd;Initial Catalog=Volunteer_DriversSQL;Integrated Security=SSPI";
            //SqlConnectionStringBuilder sb = new SqlConnectionStringBuilder();

            //sb.DataSource = "HERMES\\VD";
            //sb.InitialCatalog = "Volunteer_DriversSQL";
            //sb.IntegratedSecurity = true;

            //SqlConnection conn = new SqlConnection(sb.ConnectionString);

            //conn.Open();

            //using (var con = new SqlConnection { ConnectionString = sb.ConnectionString })
            //{
            //    using (var command = new SqlCommand { Connection = con })
            //    {

            //        if (con.State == ConnectionState.Open)
            //        {
            //            con.Close();
            //        }

            //        con.Open();

            //        try
            //        {
            //            //command.CommandText = @"SELECT * FROM tblRide";
            //            //command.CommandText = "SELECT DISTINCT tblRide.RideDate, tblClient.ClFN, tblClient.ClLN, tblRide.loadedmiles, tblRide.unloadedmiles, [loadedmiles]+[unloadedmiles] AS totalmiles "
            //            //                    + "FROM (tblRide INNER JOIN tblTrip ON tblRide.TripID = tblTrip.TripID) INNER JOIN tblClient ON tblRide.ClientID = tblClient.ClientID "
            //            //                    + "WHERE tblRide.insuranceid = 20 ";//)= forms!frmInsuranceBillingReport!Combo0));
            //            //+ "WHERE(((tblRide.RideDate) Between forms!frmInsuranceBillingReport!BeginDate And forms!frmInsuranceBillingReport!EndDate) And((tblRide.insuranceid)= forms!frmInsuranceBillingReport!Combo0));

            //            command.CommandText = "SELECT * FROM ltblCounty ORDER BY COUNTY";
            //            table.Load(command.ExecuteReader());

            //            bindingSource.DataSource = table;

            //            //gridMain.ReadOnly = true;
            //            gridMain.DataSource = bindingSource;

            //        }
            //        catch (SqlException ex)
            //        {
            //            MessageBox.Show(ex.Message + " sql query error.");
            //        }

            //    }
            //}
        }

        private void GridMain_CellDoubleClick(object sender, GridViewCellEventArgs e)
        {
            MessageBox.Show(gridMain.CurrentRow.Cells["Insurance"].Value.ToString());
            //gridMain.CurrentRow.Cells[        
        }

        private void RadMenuItem4_Click(object sender, EventArgs e)
        {
            //TestNavigation
            TestNavigationDlg dlg = new TestNavigationDlg();

            dlg.ShowDialog();
        }
    }
}
