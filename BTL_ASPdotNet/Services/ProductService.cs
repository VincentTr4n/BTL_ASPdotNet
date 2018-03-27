using BTL_ASPdotNet.DataAccess;
using BTL_ASPdotNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_ASPdotNet.Services
{
    public class ProductService
    {
        static IProductDAO productDAO = new ProductDAO();

        public static IEnumerable<Product> GetAll() => productDAO.GetAll();

        public static Product FindByAliases(string aliases) => productDAO.FindByAliases(aliases);

        public static Product FindByID(int ID) => productDAO.FindByID(ID);

        public static IEnumerable<Product> LatestProducts() => productDAO.GetAll().OrderBy(p => p.DateEnter).Take(8);

        public static IEnumerable<Product> FeatureProducts() => productDAO.GetAll().OrderByDescending(p => p.Price).Take(8);

        public static IEnumerable<Product> TopSeller() => productDAO.TopSeller();

        public static IEnumerable<Product> GetByCategory(string category) => productDAO.GetByCategory(category);

        public static IEnumerable<Product> GetRelated(int groupID) => GetAll().Where(p => p.GroupID == groupID).Take(6);

        public static IEnumerable<Product> GetByText(string text)
            => productDAO.GetAll().Where(p => p.ProductName.ToLower().Contains(text) || p.Aliases.ToLower().Contains(text));

        public static void SaveChanges(Product product)
        {
            var tmp = productDAO.FindByID(product.ProductID);
            if(tmp == null)
            {
                int id = GetAll().Max(p => p.ProductID);
                product.ProductID = id + 1;
                productDAO.Add(product);

            }
            else productDAO.Update(product);
        }

        public static Product Delete(Product product) => productDAO.Delete(product);

        public static IEnumerable<Product> GetRandomize()
        {
            var list = GetAll();
            Random rnd = new Random();
            int cnt = list.Count();
            int max = cnt - 5;
            return list.Skip(rnd.Next(1, max)).Take(4);
        }

        public static ProductsViewModel Paging(int page, int size, IEnumerable<Product> all)
            => new ProductsViewModel()
            {
                products = all.Skip((page - 1) * size).Take(size),
                pagingInfo = new PagingInfo()
                {
                    CurrentPage = page,
                    ItemPerPage = size,
                    TotalItems = all.Count()
                }
            };
    }
}