using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public class Doctor
    {
        string id;
        string name;
        string phone;
        int salary;
        string clinicCode;
        string shift;
        public Doctor()
        {

        }
        public Doctor(string id,string name, string phone,int salary,string clinicCode,string shift)
        {
            this.id = id;
            this.name = name;
            this.phone = phone;
            this.salary = salary;
            this.clinicCode = clinicCode;
            this.shift = shift;
        }
        public Doctor(string id,string name,string shift)
        {
            this.id = id;
            this.name = name;
            this.shift = shift;
        }
        public string getID()
        {
            return this.id;
        }
        public string getName()
        {
            return this.name;
        }
        public string getPhone()
        {
            return this.phone;
        }
        public int getSalary()
        {
            return this.salary;
        }
        public string getCode()
        {
            return this.clinicCode;
        }
        public string getShift()
        {
            return this.shift;
        }
    }
}