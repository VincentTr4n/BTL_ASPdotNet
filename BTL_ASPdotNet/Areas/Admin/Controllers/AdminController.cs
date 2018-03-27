using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTL_ASPdotNet.Models;
using BTL_ASPdotNet.DataAccess;
using Microsoft.AspNet.Identity.Owin;
using System.Threading.Tasks;

namespace BTL_ASPdotNet.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class AdminController : Controller
    {
        private IAspNetUserDAO userDAO = new AspNetUserDAO();
        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;

        public AdminController() { }

        public AdminController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            UserManager = userManager;
            SignInManager = signInManager;
        }

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult MyProfile(string name)
        {
            //var user = await UserManager.FindByNameAsync(name);
            var user = userDAO.FindByName(name);
            if (user == null) return RedirectToAction("Index", "Admin", new { area = "Admin" });
            return View(user);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult MyProfile(AspNetUser admin)
        {
            return View();
        }
    }
}