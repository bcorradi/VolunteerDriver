using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Telerik.ReportViewer.WinForms;

namespace AEOA.VolunteerDriver.Custom_Controls
{
    public partial class ReportViewerCtrl : UserControl
    {
        public ReportViewer ReportViewer
        {
            get
            {
                return reportViewer1;
            }
        }

        public ReportViewerCtrl()
        {
            InitializeComponent();
        }
    }
}
