namespace AEOA.VolunteerDriver.Custom_Controls
{
    partial class ReportViewerCtrl
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
            this.doubleBufferedTableLayoutPanel1 = new Telerik.WinControls.UI.DoubleBufferedTableLayoutPanel();
            this.radMenu1 = new Telerik.WinControls.UI.RadMenu();
            this.reportViewer1 = new Telerik.ReportViewer.WinForms.ReportViewer();
            this.doubleBufferedTableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radMenu1)).BeginInit();
            this.SuspendLayout();
            // 
            // doubleBufferedTableLayoutPanel1
            // 
            this.doubleBufferedTableLayoutPanel1.ColumnCount = 1;
            this.doubleBufferedTableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.doubleBufferedTableLayoutPanel1.Controls.Add(this.radMenu1, 0, 2);
            this.doubleBufferedTableLayoutPanel1.Controls.Add(this.reportViewer1, 0, 1);
            this.doubleBufferedTableLayoutPanel1.Cursor = System.Windows.Forms.Cursors.Arrow;
            this.doubleBufferedTableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.doubleBufferedTableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.doubleBufferedTableLayoutPanel1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.doubleBufferedTableLayoutPanel1.Name = "doubleBufferedTableLayoutPanel1";
            this.doubleBufferedTableLayoutPanel1.RowCount = 3;
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 7.32899F));
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 92.67101F));
            this.doubleBufferedTableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 91F));
            this.doubleBufferedTableLayoutPanel1.Size = new System.Drawing.Size(1236, 1008);
            this.doubleBufferedTableLayoutPanel1.TabIndex = 1;
            // 
            // radMenu1
            // 
            this.radMenu1.Location = new System.Drawing.Point(3, 919);
            this.radMenu1.Name = "radMenu1";
            this.radMenu1.Size = new System.Drawing.Size(1230, 20);
            this.radMenu1.TabIndex = 2;
            // 
            // reportViewer1
            // 
            this.reportViewer1.AccessibilityKeyMap = null;
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.reportViewer1.Location = new System.Drawing.Point(4, 72);
            this.reportViewer1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(1228, 839);
            this.reportViewer1.TabIndex = 3;
            // 
            // ReportViewerCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.doubleBufferedTableLayoutPanel1);
            this.Name = "ReportViewerCtrl";
            this.Size = new System.Drawing.Size(1236, 1008);
            this.doubleBufferedTableLayoutPanel1.ResumeLayout(false);
            this.doubleBufferedTableLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radMenu1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Telerik.WinControls.UI.DoubleBufferedTableLayoutPanel doubleBufferedTableLayoutPanel1;
        private Telerik.WinControls.UI.RadMenu radMenu1;
        private Telerik.ReportViewer.WinForms.ReportViewer reportViewer1;
    }
}
