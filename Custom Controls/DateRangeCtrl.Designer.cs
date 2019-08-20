namespace AEOA.VolunteerDriver.Custom_Controls
{
    partial class DateRangeCtrl
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
            Telerik.WinControls.UI.RadListDataItem radListDataItem4 = new Telerik.WinControls.UI.RadListDataItem();
            Telerik.WinControls.UI.RadListDataItem radListDataItem5 = new Telerik.WinControls.UI.RadListDataItem();
            Telerik.WinControls.UI.RadListDataItem radListDataItem6 = new Telerik.WinControls.UI.RadListDataItem();
            this.radGroupBox1 = new Telerik.WinControls.UI.RadGroupBox();
            this.rbSelectedRange = new Telerik.WinControls.UI.RadRadioButton();
            this.rbStandardDateRange = new Telerik.WinControls.UI.RadRadioButton();
            this.radDateTimePicker1 = new Telerik.WinControls.UI.RadDateTimePicker();
            this.radDateTimePicker2 = new Telerik.WinControls.UI.RadDateTimePicker();
            this.lblStartDate = new Telerik.WinControls.UI.RadLabel();
            this.lblEndDate = new Telerik.WinControls.UI.RadLabel();
            this.radDropDownList1 = new Telerik.WinControls.UI.RadDropDownList();
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox1)).BeginInit();
            this.radGroupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.rbSelectedRange)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rbStandardDateRange)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radDateTimePicker1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radDateTimePicker2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblStartDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblEndDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownList1)).BeginInit();
            this.SuspendLayout();
            // 
            // radGroupBox1
            // 
            this.radGroupBox1.AccessibleRole = System.Windows.Forms.AccessibleRole.Grouping;
            this.radGroupBox1.Controls.Add(this.rbStandardDateRange);
            this.radGroupBox1.Controls.Add(this.rbSelectedRange);
            this.radGroupBox1.HeaderText = "radGroupBox1";
            this.radGroupBox1.Location = new System.Drawing.Point(17, 3);
            this.radGroupBox1.Name = "radGroupBox1";
            this.radGroupBox1.Size = new System.Drawing.Size(467, 83);
            this.radGroupBox1.TabIndex = 1;
            this.radGroupBox1.Text = "radGroupBox1";
            // 
            // rbSelectedRange
            // 
            this.rbSelectedRange.Location = new System.Drawing.Point(48, 41);
            this.rbSelectedRange.Name = "rbSelectedRange";
            this.rbSelectedRange.Size = new System.Drawing.Size(111, 18);
            this.rbSelectedRange.TabIndex = 1;
            this.rbSelectedRange.Text = "Select Date Range";
            this.rbSelectedRange.CheckStateChanged += new System.EventHandler(this.RbSelectedRange_CheckStateChanged);
            // 
            // rbStandardDateRange
            // 
            this.rbStandardDateRange.Location = new System.Drawing.Point(243, 41);
            this.rbStandardDateRange.Name = "rbStandardDateRange";
            this.rbStandardDateRange.Size = new System.Drawing.Size(126, 18);
            this.rbStandardDateRange.TabIndex = 0;
            this.rbStandardDateRange.Text = "Standard Date Range";
            this.rbStandardDateRange.CheckStateChanged += new System.EventHandler(this.RbStandardDateRange_CheckStateChanged);
            // 
            // radDateTimePicker1
            // 
            this.radDateTimePicker1.CustomFormat = "MM/dd/yyyy";
            this.radDateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.radDateTimePicker1.Location = new System.Drawing.Point(18, 134);
            this.radDateTimePicker1.Name = "radDateTimePicker1";
            this.radDateTimePicker1.Size = new System.Drawing.Size(126, 27);
            this.radDateTimePicker1.TabIndex = 2;
            this.radDateTimePicker1.TabStop = false;
            this.radDateTimePicker1.Text = "08/05/2019";
            this.radDateTimePicker1.Value = new System.DateTime(2019, 8, 5, 9, 34, 54, 968);
            // 
            // radDateTimePicker2
            // 
            this.radDateTimePicker2.CustomFormat = "MM/dd/yyyy";
            this.radDateTimePicker2.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.radDateTimePicker2.Location = new System.Drawing.Point(171, 134);
            this.radDateTimePicker2.Name = "radDateTimePicker2";
            this.radDateTimePicker2.Size = new System.Drawing.Size(112, 27);
            this.radDateTimePicker2.TabIndex = 3;
            this.radDateTimePicker2.TabStop = false;
            this.radDateTimePicker2.Text = "08/05/2019";
            this.radDateTimePicker2.Value = new System.DateTime(2019, 8, 5, 9, 34, 54, 968);
            // 
            // lblStartDate
            // 
            this.lblStartDate.Location = new System.Drawing.Point(17, 105);
            this.lblStartDate.Name = "lblStartDate";
            this.lblStartDate.Size = new System.Drawing.Size(56, 18);
            this.lblStartDate.TabIndex = 4;
            this.lblStartDate.Text = "Start Date";
            // 
            // lblEndDate
            // 
            this.lblEndDate.Location = new System.Drawing.Point(173, 105);
            this.lblEndDate.Name = "lblEndDate";
            this.lblEndDate.Size = new System.Drawing.Size(52, 18);
            this.lblEndDate.TabIndex = 5;
            this.lblEndDate.Text = "End Date";
            // 
            // radDropDownList1
            // 
            radListDataItem4.Text = "Week To Date";
            radListDataItem5.Text = "Month To Date";
            radListDataItem6.Text = "Year To Date";
            this.radDropDownList1.Items.Add(radListDataItem4);
            this.radDropDownList1.Items.Add(radListDataItem5);
            this.radDropDownList1.Items.Add(radListDataItem6);
            this.radDropDownList1.Location = new System.Drawing.Point(297, 135);
            this.radDropDownList1.Name = "radDropDownList1";
            this.radDropDownList1.Size = new System.Drawing.Size(187, 27);
            this.radDropDownList1.TabIndex = 6;
            // 
            // DateRangeCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.radDropDownList1);
            this.Controls.Add(this.lblEndDate);
            this.Controls.Add(this.radGroupBox1);
            this.Controls.Add(this.lblStartDate);
            this.Controls.Add(this.radDateTimePicker1);
            this.Controls.Add(this.radDateTimePicker2);
            this.Name = "DateRangeCtrl";
            this.Size = new System.Drawing.Size(505, 185);
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox1)).EndInit();
            this.radGroupBox1.ResumeLayout(false);
            this.radGroupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.rbSelectedRange)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rbStandardDateRange)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radDateTimePicker1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radDateTimePicker2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblStartDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblEndDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radDropDownList1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Telerik.WinControls.UI.RadGroupBox radGroupBox1;
        private Telerik.WinControls.UI.RadRadioButton rbStandardDateRange;
        private Telerik.WinControls.UI.RadRadioButton rbSelectedRange;
        private Telerik.WinControls.UI.RadDateTimePicker radDateTimePicker1;
        private Telerik.WinControls.UI.RadDateTimePicker radDateTimePicker2;
        private Telerik.WinControls.UI.RadLabel lblStartDate;
        private Telerik.WinControls.UI.RadLabel lblEndDate;
        private Telerik.WinControls.UI.RadDropDownList radDropDownList1;
    }
}
