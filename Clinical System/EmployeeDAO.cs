using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Clinical_System
{
    public class EmployeeDAO : EmployeeInterface
    {
        string connectstring = System.Configuration.ConfigurationManager.ConnectionStrings["myClinicSystem"].ConnectionString;
        public string login(string id)
        {
            string result = "No Employee found!";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select EmployeeID from Employee where EmployeeID='" + id + "';";
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
        public string insert(Employee em)
        {
            string result = "done";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "Insert Into Employee values ('@ID' ,'@Name' ,@Salary );";
            query = query.Replace("@ID", em.getID())
                 .Replace("@Name", em.getName())
                 .Replace("@Salary", em.getSalary() + "");
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