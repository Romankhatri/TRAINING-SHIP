class Generics
{
    public void Print<T>(T x)
    {
        Console.WriteLine(x);
    }

    public void Test()
    {
        Print<string>("808022");
        Print<int>(835831);
        Print<decimal>(7227.31m);
        Print<byte>(245);

        List<int> marks=[];

        marks.Add(60);
    }
}