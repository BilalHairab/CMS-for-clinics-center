using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Clinical_System
{
    public class PatientDAO : PatientInterface
    {
        string connectstring = System.Configuration.ConfigurationManager.ConnectionStrings["myClinicSystem"].ConnectionString;
        public string login(string id)
        {
            string result = "No Patient found!";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select PatientID from Patient where PatientID='" + id + "';";
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                SqlDataReader reader=command.ExecuteReader();
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
        public int count()
        {
            int count = 0;
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select count(*) from Patient;";
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                count = Convert.ToInt16(command.ExecuteScalar().ToString());
            }
            catch (Exception c)
            { count = 1;
            }
            finally
            {
                myconnection.Close();
            }
            return count;
        }
        public string insert(Patient pn)
        {
            string result = "done";
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "Insert Into Patient (PatientID,Name,Sex,Address,BloodType,BirthDate,CreditID,Phone,fraction,CreditCash) values ('@ID' ,'@Name' ,'@Sex' ,'@Address' ,'@BloodType' ,'@BirthDate' ,'@CreditID' ,'@Phone' ,@fraction ,@CreditCash );";
            query = query.Replace("@ID", pn.getId())
                 .Replace("@Name", pn.getName())
                 .Replace("@Sex", pn.getSex())
                 .Replace("@Address", pn.getAddress())
                 .Replace("@BloodType", pn.getBlood())
                 .Replace("@BirthDate", pn.getBirth().ToString())
                 .Replace("@CreditID", pn.getCreditId())
                 .Replace("@Phone", pn.getPhone())
                 .Replace("@fraction", pn.getFraction()+"")
                 .Replace("@CreditCash", pn.getCash()+"");
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                int numOfRows = command.ExecuteNonQuery();
                result = "done";
            }
            catch (Exception c)
            {
                result =c.Message;
            }
            finally
            {
                myconnection.Close();
            }
            return result;
        }
        public Patient getCurrentPatientInfo(string id)
        {
            Patient pn = new Patient();
            SqlConnection myconnection = new SqlConnection(connectstring);
            string query = "select * from Patient where PatientID='" + id + "';";
            try
            {
                myconnection.Open();
                SqlCommand command = new SqlCommand(query, myconnection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    pn.setId(reader[0].ToString());
                    pn.setName(reader[1].ToString());
                    pn.setSex(reader[2].ToString());
                    pn.setAddress(reader[3].ToString());
                    pn.setBlood(reader[4].ToString());
                    pn.setBirth(reader[5].ToString());
                    pn.setCreditId(reader[6].ToString());
                    pn.setPhone(reader[7].ToString());
                    pn.setFraction(Convert.ToDouble(reader[8]));
                    pn.setCash(Convert.ToInt16(reader[9]));
                }
            }
            catch (Exception c)
            {
                pn = null;
            }
            finally
            {
                myconnection.Close();
            }
            return pn;
        }

        public string addMedicalHistory(MedicalHistory mh)
        {
            string result="Added successfully!";
            SqlConnection sqlconnection = new SqlConnection(connectstring);
            string query = "Insert into MedicalHistory values('@PID','@Type','@Desc');";
            try
            {
                query = query.Replace("@PID", mh.getPID())
                        .Replace("@Type", mh.getType())
                        .Replace("@Desc", mh.getDesc());
                sqlconnection.Open();
                SqlCommand sqlcommand = new SqlCommand(query, sqlconnection);
                sqlcommand.ExecuteNonQuery();
            }catch(Exception c)
            {
                result = c.Message;
            }
            finally
            {
                sqlconnection.Close();
            }
            return result;

        }

        public string updateFraction(string id, double fraction)
        {
            string result = "done";
            SqlConnection sqlconnection = new SqlConnection(connectstring);
            string query = "Update Patient SET fraction=@fraction Where PatientID='"+id+"';";
            try
            {
                query = query.Replace("@fraction", fraction + "");
                sqlconnection.Open();
                SqlCommand sqlcommand = new SqlCommand(query, sqlconnection);
                sqlcommand.ExecuteNonQuery();
            }
            catch (Exception c)
            {
                result = c.Message;
            }
            finally
            {
                sqlconnection.Close();
            }

            return result;
        }
    }
}