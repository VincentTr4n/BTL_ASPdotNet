﻿using BTL_ASPdotNet.DataAccess;
using BTL_ASPdotNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BTL_ASPdotNet.Services
{
    public class OrderService
    {
        static IOrderDAO orderDAO = new OrderDAO();
        static IOrderDetDAO orderDetDAO = new OrderDetDAO();
        public static void Add(Cart cart, Order order)
        {
            Random rnd = new Random();
            int id = rnd.Next(100, 100000);
            var tmp = orderDAO.FindByID(id);
            order.Total = (int)cart.TotalValue;
            order.OrderDate = DateTime.Now;
            orderDAO.Add(order);

            foreach (var item in cart.Lines)
            {
                orderDetDAO.Add(new OrderDet() {
                    OrderID = order.OrderID,
                    ProductID = item.product.ProductID,
                    Quantity = item.Quantity,
                    Price = item.product.Price,
                    Total = item.Quantity * item.product.Price
                });
            }
        }
        public static IEnumerable<Order> GetAll() => orderDAO.GetAll();
        public static OrderViewModel Paging(int page, int pageSize, IEnumerable<Order> list)
            => new OrderViewModel()
            {
                 Orders = list.Skip((page - 1) * pageSize).Take(pageSize),
                 pagingInfo = new PagingInfo()
                 {
                     CurrentPage = page,
                     ItemPerPage = pageSize,
                     TotalItems = list.Count()
                 }
            };


    }
}