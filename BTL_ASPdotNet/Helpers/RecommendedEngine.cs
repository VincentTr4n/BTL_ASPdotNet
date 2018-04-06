using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.Helpers
{
    public class RecommendedEngine
    {
        public int[,] data { get; set; }
        public int N { get; set; }
        public int M { get; set; }
        public Dictionary<string,int> users { get; set; }
        public Dictionary<int,int> products { get; set; }

        public RecommendedEngine()
        {
            LoadData();
        }

        public void Update(string userID,Order order)
        {
            if(users.Count > 0)
            {
                StoreOlineEntities db = new StoreOlineEntities();
                foreach (var item in order.OrderDets)
                {
                    products[item.ProductID] += item.Quantity;
                }
            }
        }

        void LoadData()
        {
            products = new Dictionary<int, int>();
            users = new Dictionary<string, int>();

            StoreOlineEntities db = new StoreOlineEntities();
            var listProduct = db.Products.ToList();
            int ii = 0;
            foreach(var item in listProduct) products.Add(item.ProductID, ii++);

            var temp = db.OrderDets.Select(t => new UserToProduct() {UserID = t.Order.UserID,ProductID = t.ProductID,Quantity = t.Quantity }).ToList();
            var buffer = temp.GroupBy(t => t.UserID).ToList();
            for (int i = 0; i < buffer.Count; i++) users.Add(buffer[i].Key, i);

            N = users.Count;
            M = products.Count;
            data = new int[N, M];

            for (int i = 0; i < N; i++)
            {
                var item = buffer[i].GroupBy(t => t.ProductID).Select(t => new { ID = t.Key, Total = t.Sum(o => o.Quantity) }).ToList();
                int index = 0;
                int j = 0;
                foreach (var item1 in products)
                {
                    if (item[index].ID == item1.Value)
                    {
                        if (j >= M) break;
                        data[i, j] = item[index].Total;
                        index++;
                        j++;
                    }
                }
            }

        }
        public int[] GetPredict(string userID)
        {
            List<ProductResult> res = new List<ProductResult>();
            int index = -1;
            if (users.ContainsKey(userID)) index = users[userID];
            if(index != -1)
            {
                foreach (var item in products)
                {
                    double p = predict(index, item.Value);
                    if (p > 0)
                    {
                        res.Add(new ProductResult() { ProductID = item.Key, Value = p });
                    }
                }
                return res.OrderByDescending(t => t.Value).Select(t => t.ProductID).Take(10).ToArray();
            }
            return null;
        }

        double predict(int k, int m)
        {
            double res = AVG(k);
            double sum1 = 0;
            double sum2 = 0;
            for (int i = 0; i < N; i++)
            {
                sum1 += user_similarity(k, i) * (data[i, m] - AVG(i));
                sum2 += Math.Abs(user_similarity(k, i));
            }
            if (sum2 != 0) res += sum1 / sum2;
            return res;
        }

        double user_similarity(int u1, int u2)
        {
            double res = 0;
            int sum1 = 0;
            int sum2 = 0;
            int sum3 = 0;
            for (int i = 0; i < M; i++)
            {
                sum1 += (data[u1, i] * data[u2, i]);
                sum2 += (data[u1, i] * data[u1, i]);
                sum3 += (data[u2, i] * data[u2, i]);
            }

            double tmp = (Math.Sqrt(sum2) * Math.Sqrt(sum3));
            res = (double)sum1 / tmp;
            return res;
        }

        double AVG(int k)
        {
            double res = 0;
            for (int i = 0; i < M; i++)
            {
                res += data[k, i];
            }
            return res / M;
        }



        class UserToProduct
        {
            public string UserID { get; set; }
            public int ProductID { get; set; }
            public int Quantity { get; set; }
        }

        public class ProductResult
        {
            public int ProductID { get; set; }
            public string ProductName { get; set; }
            public double Value { get; set; }
        }
    }
}