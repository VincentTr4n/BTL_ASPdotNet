using BTL_ASPdotNet.DataAccess;
using BTL_ASPdotNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_ASPdotNet.Services
{
    public class CategoryService
    {
        static ICategoryDAO categoryDAO = new CategoryDAO();
        public static IEnumerable<Category> GetAll() => categoryDAO.GetAll();
    }
}