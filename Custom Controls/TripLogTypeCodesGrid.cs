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
    public partial class TripLogTypeCodesGrid : BaseGridCtrl
    {
        public TripLogTypeCodesGrid()
        {
            InitializeComponent();
        }

        private void TripLogTypeCodesGrid_Load(object sender, EventArgs e)
        {
            GridView.DataSource = TripLogType.LoadList(VolunteerDriver.ConnectionString);
        }
    }
}
