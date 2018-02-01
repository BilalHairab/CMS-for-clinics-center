using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinical_System
{
    public partial class NewPatient : System.Web.UI.Page
    {
        PatientDAO dao = new PatientDAO();
        string NewId;
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = dao.count()+1;
            NewId = Utils.GenerateId(count, "Patient");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Patient pn = new Patient(NewId,TextBox1.Text,DropDownList1.SelectedItem.ToString(),TextBox3.Text,DropDownList2.SelectedItem.ToString()+DropDownList3.SelectedItem.ToString(),TextBox6.Text,TextBox7.Text,datepicker.Text.ToString(),1.0d,2000);
            PatientDAO dao = new PatientDAO();
            string result=dao.insert(pn);
            if (result.Equals("done"))
            {
                Session["User"] = NewId;
                Response.Redirect("PatientDashboard.aspx");
            }
        }
    }
}