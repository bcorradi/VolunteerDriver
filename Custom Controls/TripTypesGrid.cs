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
    public partial class TripTypesGrid : BaseGridCtrl
    {
        public TripTypesGrid()
        {
            InitializeComponent();
        }

        private void TripTypesGrid_Load(object sender, EventArgs e)
        {
            GridView.DataSource = TripType.LoadList(VolunteerDriver.ConnectionString);
        }
    }
}
