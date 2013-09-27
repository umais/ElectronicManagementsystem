using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ElectronicManagementSystem.BusinessObjects;
using ElectronicManagementSystem.Repositories;
namespace TheUltimateWebApp.Controllers
{
    public class InsuranceTypeController : ApiController
    {
        InsuranceTypeSQLRepo InsuranceRepo = new InsuranceTypeSQLRepo();

        public List<Insurance_Type> getInsuranceTypes()
        {
            return InsuranceRepo.getInsuranceTypes();
        }

        [HttpPost]
        public void addInsurance([FromBody] Insurance_Type newRecord){

            InsuranceRepo.AddInsuranceType(newRecord);
        }
    }
}
