using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinical_System
{
    public partial class EmployeeDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            labelID. Text = Utils.GenerateId(GridView2.Rows.Count + 1, "Doctor");
            labelIDC.Text = Utils.GenerateId(GridView3.Rows.Count + 1, "Clinic");
            labelIDE.Text = Utils.GenerateId(GridView4.Rows.Count + 1, "Employee");

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            IDBox.Text = Utils.GenerateId(GridView1.SelectedIndex + 1, "Patient");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MedicalHistory mh = new MedicalHistory(IDBox.Text, DropDownList1.SelectedValue.ToString(), descBox.Text);
            PatientDAO dao = new PatientDAO();
            string result = dao.addMedicalHistory(mh);
            resultLabel.Text = result;
        }
        protected void addDoctor_Click(object sender, EventArgs e)
        {
            if (IsGroupValid("valb"))
            {
                DoctorDAO dao = new DoctorDAO();
                string result = dao.insert(new Doctor(labelID.Text, labelName.Text, labelPhone.Text, Convert.ToInt16(labelSalary.Text), Utils.GenerateId(DropClinic.SelectedIndex + 1, "Clinic"), DropShif.SelectedValue));
                Response.Write("<script>alert('" + result + "');</script>");
                if (result.Equals("done"))
                {
                    Response.Redirect("EmployeeDashboard.aspx");
                }
            }
            
        }
        protected void addClinic_Click(object sender, EventArgs e)
        {
            if (IsGroupValid("valc"))
            {
                ClinicDAO dao = new ClinicDAO();
                string result = dao.insert(new Clinic(labelIDC.Text, labelType.Text, Convert.ToInt16(labelPrice.Text)));
                Response.Write("<script>alert('" + result + "');</script>");
                if (result.Equals("done"))
                {
                    Response.Redirect("EmployeeDashboard.aspx");
                }
            }
        }
        protected void addEmployee_Click(object sender, EventArgs e)
        {
            if (IsGroupValid("vald")) {
            EmployeeDAO dao = new EmployeeDAO();
            string result = dao.insert(new Employee(labelIDE.Text, labelNameEmp.Text, Convert.ToInt16(labelESalary.Text)));
            Response.Write("<script>alert('" + result + "');</script>");
            if (result.Equals("done"))
            {
                Response.Redirect("EmployeeDashboard.aspx");
            }
        }
        }


        protected bool IsGroupValid(string sValidationGroup)
        {
            foreach (BaseValidator validator in Page.Validators)
            {
                if (validator.ValidationGroup == sValidationGroup)
                {
                    bool fValid = validator.IsValid;
                    if (fValid)
                    {
                        validator.Validate();
                        fValid = validator.IsValid;
                        validator.IsValid = true;
                    }
                    if (!fValid) {
                        validator.IsValid = false;

                        return false;
                    }
                }

            }
            return true;
        }


        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Index.aspx");
        }

    }
}