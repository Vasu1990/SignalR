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
    
    public partial class UserResume
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public bool IsVisaHolder { get; set; }
        public bool IsForeignWorker { get; set; }
        public string TotalExperience { get; set; }
        public string ResumePath { get; set; }
        public string CoverLetterPath { get; set; }
        public string ResumeContent { get; set; }
        public string CoverLetterContent { get; set; }
    
        public virtual User User { get; set; }
    }
}
