using BTL_ASPdotNet.DataAccess;
using BTL_ASPdotNet.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_ASPdotNet.Services
{
    public class ReportService
    {
        static JsonSerializerSettings jsonSetting = new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Ignore };
        static ReportDAO reportDAO = new ReportDAO();
        public static string GetMonthReport(int year)
        {
            string[] months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
            var res = new List<DataPoint>();
            var list = reportDAO.GetMonthReport(year).ToList();
            int index = 0;
            for (int i = 0; i < 12; i++)
            {
                if (index < list.Count && list[index].Month == i + 1) res.Add(new DataPoint(i + 1, list[index++].Total, months[i]));
                else res.Add(new DataPoint(i + 1, 0, months[i]));
            }
            return JsonConvert.SerializeObject(res, jsonSetting);
        }

        public static string GetDayReport(DateTime start, DateTime end)
        {
            var res = new List<DataPoint>();
            var list = reportDAO.GetDayReport(start, end).ToList();
            int index = 0;
            for (DateTime i = start; i <= end; i = i.AddDays(1))
            {
                if (index < list.Count && DateEquals(i,list[index].date)) res.Add(new DataPoint(list[index++].Total, i.ToString("dd MMM")));
                else res.Add(new DataPoint(0, i.ToString("dd MMM")));
            }
            return JsonConvert.SerializeObject(res, jsonSetting);
        }

        static bool DateEquals(DateTime a, DateTime b) => a.ToString("dd-MM-yyyy") == b.ToString("dd-MM-yyyy");
    }
}