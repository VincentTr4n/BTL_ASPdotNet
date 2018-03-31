using System;
using System.Collections.Generic;
using System.Linq;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class ReportDAO
    {
        StoreOlineEntities db = new StoreOlineEntities();

        public IEnumerable<MonthReport> GetMonthReport(int year)
        {
            return db.Orders.Where(t => t.OrderDate.Year == year).GroupBy(t => t.OrderDate.Month).Select(t => new MonthReport() { Month = t.Key,Total = t.Sum(o => o.Total) });
        }

        public IEnumerable<DayReport> GetDayReport(DateTime start, DateTime end)
        {
            var res = db.Orders.GroupBy(t => t.OrderDate).Where(t => t.Key >= start && t.Key <= end).Select(t => new DayReport() {date = t.Key, Total = t.Sum(o => o.Total) });
            return res;
        }
    }
}