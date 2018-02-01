using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinical_System
{
    public partial class NewAppointment : Page
    {
        
        List<Clinic> Clinics;
        List<Doctor> doctors;
        int finalPrice;
        int myCash;
        double discount;
        DateTime datetime;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            ClinicDAO dao = new ClinicDAO();
            Clinics = dao.getClinics();
            if (!IsPostBack)
            { 
            ClinicList.Items.Clear();
            ClinicList.Items.Add(new ListItem("--"));
            for (int i = 0; i < Clinics.Count; i++)
                ClinicList.Items.Add(new ListItem(Clinics[i].getType()));
            }
            myCash = Convert.ToInt16(Session["Cash"]);
            
            cashLabel.Text = "Cash: " + Session["Cash"] + " L.E";
            discount = (1.0d - Convert.ToDouble(Session["fraction"]))*100;
            discountLabel.Text = "discount: " + discount + "%";


        }

        protected void ClinicList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ClinicList.SelectedIndex != 0)
            {
                finalPrice = (int)(Clinics[ClinicList.SelectedIndex - 1].getPrice() * Convert.ToDouble(Session["fraction"]));

                finalPriceBox.Text= Clinics[ClinicList.SelectedIndex-1].getPrice() + " * " + Session["fraction"] + " = " + Clinics[ClinicList.SelectedIndex-1].getPrice() * Convert.ToDouble(Session["fraction"]) +" L.E";
            }
            if (ClinicList.SelectedIndex != 0 && DateTime.TryParseExact(datepicker.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.AssumeLocal, out datetime))
            {
                AppointmentDAO dao = new AppointmentDAO();
                
                string did = getDoctorID();
                string shift = "Morning";
                if (PeriodList.SelectedIndex == 1)
                {
                    shift = "Evening";
                }
                List<string> times = dao.getTimes(did, datepicker.Text,shift);
                if (times.Count == 1 && times[0].Length != 5)
                {
                    Response.Write(times[0]);
                }
                else {
                    TimeList.Items.Clear();
                    for (int i = 0; i < times.Count; i++)
                        TimeList.Items.Add(new ListItem(times[i]));
                }
            }
        }

        protected void PeriodList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ClinicList.SelectedIndex != 0 && DateTime.TryParseExact(datepicker.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.AssumeLocal, out datetime))
            {
                AppointmentDAO dao = new AppointmentDAO();
                string shift = "Morning";
                if (PeriodList.SelectedIndex == 1)
                {
                    shift = "Evening";
                }
                string did = getDoctorID();
                List<string> times = dao.getTimes(did, datepicker.Text,shift);
                if (times.Count == 1 && times[0].Length != 5)
                {
                    Response.Write(times[0]);
                }
                else
                {
                    TimeList.Items.Clear();
                    for (int i = 0; i < times.Count; i++)
                        TimeList.Items.Add(new ListItem(times[i]));
                }
            }
        }

        protected void datepicker_TextChanged(object sender, EventArgs e)
        {
            if (ClinicList.SelectedIndex != 0 && DateTime.TryParseExact(datepicker.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.AssumeLocal, out datetime))
            {
                AppointmentDAO dao = new AppointmentDAO();
                string shift = "Morning";
                if (PeriodList.SelectedIndex == 1)
                {
                    shift = "Evening";
                }
                string did = getDoctorID();
                string code = Clinics[ClinicList.SelectedIndex-1].getCode();
                List<string> times = dao.getTimes(did, datepicker.Text, shift);
                if (times.Count == 1 && times[0].Length != 5)
                {
                    Response.Write(times[0]);
                }
                else
                {
                    TimeList.Items.Clear();
                    for (int i = 0; i < times.Count; i++)
                        TimeList.Items.Add(new ListItem(times[i]));
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            if (ClinicList.SelectedIndex != 0 && DateTime.TryParseExact(datepicker.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.AssumeLocal, out datetime) && myCash >= finalPrice)
            {
                finalPrice = (int)(Clinics[ClinicList.SelectedIndex - 1].getPrice() * Convert.ToDouble(Session["fraction"]));
                //Response.Write(finalPrice + "");
                string did = getDoctorID();
                //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:showSuccessDialogue(\"" + ClinicList.SelectedValue + "\",\"" + Session["fraction"].ToString() + "\",\"" + datepicker.Text + "\",\"" + TimeList.SelectedValue + "\"); ", true);
                AppointmentDAO dao = new AppointmentDAO();
                string result = dao.addAppointment(new Appointment(Session["User"].ToString(), did, datepicker.Text, TimeList.SelectedValue, finalPrice), myCash - finalPrice);
               // Response.Write(result);
                if (result.Equals("done"))
                   ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:showSuccessDialogue(\"" + ClinicList.SelectedValue + "\",\"" + Session["DoctorName"].ToString() + "\",\"" + datetime.DayOfWeek+ " "+datepicker.Text + "\",\"" + TimeList.SelectedValue + "\",\"" + finalPrice + "\"); ", true);
                else
                   ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:showErrorDialogue(\"" + result + "\"); ", true);

            }
            else 
            { 
                string error = ""; 
                if (ClinicList.SelectedIndex == 0) 
                    error += "Choose clinic, ";
                if (!DateTime.TryParseExact(datepicker.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.AssumeLocal, out datetime))
                    error += "pick valid date from date picker, ex: 2017-02-08, ";
                if (myCash < finalPrice) 
                    error += "You don't have enough cash to afford this visit, ";
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:showErrorDialogue(\"" + error+"\"); ", true);
             }
        }
        string getDoctorID()
        {
            ClinicDAO daoz = new ClinicDAO();
            doctors = daoz.getClinicDoctors(Clinics[ClinicList.SelectedIndex - 1].getCode());

            string did = "";
            if (PeriodList.SelectedIndex == 0)
            {
                if (doctors[0].getShift().ToLower().StartsWith("morn"))
                {
                    Session["DoctorName"] = doctors[0].getName();
                    did = doctors[0].getID();
                }
                else
                {
                    Session["DoctorName"] = doctors[1].getName();
                    did = doctors[1].getID();
                }
            }
            else
            {
                if (doctors[1].getShift().ToLower().StartsWith("even"))
                {
                    Session["DoctorName"] = doctors[1].getName();
                    did = doctors[1].getID();
                }
                else
                {
                    Session["DoctorName"] = doctors[0].getName();
                    did = doctors[0].getID();
                }
            }
            return did;
        }
    }
}