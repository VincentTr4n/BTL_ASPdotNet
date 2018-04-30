using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTL_ASPdotNet.Services;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.Areas.Admin.Controllers
{
    public class OrderController : Controller
    {
        static int pageSize = 10;
        public ActionResult Index(int page = 1, string state = "NEW")
        {
            var list = OrderService.GetAll().Where(t => t.IsShipping == false).OrderByDescending(t => t.OrderDate);
            ViewBag.State = state;
            if(state == "NEW") return View(OrderService.Paging(page, pageSize, list));
            return View(OrderService.Paging(page, pageSize, OrderService.GetAll().OrderByDescending(t => t.OrderDate)));
        }

        public ActionResult Edit(int OrderID, string state)
        {
            using (StoreOlineEntities db = new StoreOlineEntities())
            {
                var tmp = db.Orders.SingleOrDefault(t => t.OrderID == OrderID);
                if (tmp != null)
                {
                    tmp.IsShipping = true;
                    tmp.ShippingDate = DateTime.Now;
                    db.SaveChanges();
                    TempData["message"] = tmp.OrderID + " at " + tmp.OrderDate.ToString("dd/MM/yyyy") + " was accepted";
                }
            }
            return RedirectToAction("Index", new { state = state });
        }

        public ActionResult Delete(int OrderID, string state)
        {
            using(StoreOlineEntities db = new StoreOlineEntities())
            {
                var tmp = db.Orders.SingleOrDefault(t => t.OrderID == OrderID);
                if(tmp != null)
                {
                    db.OrderDets.RemoveRange(tmp.OrderDets);
                    db.Orders.Remove(tmp);
                    db.SaveChanges();
                    TempData["message"] = tmp.OrderID + " at " + tmp.OrderDate.ToString("dd/MM/yyyy") + " was deleted";
                }
            }
            return RedirectToAction("Index", new { state = state });
        }
    }
}