using SocialSync.Domain.Common;

namespace SocialSync.Domain.Entities;

public enum NotificationType
{
    Like,
    Follow
}
public class Notification : BaseEntity
{
    public int SenderId { get; set; }
    public int RecepientId { get; set; } 
    public NotificationType NotificationType{get; set;}

    public virtual User Sender {get; set;} = null!;
    public virtual User Recepient {get; set;} = null!;

    
}
