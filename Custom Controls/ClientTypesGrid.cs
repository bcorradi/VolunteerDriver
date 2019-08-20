using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using AEOA.Volunteer.Data;

namespace AEOA.VolunteerDriver.Custom_Controls
{
    public partial class ClientTypesGrid : BaseGridCtrl
    {
        public ClientTypesGrid()
        {
            InitializeComponent();
        }

        private void ClientTypesGrid_Load(object sender, EventArgs e)
        {
            GridView.DataSource = ClientType.LoadList(VolunteerDriver.ConnectionString);
        }
    }
}
