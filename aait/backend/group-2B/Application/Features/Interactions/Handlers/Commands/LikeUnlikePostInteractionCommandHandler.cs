using AutoMapper;
using SocialSync.Application.Features.Interactions.Requests.Commands;
using SocialSync.Application.Common.Responses;
using MediatR;
using SocialSync.Domain.Entities;
using SocialSync.Application.Contracts.Persistence;
using SocialSync.Application.DTOs.InteractionDTOs.Validator;

namespace SocialSync.Application.Features.Interactions.Handlers.Commands;

public class LikeUnlikePostInteractionCommandHandler
    : IRequestHandler<LikeUnlikePostInteractionCommand, CommonResponse<int>>
{
    private readonly IMapper _mapper;
    private readonly IUnitOfWork _unitOfWork;

    public LikeUnlikePostInteractionCommandHandler(
        IMapper mapper,
        IUnitOfWork unitOfWork
    )
    {
        _unitOfWork = unitOfWork;
        _mapper = mapper;
    }

    public async Task<CommonResponse<int>> Handle(
        LikeUnlikePostInteractionCommand command,
        CancellationToken cancellationToken
    )
    {
        var response = new BaseCommandResponse();
        var validator = new LikeDtoValidator(_unitOfWork);

        var validationResult = await validator.ValidateAsync(command.LikeDto);

        if (!validationResult.IsValid)
        {
            return CommonResponse<int>.Failure("validation error");
        }
        else
        {
            var createdInteraction =
                await _unitOfWork.InteractionRepository.LikeUnlikeInteractionAsync(
                    _mapper.Map<Interaction>(command.LikeDto)
                );
            if (await _unitOfWork.SaveAsync() > 0)
            {
                return CommonResponse<int>.Success(createdInteraction.Id);
            }
            else
            {
                return CommonResponse<int>.Failure("Failed to like/unlike post");
            }
        }
    }
}