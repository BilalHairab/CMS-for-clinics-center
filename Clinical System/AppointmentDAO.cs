using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public class AppointmentDAO :AppointmentInterface
    {
        string connectstring = System.Configuration.ConfigurationManager.ConnectionStrings["myClinicSystem"].ConnectionString;

        public string addAppointment(Appointment app,int newCash)
        {
            string result = "done";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "Insert Into Appointment (PID,DID,Date,Time,cost) values ('@PID','@DID','@Date','@Time',@Cost);";
            query = query.Replace("@PID",app.getPID())
                .Replace("@DID",app.getDID())
                .Replace("@Date",app.getDate())
                .Replace("@Time", app.getTime())
                .Replace("@Cost", app.getCost()+"");
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                command.ExecuteNonQuery();
                myconnection.Close();
                query = "Update Patient SET CreditCash=" + newCash + " WHERE PatientID='" + app.getPID() + "';";
                try
                {
                    myconnection.Open();
                    command = new SqlCommand(query, myconnection);
                    command.ExecuteNonQuery();
                    result = "done";
                }
                catch (Exception c)
                {
                    result = c.Message;
                }
                finally
                {
                    myconnection.Close();
                }

            }
            catch (Exception c)
            {
                result = c.Message;
                myconnection.Close();
            }
            

            return result;
        }

        public List<string> getTimes(string did,string date,string shift)
        {
            List<string> list = new List<string>();
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select time from AvailableTimes where shift='@shift' AND  NOT Exists ( Select * from Appointment where Appointment.Time= AvailableTimes.time AND Appointment.Date='@date' AND Appointment.DID='@did');";
                query = query.Replace("@did", did)
                             .Replace("@date", date)
                             .Replace("@shift",shift);
                try
                {
                    myconnection.Open();
                   SqlCommand command = new SqlCommand(query, myconnection);
                   SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        list.Add(reader[0].ToString());
                    }

                }
                catch (Exception c)
                {
                    list.Clear();
                    list.Add(c.Message);
                }
                finally
                {
                   myconnection.Close();
                }
            return list;
        }
        //public List<string> getTimes(string shift, string date,string code)
        //{
        //    List<string> list = new List<string>();
        //    SqlConnection myconnection = new SqlConnection(connectstring);
        //    string query = "select time from AvailableTimes where shift='@shift' AND NOT Exists(Select * from Appointment INNER JOIN Doctor ON Appointment.DID = Doctor.DoctorID INNER JOIN Clinic ON Doctor.ClinCode = Clinic.ClinicCode where Date='@date' AND shift='@shift' AND Clinic.ClinicCode='@Code');";
        //    query = query.Replace("@shift",shift)
        //        .Replace("@date", date)
        //        .Replace("@Code", code);
        //    try
        //    {
        //        myconnection.Open();
        //        SqlCommand command = new SqlCommand(query, myconnection);
        //        SqlDataReader reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            list.Add(reader[0].ToString());
        //        }

        //    }
        //    catch (Exception c)
        //    {
        //        list.Clear();
        //        list.Add(c.Message);
        //    }
        //    finally
        //    {
        //        myconnection.Close();
        //    }
        //    return list;
        //}
    }
}