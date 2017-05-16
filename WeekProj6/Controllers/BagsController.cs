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
    public class BagsController : Controller
    {
        private Entities db = new Entities();

        // GET: Bags
        public ActionResult Index()
        {
            return View(db.Bags.ToList());
        }

        // GET: Bags/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bag bag = db.Bags.Find(id);
            if (bag == null)
            {
                return HttpNotFound();
            }
            return View(bag);
        }

        // GET: Bags/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Bags/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BagID,Name,Photo,Type,Color,Season,Occasion")] Bag bag)
        {
            if (ModelState.IsValid)
            {
                db.Bags.Add(bag);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(bag);
        }

        // GET: Bags/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bag bag = db.Bags.Find(id);
            if (bag == null)
            {
                return HttpNotFound();
            }
            return View(bag);
        }

        // POST: Bags/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BagID,Name,Photo,Type,Color,Season,Occasion")] Bag bag)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bag).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(bag);
        }

        // GET: Bags/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bag bag = db.Bags.Find(id);
            if (bag == null)
            {
                return HttpNotFound();
            }
            return View(bag);
        }

        // POST: Bags/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Bag bag = db.Bags.Find(id);
            db.Bags.Remove(bag);
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
