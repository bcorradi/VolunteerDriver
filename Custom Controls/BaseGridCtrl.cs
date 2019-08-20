using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Telerik.WinControls.UI;

using Telerik.Windows.Documents.Core;
using Telerik.Windows.Documents.Fixed;
using Telerik.Windows.Documents.Spreadsheet;
using Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml;
using Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf;
using Telerik.Windows.Zip;
using Telerik.WinControls.Export;
using Telerik.WinControls;
using Telerik.WinControls.Analytics;
using Telerik.WinControls.UI;

namespace AEOA.VolunteerDriver.Custom_Controls
{
    public partial class BaseGridCtrl : UserControl
    {
        private bool EnterPress = false;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        public RadGridView GridView  {  get { return this.gridMain; } }

        //public delegate void EditClick(object sender, EventArgs e);

        public event EventHandler EditClick;

        public event EventHandler AddClick;

        public BaseGridCtrl()
        {           
            InitializeComponent();

            //tblAddressTableAdapter.Fill()
            ThemeResolutionService.ApplicationThemeName = "TelerikMetroTheme";
        }

        private void BaseGridCtrl_Load(object sender, EventArgs e)
        {
            //tblAddressTableAdapter.Fill(this.tblAddressBindingSource);
            
        }        

        private void BtnExport_Click(object sender, EventArgs e)
        {
            Telerik.WinControls.Export.GridViewSpreadExport spreadExporter = new GridViewSpreadExport(this.gridMain);
            SpreadExportRenderer exportRenderer = new SpreadExportRenderer();
            spreadExporter.RunExport("D:\\exportedFile.xlsx", exportRenderer);
        }

        private void RadButton5_Click(object sender, EventArgs e)
        {
            gridMain.PrintPreview();
        }

        private void BtnEdit_Click(object sender, EventArgs e)
        {            
            if (this.EditClick != null)
            {
                this.EditClick(sender, e);

                //object obj = gridMain.SelectedRows[0].DataBoundItem;

                //DataEntryDlg.Execute("Edit Item", obj);
            }
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            if (this.AddClick != null)
            {
                this.AddClick(sender, e);
            }
        }

        private void GridMain_CellBeginEdit(object sender, GridViewCellCancelEventArgs e)
        {
            if (e.Row is GridViewFilteringRowInfo)
            {
                //RadTextBoxEditor ed = e.ActiveEditor as RadTextBoxEditor;
                //RadTextBoxEditorElement el = ed.EditorElement as RadTextBoxEditorElement;
                //el.KeyDown -= GridMain_KeyDown;
                //el.KeyDown += GridMain_KeyDown;
            }
        }

        private void GridMain_FilterChanging(object sender, GridViewCollectionChangingEventArgs e)
        {
            //if (!EnterPress)
            //{
            //    e.Cancel = true;
            //}
            //EnterPress = false;
        }

        private void GridMain_KeyDown(object sender, KeyEventArgs e)
        {
            //if (e.KeyCode == Keys.Enter)
            //{
            //    EnterPress = true;
            //}
        }
    }
}
