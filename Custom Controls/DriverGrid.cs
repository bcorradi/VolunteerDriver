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
    public partial class DriverGrid : BaseGridCtrl
    {
        public DriverGrid()
        {
            InitializeComponent();

            EditClick += new EventHandler(Edit_Click);
            AddClick += new EventHandler(Add_Click);

            GridView.BestFitColumns();
            GridView.DataSource =  Driver.LoadList(VolunteerDriver.ConnectionString);
            
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Add Click ");

            tblAddress a = new tblAddress();
            a.UserCreated = VolunteerDriver.CurrentUser;
            a.UserUpdated = VolunteerDriver.CurrentUser;

            DataEntryDlg.Execute("Add Address", a);

            //context.tblAddresses.Add(a);
            
            //context.SaveChanges();

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

            //context.Entry(address).State = EntityState.Modified;


            //context.SaveChanges();

            GridView.Rows[index].InvalidateRow();

            //GridView.Refresh();
        }
    }
}
