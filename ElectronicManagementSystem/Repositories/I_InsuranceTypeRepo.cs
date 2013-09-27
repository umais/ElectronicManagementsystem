using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ElectronicManagementSystem.BusinessObjects;
namespace ElectronicManagementSystem.Repositories
{
    interface I_InsuranceTypeRepo
    {
        List<Insurance_Type> getInsuranceTypes();
        bool AddInsuranceType(Insurance_Type newInsurance);
    }
}
