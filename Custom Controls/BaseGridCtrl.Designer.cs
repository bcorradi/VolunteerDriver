namespace AEOA.VolunteerDriver.Custom_Controls
{
    partial class BaseGridCtrl
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BaseGridCtrl));
            this.gridMain = new Telerik.WinControls.UI.RadGridView();
            this.tblAddressBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.tblAddressTypeBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.volunteer_Dev_BradDataSet = new AEOA.VolunteerDriver.Volunteer_Dev_BradDataSet();
            this.tblAddressBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.doubleBufferedTableLayoutPanel1 = new Telerik.WinControls.UI.DoubleBufferedTableLayoutPanel();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.radButton5 = new Telerik.WinControls.UI.RadButton();
            this.radDropDownButton5 = new Telerik.WinControls.UI.RadDropDownButton();
            this.radButton4 = new Telerik.WinControls.UI.RadButton();
            this.radDropDownButton4 = new Telerik.WinControls.UI.RadDropDownButton();
            this.btnEdit = new Telerik.WinControls.UI.RadButton();
            this.radDropDownButton3 = new Telerik.WinControls.UI.RadDropDownButton();
            this.btnAdd = new Telerik.WinControls.UI.RadButton();
            this.radDropDownButton2 = new Telerik.WinControls.UI.RadDropDownButton();
            this.btnExport = new Telerik.WinControls.UI.RadButton();
            this.radDropDownButton1 = new Telerik.WinControls.UI.RadDropDownButton();
            this.radMenu1 = new Telerik.WinControls.UI.RadMenu();
            this.tblAddressTableAdapter = new AEOA.VolunteerDriver.Volunteer_Dev_BradDataSetTableAdapters.tblAddressTableAdapter();
            this.tblAddressTypeTableAdapter = new AEOA.VolunteerDriver.Volunteer_Dev_BradDataSetTableAdapters.tblAddressTypeTableAdapter();
            this.telerikMetroBlueTheme1 = new Telerik.WinControls.Themes.TelerikMetroBlueTheme();
            this.radThemeManager1 = new Telerik.WinControls.RadThemeManager();
            ((System.ComponentModel.ISupportInitialize)(this.gridMain)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridMain.MasterTemplate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressTypeBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.volunteer_Dev_BradDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource)).BeginInit();
            this.doubleBufferedTableLayoutPanel1.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radButton5)).BeginInit();
            this.radButton5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radButton4)).BeginInit();
            this.radButton4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnEdit)).BeginInit();
            this.btnEdit.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnAdd)).BeginInit();
            this.btnAdd.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnExport)).BeginInit();
            this.btnExport.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radMenu1)).BeginInit();
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
            this.gridMain.Location = new System.Drawing.Point(9, 81);
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
            this.gridMain.Size = new System.Drawing.Size(1416, 852);
            this.gridMain.TabIndex = 0;
            this.gridMain.ThemeName = "TelerikMetro";
            this.gridMain.CellBeginEdit += new Telerik.WinControls.UI.GridViewCellCancelEventHandler(this.GridMain_CellBeginEdit);
            this.gridMain.FilterChanging += new Telerik.WinControls.UI.GridViewCollectionChangingEventHandler(this.GridMain_FilterChanging);
            this.gridMain.KeyDown += new System.Windows.Forms.KeyEventHandler(this.GridMain_KeyDown);
            // 
            // tblAddressTypeBindingSource
            // 
            this.tblAddressTypeBindingSource.DataMember = "tblAddressType";
            this.tblAddressTypeBindingSource.DataSource = this.volunteer_Dev_BradDataSet;
            // 
            // volunteer_Dev_BradDataSet
            // 
            this.volunteer_Dev_BradDataSet.DataSetName = "Volunteer_Dev_BradDataSet";
            this.volunteer_Dev_BradDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tblAddressBindingSource
            // 
            this.tblAddressBindingSource.DataMember = "tblAddress";
            this.tblAddressBindingSource.DataSource = this.volunteer_Dev_BradDataSet;
            // 
            // doubleBufferedTableLayoutPanel1
            // 
            this.doubleBufferedTableLayoutPanel1.ColumnCount = 1;
            this.doubleBufferedTableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.doubleBufferedTableLayoutPanel1.Controls.Add(this.gridMain, 0, 1);
            this.doubleBufferedTableLayoutPanel1.Controls.Add(this.tableLayoutPanel1, 0, 0);
            this.doubleBufferedTableLayoutPanel1.Controls.Add(this.radMenu1, 0, 2);
            this.doubleBufferedTableLayoutPanel1.Cursor = System.Windows.Forms.Cursors.Arrow;
            this.doubleBufferedTableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.doubleBufferedTableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.doubleBufferedTableLayoutPanel1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.doubleBufferedTableLayoutPanel1.Name = "doubleBufferedTableLayoutPanel1";
            this.doubleBufferedTableLayoutPanel1.RowCount = 3;
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 7.32899F));
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 92.67101F));
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 91F));
            this.doubleBufferedTableLayoutPanel1.Size = new System.Drawing.Size(1434, 1037);
            this.doubleBufferedTableLayoutPanel1.TabIndex = 0;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 5;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.Controls.Add(this.radButton5, 3, 0);
            this.tableLayoutPanel1.Controls.Add(this.radButton4, 2, 0);
            this.tableLayoutPanel1.Controls.Add(this.btnEdit, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.btnAdd, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.btnExport, 4, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(3, 3);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(1428, 63);
            this.tableLayoutPanel1.TabIndex = 1;
            // 
            // radButton5
            // 
            this.radButton5.Controls.Add(this.radDropDownButton5);
            this.radButton5.Location = new System.Drawing.Point(858, 3);
            this.radButton5.Name = "radButton5";
            this.radButton5.Size = new System.Drawing.Size(165, 36);
            this.radButton5.TabIndex = 1;
            this.radButton5.Text = "Print";
            this.radButton5.Click += new System.EventHandler(this.RadButton5_Click);
            // 
            // radDropDownButton5
            // 
            this.radDropDownButton5.Location = new System.Drawing.Point(77, 25);
            this.radDropDownButton5.Name = "radDropDownButton5";
            this.radDropDownButton5.Size = new System.Drawing.Size(8, 8);
            this.radDropDownButton5.TabIndex = 0;
            this.radDropDownButton5.Text = "radDropDownButton5";
            // 
            // radButton4
            // 
            this.radButton4.Controls.Add(this.radDropDownButton4);
            this.radButton4.Location = new System.Drawing.Point(573, 3);
            this.radButton4.Name = "radButton4";
            this.radButton4.Size = new System.Drawing.Size(165, 36);
            this.radButton4.TabIndex = 1;
            this.radButton4.Text = "radButton4";
            // 
            // radDropDownButton4
            // 
            this.radDropDownButton4.Location = new System.Drawing.Point(77, 25);
            this.radDropDownButton4.Name = "radDropDownButton4";
            this.radDropDownButton4.Size = new System.Drawing.Size(8, 8);
            this.radDropDownButton4.TabIndex = 0;
            this.radDropDownButton4.Text = "radDropDownButton4";
            // 
            // btnEdit
            // 
            this.btnEdit.Controls.Add(this.radDropDownButton3);
            this.btnEdit.Location = new System.Drawing.Point(288, 3);
            this.btnEdit.Name = "btnEdit";
            this.btnEdit.Size = new System.Drawing.Size(165, 36);
            this.btnEdit.TabIndex = 2;
            this.btnEdit.Text = "Edit";
            this.btnEdit.Click += new System.EventHandler(this.BtnEdit_Click);
            // 
            // radDropDownButton3
            // 
            this.radDropDownButton3.Location = new System.Drawing.Point(77, 25);
            this.radDropDownButton3.Name = "radDropDownButton3";
            this.radDropDownButton3.Size = new System.Drawing.Size(8, 8);
            this.radDropDownButton3.TabIndex = 0;
            this.radDropDownButton3.Text = "radDropDownButton3";
            // 
            // btnAdd
            // 
            this.btnAdd.Controls.Add(this.radDropDownButton2);
            this.btnAdd.Location = new System.Drawing.Point(3, 3);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(165, 36);
            this.btnAdd.TabIndex = 1;
            this.btnAdd.Text = "Add";
            this.btnAdd.Click += new System.EventHandler(this.BtnAdd_Click);
            // 
            // radDropDownButton2
            // 
            this.radDropDownButton2.Location = new System.Drawing.Point(77, 25);
            this.radDropDownButton2.Name = "radDropDownButton2";
            this.radDropDownButton2.Size = new System.Drawing.Size(8, 8);
            this.radDropDownButton2.TabIndex = 0;
            this.radDropDownButton2.Text = "radDropDownButton2";
            // 
            // btnExport
            // 
            this.btnExport.Controls.Add(this.radDropDownButton1);
            this.btnExport.Location = new System.Drawing.Point(1143, 3);
            this.btnExport.Name = "btnExport";
            this.btnExport.Size = new System.Drawing.Size(165, 36);
            this.btnExport.TabIndex = 0;
            this.btnExport.Text = "Export";
            this.btnExport.Click += new System.EventHandler(this.BtnExport_Click);
            // 
            // radDropDownButton1
            // 
            this.radDropDownButton1.Location = new System.Drawing.Point(77, 25);
            this.radDropDownButton1.Name = "radDropDownButton1";
            this.radDropDownButton1.Size = new System.Drawing.Size(8, 8);
            this.radDropDownButton1.TabIndex = 0;
            this.radDropDownButton1.Text = "radDropDownButton1";
            // 
            // radMenu1
            // 
            this.radMenu1.Location = new System.Drawing.Point(3, 948);
            this.radMenu1.Name = "radMenu1";
            this.radMenu1.Size = new System.Drawing.Size(1428, 20);
            this.radMenu1.TabIndex = 2;
            // 
            // tblAddressTableAdapter
            // 
            this.tblAddressTableAdapter.ClearBeforeFill = true;
            // 
            // tblAddressTypeTableAdapter
            // 
            this.tblAddressTypeTableAdapter.ClearBeforeFill = true;
            // 
            // BaseGridCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.doubleBufferedTableLayoutPanel1);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "BaseGridCtrl";
            this.Size = new System.Drawing.Size(1434, 1037);
            this.Load += new System.EventHandler(this.BaseGridCtrl_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridMain.MasterTemplate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridMain)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressTypeBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.volunteer_Dev_BradDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblAddressBindingSource)).EndInit();
            this.doubleBufferedTableLayoutPanel1.ResumeLayout(false);
            this.doubleBufferedTableLayoutPanel1.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radButton5)).EndInit();
            this.radButton5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radButton4)).EndInit();
            this.radButton4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnEdit)).EndInit();
            this.btnEdit.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnAdd)).EndInit();
            this.btnAdd.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnExport)).EndInit();
            this.btnExport.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownButton1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radMenu1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Telerik.WinControls.UI.DoubleBufferedTableLayoutPanel doubleBufferedTableLayoutPanel1;
        private Telerik.WinControls.UI.RadGridView gridMain;
        private System.Windows.Forms.BindingSource tblAddressBindingSource;
        private Volunteer_Dev_BradDataSet volunteer_Dev_BradDataSet;
        private System.Windows.Forms.BindingSource tblAddressTypeBindingSource;
        private Volunteer_Dev_BradDataSetTableAdapters.tblAddressTableAdapter tblAddressTableAdapter;
        private Volunteer_Dev_BradDataSetTableAdapters.tblAddressTypeTableAdapter tblAddressTypeTableAdapter;
        private System.Windows.Forms.BindingSource tblAddressBindingSource1;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private Telerik.WinControls.UI.RadButton radButton5;
        private Telerik.WinControls.UI.RadDropDownButton radDropDownButton5;
        private Telerik.WinControls.UI.RadButton radButton4;
        private Telerik.WinControls.UI.RadDropDownButton radDropDownButton4;
        private Telerik.WinControls.UI.RadButton btnEdit;
        private Telerik.WinControls.UI.RadDropDownButton radDropDownButton3;
        private Telerik.WinControls.UI.RadButton btnAdd;
        private Telerik.WinControls.UI.RadDropDownButton radDropDownButton2;
        private Telerik.WinControls.UI.RadButton btnExport;
        private Telerik.WinControls.UI.RadDropDownButton radDropDownButton1;
        private Telerik.WinControls.UI.RadMenu radMenu1;
        private Telerik.WinControls.Themes.TelerikMetroBlueTheme telerikMetroBlueTheme1;
        private Telerik.WinControls.RadThemeManager radThemeManager1;
    }
}
