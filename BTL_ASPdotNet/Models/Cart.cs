using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_ASPdotNet.Models
{
    public class Cart
    {
        List<CartLine> list = new List<CartLine>();
        public void Add(Product product, int quantity)
        {
            var tmp = list.SingleOrDefault(c => c.product.ProductID == product.ProductID);
            if (tmp == null) list.Add(new CartLine() { product = product, Quantity = quantity });
            else tmp.Quantity += quantity;
        }
        public void Remove(Product product) => list.RemoveAll(p => p.product.ProductID == product.ProductID);
        public void Clear() => list.Clear();
        public long TotalValue => list.Sum(p => p.product.Price * p.Quantity);
        public IEnumerable<CartLine> Lines => list;
    }

    public class CartLine
    {
        public Product product { get; set; }
        public int Quantity { get; set; }

    }
}