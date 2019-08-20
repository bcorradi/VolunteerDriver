using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using AEOA.Volunteer.Data;
using System.Configuration;

using System.Data.SqlClient;
using Telerik.WinControls.UI;
using AEOA.VolunteerDriver;


namespace AEOA.VolunteerDriver
{
    public partial class CodeMaintenanceDlg : Telerik.WinControls.UI.RadTabbedForm
    {

        public enum eCodeType
        {
            eCounties = 0,
            eInsurance = 1,
            eAddresses = 2,
            eTraining = 3,
            eDeadHeadAdjustments = 4,
            eTripLogTypes = 5,
            eInsuranceRules = 6,
            eTripTypes = 7,
            eClientTypes = 8,
            eCancelReasons = 9,
            eUnloadedReasons = 10            
        }

        public CodeMaintenanceDlg()
        {
            InitializeComponent();

            this.AllowAero = false;
        }

        private void RadTabbedFormControl1_SelectedTabChanged(object sender, EventArgs e)
        {
           // string str = AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;
        }

        private void CodeMaintenanceDlg_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'volunteer_Dev_BradDataSet.tblInsuranceRules' table. You can move, or remove it, as needed.
            this.tblInsuranceRulesTableAdapter.Fill(this.volunteer_Dev_BradDataSet.tblInsuranceRules);
            // TODO: This line of code loads data into the 'volunteerDev.ltblCounty' table. You can move, or remove it, as needed.
            //this.ltblCountyTableAdapter.Fill(this.volunteerDev.ltblCounty);
            //          string str = AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;

            //County.LoadList(str);


            //        gridMain.DataSource = County.LoadList(str);
            //gridMain.MasterTemplate.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;
            //gridMain.MasterTemplate.BestFitColumns();// AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;

            TcMain_SelectedTabChanged(sender, e);

            this.gridInsurance.RowSourceNeeded += GridInsurance_RowSourceNeeded;
        }

        private void TabCounties_Paint(object sender, PaintEventArgs e)
        {

        }

        private void TabUnloadedReasons_Paint(object sender, PaintEventArgs e)
        {

        }

        private void TcMain_SelectedTabChanged(object sender, EventArgs e)
        {            

            int tabValue = tcMain.SelectedTab.Tag != null ? Convert.ToInt32(tcMain.SelectedTab.Tag) : -1;
            string str = AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;


            if (tabValue == Convert.ToInt32(eCodeType.eCounties))
            {
                gridMain.DataSource = County.LoadList(str);
                gridMain.MasterTemplate.BestFitColumns();

                //DataTable dt = new DataTable();
                //SqlConnection connection = new SqlConnection(str);
                //SqlCommand command = new SqlCommand();

                ////command.CommandType = CommandType.StoredProcedure;
                //command.CommandText = "SELECT * FROM ltblCounty ORDER BY COUNTY";

                //command.Connection = connection;
                //connection.Open();
                //SqlDataAdapter da = new SqlDataAdapter(command);
                //da.Fill(dt);
                //connection.Close();

                //gridMain.DataSource = dt;
                

                 
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eInsurance))
            {

                gridInsurance.AutoGenerateHierarchy = true;
                gridInsurance.DataSource = Insurance.LoadList(str);
                //gridRates.DataSource = 
                //gridInsurance.Templates[0]
                //gridInsurance.MasterTemplate.BestFitColumns();                

                
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eAddresses))
            {
                gridAddresses.DataSource = Address.LoadList(str);
                gridAddresses.MasterTemplate.BestFitColumns();
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eTraining))
            {
                gridTraining.DataSource = Training.LoadList(str);
                gridTraining.MasterTemplate.BestFitColumns();
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eDeadHeadAdjustments))
            {

            }

            else if (tabValue == Convert.ToInt32(eCodeType.eTripLogTypes))
            {
                gridTripLogTypes.DataSource = TripLogType.LoadList(str);
                gridTripLogTypes.MasterTemplate.BestFitColumns();
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eInsuranceRules))
            {
                gridInsuranceRules.DataSource = InsuranceRule.LoadList(str);
                gridInsuranceRules.MasterTemplate.BestFitColumns();
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eTripTypes))
            {
                gridTripTypes.DataSource = TripType.LoadList(str);
                gridTripTypes.MasterTemplate.BestFitColumns();

            }

            else if (tabValue == Convert.ToInt32(eCodeType.eClientTypes))
            {
                gridClientTypes.DataSource = ClientType.LoadList(str);
                gridClientTypes.MasterTemplate.BestFitColumns();
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eCancelReasons))
            {
                gridCancelReasons.DataSource = CancelReason.LoadList(str);
                gridCancelReasons.MasterTemplate.BestFitColumns();
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eUnloadedReasons))
            {
                gridUnloadReasons.DataSource = UnloadedReason.LoadList(str);
                gridUnloadReasons.MasterTemplate.BestFitColumns();                
            }

            //else if (tabValue == Conve)
        }

        private void GridInsurance_RowSourceNeeded(object sender, Telerik.WinControls.UI.GridViewRowSourceNeededEventArgs e)
        {
            Insurance insurance = e.ParentRow.DataBoundItem as Insurance;
            BindingList<Insurance.Rate> rates = insurance.InsuranceRates;

            foreach (Insurance.Rate r in rates)
            {
                GridViewRowInfo row = e.Template.Rows.NewRow();
                //row.Cells["Title"].Value = r.Title;
                row.Cells["Id"].Value = r.ID;
                e.SourceCollection.Add(row);
            }
        }
    }
}
