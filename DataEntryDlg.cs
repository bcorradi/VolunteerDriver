using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;

using AEOA.Volunteer.Data;

namespace AEOA.VolunteerDriver
{
    public partial class DataEntryDlg : Telerik.WinControls.UI.RadForm
    {
        public DataEntryDlg()
        {
            InitializeComponent();
        }

        private void DataEntryDlg_Load(object sender, EventArgs e)
        {
            //Address a = new Address();

            

             //radDataEntry.DataSource = new Address();
        }

        public static DialogResult Execute(string caption, object obj)
        {
            DataEntryDlg dlg = new DataEntryDlg();

            dlg.Text = caption;

            dlg.radDataEntry.DataSource = obj;

            dlg.ShowDialog();


            return DialogResult.OK;

        }

        private void RadDataEntry_ItemInitialized(object sender, Telerik.WinControls.UI.ItemInitializedEventArgs e)
        {
            //if (e.Panel.Location.Y + e.Panel.Height > this.radDataEntry.Height)
            //{
            //    this.radDataEntry.Height += e.Panel.Location.Y + e.Panel.Height - this.radDataEntry.Height + this.radDataEntry.ItemSpace;
            //}

            //this.Height = this.radDataEntry.Height + this.tableLayoutPanel1.Height;
        }
    }
}
