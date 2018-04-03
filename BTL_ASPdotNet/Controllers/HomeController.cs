using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Helpers;
using System.Web.Mvc;
using BTL_ASPdotNet.Models;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;

namespace BTL_ASPdotNet.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var user = HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(User.Identity.GetUserId());
            ViewBag.User = user == null ? "" : user.Id;
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }
    }
}