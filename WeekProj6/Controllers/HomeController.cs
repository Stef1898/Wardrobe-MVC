using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WeekProj6.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "We help you get organized so you can put the \"play\" back in Cosplay!";

            return View();
        }

        public ActionResult Wardrobe()
        {
            ViewBag.Message = "What's in your Wardrobe?";

            return View();
        }
    }
}