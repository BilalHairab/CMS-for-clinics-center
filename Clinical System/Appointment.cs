using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public class Appointment
    {
        string pid, did, date, time, result, prec;
        int cost;
        public Appointment()
        {

        }
        public Appointment(string pid, string did, string date, string time, string result, string prec,int cost)
        {
            this.pid = pid;
            this.did = did;
            this.date = date;
            this.time = time;
            this.result = result;
            this.prec = prec;
            this.cost = cost;
        }
        public Appointment(string pid, string did, string date, string time,int cost)
        {
            this.pid = pid;
            this.did = did;
            this.date = date;
            this.time = time;
            this.cost = cost;
        }
        public string getPID()
        {
            return this.pid;
        }
        public string getDID()
        {
            return this.did;
        }
        public string getDate()
        {
            return this.date;
        }
        public string getTime()
        {
            return this.time;
        }
        public string getResult()
        {
            return this.result;
        }
        public string getPrec()
        {
            return this.prec;
        }
        public int getCost()
        {
            return this.cost;
        }
        public void setResult(string result)
        {
            this.result = result;
        }
        public void setPrec(string prec)
        {
            this.prec = prec;
        }
        
    }
}