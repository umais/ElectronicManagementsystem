﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using ElectronicManagementSystem.BusinessObjects;
namespace ElectronicManagementSystem.DataAccess
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ScheduleDBEntities : DbContext
    {
        public ScheduleDBEntities()
            : base("name=ScheduleDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Appointment> Appointments { get; set; }
        public DbSet<Customer_Insurance> Customer_Insurance { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Insurance_Type> Insurance_Type { get; set; }
        public DbSet<Professional> Professionals { get; set; }
        public DbSet<Professional_Schedule> Professional_Schedule { get; set; }
        public DbSet<Professional_Type> Professional_Type { get; set; }
        public DbSet<Status_Type> Status_Type { get; set; }
    }
}
