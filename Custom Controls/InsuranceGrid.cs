using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Telerik.WinControls.UI;

using AEOA.Volunteer.Data;

namespace AEOA.VolunteerDriver.Custom_Controls
{
    public partial class InsuranceGrid : BaseGridCtrl
    {
        public InsuranceGrid()
        {
            InitializeComponent();
        }

        private void InsuranceGrid_Load(object sender, EventArgs e)
        {
            GridView.AllowColumnReorder = true;
            GridView.AutoGenerateHierarchy = true;

            GridView.DataSource = Insurance.LoadList(VolunteerDriver.ConnectionString);

            //Volunteer_Dev_Brad_Entities context = new Volunteer_Dev_Brad_Entities();

            //using (var context = new Volunteer_Dev_Brad_Entities())
            //{
                //context.ltblRules.Load();

                //context.tblInsurances.Load();

                //GridView.DataSource = context.ltblRules.Local.ToBindingList();

                //GridView.DataSource = context.tblInsuranceRules.Local.ToBindingList();

                //context.tblInsurances.Load();
                //GridView.DataSource = context.tblInsurances.Local.ToBindingList();


            //context.tblInsuranceRules.Load();
            //GridViewTemplate template = new GridViewTemplate();
            //template.DataSource = context.tblInsuranceRules.Local.ToBindingList();
            //GridView.MasterTemplate.Templates.Add(template);
            //GridViewRelation relation = new GridViewRelation(GridView.MasterTemplate);
            //relation.ChildTemplate = template;
            //relation.RelationName = "InsuranceRules";
            //relation.ParentColumnNames.Add("InsuranceID");
            //relation.ChildColumnNames.Add("RuleID");
            //GridView.Relations.Add(relation);


            //var query = context.tblInsurances.OrderBy(s => s.Insurance);
            //query.ToList();

            //GridView.DataSource = query.ToList();
            //            }

            //    GridView.MasterTemplate.Columns["InsuranceRules"].IsVisible = false;
            //GridView.MasterTemplate.Columns["InsuranceRates"].IsVisible = false;
            //GridView.Columns.Move(GridView.Columns["Name"].Index, 1);

            //GridView.MasterTemplate.Templates.RemoveAt(0);


            //GridView.Templates[0].Columns.Move(GridView.Templates[0].Columns["RuleName"].Index, 0);
            //GridView.Templates[1].Columns.Move(GridView.Templates[0].Columns["Name"].Index, 0);


            foreach (GridViewTemplate t in GridView.Templates)
            {
                t.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
            }
            

            //GridViewTemplate childTemplate = CreateRateChildTemplate();
            //GridView.Templates.Add(childTemplate);
            //childTemplate.HierarchyDataProvider = new GridViewEventDataProvider(childTemplate);
            //GridView.RowSourceNeeded += GridView_RowSourceNeeded;
            
        }
        private void GridView_RowSourceNeeded(object sender, GridViewRowSourceNeededEventArgs e)
        {
            Insurance insurance = e.ParentRow.DataBoundItem as Insurance;

            if (insurance.InsuranceRates != null)
            {
                foreach (Insurance.Rate r in insurance.InsuranceRates)
                {
                    GridViewRowInfo row = e.Template.Rows.NewRow();
                    row.Cells["Rate"].Value = r.RateAmount;
                    e.SourceCollection.Add(row);
                }
            }
            
            if (insurance.InsuranceRules != null)
            {

                foreach (Insurance.Rule r in insurance.InsuranceRules)
                {
                    GridViewRowInfo row = e.Template.Rows.NewRow();
                    row.Cells["BegDate"].Value = r.BegDate;
                    e.SourceCollection.Add(row);
                }
            }

        }

        private GridViewTemplate CreateRateChildTemplate()
        {
            GridViewTemplate template = new GridViewTemplate();
            template.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
            GridViewDateTimeColumn dateColumn = new GridViewDateTimeColumn("");
            //template.Columns.Add(dateColumn)

            GridViewDecimalColumn rateColumn = new GridViewDecimalColumn("Rate");
            //rateColumn.FormatString
            template.Columns.Add(rateColumn);


            return template;
        }

        private GridViewTemplate CreateRuleChildTemplate()
        {
            GridViewTemplate template = new GridViewTemplate();
            template.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
            GridViewDateTimeColumn dateColumn = new GridViewDateTimeColumn("BegDate");
            dateColumn.HeaderText = "Begin Date";
            //template.Columns.Add(dateColumn)

            //GridViewDecimalColumn rateColumn = new GridViewDecimalColumn("BegDate");
            //rateColumn.FormatString
            template.Columns.Add(dateColumn);


            return template;
        }
    }
}
