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
        static IGroupDAO groupDAO = new GroupDAO();

        public static IEnumerable<Category> GetAll() => categoryDAO.GetAll();
        public static Dictionary<string,string> GetByAliases(string aliases)
        {
            Dictionary<string, string> result = new Dictionary<string, string>();
            if (aliases == "all") GetAll().ToList().ForEach(item => result.Add(item.Aliases, item.CategoryName));
            else groupDAO.GetListByAliases(aliases).ToList().ForEach(item => result.Add(item.Aliases, item.GroupName));
            return result;
        }
        public static Category FindByAliases(string aliase) => GetAll().SingleOrDefault(t => t.Aliases.Trim() == aliase.Trim());
    }
}