using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WeekProj6.Models;

namespace WeekProj6.Controllers
{
    public class HatsController : Controller
    {
        private Entities db = new Entities();

        // GET: Hats
        public ActionResult Index()
        {
            return View(db.Hats.ToList());
        }

        // GET: Hats/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hat hat = db.Hats.Find(id);
            if (hat == null)
            {
                return HttpNotFound();
            }
            return View(hat);
        }

        // GET: Hats/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Hats/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HeadwearID,Name,Photo,Type,Color,Season,Occasion")] Hat hat)
        {
            if (ModelState.IsValid)
            {
                db.Hats.Add(hat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(hat);
        }

        // GET: Hats/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hat hat = db.Hats.Find(id);
            if (hat == null)
            {
                return HttpNotFound();
            }
            return View(hat);
        }

        // POST: Hats/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HeadwearID,Name,Photo,Type,Color,Season,Occasion")] Hat hat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(hat);
        }

        // GET: Hats/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Hat hat = db.Hats.Find(id);
            if (hat == null)
            {
                return HttpNotFound();
            }
            return View(hat);
        }

        // POST: Hats/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Hat hat = db.Hats.Find(id);
            db.Hats.Remove(hat);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
