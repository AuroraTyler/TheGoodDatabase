using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TheGoodDatabase.Startup))]
namespace TheGoodDatabase
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
