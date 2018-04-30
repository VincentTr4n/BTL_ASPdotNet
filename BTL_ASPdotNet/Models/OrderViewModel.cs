using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_ASPdotNet.Models
{
    public class OrderViewModel
    {
        public IEnumerable<Order> Orders { get; set; }
        public PagingInfo pagingInfo { get; set; }
    }
}