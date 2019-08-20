using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

using Telerik.WinControls.UI;

using AEOA.Volunteer.Data;
using Telerik.WinControls.Data;

namespace AEOA.VolunteerDriver
{
    public partial class TestNavigationDlg : Form
    {
        public TestNavigationDlg()
        {
            InitializeComponent();           

            DataTable dt = new DataTable();

            using (SqlConnection con = new SqlConnection(VolunteerDriver.ConnectionString))
            {
                //string qry = string.Format("SELECT")

                using (SqlCommand cmd = new SqlCommand("SELECT EntryDate, UserCreated, TripID FROM tblTrip WHERE EntryDate BETWEEN '07/01/2019' AND '08/05/2019' ORDER BY UserCreated ASC", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        da.Fill(dt);
                    }

                }
            }

            

            radGridView1.DataSource = dt;

            GroupDescriptor a = new GroupDescriptor();
            a.GroupNames.Add("UserCreated", ListSortDirection.Ascending);
            a.Aggregates.Add("Count(UserCreated)");
            a.Format = "{0}: {1} has {2} records in its group.";
            radGridView1.GroupDescriptors.Add(a);




            //radGridView1.AutoGenerateHierarchy = true;
            //adGridView1.DataSource = parentData;
            //radGridView1.DataSource = Insurance.LoadList(VolunteerDriver.ConnectionString);
        }
    

        private void RadTreeView1_SelectedNodeChanged(object sender, Telerik.WinControls.UI.RadTreeViewEventArgs e)
        {

        }

        private void RadCollapsiblePanel1_Expanded(object sender, EventArgs e)
        {

        }

        private void RadCollapsiblePanel1_Collapsed(object sender, EventArgs e)
        {
            //radGridView1
        }

        class A
        {
            public string Text { get; set; }

            public List<B> Child { get; set; }
        }

        class B
        {
            public string Text { get; set; }
        }

    }
}
