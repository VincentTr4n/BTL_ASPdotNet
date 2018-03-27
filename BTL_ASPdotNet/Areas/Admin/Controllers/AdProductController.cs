using BTL_ASPdotNet.Models;
using BTL_ASPdotNet.Services;
using System;
using System.Collections.Generic;
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
            ViewBag.Text = table_search;
            if(table_search == "") return View(ProductService.Paging(page, pageSize, ProductService.GetAll()));
            return View(ProductService.Paging(page, pageSize, ProductService.GetByText(table_search.ToLower())));
        }

        public ViewResult Create()
        {
            return View("Edit", new Product());
        }

        public ViewResult Edit(int ProductID)
        {
            return View(ProductService.FindByID(ProductID));
        }

        [HttpPost]
        public ActionResult Edit(Product product)
        {
            if (ModelState.IsValid)
            {
                ProductService.SaveChanges(product);
                TempData["message"] = product.ProductName + " has been saved";
                return RedirectToAction("Products");
            }
            return View(product);
        }

        [HttpPost]
        public ActionResult Delete(int ProductID)
        {
            var product = ProductService.FindByID(ProductID);
            var tmp = ProductService.Delete(product);
            if (tmp != null) TempData["message"] = tmp.ProductName + " was deleted";
            return RedirectToAction("Products");
        }
    }
}