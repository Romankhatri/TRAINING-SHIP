using Inheritance;

//Student A1 = new();
//Student A2 = new();
//
//A1.name = "Ritika Khatri";
//A1.address = "Kathmandu";
//A1.roll = 26;
//A1.dob = new DateTime(2060, 04, 06);
//
//A2.name = "Tikman Khatri";
//A2.address = "Kathmandu";
//A2.roll = 33;
//A2.dob = new DateTime(2062, 02, 04);
//
//A1.PrintDetails();
//A2.PrintDetails();


// Create class called "Animal"
// Define at least 5 internal fields
// Define a method to print all details of animal in descriptive format
// In program entry point, create at least two objects of Animal
// Initialize fields for each instance
// Print details in concole
// Animal A1 = new();
// Animal A2 = new();

// A1.species = "Dog";
// A1.breed = "Siberian Husky";
// A1.name = "Shadow";
// A1.height = 22;
// A1.weight = 48;

// A2.species = "Fish";
// A2.breed = "Arowana";
// A2.name = "Lucky";
// A2.height = 7;
// A2.weight = 1;

// A1.PrintDetails();
// A2.PrintDetails();


// var rec1 = new Rectangle(5.7, 3.4);
// var p = rec1.GetPerimeter();

// var rec2 = new Rectangle(123.23, 34.3);
// var a = rec2.GetArea();

// var square1 = new Square(34.5);
// var sa = square1.GetArea();

// var circle1 = new Circle(34.5);
// var ca = circle1.GetArea();

// var sphere1 = new Sphere(34.5);
// var ssa = sphere1.GetArea();
// sphere1.PrintSphereInfo(34.5);

// var fileio = new FileIO();
// fileio.CreateFileWithInFolder();

// var fileio = new FileIO();
// fileio.Createfile();

Console.WriteLine("Hi Every0ne!");

// ParallelAsync parallelAsync = new();
// parallelAsync.ProcessNumbers();

// await parallelAsync.IgniteStove();
// await parallelAsync.PutKittleOnWithWater();
// await parallelAsync.GrindMasala();

//  BasicDbContext Db = new();
//  var teacher1 = new Teacher
//  {
//      Name = "Tika Khadka",
//      Address = "Dang",
//      Gender = 'F',
//      Qualification = "Graduate",
//      Dob = new DateTime(2000, 12, 26)
//  };

// Db.Teachers.Add(teacher1);
// Db.SaveChanges();

// // var teachers = Db.Teachers.ToList(); //Select * from teacher

// // //list all female teachers from dang
// var teachers = Db.Teachers.Where(x => x.Gender == 'F' && x.Address == "Dang").ToList();

// foreach (var teacher in teachers)
// {
//     Console.WriteLine($" Name: {teacher.Name}, Dob: {teacher.Dob}");
// }