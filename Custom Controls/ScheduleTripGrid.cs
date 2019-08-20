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
    public partial class ScheduleTripGrid : BaseGridCtrl
    {
        public ScheduleTripGrid()
        {
            InitializeComponent();

            EditClick += new EventHandler(Edit_Click);
            AddClick += new EventHandler(Add_Click);
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Add Click ");

            Address a = new Address();

            DataEntryDlg.Execute("Add Address", a);
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Edit Click is");
        }

        private void ScheduleTripGrid_Load(object sender, EventArgs e)
        {
            
                GridView.DataSource = ScheduledTrip.LoadScheduledTripsList(VolunteerDriver.ConnectionString);
            
            //    GridView.DataSource = ScheduledTrip.LoadPastTripsList(VolunteerDriver.ConnectionString);
        }
    }
}
