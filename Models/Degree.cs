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
    
    public partial class Degree
    {
        public Degree()
        {
            this.UserQualifications = new HashSet<UserQualification>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<UserQualification> UserQualifications { get; set; }
    }
}
