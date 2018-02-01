using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public class Patient
    {
        string id;
        string name;
        string sex;
        string address;
        string bloodType;
        string CreditId;
        string phone;
        string birth;
        double fraction;
        int cash;
        public Patient()
        {

        }
        public Patient(string id,string name,string sex,string address,string bloodType,string creditId,string phone, string date,double fra,int money)
        {
            this.id = id;
            this.name = name;
            this.sex = sex;
            this.address = address;
            this.bloodType = bloodType;
            this.CreditId = creditId;
            this.phone = phone;
            this.birth = date;
            this.fraction = fra;
            this.cash = money;
        }
        public void setId(string newId)
        {
            this.id = newId;
        }
        public string getId()
        {
            return this.id;
        }
        public void setName(string newName)
        {
            this.name = newName;
        }
        public string getName()
        {
            return this.name;
        }
        public void setSex(string newSex)
        {
            this.sex = newSex;
        }
        public string getSex(){
            return this.sex;
        }
        public void setAddress(string newAddress)
        {
            this.address = newAddress;
        }
        public string getAddress()
        {
            return this.address;
        }
        public void setBlood(string newBlood)
        {
            this.bloodType = newBlood;
        }
        public string getBlood()
        {
            return this.bloodType;
        }
        public void setCreditId(string newCreditId)
        {
            this.CreditId = newCreditId;
        }
        public string getCreditId()
        {
            return this.CreditId;
        }
        public void setPhone(string newPhone)
        {
            this.phone = newPhone;
        }
        public string getPhone()
        {
            return this.phone;
        }
        public void setBirth(string date)
        {
            this.birth = date;
        }
        public string getBirth()
        {
            return this.birth;
        }
        public void setFraction(double fraction)
        {
            this.fraction = fraction;
        }
        public double getFraction()
        {
            return this.fraction;
        }
        public void setCash(int money){
            this.cash = money;
        }
        public int getCash(){
            return this.cash;
        }
    }
}