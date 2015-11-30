using Microsoft.Owin;
using Owin;

//[assembly: OwinStartupAttribute(typeof(SignalRUpdates.Startup))]
namespace SignalRUpdates
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();
        }
    }
}