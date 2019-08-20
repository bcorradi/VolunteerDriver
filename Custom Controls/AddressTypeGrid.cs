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
    public partial class AddressTypeGrid : BaseGridCtrl
    {
        private Volunteer_Dev_Brad_Entities context;

        public AddressTypeGrid()
        {
            InitializeComponent();
            EditClick += new EventHandler(Edit_Click);
            AddClick += new EventHandler(Add_Click);

            context = new Volunteer_Dev_Brad_Entities();
        }

        private void AddressTypeGrid_Load(object sender, EventArgs e)
        {
            //context.tblAddressTypes.Load();
            //GridView.DataSource = context.tblAddressTypes.Local.ToBindingList();

            GridView.DataSource = AddressType.LoadList(VolunteerDriver.ConnectionString);
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


    }
}
