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
    
    public partial class Professional_Schedule
    {
        public int Professional_ID { get; set; }
        public System.DateTime StartTime { get; set; }
        public Nullable<System.DateTime> EndTime { get; set; }
        public Nullable<short> TimeIntervalMinutes { get; set; }
    
        public virtual Professional Professional { get; set; }
    }
}