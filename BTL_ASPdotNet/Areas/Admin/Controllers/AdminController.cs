using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTL_ASPdotNet.Models;
using BTL_ASPdotNet.DataAccess;

namespace BTL_ASPdotNet.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class AdminController : Controller
    {
        public IAspNetUserDAO comDAO = new AspNetUserDAO();
        public ActionResult Index()
        {
            return View();
        }

        public ViewResult MyProfile(string ID)
        {
            return View();
        }

        [HttpPost]
        public ActionResult MyProfile(AspNetUser admin)
        {
            return View();
        }
    }
}