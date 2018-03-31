using BTL_ASPdotNet.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTL_ASPdotNet.Areas.Admin.Controllers
{
    public class ReportsController : Controller
    {
        public ActionResult GetMonthReport(int year = 2018)
        {
            ViewBag.DataPoints = ReportService.GetMonthReport(year);
            return View();
        }

        public ActionResult GetDayReport(string date)
        {
            ViewBag.temp = date;
            ViewBag.DataPoints = ReportService.GetDayReport(new DateTime(2017,2,1),new DateTime(2017,4,1));
            return View();
        }
    }
}