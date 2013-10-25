using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ElectronicManagementSystem.DataAccess;
using ElectronicManagementSystem.BusinessObjects;
namespace ElectronicManagementSystem.Repositories
{
    public class InsuranceTypeSQLRepo
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

        public bool updateInsurance(Insurance_Type updated){
             Insurance_Type existingRecord= (from u in dbContext.Insurance_Type where u.InsuranceID == updated.InsuranceID select u).FirstOrDefault() ;

             existingRecord.InsuranceName = updated.InsuranceName;
             existingRecord.InsurancePhone = updated.InsurancePhone;
             existingRecord.InsuranceWebsite = updated.InsuranceWebsite;
             existingRecord.InsuranceAddress = updated.InsuranceAddress;

             dbContext.SaveChanges();

             return true;
        }
    }
}
