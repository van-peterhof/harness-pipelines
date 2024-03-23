namespace Peterhof.Tests;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {
        Assert.True(true);
    }

    [Fact]
    public void Test2() 
    {
        var (a, b) = (10, 11);

        var mult = a * b;

        Assert.Equal(mult, 110);
    }
}