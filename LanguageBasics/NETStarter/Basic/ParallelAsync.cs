// Parallel Programming
// Multi-core: Multiple CPUs physically
// Technique to make use of these CPUs in parallel
// .NET has TPL (Task Parallel Library)

// Asynchronous Programming
// AJAX - Asynchronous JavaScript And XML
// Non-blocking I/O
// .NET: async, await

using System;
using System.Threading;
using System.Threading.Tasks;

class ParallelAsync
{
    int[] numbers = [23, 456, 123, 343, 6867, 234242, 567575, 234242, 575723];

    public void ProcessNumbers()
    {
        // Sequential
        Console.WriteLine("Sequential Implementation");
        foreach(var num in numbers)
        {
            DoWork(num);
        }

        Console.WriteLine("Parallel Implementation");
        Parallel.ForEach(numbers, DoWork);       
    }

    public void DoWork(int num)
    {
        Thread.Sleep(1000); // Simulating delay
        Console.WriteLine($"Num: {num}");
    }

    
    // Making tea
    public async Task IgniteStove()
    {
        await Task.Delay(5000);
    }

    public async Task PutKittleOnWithWater()
    {
        await Task.Delay(5000);
    }

    public async Task GrindMasala()
    {   
        await Task.Delay(30000);
    }

    public void PourChiyaPatti()
    {

    }

    public void PourSugar()
    {
        
    }

    public void PourMasala()
    {   
             
    }

    public void PourMilk()
    {
        
    }
}