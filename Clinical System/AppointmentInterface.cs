using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinical_System
{
    interface AppointmentInterface
    {
        //List<string> getTimes(string shift, string date, string code);
        List<string> getTimes(string date, string did,string shift);
        string addAppointment(Appointment app,int newCash);
    }
}
