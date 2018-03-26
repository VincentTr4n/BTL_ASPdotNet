
namespace BTL_ASPdotNet.DataAccess
{
    using Models;
    using System.Collections.Generic;
    public interface IProductDAO : ICommonDAO<Product>
    {
        Product FindByAliases(string aliases);
        IEnumerable<Product> TopSeller();
        IEnumerable<Product> GetByCategory(string category);
    }
}
