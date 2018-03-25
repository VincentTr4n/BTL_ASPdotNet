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
        public static ProductsViewModel Paging(int page, int size, IEnumerable<Product> all)
            => new ProductsViewModel()
            {
                products = all.Skip((page - 1)*size).Take(size),
                pagingInfo = new PagingInfo()
                {
                    CurrentPage = page,
                    ItemPerPage = size,
                    TotalItems = all.Count()
                }
            };
    }
}