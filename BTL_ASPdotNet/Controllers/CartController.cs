using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTL_ASPdotNet.Models;
using BTL_ASPdotNet.Services;
using System.Diagnostics;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using BTL_ASPdotNet.Helpers;
using BTL_ASPdotNet.DataAccess;

namespace BTL_ASPdotNet.Controllers
{
    public class CartController : Controller
    {
        
        public ViewResult Index(Cart cart, string returnUrl)
        {
            ViewBag.Name = "SHOPPING CART";
            return View(new CartIndexViewModel() { cart = cart, returnUrl = returnUrl });
        }

        public PartialViewResult Summary(Cart cart)
        {
            return PartialView(cart);
        }

        public ViewResult CheckOut()
        {
            return View(new Order());
        }

        [HttpPost]
        public ViewResult CheckOut(Cart cart, Order order)
        {
            if (cart.Lines.Count() == 0) ModelState.AddModelError("", "Sorry, your cart isempty!");

            if (ModelState.IsValid)
            {
                ApplicationUser user = HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(User.Identity.GetUserId());
                if (user != null) order.UserID = user.Id;
                else order.UserID = "online";
                OrderService.Add(cart,order);
                ProductService.Update(order);

                EmailHelper.SendMail(order.Email, "New order submitted!", CommonHelpers.FormatCart(cart, order));
                cart.Clear();
                return View("Completed");
            }
            return View(order);
        }

        public ActionResult AddToCart(Cart cart,int ProductID, int quantity, string returnUrl)
        {
            var tmp = ProductService.FindByID(ProductID);
            if (tmp != null)
            {
                cart.Add(tmp, quantity);
                Debug.Print(tmp.ProductID + " - " + tmp.ProductName);
            }
            

            return RedirectToLocal(returnUrl);
        }

        public RedirectToRouteResult RemoveFromCart(Cart cart, int productID, string returnUrl)
        {
            var tmp = ProductService.FindByID(productID);
            if (tmp != null) cart.Remove(tmp);

            return RedirectToAction("Index", new { returnUrl = returnUrl});
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            return RedirectToAction("Index", "Home");
        }

    }
}