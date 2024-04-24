// Language Integrated Query

// Imperative [Procedural, OOP etc.] (C, C++, C# etc.) vs Declarative [Functional] (SQL, Haskell, C#, Lisp etc. ) programming languages

using System.Collections.Generic;
using System.Linq;

class LINQ
{
    int[] ages = [23, 45, 67, 8, 9, 12, 345, 67, 889, 34, 56, 78];
    List<Student> students = [
        new Student() { name = "Raghav", address = "Ktm"},
        new Student() { name = "Mahendra", address = "Dang"},
        new Student() { name = "Ujjwal", address = "Ktm"},
        new Student() { name = "Deepak", address = "Dang"},
        new Student() { name = "Prerana", address = "Dhangadhi"},
    ];

    // Find squares of all numbers in ages collection

    public void LearnLinq()
    {
        // Imperative
        List<int> sqaures = [];
        foreach (var age in ages)
        {
            var square = age * age;
            sqaures.Add(square);
        }

        // Declarative
        var squares = ages.Select(age => age * age);    // Method syntax

        var squaresAlternate = from age in ages         // Expression syntax
                               select age * age;

        // Find odd numbers within ages
        var odds = ages.Where(x => x % 2 == 1);

        // Find cubes of all even numbers within ages collection
        var cubesOfEvens = ages
            .Where(x => x % 2 == 0)
            .Select(y => y * y * y);

        // Find students who lives in dang and sort the result by names
        
    }

}