////using ERP.Client.Analytics;
////using ERP.Client.Properties;
////using ERP.Repository;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using Telerik.WinControls.Analytics;
using Telerik.WinControls.UI;

using System.Threading.Tasks;
using System.Data.SqlClient;

using AEOA.VolunteerDriver.Custom_Controls;
using AEOA.Volunteer.Data;
using Telerik.WinControls.Data;

namespace AEOA.VolunteerDriver
{
    public partial class MainForm : RadForm
    {
        //InfoControl infoControl;
        BaseGridCtrl addressCtrl;

        //BaseGridControl addressCtrl;
        BaseGridCtrl cancelReasonsCtrl;
        BaseGridCtrl clientTypesCtrl;
        BaseGridCtrl countiesCtrl;
        BaseGridCtrl insuranceCtrl;
        BaseGridCtrl insuranceRulesCtrl;
        BaseGridCtrl trainingCtrl;
        BaseGridCtrl tripLogTypesCtrl;
        BaseGridCtrl tripTypesCtrl;
        BaseGridCtrl unloadedReasonsCtrl;
        BaseGridCtrl addressTypesCtrl;
        BaseGridCtrl clientsCtrl;

        ReportViewerCtrl reportCtrl;

        public MainForm()
        {
            //ControlTraceMonitor.AnalyticsMonitor = new GoogleAnalyticsMonitor();
            
            InitializeComponent();
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            //this.radCollapsiblePanel1.CollapsiblePanelElement.HeaderElement.ShowHeaderLine = false;
            //topControl1.ViewLabel.TextChanged += ViewLabel_TextChanged;
            ThemeResolutionService.ApplicationThemeChanged += ThemeResolutionService_ApplicationThemeChanged;
            //treeNavigation.SelectedNodeChanged += RadTreeView1_SelectedNodeChanged;
            //radBreadCrumb1.DefaultTreeView = treeNavigation;

            //this.Icon = Resources.ERP;
            //this.Text = "ERP Demo";

            //foreach (RadTreeNode item in radTreeView1.TreeViewElement.GetNodes())
            //{
            //    if (item.Nodes.Count > 0)
            //    {
            //        item.Image = Resources.folder;
            //    }
            //}
            //topControl1.ViewLabel.Font = new Font("Segoe UI", 16, FontStyle.Regular);
            //topControl1.ViewLabel.Text = "";
            //radCollapsiblePanel1.EnableAnimation = false;
            //radCollapsiblePanel1.Collapsed += RadCollapsiblePanel1_Collapsed;
            //radCollapsiblePanel1.Expanded += RadCollapsiblePanel1_Expanded;


            ThemeResolutionService.ApplicationThemeName = "TelerikMetro";
        }

        private void ViewLabel_TextChanged(object sender, EventArgs e)
        {
            //radCollapsiblePanel1.HeaderText = topControl1.ViewLabel.Text;
        }

        private void RadCollapsiblePanel1_Expanded(object sender, EventArgs e)
        {
            //tableLayoutPanel1.ColumnStyles[0].Width = 500;
        }

        private void RadCollapsiblePanel1_Collapsed(object sender, EventArgs e)
        {
            //tableLayoutPanel1.ColumnStyles[0].Width = 80;
        }

        private void ThemeResolutionService_ApplicationThemeChanged(object sender, ThemeChangedEventArgs args)
        {
            OnThemeChanged();
        }

        protected override void OnShown(EventArgs e)
        {
            base.OnShown(e);
            OnThemeChanged();
            //treeNavigation.Nodes[2].Nodes[1].Selected = true;
            if (ControlTraceMonitor.AnalyticsMonitor != null)
            {
                ControlTraceMonitor.AnalyticsMonitor.TrackAtomicFeature("ApplicationStarted." + DateTime.Now.ToShortDateString());
            }
        }

        private void RadTreeView1_SelectedNodeChanged(object sender, Telerik.WinControls.UI.RadTreeViewEventArgs e)
        {
            if (ControlTraceMonitor.AnalyticsMonitor != null)
            {
                ControlTraceMonitor.AnalyticsMonitor.TrackAtomicFeature("ViewChanged." + e.Node.Name);
            }
            switch (e.Node.Name)
            {
                case "countiesNode":
                    //topControl1.ViewLabel.Text = "Counties";                    
                    AttachGridControl<CountiesGrid>(ref countiesCtrl);
                    break;
                case "insuranceNode":
                    //topControl1.ViewLabel.Text = "Insurance";
                    AttachGridControl<InsuranceGrid>(ref insuranceCtrl);
                    break;
                case "addressesNode":
                    //topControl1.ViewLabel.Text = "Addresses";
                    AttachGridControl<AddressGrid>(ref addressCtrl);
                    break;
                case "trainingNode":
                    //topControl1.ViewLabel.Text = "Training";
                    AttachGridControl<TrainingGrid>(ref trainingCtrl);
                    break;
                case "tripLogTypeNode":
                    //topControl1.ViewLabel.Text = "Trip Log Type Codes";
                    AttachGridControl<TripLogTypeCodesGrid>(ref tripLogTypesCtrl);
                    break;
                case "insuranceRulesNode":
                    //topControl1.ViewLabel.Text = "Insurance Rules";
                    AttachGridControl<InsuranceRulesGrid>(ref insuranceRulesCtrl);
                    break;
                case "tripTypesNode":
                    //topControl1.ViewLabel.Text = "Trip Types";
                    AttachGridControl<TripTypesGrid>(ref tripTypesCtrl);
                    break;
                case "clientTypesNode":
                    //topControl1.ViewLabel.Text = "Client Types";
                    AttachGridControl<ClientTypesGrid>(ref clientTypesCtrl);
                    break;
                case "cancelReasonNode":
                    //topControl1.ViewLabel.Text = "Cancel Reasons";
                    AttachGridControl<CancelReasonCodesGrid>(ref cancelReasonsCtrl);
                    break;
                case "unloadedReasonsNode":
                    //topControl1.ViewLabel.Text = "Unloaded Reasons";
                    AttachGridControl<UnloadedReasonCodesGrid>(ref unloadedReasonsCtrl);
                    break;
                case "multipleDriverReimbursementsNode":
                    //topControl1.ViewLabel.Text = "Multiple Driver Reimbursement Report";                    
                    AttachReportControl<ReportViewerCtrl>(ref reportCtrl);
                    reportCtrl.ReportViewer.ReportSource = new MultipleDriverReimbursementRpt();
                    break;
                case "addressTypeNode":
                    //topControl1.ViewLabel.Text = "Address Types";
                    AttachGridControl<AddressTypeGrid>(ref addressTypesCtrl);
                    break;
                case "clientsNode":
                    //topControl1.ViewLabel.Text = "Clients";
                    AttachGridControl<ClientGrid>(ref clientsCtrl);
                    break;
                default: 
                    //topControl1.ViewLabel.Text = "Addresses";
                    AttachGridControl<AddressGrid>(ref addressCtrl);
                    break;


            }
        }

        public void AttachGridControl<T>(ref BaseGridCtrl ctrl) where T : BaseGridCtrl, new()
        {
            if (ctrl == null)
            {
                ctrl = new T();
                ctrl.Dock = DockStyle.Fill;
                ctrl.Margin = new Padding(0, 0, 7, 7);
            }

            //tableLayoutPanel1.Controls.Remove(tableLayoutPanel1.GetControlFromPosition(1, 2));
            //tableLayoutPanel1.Controls.Add(ctrl, 1, 2);

        }

        public void AttachReportControl<T>(ref ReportViewerCtrl ctrl) where T : ReportViewerCtrl, new()
        {
            if (ctrl == null)
            {
                ctrl = new T();
                ctrl.Dock = DockStyle.Fill;
                ctrl.Margin = new Padding(0, 0, 7, 7);
            }

            //tableLayoutPanel1.Controls.Remove(tableLayoutPanel1.GetControlFromPosition(1, 2));
            //tableLayoutPanel1.Controls.Add(ctrl, 1, 2);

        }
        public void AttachInfoControl(string document)
        {
            //if (infoControl == null)
            //{
            //    infoControl = new InfoControl();
            //    infoControl.Dock = DockStyle.Fill;
            //    infoControl.Margin = new Padding(0, 0, 7, 7);
            //}

            //infoControl.InfoPdfViewer.LoadDocument(@"..\..\ERP.Client\Documents\" + document);
            //infoControl.DocumentName = document;
           
            //tableLayoutPanel1.Controls.Remove(tableLayoutPanel1.GetControlFromPosition(1, 2));
            //tableLayoutPanel1.Controls.Add(infoControl, 1, 2);
        }

        private void RadButton1_Click(object sender, EventArgs e)
        {
            ControlTestForm dlg = new ControlTestForm();

            dlg.ShowDialog();

            //TestNavigationDlg dlg = new TestNavigationDlg();

            //dlg.ShowDialog();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            //treeNavigation.CollapseAll();
        }

        private void RadButton2_Click(object sender, EventArgs e)
        {
            DataEntryDlg dlg = new DataEntryDlg();

            dlg.ShowDialog();
        }

        private void RadButton1_Click_1(object sender, EventArgs e)
        {
            TestNavigationDlg dlg = new TestNavigationDlg();

            dlg.ShowDialog();
        }

        private void PvMaintenance_SelectedPageChanged(object sender, EventArgs e)
        {
            RadPageViewPage selected = pvMaintenance.SelectedPage;


            if (selected == pgAddresses)
            {
                //addressCtrl = new BaseGridCtrl();
                //pgAddresses.Controls.Add(addressCtrl);
                //addressCtrl.Dock = DockStyle.Fill;
             //   AttachMaintenanceControl<AddressGrid>(ref addressCtrl);
            }

            else if (selected == pgAddressTypes)
            {

            }

            else if (selected == pgCancelReasonCodes)
            {

            }

            else if (selected == pgClientInformation)
            {

            }

            else if (selected == pgClientTypes)
            {

            }

            else if (selected == pgCounties)
            {

            }

            else if (selected == pgDriverInformation)
            {

            }

            else if (selected == pgInsurance)
            {


            }

            else if (selected == pgInsuranceRules)
            {

            }

            else if (selected == pgTraining)
            {


            }

            else if (selected == pgTripTypes)
            {

            }

            else if (selected == pgUnloadedReasonCodes)
            {


            }
        }

        public void AttachMaintenanceControl<T>(ref BaseGridCtrl ctrl) where T : BaseGridCtrl, new()
        {
            if (ctrl == null)
            {
                ctrl = new T();
                ctrl.Dock = DockStyle.Fill;
                ctrl.Margin = new Padding(0, 0, 7, 7);
            }

            //tableLayoutPanel1.Controls.Remove(tableLayoutPanel1.GetControlFromPosition(1, 2));
            //tableLayoutPanel1.Controls.Add(ctrl, 1, 2);

        }

        private void PageViewScheduledTrips_Paint(object sender, PaintEventArgs e)
        {

        }

        private void RadMenuItem2_Click(object sender, EventArgs e)
        {
            TestNavigationDlg dlg = new TestNavigationDlg();

            dlg.ShowDialog();
        }

        private void PvAdminReports_SelectedPageChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string query = string.Empty;
            RadGridView grid = null;


            if (pvAdminReports.SelectedPage == pgTripCountByUser)
            {

                query = "SELECT CAST(EntryDate as DATE), UserCreated, Count(*) as Count " +
                        "FROM tblTrip WHERE EntryDate BETWEEN '07/01/2019' AND '08/05/2019' " +
                        "GROUP BY CAST(EntryDate as DATE), UserCreated " +
                        "ORDER BY UserCreated, CAST(EntryDate as DATE)";
                grid = gridTripCountByUser;
            }

            else if (pvAdminReports.SelectedPage == pgDriversAssignedByUser)
            {
                query = "SELECT CAST(DateTime as date) AS Date, UserName, Count(*) as Count " +
                        "FROM tblAuditTrail " +
                        "WHERE DateTime Between '1/1/2019' AND '8/5/2019' AND(FieldName = 'driverid') AND((OldValue)Is Null) " +
                        "GROUP BY CAST(DateTime as date), UserName " +
                        "ORDER BY UserName, CAST(DateTime as date) ";
                grid = gridDriversAssignedByUser;
            }

            else if (pvAdminReports.SelectedPage == pgDriverPaperworkByUser)
            {
                query = "SELECT tblAuditTrail.UserName, Count(tblAuditTrail.RecordID) AS[Trip Records] " +
                        "FROM tblAuditTrail " +
                        "WHERE(((tblAuditTrail.DateTime)Between '7/01/2019' AND '08/05/2019') AND((tblAuditTrail.OldValue) = '0' Or(tblAuditTrail.OldValue) Is Null) AND((tblAuditTrail.FieldName) = 'datereceived')) " +
                        "GROUP BY tblAuditTrail.UserName " +
                        "ORDER BY Count(tblAuditTrail.RecordID) DESC ";
                grid = gridDriverPaperworkbyUser;
            }
            using (SqlConnection con = new SqlConnection(VolunteerDriver.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        da.Fill(dt);
                    }
                }                                                                                                                   
            }
            grid.MasterTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
            grid.DataSource = dt;
        }

        private void PvMain_PageIndexChanged(object sender, RadPageViewIndexChangedEventArgs e)
        {
            PvAdminReports_SelectedPageChanged(sender, new EventArgs());            
        }

        private void RadButton1_Click_2(object sender, EventArgs e)
        {
            Claim.CreateClaim(VolunteerDriver.ConnectionString, 165434);
        }
    }
}
