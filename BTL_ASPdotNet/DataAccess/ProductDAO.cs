﻿using System;
using System.Collections.Generic;
using System.Linq;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class ProductDAO : IProductDAO
    {
        StoreOlineEntities db = new StoreOlineEntities();
        public bool Add(Product obj)
        {
            db = new StoreOlineEntities();
            var tmp = db.Products.SingleOrDefault(t => t.ProductID == obj.ProductID);
            if (tmp != null) return false;
            db.Products.Add(obj);
            db.SaveChanges();
            return true;
        }

        public Product Delete(Product obj)
        {
            db = new StoreOlineEntities();
            var tmp = db.Products.SingleOrDefault(t => t.ProductID == obj.ProductID);
            db.Products.Remove(tmp);
            db.SaveChanges();
            return tmp;
        }

        public Product FindByAliases(string aliases)
        {
            db = new StoreOlineEntities();
            return db.Products.SingleOrDefault(p => p.Aliases.Trim() == aliases);
        }

        public Product FindByID(object ID)
        {
            db = new StoreOlineEntities();
            return db.Products.SingleOrDefault(p => p.ProductID == (int)ID);
        }

        public IEnumerable<Product> GetAll()
        {
            db = new StoreOlineEntities();
            return db.Products;
        }

        public IEnumerable<Product> GetByCategory(string category)
        {
            db = new StoreOlineEntities();
            var result = db.Products.Where(p =>
                            p.GroupProduct.Category.Aliases.Trim() == category ||
                            p.GroupProduct.Aliases.Trim() == category);
            return result;
        }

        public IEnumerable<Product> TopSeller()
        {
            db = new StoreOlineEntities();
            var result = db.Products.OrderByDescending(p => p.OrderDets.Sum(o => o.Quantity));
            return result;
        }

        public bool Update(Product obj)
        {
            db = new StoreOlineEntities();
            var tmp = db.Products.SingleOrDefault(t => t.ProductID == obj.ProductID);
            if (tmp == null) return false;
            db.Products.Attach(obj);
            db.Entry(obj).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return true;
        }
    }
}