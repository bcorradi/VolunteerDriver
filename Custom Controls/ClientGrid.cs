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
    public partial class ClientGrid :BaseGridCtrl
    {
        

        public ClientGrid()
        {
            InitializeComponent();
        }

        private void ClientGrid_Load(object sender, EventArgs e)
        {
            GridView.AllowColumnReorder = true;
            GridView.AutoGenerateHierarchy = true;

            GridView.DataSource = Client.LoadList(VolunteerDriver.ConnectionString);
        }
    }
}
