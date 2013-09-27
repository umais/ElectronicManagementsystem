using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ElectronicManagementSystem.DataAccess;
using ElectronicManagementSystem.BusinessObjects;
namespace ElectronicManagementSystem.Repositories
{
    public class InsuranceTypeSQLRepo:I_InsuranceTypeRepo
    {
        ScheduleDBEntities dbContext = new ScheduleDBEntities();

        public List<Insurance_Type> getInsuranceTypes()
        {
            return dbContext.Insurance_Type.ToList();

        }

        public bool AddInsuranceType(Insurance_Type newInsurance)
        {
            bool result = false;
            dbContext.Insurance_Type.Add(newInsurance);
            dbContext.SaveChanges();
            result = true;
            return result;
        }
    }
}
