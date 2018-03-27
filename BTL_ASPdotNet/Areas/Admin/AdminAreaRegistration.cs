using System.Web.Mvc;

namespace BTL_ASPdotNet.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Admin_default",
                "Master",
                new { controller = "Admin", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "BTL_ASPdotNet.Areas.Admin.Controllers" }
            );

            context.MapRoute(
               "Admin_default1",
               "Master/Profile/{name}",
               new { controller = "Admin", action = "MyProfile", name = UrlParameter.Optional },
               namespaces: new string[] { "BTL_ASPdotNet.Areas.Admin.Controllers" }
           );
        }
    }
}