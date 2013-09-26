using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ElectronicManagementSystem.BusinessObjects;
namespace ElectronicManagementSystem.Repositories
{
    interface ICustomerRepository
    {

        bool Insert(Customer c);
        bool Update(Customer UpdatedCustomer);
        bool DeleteCustomer(int id);
        Customer getCustomer(int id);
        List<Customer> getCustomers();
    }
}
