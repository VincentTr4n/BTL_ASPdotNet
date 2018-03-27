using BTL_ASPdotNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace BTL_ASPdotNet.Helpers
{
    public static class CommonHelpers
    {
        public static string FormatCart(Cart cart,Order order)
        {
            StringBuilder builder = new StringBuilder();
            builder.AppendLine(" A new order has been submitted");
            builder.AppendLine(" ---");
            builder.AppendLine(" Items: ");
            foreach (var item in cart.Lines)
            {
                var subTotal = item.product.Price * item.Quantity;
                builder.AppendLine(item.Quantity + " x " + item.product.ProductName + " ( subtotal: " + subTotal.ToString("c"));
            }
            builder.AppendLine(" Total order value: " + cart.TotalValue.ToString("c"))
                    .AppendLine(" ---")
                    .AppendLine(" Ship to: ")
                    .AppendLine(order.Name)
                    .AppendLine(order.Address)
                    .AppendLine(order.City)
                    .AppendLine(order.CountryID.ToString())
                    .AppendLine(order.Postcode.Value.ToString())
                    .AppendLine(" ---")
                    .AppendLine("Date: " + (order.OrderDate.ToString("dd-MM-yyyy")));
            return builder.ToString();
        }
    }
}