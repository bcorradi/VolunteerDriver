using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Telerik.WinControls.UI;

using AEOA.Volunteer.Data;

namespace AEOA.VolunteerDriver.Custom_Controls
{
    public partial class AddressGrid : BaseGridCtrl
    {
        // UserControl1.ButtonClick += new EventHandler(UserControl_ButtonClick);

        //protected void UserControl_ButtonClick(object sender, EventArgs e)
        //{
        //handle the event 
        //}

        //EditClick += EventHandler(Edit_Click);

        private Volunteer_Dev_Brad_Entities context;

        public AddressGrid()
        {
            InitializeComponent();
            EditClick += new EventHandler(Edit_Click);
            AddClick += new EventHandler(Add_Click);

            context = new Volunteer_Dev_Brad_Entities();
        }

        private void AddressGrid_Load(object sender, EventArgs e)
        {
            GridView.DataSource = Address.LoadList(VolunteerDriver.ConnectionString);

            //GridView.AllowColumnReorder = true;
            //GridView.AutoGenerateHierarchy = true;            

            ////using (var context = new Volunteer_Dev_Brad_Entities())
            ////{
            ////context.ltblRules.Load();

            ////context.tblInsurances.Load();

            ////GridView.DataSource = context.ltblRules.Local.ToBindingList();

            ////GridView.DataSource = context.tblInsuranceRules.Local.ToBindingList();

            //context.tblAddresses.Load();
            //GridView.DataSource = context.tblAddresses.Local.ToBindingList();
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Add Click ");

            tblAddress a = new tblAddress();
            a.UserCreated = VolunteerDriver.CurrentUser;
            a.UserUpdated = VolunteerDriver.CurrentUser;

            DataEntryDlg.Execute("Add Address", a);

            context.tblAddresses.Add(a);            

            context.SaveChanges();

            GridView.Refresh();

            

//            DataEntryDlg.Execute("Add Address", a);
            
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            //MessageBox.Show("Edit Click is");

            //tblAddress address = GridView.SelectedRows[0].DataBoundItem as tblAddress;

            int index = GridView.SelectedRows[0].Index;
            tblAddress address = GridView.SelectedRows[0].DataBoundItem as tblAddress;

            DataEntryDlg.Execute("Edit Address", address);

            context.Entry(address).State = EntityState.Modified;
            

            context.SaveChanges();

            GridView.Rows[index].InvalidateRow();

            //GridView.Refresh();
        }
    }
}
