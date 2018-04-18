using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class CategoryDAO : ICategoryDAO
    {
        StoreOlineEntities db = new StoreOlineEntities();
        public bool Add(Category obj)
        {
            throw new NotImplementedException();
        }

        public Category Delete(Category obj)
        {
            throw new NotImplementedException();
        }

        public Category FindByID(object ID)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Category> GetAll()
        {
            db = new StoreOlineEntities();
            return db.Categories;
        }

        public bool Update(Category obj)
        {
            throw new NotImplementedException();
        }
    }
}