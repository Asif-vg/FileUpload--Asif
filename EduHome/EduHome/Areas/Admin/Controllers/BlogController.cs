﻿using EduHome.Data;
using EduHome.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace EduHome.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class BlogController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;


        public BlogController(AppDbContext context, IWebHostEnvironment webHostEnvironment)
        {
            _context = context;
            _webHostEnvironment = webHostEnvironment;

        }
        public IActionResult Index()
        {
            return View(_context.Blogs.OrderByDescending(o => o.CreatedDate)
                .Include(c => c.BlogCategory)
                .Include(tb => tb.TagToBlogs).ThenInclude(t =>t.BlogTag).ToList());
        }
        public IActionResult Create()
        {
            ViewBag.Category = _context.BlogCategorys.ToList();
            ViewBag.BlogTags = _context.BlogTags.ToList();

            return View();
        }


        [HttpPost]
        public IActionResult Create(Blog model)
        {
            if (ModelState.IsValid)
            {
                if (model.BlogImageFile.ContentType== "image/jpeg" || model.BlogImageFile.ContentType == "image / png")
                {
                    if (model.BlogImageFile.Length <= 2097152)
                    {
                        string fileName = Guid.NewGuid() + "-" + DateTime.Now.ToString("yyyyMMddHHmmss")+ "-" + model.BlogImageFile;
                        string filePath = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", fileName);
                        using (var stream =new FileStream(filePath, FileMode.Create))
                        {
                            model.BlogImageFile.CopyTo(stream);
                        }

                        model.BlogImage = fileName;
                        model.CreatedDate = DateTime.Now;

                        _context.Blogs.Add(model);
                        _context.SaveChanges();


                        if (model.TagToBlogsId!= null && model.TagToBlogsId.Count>0)
                        {
                            foreach (var item in model.TagToBlogsId)
                            {
                                TagToBlog tagToBlogs = new TagToBlog();
                                tagToBlogs.TagId = item;
                                tagToBlogs.BlogId = model.Id;

                                _context.TagToBlogs.Add(tagToBlogs);
                                _context.SaveChanges();

                            }
                        }

                        return RedirectToAction("Index");

                    }
                    else
                    {
                        ModelState.AddModelError("", "You can upload only less than 2 mb");
                        return View(model);
                    }
                }
                else
                {
                    ModelState.AddModelError("", "You can upload only .jpeg, .jpg and .png");
                    return View(model);
                }
            }

            return View(model);
        }

        public IActionResult Delete(int? id)
        {
            Blog blog = _context.Blogs.Find(id);

            List<TagToBlog> tagToBlogs=  _context.TagToBlogs.Where(t =>t.Blog.Id== id).ToList();

            foreach (var item in tagToBlogs)
            {
                _context.TagToBlogs.Remove(item);

            }

            _context.SaveChanges();


            _context.Blogs.Remove(blog);
            _context.SaveChanges();

           return RedirectToAction("Index");
            
        }
    }
}
