using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinical_System
{
    interface DoctorInterface
    {
        string insert(Doctor dc);
        string login(string id);
    }
}
