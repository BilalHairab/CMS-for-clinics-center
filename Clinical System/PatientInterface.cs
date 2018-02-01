using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinical_System
{
    interface PatientInterface
    {
        string login(string id);
        int count();
        string insert(Patient pn);
        Patient getCurrentPatientInfo(string id);
        string addMedicalHistory(MedicalHistory mh);
        string updateFraction(string id, double fraction);
    }
}
