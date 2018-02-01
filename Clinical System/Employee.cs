using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public class Employee
    {
        string id;
        string name;
        int salary;
        public Employee()
        {

        }
        public Employee(string id, string name, int salary)
        {
            this.id = id;
            this.name = name;
            this.salary = salary;
        }
        public string getID()
        {
            return this.id;
        }
        public string getName()
        {
            return this.name;
        }
        public int getSalary()
        {
            return this.salary;
        }
    }
}