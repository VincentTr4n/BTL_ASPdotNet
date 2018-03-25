
using System.Collections.Generic;


namespace BTL_ASPdotNet.Models
{
    public class ProductsViewModel
    {
        public IEnumerable<Product> products { get; set; }
        public PagingInfo pagingInfo { get; set; }
    }
}