using BTL_ASPdotNet.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTL_ASPdotNet.Controllers
{
    public class ProductController : Controller
    {
        public ViewResult ProductList()
        {
            ViewBag.Name = "New Products";
            var model = ProductService.GetAll().Take(9);
            return View(model);
        }
    }
}