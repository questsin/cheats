// ref = https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/
// lab = https://docs.microsoft.com/en-us/learn/paths/csharp-first-steps/

//c# interactive cli= read eval print loop
//terms
//class, interface
//static
//access modifiers = public, protected, private
//modifier = abrstact, override, virtual
//extensions? public static extensionMenthods
//inherits class2 : classBase, interfaceBase...

//programming main project
//------------------------

Console.WriteLine("Hello World!");
Console.WriteLine("This is the first line.");
Console.Write("This is ");
Console.Write("the second ");
Console.Write("line.");
Console.WriteLine(12);
Console.WriteLine(12.3m);
Console.WriteLine(true);
Console.WriteLine(false);

string firstName; // #$ not allowed
char userOption;
int gameScore;
decimal particlesPerMillion;
bool processedCustomer;
firstName = "Bob";
string value = "Bob";

Console.Write(@"c:\invoices");
string message = $"{greeting} {firstName}!";

var message = "Hello World!";
int first = 7;
int second = 5;
const float pi = 3.14f;
enum weekDays {mon = 1,tue,wed}; 
Console.WriteLine(DateTime.Now);
var bday = new DateTime(1976,10,25)
var diff = DateTime.Now - bday;
Console.WriteLine(diff.Days);

decimal quotient = (decimal)first / (decimal)second;
Console.WriteLine(quotient);
Random dice = new Random();
int roll = dice.Next(1, 7);
Console.WriteLine(roll);
Random coin = new Random();
int flip = coin.Next(0, 2);
Console.WriteLine((flip == 0) ? "heads" : "tails");


if (1) {
} else if (1==1) {
} else {
}

string[] fraudulentOrderIDs = new string[3];
string[] names = { "Bob", "Conrad", "Grant" };
foreach (string name in names) {
  Console.WriteLine(name);
}
for (int i = 0; i < 10; i++) {
    Console.WriteLine(i);
}
do
{
    // This code executes at least one time
} while (true)
//comment

using System;
namespace MyCliApp
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Console.WriteLine("hello"); 
            Console.ReadLine();
            throw new Exception("bummer");
        }
    }
}
using MyNewApp.Utilities;
namespace MyNewApp
{
    class Program
    {
        static void Main(string[] args)
        {
            string value = "Microsoft Learn";
            string reversedValue = Utility.Reverse(value);
            Console.WriteLine($"Secret message: {reversedValue}");
        }
    }
}
namespace MyNewApp.Utilities
{
    class Utility
    {
        public static string Reverse(string message)
        {
            char[] letters = message.ToCharArray();
            Array.Reverse(letters);
            return new string(letters);
        }
    }
}


namespace ns1 {
  public class c2() {
    string Name {get; set; } //auto property
    private string _V;
    string V {
      get {return _v}
      Set {_v = value}
    }
  } 
  public static int fbodyexp(int a, int b) => a+b;
  public overide sting ToString() => "n/a";
}

//unit test project
//-----------------
//add ref to to main project
using ns1;

Assert.AreEqual(1,1,'are equal');
[testclass]
[testmethod]
