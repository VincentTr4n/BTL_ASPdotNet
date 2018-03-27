using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BTL_ASPdotNet
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            //routes.MapRoute(
            //    name: "Default1",
            //    url: "{controller}/{action}/{id}",
            //    defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            //);

            routes.MapRoute(
                name: "Default2",
                url: "",//"{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            #region Product List
            routes.MapRoute(
                name: "products1",
                url: "view/{category}/{page}",
                defaults: new { controller = "Product", action = "ProductList", page = UrlParameter.Optional, state = "view", category = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "products2",
                url: "all-product/{page}",
                defaults: new { controller = "Product", action = "ProductList", page = UrlParameter.Optional, state = "all" , category = ""}
            );

            routes.MapRoute(
                name: "products3",
                url: "top-seller/{page}",
                defaults: new { controller = "Product", action = "ProductList", page = UrlParameter.Optional, state = "top", category = "" }
            );

            routes.MapRoute(
                name: "Default4",
                url: "Detail/{aliases}",
                defaults:
                new
                {
                    controller = "Product",
                    action = "ProductDetail",
                    aliases = UrlParameter.Optional
                });
            #endregion

            routes.MapRoute(
                name: "Default5",
                url: "Account/{action}",
                defaults: new { controller = "Account", action = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Default6",
                url: "Home/{action}",
                defaults: new { controller = "Home", action = UrlParameter.Optional },
                namespaces: new string[] { "BTL_ASPdotNet.Controllers" }
            );

            #region Shopping Cart
            routes.MapRoute(
                name: "Default7",
                url: "your-cart",
                defaults: new { controller = "Cart", action = "Index" },
                namespaces: new string[] { "BTL_ASPdotNet.Controllers" }
            );

            routes.MapRoute(
                name: "Default8",
                url: "add-to-cart",
                defaults: new { controller = "Cart", action = "AddToCart" },
                namespaces: new string[] { "BTL_ASPdotNet.Controllers" }
            );

            routes.MapRoute(
                name: "Default9",
                url: "remove-from-cart",
                defaults: new { controller = "Cart", action = "RemoveFromCart" },
                namespaces: new string[] { "BTL_ASPdotNet.Controllers" }
            );
            #endregion
        }
    }
}
