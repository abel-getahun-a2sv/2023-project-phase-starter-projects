using Moq;
using SocialSync.Application.Contracts.Persistence;
using SocialSync.Domain.Entities;

namespace SocialSync.Application.Tests.Mocks;

public class MockUserRepository
{
    public static Mock<IUserRepository> GetUserRepository()
    {
        var users = new List<User>
        {
            new User
            {
                FirstName = "User1",
                LastName = "User1",
                Email = "User1@gmail.com",
                Username = "User1",
                Password = "User1",
                Phone = "1234567890",
                Id = 1
            },
            new User
            {
                FirstName = "User2",
                LastName = "User2",
                Email = "User2@gmail.com",
                Username = "User2",
                Password = "User2",
                Phone = "1234567890",
                Id = 2
            },
            new User
            {
                FirstName = "User3",
                LastName = "User3",
                Email = "user3@gmail.com",
                Username = "User3",
                Password = "User3",
                Phone = "1234567890",
                Id = 3
            }
        };

        var userRepository = new Mock<IUserRepository>();

        userRepository
            .Setup(repo => repo.GetAsync(It.IsAny<int>()))
            .ReturnsAsync((int id) => users.FirstOrDefault(u => u.Id == id));

        userRepository.Setup(repo => repo.GetAsync()).ReturnsAsync(users);

        userRepository
            .Setup(repo => repo.AddAsync(It.IsAny<User>()))
            .ReturnsAsync(
                (User user) =>
                {
                    user.Id = users.Count + 1;
                    users.Add(user);
                    return user;
                }
            );

        userRepository
            .Setup(repo => repo.UpdateAsync(It.IsAny<User>()))
            .Callback(
                (User user) =>
                {
                    var index = users.FindIndex(u => u.Id == user.Id);
                    if (index >= 0)
                    {
                        users[index] = user;
                    }
                }
            );

        userRepository
            .Setup(repo => repo.DeleteAsync(It.IsAny<User>()))
            .Callback(
                (User user) =>
                {
                    var index = users.FindIndex(u => u.Id == user.Id);
                    if (index >= 0)
                    {
                        users.RemoveAt(index);
                    }
                }
            );

        userRepository
            .Setup(repo => repo.UsernameExists(It.IsAny<string>()))
            .ReturnsAsync((string username) => users.Any(u => u.Username == username));

        userRepository
            .Setup(repo => repo.EmailExists(It.IsAny<string>()))
            .ReturnsAsync((string email) => users.Any(u => u.Email == email));

        userRepository
            .Setup(repo => repo.GetByUsername(It.IsAny<string>()))
            .ReturnsAsync((string username) => users.FirstOrDefault(u => u.Username == username));

        return userRepository;
    }
}
