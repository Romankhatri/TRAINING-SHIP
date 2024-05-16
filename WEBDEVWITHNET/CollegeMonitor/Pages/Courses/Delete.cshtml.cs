using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

public class DeleteCourseModel : PageModel
{
    [BindProperty]
    public Course Course { get; set; }

    public void OnGet(int Id)
    {
        CollegeDbContext db = new();
        Course = db.Courses.Find(Id);
    }
    public IActionResult OnPost()
    {
        CollegeDbContext db = new();
        db.Courses.Remove(Course);
        db.SaveChanges();

        return RedirectToPage("courses");
    }
}