﻿
namespace BTL_ASPdotNet.DataAccess
{
    public interface IAspNetUserDAO : ICommonDAO<Models.AspNetUser>
    {
        Models.AspNetUser FindByName(string name);
    }
}
