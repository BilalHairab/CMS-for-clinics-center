using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinical_System
{
    public partial class DoctorDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   if(!IsPostBack)
            datepicker.Text= DateTime.Now.ToString("yyyy-MM-dd");
            if (Session["User"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            Session["PatientHistory"] = null;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Index.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["PatientHistory"] = GridView1.SelectedRow.Cells[1].Text.Trim();
            Response.Redirect("PatientHistory.aspx");
        }
    }
}