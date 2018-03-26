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
                "Master/{controller}/{action}/{id}",
                new { controller = "Admin", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "BTL_ASPdotNet.Areas.Admin.Controllers" }
            );
        }
    }
}