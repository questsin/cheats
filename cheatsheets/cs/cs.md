# c# dotnet framework

# dotnet framework
asp.net = server apps
xamarin > mobile apps

OOP = ~C#, C++, Java, Javascript, Python
other = Prolog, haskell

# cloud apps
the ractive manifestor
12 factor app

# ???
IEnumerable
IDisposable = open/close required.. try..finally
TextReader, StreamReader, StringReader, FileStream
using (var sr = new StreamReader(filename)) {
	//auto try finally close
}
public partial class??
Windows Forms (WinForms) vs Windows Presentation Foundation (WPF) XAML
Task.Run(() = > {
	Thread.Sleep(3000);
	Console.WriteLine("in parallel")
})
static async void Download(){
	await func();
	Console.WriteLine("after func is done.. continues here")
}
HttpClient client = new HttpClient()
var data = await client.GetStringAsync('http://nm3sys.com')
Console.WriteLine(data);
JObject //JSON
var newguid = Guid.NewGuid().ToString()

# OOP
identity = Nouns, Classes/Objects
properties = attribues, adjectives
methods = behavious, verbs 

# topics
encapsulaton vs inheritance vs polymorphosm


# notes
collections = arrays, lists, disctionaries, tuple, Stack, Queue, HashSet, bitArray, depricated(arraylist, hashtable)
ConcurrentDictionary = System.Threading.Tasks
List<String> customers = new List<string>()
void is a return type
this like javascript
bool is boolean type
base()?
Debug.WriteLine('123')
Aapplication.Run() ~ Console.Readline()
Application.ExitRun() 
lambda expression ~btn.Click += (s, e) => frm.Close();
int? s = null //allow nulls
int s2 = s ?? 2; //not null value
string My = (string)1; //casting 
Console.WriteLine("Signed integral types:");
Console.WriteLine($"sbyte  : {sbyte.MinValue} to {sbyte.MaxValue}");
Console.WriteLine($"short  : {short.MinValue} to {short.MaxValue}");
Console.WriteLine($"int    : {int.MinValue} to {int.MaxValue}");
Console.WriteLine($"long   : {long.MinValue} to {long.MaxValue}");
Console.WriteLine("Unsigned integral types:");
Console.WriteLine($"byte   : {byte.MinValue} to {byte.MaxValue}");
Console.WriteLine($"ushort : {ushort.MinValue} to {ushort.MaxValue}");
Console.WriteLine($"uint   : {uint.MinValue} to {uint.MaxValue}");
Console.WriteLine($"ulong  : {ulong.MinValue} to {ulong.MaxValue}");
Console.WriteLine("Floating point types:");
Console.WriteLine($"float  : {float.MinValue} to {float.MaxValue} (with ~6-9 digits of precision)");
Console.WriteLine($"double : {double.MinValue} to {double.MaxValue} (with ~15-17 digits of precision)");
Console.WriteLine($"decimal: {decimal.MinValue} to {decimal.MaxValue} (with 28-29 digits of precision)");
linkedin learning
https://www.linkedin.com/learning/collections/6615036185372950528?u=2626

# labs
https://docs.microsoft.com/en-us/learn/paths/csharp-first-steps/ c#
https://docs.microsoft.com/en-us/learn/paths/csharp-logic/ c#
https://docs.microsoft.com/en-us/learn/browse/?term=c%23 c#
https://docs.microsoft.com/en-us/learn/browse/?products=dotnet dotnet

# Todo
Vso 
Visual studios

# terms
Language-Integrated Query (LINQ) is the name for a set of technologies based on the integration of query capabilities directly into the C# language. ~lodash vs underscore
nuget vs npm
xamarin vs ionic
asp.net vs express
vscode vs visual studio
Core MVC ?
WinForms MVC vs Windows Presentation Foundation (WPF) XAML 
using System.Windows.Forms
Universal Windows Platform (UWP) app