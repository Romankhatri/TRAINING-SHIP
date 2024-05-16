using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

public class EditCourseModel : PageModel
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
        db.Courses.Update(Course);
        db.SaveChanges();

        return RedirectToPage("Courses");
    }
}