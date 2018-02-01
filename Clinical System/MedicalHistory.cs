using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public class MedicalHistory
    {
        string pid;
        string type;
        string desc;
        public MedicalHistory()
        {

        }
        public MedicalHistory(string pid,string type,string desc)
        {
            this.pid = pid;
            this.type = type;
            this.desc = desc;
        }
        public string getPID()
        {
            return pid;
        }
        public string getType()
        {
            return type;
        }
        public string getDesc()
        {
            return desc;
        }

    }
}