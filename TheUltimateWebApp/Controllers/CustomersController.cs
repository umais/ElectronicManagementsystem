using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ElectronicManagementSystem.BusinessObjects;

namespace TheUltimateWebApp.Controllers
{
    public class CustomersController : ApiController
    {
        public Customer getCustomer(int id)
        {
            Customer c = new Customer { FirstName = "Amir", LastName = "Saleem" };

            return c;
        }

        public void postCustomer([FromBody] Customer c)
        {
            Customer newcustomer = c;


        }
        
    }
}
