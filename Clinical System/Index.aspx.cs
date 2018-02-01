using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinical_System
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                if (Session["User"].ToString().StartsWith("p"))
                {
                    Response.Redirect("PatientDashboard.aspx");
                }
                else if (Session["User"].ToString().StartsWith("d"))
                {
                    Response.Redirect("DoctorDashboard.aspx");
                }
                else if (Session["User"].ToString().StartsWith("e"))
                {
                    Response.Redirect("EmployeeDashboard.aspx");
                }
            }
            else
            {
                Session.Clear();
            }
        }

        protected void logIn_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0) { 
                PatientDAO dao = new PatientDAO();
                string result= dao.login(TextBox1.Text);
                if (result.StartsWith("found"))
                {
                    //found .. redirect and start session
                    Session["User"] = TextBox1.Text;
                    Response.Redirect("PatientDashboard.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:showErrorDialogue(); ", true);
                }
            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                //doctor
                DoctorDAO dao = new DoctorDAO();
                string result = dao.login(TextBox1.Text);
                if (result.StartsWith("found"))
                {
                    //found .. redirect and start session
                    Session["User"] = TextBox1.Text;
                    Response.Redirect("DoctorDashboard.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:showErrorDialogue(); ", true);
                }
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                //employee
                EmployeeDAO dao = new EmployeeDAO();
                string result = dao.login(TextBox1.Text);
                if (result.StartsWith("found"))
                {
                    //found .. redirect and start session
                    Session["User"] = TextBox1.Text;
                    Response.Redirect("EmployeeDashboard.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:showErrorDialogue(); ", true);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewPatient.aspx");

        }
    }
}