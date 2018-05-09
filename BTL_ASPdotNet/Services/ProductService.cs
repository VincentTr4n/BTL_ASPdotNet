using BTL_ASPdotNet.DataAccess;
using BTL_ASPdotNet.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Helpers;

namespace BTL_ASPdotNet.Services
{
    public class ProductService
    {
        static IProductDAO productDAO = new ProductDAO();
        static RecommendedEngine recommend = new RecommendedEngine();

        public static IEnumerable<Product> GetAll() => productDAO.GetAll();

        public static Product FindByAliases(string aliases) => productDAO.FindByAliases(aliases);

        public static Product FindByID(int ID) => productDAO.FindByID(ID);

        public static IEnumerable<Product> LatestProducts() => productDAO.GetAll().OrderBy(p => p.DateEnter).Take(8);

        public static IEnumerable<Product> FeatureProducts(string userID)
        {
            var tmp = productDAO.GetAll().OrderByDescending(p => p.Price).Take(8);
            if (String.IsNullOrEmpty(userID)) return tmp;
            var list = recommend.GetPredict(userID);
            if (list == null) return tmp;
            List<Product> result = new List<Product>();
            foreach (var item in list) result.Add(productDAO.FindByID(item));
            if (result.Count > 8) return result.Take(8);
            result.AddRange(tmp.Take(8 - result.Count));
            return result;
            
        }

        public static void Update(Order order) => recommend.Update(order);

        public static IEnumerable<Product> TopSeller() => productDAO.TopSeller();

        public static IEnumerable<Product> GetByCategory(string category) => productDAO.GetByCategory(category);

        public static IEnumerable<Product> GetRelated(int groupID) => GetAll().Where(p => p.GroupID == groupID).Take(6);

        public static IEnumerable<Product> SearchProducts(string text) => GetAll().Where(p => p.Aliases.ToLower().Contains(text) || p.ProductName.ToLower().Contains(text));

        public static IEnumerable<Product> GetByText(string text)
            => productDAO.GetAll().Where(p => p.ProductName.ToLower().Contains(text) || p.Aliases.ToLower().Contains(text));

        public static bool SaveChanges(Product product)
        {
            var tmp = productDAO.FindByID(product.ProductID);
            if(tmp == null)
            {
                //int id = GetAll().Max(p => p.ProductID);
                //product.ProductID = id + 1;
                return productDAO.Add(product);
            }
            else return productDAO.Update(product);
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