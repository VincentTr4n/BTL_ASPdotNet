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