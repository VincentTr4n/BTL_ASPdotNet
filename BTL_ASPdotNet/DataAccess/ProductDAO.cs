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

        public Product FindByAliases(string aliases)
        {
            using(StoreOlineEntities db = new StoreOlineEntities())
            {
                return db.Products.SingleOrDefault(p => p.Aliases.Trim() == aliases);
            }
        }

        public Product FindByID(object ID)
        {
            using (StoreOlineEntities db = new StoreOlineEntities())
            {
                return db.Products.SingleOrDefault(p => p.ProductID == (int)ID);
            }
        }

        public IEnumerable<Product> GetAll()
        {
            StoreOlineEntities db = new StoreOlineEntities();
            return db.Products;
        }

        public IEnumerable<Product> GetByCategory(string category)
        {
            StoreOlineEntities db = new StoreOlineEntities();
            var result = db.Products.Where(p => 
                            p.GroupProduct.Category.Aliases.Trim() == category ||
                            p.GroupProduct.Aliases.Trim() == category);
            return result;
        }

        public IEnumerable<Product> TopSeller()
        {
            StoreOlineEntities db = new StoreOlineEntities();
            var result = db.Products.OrderByDescending(p => p.OrderDets.Sum(o => o.Quantity));
            return result;
        }

        public bool Update(Product obj)
        {
            throw new NotImplementedException();
        }
    }
}