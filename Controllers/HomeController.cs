using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SignalRUpdates.Repo;

namespace SignalRUpdates.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }

        //starting point of the application
        [HttpGet]
        public PartialViewResult GetMessages()
        {
            MessageRepo repo = new MessageRepo();
            
            //call to repo to fetch all messages
            var result = repo.GetAllMessages();
            return PartialView("_MessageList", result);
        }
    }
}
