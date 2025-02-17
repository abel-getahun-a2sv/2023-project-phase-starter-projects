﻿
namespace Domain.Entities
{
    public class Comment
    {
        public int Id { get; set; } 
        public required string Content { get; set; }
        //The User That Commented
        public required int UserId { get; set; }
        public required int PostId { get; set; }
        public required int CreatedAt{ get; set; }
        public required int UpdatedAt{ get; set; }
        
        //Navigation Property
        public virtual User? User{ get; set; }
        public virtual Post? Post{ get; set; }
    }
}
