using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Mypage.Startup))]
namespace Mypage
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
