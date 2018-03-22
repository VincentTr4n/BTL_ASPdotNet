using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BTL_ASPdotNet.Startup))]
namespace BTL_ASPdotNet
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
