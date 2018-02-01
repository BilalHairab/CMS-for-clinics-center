using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinical_System
{
    public partial class PatientDashboard : System.Web.UI.Page
    {
        Patient currentPatient;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            PatientDAO dao = new PatientDAO();
            currentPatient = dao.getCurrentPatientInfo(Session["User"].ToString());
            labelID.Text = currentPatient.getId();
            labelName.Text = currentPatient.getName();
            labelBlood.Text = currentPatient.getBlood();
            labelCredit.Text = currentPatient.getCreditId();
            double newfraction = 1.0d - (GridView1.Rows.Count - GridView1.Rows.Count % 5.0d) / 100.0d;
            if (newfraction < currentPatient.getFraction())
            {
                dao.updateFraction(currentPatient.getId(), newfraction);
            }
            currentPatient.setFraction(newfraction);
            labelPhone.Text = currentPatient.getPhone();
            labelFraction.Text = newfraction + "";
            labelCash.Text = currentPatient.getCash()+"";
            Session["fraction"] = currentPatient.getFraction();
            Session["Cash"] = currentPatient.getCash();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewAppointment.aspx");

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}