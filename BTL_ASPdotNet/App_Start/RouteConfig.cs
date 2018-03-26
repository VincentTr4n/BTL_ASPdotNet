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
            routes.MapRoute(
                name: "Default5",
                url: "{action}",
                defaults: new { controller = "Account", action = UrlParameter.Optional }
            );
        }
    }
}
