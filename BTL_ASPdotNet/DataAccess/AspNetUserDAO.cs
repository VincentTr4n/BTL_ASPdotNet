using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class AspNetUserDAO : IAspNetUserDAO
    {
        public bool Add(AspNetUser obj)
        {
            throw new NotImplementedException();
        }

        public AspNetUser Delete(AspNetUser obj)
        {
            throw new NotImplementedException();
        }

        public AspNetUser FindByID(object ID)
        {
            throw new NotImplementedException();
        }

        public AspNetUser FindByName(string name)
        {
            using(StoreOlineEntities db = new StoreOlineEntities())
            {
                return db.AspNetUsers.SingleOrDefault(u => u.UserName.Trim() == name);
            }
        }

        public IEnumerable<AspNetUser> GetAll()
        {
            throw new NotImplementedException();
        }

        public bool Update(AspNetUser obj)
        {
            throw new NotImplementedException();
        }
    }
}