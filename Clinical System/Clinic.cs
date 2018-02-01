using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public class Clinic
    {
        string code;
        string type;
        int price;
        public Clinic()
        {

        }
        public Clinic(string code,string type,int price)
        {
            this.code = code;
            this.type = type;
            this.price = price;
        }
        public string getCode()
        {
            return this.code;
        }
        public string getType()
        {
            return this.type;
        }
        public int getPrice()
        {
            return this.price;
        }
    }
}