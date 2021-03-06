using CoreServices.Models;
using CoreServices.ViewModel;

namespace CoreServices.Repository
{
    public interface IPostRepository
    {
        Task<List<Category>> GetCategories();
        Task<List<PostViewModel>> GetPosts();
        Task<PostViewModel> GetPost(int? postId);
        Task<int> AddPost(Post post);
        Task<int> DeletePost(int? postId);
        Task UpdatePost(Post post);
    }
}
