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
    
    public partial class UserVideo
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string VideoResumeUrl { get; set; }
        public string ArtWorkYouTube1 { get; set; }
        public string ArtWorkYouTube2 { get; set; }
        public string ArtWorkYouTube3 { get; set; }
        public string ArtWorkYouTube4 { get; set; }
        public string ArtWorkYouTube5 { get; set; }
        public string ArtWorkUrl1 { get; set; }
        public string ArtWorkUrl2 { get; set; }
        public string ArtWorkUrl3 { get; set; }
        public bool Active { get; set; }
        public System.DateTime CreationDate { get; set; }
        public Nullable<System.DateTime> ModificationDate { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual User User { get; set; }
    }
}
