//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ElectronicManagementSystem.BusinessObjects
{
    using System;
    using System.Collections.Generic;
    
    public partial class Insurance_Type
    {
        public Insurance_Type()
        {
            this.Customer_Insurance = new HashSet<Customer_Insurance>();
        }
    
        public int InsuranceID { get; set; }
        public string InsuranceName { get; set; }
        public string InsuranceAddress { get; set; }
        public string InsurancePhone { get; set; }
        public string InsuranceWebsite { get; set; }
    
        public virtual ICollection<Customer_Insurance> Customer_Insurance { get; set; }
    }
}