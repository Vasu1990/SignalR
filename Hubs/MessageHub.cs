using Microsoft.AspNet.SignalR;


//Hub is a class that can expose server methods  that can be invoked by the client directly
//it can also invoke the client methods directly
namespace SignalRUpdates.Hubs
{
    public class MessagesHub : Hub
    {
        //all methods that are reference using Client are the 
        //methods that are written on the Client side using js


        public void Hello()
        {
            Clients.All.hello();
        }

        //method on server fired by repo when data in db changes
        //this method will notify the client by calling updateMessages() method
        //written in js on index.html which will then again hit an AJAX request to fetch the new data
        public static void SendMessages()
        {
            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<MessagesHub>();
            context.Clients.All.updateMessages();
        }


    }
}