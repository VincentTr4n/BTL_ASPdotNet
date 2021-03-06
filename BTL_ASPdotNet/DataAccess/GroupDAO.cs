﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class GroupDAO : IGroupDAO
    {
        StoreOlineEntities db = new StoreOlineEntities();
        public bool Add(GroupProduct obj)
        {
            throw new NotImplementedException();
        }

        public GroupProduct Delete(GroupProduct obj)
        {
            throw new NotImplementedException();
        }

        public GroupProduct FindByID(object ID)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<GroupProduct> GetAll()
        {
            db = new StoreOlineEntities();
            return db.GroupProducts;
        }

        public IEnumerable<GroupProduct> GetListByAliases(string aliases)
        {
            db = new StoreOlineEntities();
            var category = db.Categories.SingleOrDefault(c => c.Aliases.Trim() == aliases);
            if (category == null)
            {
                var group = db.GroupProducts.SingleOrDefault(g => g.Aliases.Trim() == aliases);
                return db.Categories.SingleOrDefault(c => c.CategoryID == group.CategoryID).GroupProducts;
            }
            return category.GroupProducts;
        }

        public bool Update(GroupProduct obj)
        {
            throw new NotImplementedException();
        }
    }
}