using BTL_ASPdotNet.Models;
using BTL_ASPdotNet.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTL_ASPdotNet.Areas.Admin.Controllers
{
    public class AdProductController : Controller
    {
        static int pageSize = 10;
        public ActionResult Products(int page = 1, string table_search = "")
        {
            var temp = ProductService.GetAll();
            ViewBag.Text = table_search;
            if (table_search == "") return View(ProductService.Paging(page, pageSize, temp));
            return View(ProductService.Paging(page, pageSize, ProductService.GetByText(table_search.ToLower())));
        }

        public ViewResult Create(string returnUrl)
        {
            ViewBag.Mode = "Create";
            ViewBag.ReturnUrl = returnUrl;
            return View("Edit", new Product());

        }

        public ViewResult Edit(int ProductID, string returnUrl)
        {
            using (StoreOlineEntities db2 = new StoreOlineEntities())
            {
                var temp = db2.Products.SingleOrDefault(t => t.ProductID == ProductID);
                ViewBag.Mode = "Edit";
                ViewBag.ReturnUrl = returnUrl;
                return View(temp);
            }

        }

        [HttpPost]
        public ActionResult Edit(Product product)
        {
            if (ModelState.IsValid)
            {
                product.DateEnter = DateTime.Now;
                using (StoreOlineEntities db = new StoreOlineEntities())
                {
                    var temp = db.Products.Where(t => t.ProductID == product.ProductID).SingleOrDefault();
                    if (temp == null)
                    {
                        db.Products.Add(product);
                        db.SaveChanges();
                        TempData["message"] = product.ProductName + " has been added";
                        return RedirectToAction("Products");
                    }
                    else
                    {
                        using (StoreOlineEntities db1 = new StoreOlineEntities())
                        {
                            db1.Entry(product).State = EntityState.Modified;
                            db1.SaveChanges();
                            TempData["message"] = product.ProductName + " has been saved";
                            return RedirectToAction("Products");
                        }

                    }
                }
            }
            return View(product);
        }

        public ActionResult Delete(int ProductID)
        {
            var product = ProductService.FindByID(ProductID);
            var tmp = ProductService.Delete(product);
            if (tmp != null) TempData["message"] = tmp.ProductName + " was deleted";
            return RedirectToAction("Products");
        }


    }
}