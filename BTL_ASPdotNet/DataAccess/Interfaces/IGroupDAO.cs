
namespace BTL_ASPdotNet.DataAccess
{
    using System.Collections.Generic;
    public interface IGroupDAO : ICommonDAO<Models.GroupProduct>
    {
        IEnumerable<Models.GroupProduct> GetListByAliases(string aliases);
    }
}
