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
    
    public partial class Lkp_FriendShipStatus
    {
        public Lkp_FriendShipStatus()
        {
            this.Friends = new HashSet<Friend>();
        }
    
        public int Id { get; set; }
        public string Status { get; set; }
    
        public virtual ICollection<Friend> Friends { get; set; }
    }
}
