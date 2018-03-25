using System;
using System.Collections.Generic;
using System.Linq;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class ProductDAO : IProductDAO
    {
        public bool Add(Product obj)
        {
            throw new NotImplementedException();
        }

        public Product Delete(Product obj)
        {
            throw new NotImplementedException();
        }

        public Product FindByID(object ID)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Product> GetAll()
        {
            StoreOlineEntities db = new StoreOlineEntities();
            return db.Products;
        }

        public bool Update(Product obj)
        {
            throw new NotImplementedException();
        }
    }
}