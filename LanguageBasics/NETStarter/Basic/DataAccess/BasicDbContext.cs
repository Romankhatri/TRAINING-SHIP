using Microsoft.EntityFrameworkCore;

public class BasicDbContext: DbContext
{
    public DbSet<Teacher> Teachers { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlite("Data Source=College.db");
    }
}