using Application.DTO.CommentDTO;
using Application.DTO.FollowDTO;
using Application.DTO.Like;
using Application.DTO.Post;
using Application.DTO.UserDTO;
using Domain.Entities;

namespace Application.Profiles;

public class MappingProfile : AutoMapper.Profile
{

    public MappingProfile(){
        
        CreateMap<Post, PostDto>().ReverseMap();
        CreateMap<Post, UpdatePostDto>().ReverseMap();
        CreateMap<Post, CreateUserDTO>().ReverseMap();
        
        CreateMap<User, UserDto>().ReverseMap();
        CreateMap<User, CreateUserDTO>().ReverseMap();
        CreateMap<User, UpdatePostDto>().ReverseMap();
        CreateMap<User, UserProfileDTO>().ReverseMap();

        CreateMap<Follow, FollowDto>().ReverseMap();
        CreateMap<Like, LikedDto>().ReverseMap();
        CreateMap<CreateUserDTO, User>().ReverseMap();
        
        // Comment
        CreateMap<Comment, CommentDto>().ReverseMap();
        CreateMap<CreateCommentDto, Comment>().ReverseMap();
        CreateMap<UpdateCommentDto, Comment>().ReverseMap();
        
        
        
    }
    
}