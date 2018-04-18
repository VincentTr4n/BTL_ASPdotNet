using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class OrderDAO : IOrderDAO
    {
        StoreOlineEntities db = new StoreOlineEntities();
        public bool Add(Order obj)
        {
            db = new StoreOlineEntities();
            var tmp = db.Orders.SingleOrDefault(o => o.OrderID == obj.OrderID);
            if (tmp != null) return false;
            db.Orders.Add(obj);
            db.SaveChanges();
            return true;
        }

        public Order Delete(Order obj)
        {
            db = new StoreOlineEntities();
            var tmp = db.Orders.SingleOrDefault(o => o.OrderID == obj.OrderID);
            if (tmp != null) db.Orders.Remove(obj);
            db.SaveChanges();
            return tmp;
        }

        public Order FindByID(object ID)
        {
            db = new StoreOlineEntities();
            return db.Orders.SingleOrDefault(o => o.OrderID == (int)ID);
        }

        public IEnumerable<Order> GetAll()
        {
            db = new StoreOlineEntities();
            return db.Orders;
        }

        public bool Update(Order obj)
        {
            db = new StoreOlineEntities();
            if (db.Orders.SingleOrDefault(o => o.OrderID == obj.OrderID) == null) return false;
            db.Orders.Attach(obj);
            db.Entry(obj).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return true;
        }
    }
}