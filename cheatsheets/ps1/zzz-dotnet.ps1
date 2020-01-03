$container = "microsoft/dotnet-samples:aspnetapp"
dotnet build
dotnet new mvc
dotnet publish -c release -o $publishDir webbloblogging.csproj 
dotnet run
