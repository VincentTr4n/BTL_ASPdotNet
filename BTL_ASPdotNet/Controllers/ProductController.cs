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
        static int size = 12;
        public ViewResult ProductList(int page = 1,string state = "all", string category = "")
        {
            ViewBag.Randomize = ProductService.GetRandomize();

            // Hiển thị sản phẩm theo loại
            if (state == "view" && category != "")
            {
                ViewBag.Name = "Category";
                ViewBag.State = state;
                ViewBag.Category = category;
                ViewBag.MenuLeft = CategoryService.GetByAliases(category);
                return View(ProductService.Paging(page, size, ProductService.GetByCategory(category)));
            }

            // Hiển thị tất cả sản phẩm
            ViewBag.Category = "";
            ViewBag.MenuLeft = CategoryService.GetByAliases("all");
            if (state == "all")
            {
                ViewBag.Name = "All Products";
                ViewBag.State = state;
                return View(ProductService.Paging(page, size, ProductService.GetAll()));
            }

            // Hiển thị các sản phẩm trong top sell
            ViewBag.Name = "Top Seller";
            ViewBag.State = state;
            return View(ProductService.Paging(page, size, ProductService.TopSeller()));
        }

        public ViewResult ProductDetail(string aliases,int ID)
        {
            var model = ProductService.FindByID(ID);
            ViewBag.MenuLeft = CategoryService.GetByAliases(aliases);
            ViewBag.Randomize = ProductService.GetRandomize();
            return View(model);
        }

    }
}