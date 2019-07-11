using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using AEOA.Volunteer.Data;

namespace TelerikWinFormsApp2
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
            // TODO: This line of code loads data into the 'volunteerDev.ltblCounty' table. You can move, or remove it, as needed.
            //this.ltblCountyTableAdapter.Fill(this.volunteerDev.ltblCounty);
            //          string str = AEOA.VolunteerDriver.Properties.Settings.Default.Volunteer_Dev_BradConnectionString;

            //County.LoadList(str);


            //        gridMain.DataSource = County.LoadList(str);
            //gridMain.MasterTemplate.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;
            //gridMain.MasterTemplate.BestFitColumns();// AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;

            TcMain_SelectedTabChanged(sender, e);
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
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eInsurance))
            {
                //
                //gridInsurance.
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eAddresses))
            {
                //
            }

            else if (tabValue == Convert.ToInt32(eCodeType.eTraining))
            {

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

            }

            else if (tabValue == Convert.ToInt32(eCodeType.eTripTypes))
            {
                gridTripTypes.DataSource = TripType.LoadList(str);
                gridClientTypes.MasterTemplate.BestFitColumns();

            }

            else if (tabValue == Convert.ToInt32(eCodeType.eClientTypes))
            {
                gridClientTypes.DataSource = TripType.LoadList(str);
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
        }
    }
}
