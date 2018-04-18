using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class OrderDetDAO : IOrderDetDAO
    {
        StoreOlineEntities db = new StoreOlineEntities();
        public bool Add(OrderDet obj)
        {
            db = new StoreOlineEntities();
            var tmp = db.OrderDets.SingleOrDefault(o => o.OrderID == obj.OrderID && o.ProductID == obj.ProductID);
            if (tmp != null) return false;
            db.OrderDets.Add(obj);
            db.SaveChanges();
            return true;
        }

        public OrderDet Delete(OrderDet obj)
        {
            throw new NotImplementedException();
        }

        public OrderDet FindByID(object ID)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<OrderDet> GetAll()
        {
            throw new NotImplementedException();
        }

        public bool Update(OrderDet obj)
        {
            throw new NotImplementedException();
        }
    }
}