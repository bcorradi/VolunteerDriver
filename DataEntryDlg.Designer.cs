namespace AEOA.VolunteerDriver
{
    partial class DataEntryDlg
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataEntry = new Telerik.WinControls.UI.RadDataEntry();
            this.radDataEntry = new Telerik.WinControls.UI.RadDataEntry();
            this.radSeparator1 = new Telerik.WinControls.UI.RadSeparator();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.okButton = new Telerik.WinControls.UI.RadButton();
            this.cancelButton = new Telerik.WinControls.UI.RadButton();
            ((System.ComponentModel.ISupportInitialize)(this.dataEntry)).BeginInit();
            this.dataEntry.PanelContainer.SuspendLayout();
            this.dataEntry.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radDataEntry)).BeginInit();
            this.radDataEntry.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radSeparator1)).BeginInit();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.okButton)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cancelButton)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            this.SuspendLayout();
            // 
            // dataEntry
            // 
            this.dataEntry.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataEntry.Location = new System.Drawing.Point(0, 0);
            this.dataEntry.Name = "dataEntry";
            // 
            // dataEntry.PanelContainer
            // 
            this.dataEntry.PanelContainer.Controls.Add(this.radDataEntry);
            this.dataEntry.PanelContainer.Controls.Add(this.radSeparator1);
            this.dataEntry.PanelContainer.Controls.Add(this.tableLayoutPanel1);
            this.dataEntry.PanelContainer.Size = new System.Drawing.Size(801, 785);
            this.dataEntry.Size = new System.Drawing.Size(803, 787);
            this.dataEntry.TabIndex = 0;
            // 
            // radDataEntry
            // 
            this.radDataEntry.Dock = System.Windows.Forms.DockStyle.Fill;
            this.radDataEntry.ItemDefaultSize = new System.Drawing.Size(300, 34);
            this.radDataEntry.ItemSpace = 8;
            this.radDataEntry.Location = new System.Drawing.Point(0, 0);
            this.radDataEntry.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.radDataEntry.Name = "radDataEntry";
            // 
            // radDataEntry.PanelContainer
            // 
            this.radDataEntry.PanelContainer.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.radDataEntry.PanelContainer.Size = new System.Drawing.Size(799, 714);
            this.radDataEntry.Size = new System.Drawing.Size(801, 716);
            this.radDataEntry.TabIndex = 3;
            this.radDataEntry.ItemInitialized += new Telerik.WinControls.UI.ItemInitializedEventHandler(this.RadDataEntry_ItemInitialized);
            // 
            // radSeparator1
            // 
            this.radSeparator1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.radSeparator1.Location = new System.Drawing.Point(0, 716);
            this.radSeparator1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.radSeparator1.Name = "radSeparator1";
            this.radSeparator1.Size = new System.Drawing.Size(801, 6);
            this.radSeparator1.TabIndex = 4;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 3;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 59.87558F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 19.90669F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 20.06221F));
            this.tableLayoutPanel1.Controls.Add(this.okButton, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.cancelButton, 2, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 722);
            this.tableLayoutPanel1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(801, 63);
            this.tableLayoutPanel1.TabIndex = 5;
            // 
            // okButton
            // 
            this.okButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.okButton.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.okButton.Location = new System.Drawing.Point(491, 21);
            this.okButton.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.okButton.Name = "okButton";
            this.okButton.Size = new System.Drawing.Size(144, 37);
            this.okButton.TabIndex = 0;
            this.okButton.Text = "OK";
            // 
            // cancelButton
            // 
            this.cancelButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.cancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.cancelButton.Location = new System.Drawing.Point(649, 21);
            this.cancelButton.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cancelButton.Name = "cancelButton";
            this.cancelButton.Size = new System.Drawing.Size(148, 37);
            this.cancelButton.TabIndex = 1;
            this.cancelButton.Text = "Cancel";
            // 
            // DataEntryDlg
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(803, 787);
            this.Controls.Add(this.dataEntry);
            this.Name = "DataEntryDlg";
            // 
            // 
            // 
            this.RootElement.ApplyShapeToControl = true;
            this.Text = "DataEntryDlg";
            this.Load += new System.EventHandler(this.DataEntryDlg_Load);
            this.dataEntry.PanelContainer.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataEntry)).EndInit();
            this.dataEntry.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radDataEntry)).EndInit();
            this.radDataEntry.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.radSeparator1)).EndInit();
            this.tableLayoutPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.okButton)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cancelButton)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Telerik.WinControls.UI.RadDataEntry dataEntry;
        private Telerik.WinControls.UI.RadDataEntry radDataEntry;
        private Telerik.WinControls.UI.RadSeparator radSeparator1;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private Telerik.WinControls.UI.RadButton okButton;
        private Telerik.WinControls.UI.RadButton cancelButton;
    }
}
