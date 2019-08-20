namespace AEOA.VolunteerDriver.Custom_Controls
{
    partial class MultipleDriverReimbursementRpt
    {
        #region Component Designer generated code
        /// <summary>
        /// Required method for telerik Reporting designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            Telerik.Reporting.Drawing.StyleRule styleRule1 = new Telerik.Reporting.Drawing.StyleRule();
            this.detailSection1 = new Telerik.Reporting.DetailSection();
            this.table1 = new Telerik.Reporting.Table();
            this.textBox1 = new Telerik.Reporting.TextBox();
            this.pageHeaderSection1 = new Telerik.Reporting.PageHeaderSection();
            this.textBox2 = new Telerik.Reporting.TextBox();
            this.pageFooterSection1 = new Telerik.Reporting.PageFooterSection();
            this.sqlDataSource1 = new Telerik.Reporting.SqlDataSource();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // detailSection1
            // 
            this.detailSection1.Height = Telerik.Reporting.Drawing.Unit.Inch(1D);
            this.detailSection1.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.table1});
            this.detailSection1.Name = "detailSection1";
            // 
            // table1
            // 
            this.table1.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0D), Telerik.Reporting.Drawing.Unit.Inch(0D));
            this.table1.Name = "table1";
            this.table1.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(0D), Telerik.Reporting.Drawing.Unit.Inch(0D));
            // 
            // textBox1
            // 
            this.textBox1.Name = "ReportNameTextBox";
            this.textBox1.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(5.906D), Telerik.Reporting.Drawing.Unit.Inch(0.787D));
            this.textBox1.Style.Font.Bold = true;
            this.textBox1.Style.Font.Name = "Segoe UI";
            this.textBox1.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(14D);
            this.textBox1.Value = "MultipleDriverReimbursementRpt";
            // 
            // pageHeaderSection1
            // 
            this.pageHeaderSection1.Height = Telerik.Reporting.Drawing.Unit.Inch(1D);
            this.pageHeaderSection1.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.textBox1});
            this.pageHeaderSection1.Name = "pageHeaderSection1";
            // 
            // textBox2
            // 
            this.textBox2.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(4.925D), Telerik.Reporting.Drawing.Unit.Inch(0.606D));
            this.textBox2.Name = "ReportPageNumberTextBox";
            this.textBox2.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(1.575D), Telerik.Reporting.Drawing.Unit.Inch(0.394D));
            this.textBox2.Style.Font.Name = "Segoe UI";
            this.textBox2.Value = "Page: {PageNumber}";
            // 
            // pageFooterSection1
            // 
            this.pageFooterSection1.Height = Telerik.Reporting.Drawing.Unit.Inch(1D);
            this.pageFooterSection1.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.textBox2});
            this.pageFooterSection1.Name = "pageFooterSection1";
            // 
            // sqlDataSource1
            // 
            this.sqlDataSource1.ConnectionString = "Data Source=hermes\\vd;Initial Catalog=Volunteer_Dev_Brad;Integrated Security=True" +
    ";Connect Timeout=30;TrustServerCertificate=False";
            this.sqlDataSource1.Name = "sqlDataSource1";
            this.sqlDataSource1.ProviderName = "System.Data.SqlClient";
            this.sqlDataSource1.SelectCommand = "SELECT \r\nFROM   ";
            // 
            // MultipleDriverReimbursementRpt
            // 
            this.DataSource = this.sqlDataSource1;
            this.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.detailSection1,
            this.pageHeaderSection1,
            this.pageFooterSection1});
            this.Name = "MultipleDriverReimbursementRpt";
            this.PageSettings.Margins = new Telerik.Reporting.Drawing.MarginsU(Telerik.Reporting.Drawing.Unit.Inch(1D), Telerik.Reporting.Drawing.Unit.Inch(1D), Telerik.Reporting.Drawing.Unit.Inch(1D), Telerik.Reporting.Drawing.Unit.Inch(1D));
            this.PageSettings.PaperKind = System.Drawing.Printing.PaperKind.Letter;
            styleRule1.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.TypeSelector(typeof(Telerik.Reporting.TextItemBase)),
            new Telerik.Reporting.Drawing.TypeSelector(typeof(Telerik.Reporting.HtmlTextBox))});
            styleRule1.Style.Padding.Left = Telerik.Reporting.Drawing.Unit.Point(2D);
            styleRule1.Style.Padding.Right = Telerik.Reporting.Drawing.Unit.Point(2D);
            this.StyleSheet.AddRange(new Telerik.Reporting.Drawing.StyleRule[] {
            styleRule1});
            this.Width = Telerik.Reporting.Drawing.Unit.Inch(6.5D);
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
        #endregion

        private Telerik.Reporting.DetailSection detailSection1;
        private Telerik.Reporting.Table table1;
        private Telerik.Reporting.TextBox textBox1;
        private Telerik.Reporting.PageHeaderSection pageHeaderSection1;
        private Telerik.Reporting.TextBox textBox2;
        private Telerik.Reporting.PageFooterSection pageFooterSection1;
        private Telerik.Reporting.SqlDataSource sqlDataSource1;
    }
}