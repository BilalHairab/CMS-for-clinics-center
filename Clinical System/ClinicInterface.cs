using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinical_System
{
    interface ClinicInterface
    {
        string insert(Clinic cl);
        List<Clinic> getClinics();
        List<Doctor> getClinicDoctors(string code);
    }
}
