namespace AEOA.VolunteerDriver.Custom_Controls
{
    partial class AdminReportsGridCtrl
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Telerik.WinControls.UI.TableViewDefinition tableViewDefinition1 = new Telerik.WinControls.UI.TableViewDefinition();
            Telerik.WinControls.UI.GridViewRelation gridViewRelation1 = new Telerik.WinControls.UI.GridViewRelation();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AdminReportsGridCtrl));
            this.gridMain = new Telerik.WinControls.UI.RadGridView();
            this.tblAddressBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.tblAddressTypeTableAdapter = new AEOA.VolunteerDriver.Volunteer_Dev_BradDataSetTableAdapters.tblAddressTypeTableAdapter();
            this.radMenu1 = new Telerik.WinControls.UI.RadMenu();
            this.tblAddressBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.volunteer_Dev_BradDataSet = new AEOA.VolunteerDriver.Volunteer_Dev_BradDataSet();
            this.tblAddressTypeBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.doubleBufferedTableLayoutPanel1 = new Telerik.WinControls.UI.DoubleBufferedTableLayoutPanel();
            this.tblAddressTableAdapter = new AEOA.VolunteerDriver.Volunteer_Dev_BradDataSetTableAdapters.tblAddressTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.gridMain)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridMain.MasterTemplate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radMenu1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.volunteer_Dev_BradDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressTypeBindingSource)).BeginInit();
            this.doubleBufferedTableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridMain
            // 
            this.gridMain.BackColor = System.Drawing.SystemColors.Control;
            this.gridMain.Cursor = System.Windows.Forms.Cursors.Default;
            this.gridMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridMain.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.gridMain.ForeColor = System.Drawing.SystemColors.ControlText;
            this.gridMain.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.gridMain.Location = new System.Drawing.Point(9, 176);
            this.gridMain.Margin = new System.Windows.Forms.Padding(9, 12, 9, 12);
            // 
            // 
            // 
            this.gridMain.MasterTemplate.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;
            this.gridMain.MasterTemplate.DataSource = this.tblAddressBindingSource1;
            this.gridMain.MasterTemplate.EnableFiltering = true;
            this.gridMain.MasterTemplate.ViewDefinition = tableViewDefinition1;
            this.gridMain.Name = "gridMain";
            this.gridMain.ReadOnly = true;
            gridViewRelation1.ChildColumnNames = ((System.Collections.Specialized.StringCollection)(resources.GetObject("gridViewRelation1.ChildColumnNames")));
            gridViewRelation1.ParentColumnNames = ((System.Collections.Specialized.StringCollection)(resources.GetObject("gridViewRelation1.ParentColumnNames")));
            gridViewRelation1.ParentTemplate = this.gridMain.MasterTemplate;
            this.gridMain.Relations.AddRange(new Telerik.WinControls.UI.GridViewRelation[] {
            gridViewRelation1});
            this.gridMain.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.gridMain.Size = new System.Drawing.Size(1416, 757);
            this.gridMain.TabIndex = 0;
            this.gridMain.ThemeName = "TelerikMetro";
            // 
            // tblAddressTypeTableAdapter
            // 
            this.tblAddressTypeTableAdapter.ClearBeforeFill = true;
            // 
            // radMenu1
            // 
            this.radMenu1.Location = new System.Drawing.Point(3, 948);
            this.radMenu1.Name = "radMenu1";
            this.radMenu1.Size = new System.Drawing.Size(1428, 20);
            this.radMenu1.TabIndex = 2;
            // 
            // tblAddressBindingSource
            // 
            this.tblAddressBindingSource.DataMember = "tblAddress";
            this.tblAddressBindingSource.DataSource = this.volunteer_Dev_BradDataSet;
            // 
            // volunteer_Dev_BradDataSet
            // 
            this.volunteer_Dev_BradDataSet.DataSetName = "Volunteer_Dev_BradDataSet";
            this.volunteer_Dev_BradDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tblAddressTypeBindingSource
            // 
            this.tblAddressTypeBindingSource.DataMember = "tblAddressType";
            this.tblAddressTypeBindingSource.DataSource = this.volunteer_Dev_BradDataSet;
            // 
            // doubleBufferedTableLayoutPanel1
            // 
            this.doubleBufferedTableLayoutPanel1.ColumnCount = 1;
            this.doubleBufferedTableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.doubleBufferedTableLayoutPanel1.Controls.Add(this.gridMain, 0, 1);
            this.doubleBufferedTableLayoutPanel1.Controls.Add(this.radMenu1, 0, 2);
            this.doubleBufferedTableLayoutPanel1.Cursor = System.Windows.Forms.Cursors.Arrow;
            this.doubleBufferedTableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.doubleBufferedTableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.doubleBufferedTableLayoutPanel1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.doubleBufferedTableLayoutPanel1.Name = "doubleBufferedTableLayoutPanel1";
            this.doubleBufferedTableLayoutPanel1.RowCount = 3;
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 17.3545F));
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 82.6455F));
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 91F));
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.doubleBufferedTableLayoutPanel1.Size = new System.Drawing.Size(1434, 1037);
            this.doubleBufferedTableLayoutPanel1.TabIndex = 1;
            // 
            // tblAddressTableAdapter
            // 
            this.tblAddressTableAdapter.ClearBeforeFill = true;
            // 
            // AdminReportsGridCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.doubleBufferedTableLayoutPanel1);
            this.Name = "AdminReportsGridCtrl";
            this.Size = new System.Drawing.Size(1434, 1037);
            ((System.ComponentModel.ISupportInitialize)(this.gridMain.MasterTemplate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridMain)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radMenu1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.volunteer_Dev_BradDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressTypeBindingSource)).EndInit();
            this.doubleBufferedTableLayoutPanel1.ResumeLayout(false);
            this.doubleBufferedTableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Volunteer_Dev_BradDataSetTableAdapters.tblAddressTypeTableAdapter tblAddressTypeTableAdapter;
        private Telerik.WinControls.UI.RadMenu radMenu1;
        private System.Windows.Forms.BindingSource tblAddressBindingSource;
        private Volunteer_Dev_BradDataSet volunteer_Dev_BradDataSet;
        private System.Windows.Forms.BindingSource tblAddressTypeBindingSource;
        private System.Windows.Forms.BindingSource tblAddressBindingSource1;
        private Telerik.WinControls.UI.DoubleBufferedTableLayoutPanel doubleBufferedTableLayoutPanel1;
        private Telerik.WinControls.UI.RadGridView gridMain;
        private Volunteer_Dev_BradDataSetTableAdapters.tblAddressTableAdapter tblAddressTableAdapter;
    }
}
