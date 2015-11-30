//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SignalRUpdates.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserProfessionalQualification
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string CompanyName { get; set; }
        public System.DateTime StartDate { get; set; }
        public System.DateTime EndDate { get; set; }
        public int Designation { get; set; }
        public decimal Salary { get; set; }
        public bool IsCurrentEmployee { get; set; }
        public int CurrentIndustry { get; set; }
        public string UserRole { get; set; }
        public string Skill { get; set; }
        public bool Active { get; set; }
        public System.DateTime CreationDate { get; set; }
        public Nullable<System.DateTime> ModificationDate { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual IndustryType IndustryType { get; set; }
        public virtual User User { get; set; }
    }
}