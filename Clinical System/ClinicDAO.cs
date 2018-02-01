using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Clinical_System
{
    public class ClinicDAO : ClinicInterface
    {
        string connectstring = System.Configuration.ConfigurationManager.ConnectionStrings["myClinicSystem"].ConnectionString;

        public List<Doctor> getClinicDoctors(string code)
        {
            List<Doctor> doctors = new List<Doctor>();
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select DoctorID,Name,shift from Doctor where ClinCode='@Code';";
            query = query.Replace("@Code", code);
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    doctors.Add(new Doctor(reader[0].ToString(),reader[1].ToString(),reader[2].ToString()));
                }
            }
            catch (Exception c)
            {
                
            }
            finally
            {
                myconnection.Close();
            }
            return doctors;
        }

        public List<Clinic> getClinics()
        {
            List<Clinic> list = new List<Clinic>();
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select * from Clinic;";
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    list.Add(new Clinic(reader[0].ToString(),reader[1].ToString(),Convert.ToInt16(reader[2].ToString())));
                }
            }
            catch (Exception c)
            {
                list = null;
            }
            finally
            {
                myconnection.Close();
            }
            return list;
        }

        public string insert(Clinic cl)
        {
            string result = "done";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "Insert Into Clinic values ('@Code' ,'@Type' ,@Price );";
            query = query.Replace("@Code", cl.getCode())
                 .Replace("@Type", cl.getType())
                 .Replace("@Price", cl.getPrice()+"");
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