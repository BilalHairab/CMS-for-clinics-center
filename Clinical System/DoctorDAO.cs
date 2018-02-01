using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Clinical_System
{
    public class DoctorDAO : DoctorInterface
    {

        string connectstring = System.Configuration.ConfigurationManager.ConnectionStrings["myClinicSystem"].ConnectionString;
        public string login(string id)
        {
            string result = "No Doctor found!";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select DoctorID from Doctor where DoctorID='" + id + "';";
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    result = "found";
                }

            }
            catch (Exception c)
            {
                result = c.Message;
            }
            finally
            {
                myconnection.Close();
            }
            return result;
        }
        public string insert(Doctor pn)
        {
            string result = "done";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "Insert Into Doctor values ('@ID' ,'@Name' ,'@Phone' ,@Salary ,'@ClinicCode' ,'@Shift' );";
            query = query.Replace("@ID", pn.getID())
                 .Replace("@Name", pn.getName())
                 .Replace("@Phone", pn.getPhone())
                 .Replace("@Salary", pn.getSalary() + "")
                 .Replace("@ClinicCode", pn.getCode())
                 .Replace("@Shift", pn.getShift());
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                int numOfRows = command.ExecuteNonQuery();
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
            return result;
        }
    }
}