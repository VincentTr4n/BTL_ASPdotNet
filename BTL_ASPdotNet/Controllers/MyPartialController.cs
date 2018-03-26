using BTL_ASPdotNet.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTL_ASPdotNet.Controllers
{
    public class MyPartialController : Controller
    {
        [HttpGet]
        public PartialViewResult MenuTopPartial()
        {
            var model = CategoryService.GetAll();
            return PartialView(model);
        }
    }
}